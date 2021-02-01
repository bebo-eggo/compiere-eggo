package com.audaxis.compiere.process;

import java.io.FileOutputStream;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;
import org.compiere.model.MBPBankAccount;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCurrency;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPayment;
import org.compiere.model.X_XX_REMB_CLIENTS;
import org.compiere.model.X_XX_REMB_SELECTION;
import org.compiere.model.X_XX_REMB_SEL_LIGNE;
import org.compiere.model.ZSynchSchedule;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MPaySelectionProxy;
import com.audaxis.compiere.model.MZSubPaymentRule;
import com.audaxis.compiere.sepa.AccountIdentification4Choice;
import com.audaxis.compiere.sepa.ActiveOrHistoricCurrencyAndAmount;
import com.audaxis.compiere.sepa.AmountType3Choice;
import com.audaxis.compiere.sepa.BranchAndFinancialInstitutionIdentification4;
import com.audaxis.compiere.sepa.CashAccount16;
import com.audaxis.compiere.sepa.CreditTransferTransactionInformation10;
import com.audaxis.compiere.sepa.CreditorReferenceInformation2;
import com.audaxis.compiere.sepa.CreditorReferenceType1Choice;
import com.audaxis.compiere.sepa.CreditorReferenceType2;
import com.audaxis.compiere.sepa.CustomerCreditTransferInitiationV03;
import com.audaxis.compiere.sepa.Document;
import com.audaxis.compiere.sepa.DocumentType3Code;
import com.audaxis.compiere.sepa.EquivalentAmount2;
import com.audaxis.compiere.sepa.FinancialInstitutionIdentification7;
import com.audaxis.compiere.sepa.GenericOrganisationIdentification1;
import com.audaxis.compiere.sepa.GroupHeader32;
import com.audaxis.compiere.sepa.ObjectFactory;
import com.audaxis.compiere.sepa.OrganisationIdentification4;
import com.audaxis.compiere.sepa.Party6Choice;
import com.audaxis.compiere.sepa.PartyIdentification32;
import com.audaxis.compiere.sepa.PaymentIdentification1;
import com.audaxis.compiere.sepa.PaymentInstructionInformation3;
import com.audaxis.compiere.sepa.PaymentMethod3Code;
import com.audaxis.compiere.sepa.PaymentTypeInformation19;
import com.audaxis.compiere.sepa.PostalAddress6;
import com.audaxis.compiere.sepa.RemittanceInformation5;
import com.audaxis.compiere.sepa.ServiceLevel8Choice;
import com.audaxis.compiere.sepa.StructuredRemittanceInformation7;
import com.audaxis.compiere.util.ExportSepaUtil;

public class ExportPaymentSepaClient extends SvrProcess{

	private int 	p_RembClient_ID = 0;
	private String 	p_OutputFileName = null;
	private static final String PACKAGE_NAME = "com.audaxis.compiere.sepa";
	private X_XX_REMB_SELECTION p_REMB_SELECTION= null;
	private MZSubPaymentRule zsub = null;
	
	@Override
	protected void prepare() {


		ProcessInfoParameter[] para = getParameter();

		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();

			if (para[i].getParameter() == null)
			{
				;
			}
			else if (name.equalsIgnoreCase("FileName"))
			{
				p_OutputFileName = (String) para[i].getParameter();
			}
			else
			{
				log.severe("prepare - Unknown Parameter: " + name);
			}
		}


		if (getRecord_ID()<=0)
			throw new IllegalArgumentException("No @C_PaySelection_ID@");

		p_RembClient_ID = getRecord_ID();
		p_REMB_SELECTION= new X_XX_REMB_SELECTION(getCtx(), p_RembClient_ID, get_Trx());
		zsub = new MZSubPaymentRule(getCtx(), p_REMB_SELECTION.getZSubPaymentRule_ID(), get_Trx());
	}

	@Override
	protected String doIt() throws Exception {
		
		JAXBContext jc = JAXBContext.newInstance(PACKAGE_NAME);
		Marshaller marshaller = jc.createMarshaller();
		marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, new Boolean(true));
		//#37054 Export Paiement SEPA 
		//marshaller.setProperty(Marshaller.JAXB_SCHEMA_LOCATION, "urn:iso:std:iso:20022:tech:xsd:pain.001.001.03 pain.001.001.03.xsd");
		marshaller.setProperty(Marshaller.JAXB_SCHEMA_LOCATION, ""); //#37054

		ObjectFactory f = new ObjectFactory();

		Document document = f.createDocument();
		CustomerCreditTransferInitiationV03 createCustomer = f.createCustomerCreditTransferInitiationV03();

		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~GroupHeader32~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		GroupHeader32 grpHdr = f.createGroupHeader32();

		ArrayList<Object> values = getInfoHeader();

		grpHdr.setMsgId(String.valueOf("REMB_"+p_RembClient_ID));
		grpHdr.setCreDtTm(ExportSepaUtil.asXMLGregorianCalendar((Timestamp) values.get(1), "yyyy-MM-dd'T'HH:mm:ss"));
		grpHdr.setNbOfTxs(String.valueOf(values.get(2)));
		grpHdr.setCtrlSum((BigDecimal)values.get(3));

		//Nm
		PartyIdentification32 partyI = f.createPartyIdentification32();
		partyI.setNm(String.valueOf(values.get(4)));

		//Id, Issr
		Party6Choice partyC = f.createParty6Choice();
		OrganisationIdentification4 orgID = f.createOrganisationIdentification4();

		GenericOrganisationIdentification1 genericOrgI = f.createGenericOrganisationIdentification1();
		genericOrgI.setId(String.valueOf(values.get(5)));
		//Redmine 27129
		if (String.valueOf(values.get(6)).length()>0)
			genericOrgI.setIssr(String.valueOf(values.get(6)));

		orgID.getOthr().add(genericOrgI);

		partyC.setOrgId(orgID);

		partyI.setId(partyC);

		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		grpHdr.setInitgPty(partyI);
		createCustomer.setGrpHdr(grpHdr);
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~PaymentInstructionInformation3~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		ArrayList<X_XX_REMB_SEL_LIGNE> checks = p_REMB_SELECTION.getXX_REMB_SEL_LIGNE();
		ArrayList<String> infoPaySelCheckAccount = null;
		ArrayList<String> infoPaySelCheckBPAccount = null;
		String iso_codePaySel = MCurrency.getISO_Code(getCtx(), p_REMB_SELECTION.getC_Currency_ID());
		String pmtMtd = zsub.get_ValueAsString("Code");
		
		boolean firstloop = true;
		PostalAddress6 adrline = null;
		FinancialInstitutionIdentification7 fII = null;
		PartyIdentification32 partyId = null;
		AccountIdentification4Choice acctIc = null;
		PaymentInstructionInformation3 pmtInf = null;
		
		for (X_XX_REMB_SEL_LIGNE mPaySelectionCheck : checks) {
			X_XX_REMB_CLIENTS cli = new X_XX_REMB_CLIENTS(getCtx(), mPaySelectionCheck.getXX_REMB_CLIENTS_ID(),  get_Trx());
			MOrder mo = new MOrder(getCtx(), cli.getC_Order_ID(), get_Trx());
			MInvoice mi = new MInvoice(getCtx(), cli.getC_Invoice_ID(), get_Trx());
			MBPartnerLocation mbl = new MBPartnerLocation(getCtx(), mi.getC_BPartner_Location_ID(), get_Trx());
			
			infoPaySelCheckAccount = getInfoPaySelectionCheckAccount(mPaySelectionCheck);
			infoPaySelCheckBPAccount = getInfoPaySelectionCheckBPAccount(mPaySelectionCheck);
			
			if (firstloop){
				firstloop = false;
				pmtInf = f.createPaymentInstructionInformation3();
	
				pmtInf.setPmtInfId(p_REMB_SELECTION.getDocumentNo());

				if(pmtMtd.equals("CHK") || pmtMtd.equals("TRF") || pmtMtd.equals("TRA"))
					pmtInf.setPmtMtd(PaymentMethod3Code.fromValue(pmtMtd));
				pmtInf.setBtchBookg(true);
	
				//SvcLvl
				PaymentTypeInformation19 pmtTpInf = f.createPaymentTypeInformation19();
				ServiceLevel8Choice svcLvl = f.createServiceLevel8Choice();
				svcLvl.setCd("SEPA");
				pmtTpInf.setSvcLvl(svcLvl);
	
	
				pmtInf.setPmtTpInf(pmtTpInf);
				pmtInf.setReqdExctnDt(ExportSepaUtil.asXMLGregorianCalendar((Timestamp) values.get(7),"yyyy-MM-dd"));
	
				//Dbtr
				partyId = f.createPartyIdentification32();
	
				partyId.setNm(String.valueOf(values.get(4)));  // Nm
				//partyId.setCtryOfRes(getCtry(MPaySelectionChecks[i])); // Ctry
	
	
				adrline = f.createPostalAddress6();
				Object[] adrlines = getadrlineSelectionCheck(mPaySelectionCheck);
				if(adrlines[2]!=null && ! adrlines[2].toString().equalsIgnoreCase("")) //#22212
					adrline.setCtry(adrlines[2]!=null ? (String)adrlines[2] : "");
				if(adrlines[0]!=null && ! adrlines[0].toString().equalsIgnoreCase("")) //#22212
					adrline.getAdrLine().add(adrlines[0]!=null ? (String)adrlines[0] : "");
				if(adrlines[1]!=null && ! adrlines[1].toString().equalsIgnoreCase(""))  //#22212
					adrline.getAdrLine().add(adrlines[1]!=null ? (String)adrlines[1] : "");
				
				if (adrline.getAdrLine().size()>0 || adrline.getCtry()!=null)
					partyId.setPstlAdr(adrline);
	
	
				Party6Choice id = f.createParty6Choice();
				OrganisationIdentification4 org = f.createOrganisationIdentification4();
				GenericOrganisationIdentification1 geneorg = f.createGenericOrganisationIdentification1();
	
				geneorg.setId(String.valueOf(values.get(5)));
				if (String.valueOf(values.get(6)).length()>0)//Redmine 27129
					geneorg.setIssr(String.valueOf(values.get(6)));
	
				org.getOthr().add(geneorg);
	
				id.setOrgId(org);
	
				partyId.setId(id);
				pmtInf.setDbtr(partyId);
	
				//DbtrAcct
				CashAccount16 cashacct16 = f.createCashAccount16();
				acctIc = f.createAccountIdentification4Choice();
				String IBAN = String.valueOf(values.get(8));
				if(IBAN!=null){
					IBAN = IBAN.toUpperCase();
					IBAN = IBAN.replaceAll(" ", "");
				}
				acctIc.setIBAN(IBAN);
				cashacct16.setId(acctIc);
				pmtInf.setDbtrAcct(cashacct16);
	
				//DbtrAgt
				BranchAndFinancialInstitutionIdentification4 brII = f.createBranchAndFinancialInstitutionIdentification4();
				fII = f.createFinancialInstitutionIdentification7();
				String BIC = String.valueOf(values.get(9));
				if(BIC!=null){
					BIC = BIC.toUpperCase();
					BIC = BIC.replaceAll(" ", "");
				}
				fII.setBIC(BIC);
				brII.setFinInstnId(fII);
	
				pmtInf.setDbtrAgt(brII);
			}
			
			CreditTransferTransactionInformation10 creditti = f.createCreditTransferTransactionInformation10();

			PaymentIdentification1 PmtId = f.createPaymentIdentification1();
			creditti.setPmtId(PmtId);
			creditti.getPmtId().setEndToEndId(infoPaySelCheckAccount.get(3));

			AmountType3Choice amout = f.createAmountType3Choice();
			EquivalentAmount2 evAmt = f.createEquivalentAmount2();
			ActiveOrHistoricCurrencyAndAmount amt = f.createActiveOrHistoricCurrencyAndAmount();

			String iso_codeBP = infoPaySelCheckBPAccount.get(9);//BP_Account
			amt.setValue(mPaySelectionCheck.getMONTANT().abs());
			amt.setCcy(iso_codePaySel);
			if (!iso_codeBP.equals(iso_codePaySel)){
				evAmt.setAmt(amt);
				evAmt.setCcyOfTrf(iso_codeBP);
				amout.setEqvtAmt(evAmt);
			}else{
				amout.setInstdAmt(amt);
			}

			creditti.setAmt(amout);

			//CdtrAgt
			BranchAndFinancialInstitutionIdentification4 finaninf = f.createBranchAndFinancialInstitutionIdentification4();
			fII = f.createFinancialInstitutionIdentification7();
			String BIC = infoPaySelCheckBPAccount.get(6);
			if(BIC!=null){
				BIC = BIC.toUpperCase();
				BIC = BIC.replaceAll(" ", "");
			}
			fII.setBIC(BIC);//bban
			
			finaninf.setFinInstnId(fII);
			creditti.setCdtrAgt(finaninf);

			//Cdtr
			partyId = f.createPartyIdentification32();

			partyId.setNm(infoPaySelCheckBPAccount.get(10));
			//				partyId.setCtryOfRes(getA_Country(MPaySelectionLines[d]));

			adrline = f.createPostalAddress6();
			ArrayList<String> lxx = new ArrayList<String>();
			if(infoPaySelCheckBPAccount.get(0)!=null && ! infoPaySelCheckBPAccount.get(0).equalsIgnoreCase("")) //#22212
				adrline.setCtry(infoPaySelCheckBPAccount.get(0));
			if(infoPaySelCheckBPAccount.get(1)!=null && ! infoPaySelCheckBPAccount.get(1).equalsIgnoreCase("")) //#22212
				lxx.add(infoPaySelCheckBPAccount.get(1));
			if(infoPaySelCheckBPAccount.get(2)!=null && ! infoPaySelCheckBPAccount.get(2).equalsIgnoreCase(" ") && ! infoPaySelCheckBPAccount.get(2).equalsIgnoreCase("")) //#22212
				lxx.add(infoPaySelCheckBPAccount.get(2));
			
			if (adrline.getAdrLine().size()==0 || adrline.getCtry()==null)
				lxx.add(mbl.getName().substring(0,mbl.getName().length()>67?67:mbl.getName().length()));
			
			
			if (lxx.size()>0 || adrline.getCtry()!=null)
			{
				for (int i = 0; i < lxx.size(); i++) {
					String xx = lxx.get(i);
					if(xx.length()>67)
						adrline.getAdrLine().add(xx.substring(0, 67));
					else
						adrline.getAdrLine().add(xx);
				}
				
			}
			partyId.setPstlAdr(adrline);
			creditti.setCdtr(partyId);

			//CdtrAcct
			CashAccount16 cashacct = f.createCashAccount16();
			acctIc = f.createAccountIdentification4Choice();
			String IBAN = infoPaySelCheckBPAccount.get(7);
			if(IBAN!=null){
				IBAN = IBAN.toUpperCase();
				IBAN = IBAN.replaceAll(" ", "");
			}
			acctIc.setIBAN(IBAN);
			cashacct.setId(acctIc);
			
			creditti.setCdtrAcct(cashacct);

			//RmtInf
			RemittanceInformation5 rmtInf = f.createRemittanceInformation5();			
			rmtInf.getUstrd().add("REMBOURSEMENT TERUGBETALING EGGO # "+mo.getPOReference());
			creditti.setRmtInf(rmtInf);
			pmtInf.getCdtTrfTxInf().add(creditti);

		}
		
		createCustomer.getPmtInf().add(pmtInf);

		document.setCstmrCdtTrfInitn(createCustomer);

		// Ecriture du fichier
		marshaller.marshal(document, new FileOutputStream(p_OutputFileName));	

		return p_OutputFileName;
	}

	private ArrayList<Object> getInfoHeader(){

		String sql = "SELECT PS.XX_REMB_SELECTION_ID AS msgid, "
				+ " PS.DateTrx AS credttm, "
			+ " (SELECT COUNT(PSC.XX_REMB_SEL_LIGNE_ID) FROM XX_REMB_SEL_LIGNE PSC WHERE PSC.XX_REMB_SELECTION_ID = PS.XX_REMB_SELECTION_ID AND PSC.IsActive='Y') AS NbOftrx, " 
			+ " (SELECT SUM(PSC.MONTANT) FROM XX_REMB_SEL_LIGNE PSC WHERE PSC.XX_REMB_SELECTION_ID = PS.XX_REMB_SELECTION_ID AND PSC.IsActive='Y') AS ctrlsum, "
			+ " ORG.name as Nm, "
			+ " ORGINF.taxid as id, "
			+ " ORGINF.ISSR as Issr, "
			+ " PS.DATETRX AS ReqdExctnDt, "
			+ " Z_RIBCLEAN(BA.IBAN) AS IBAN, "
			+ " Z_RIBCLEAN(BA.BBAN) AS BBAN "
			+ " FROM XX_REMB_SELECTION PS "
			+ " INNER JOIN C_BankAccount BA ON (BA.C_BankAccount_ID = PS.C_BankAccount_ID) "
			+ " INNER JOIN AD_Org ORG ON (PS.AD_Org_ID = ORG.AD_Org_ID) "
			+ " INNER JOIN AD_OrgInfo ORGINF ON (ORG.AD_Org_ID = ORGINF.AD_Org_ID) "
			+ " WHERE ps.XX_REMB_SELECTION_ID = ? ";
				
		ArrayList<Object> values = new ArrayList<Object>();
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			pst.setInt(1, p_RembClient_ID);
			rs = pst.executeQuery();
			if (rs.next()){
				values.add(rs.getInt("msgid"));
				values.add(rs.getTimestamp("credttm"));
				values.add(rs.getInt("NbOftrx"));
				values.add(rs.getBigDecimal("ctrlsum"));
				values.add(rs.getString("Nm") == null ? "" : rs.getString("Nm"));
				values.add(rs.getString("Id") == null ? "" : rs.getString("Id"));
				values.add(rs.getString("Issr") == null ? "" : rs.getString("Issr"));
				values.add(rs.getTimestamp("ReqdExctnDt"));
				values.add(rs.getString("IBAN") == null ? "" : rs.getString("IBAN"));
				values.add(rs.getString("BBAN") == null ? "" : rs.getString("BBAN"));
			}
		} catch (Exception e) {
			log.saveError("Error", e.getMessage());
		}
		finally{
			Util.closeCursor(pst, rs);
		}

		return values;
	}


	private Object[] getadrlineSelectionCheck(X_XX_REMB_SEL_LIGNE check){
		
		String sql = "SELECT LO.ADDRESS1 AS ADDRESS1, LO.postal || ' ' || (SELECT CT.NAME FROM C_Country CT WHERE CT.C_Country_ID = LO.C_Country_ID), "
				+ "(SELECT CT.countrycode FROM C_Country CT WHERE CT.C_Country_ID = LO.C_Country_ID) "
				+ "FROM XX_REMB_SELECTION PSL "
				+ "INNER JOIN AD_Org ORG ON (ORG.AD_Org_ID = PSL.AD_Org_ID) "
				+ "INNER JOIN AD_OrgInfo ORGINF ON (ORGINF.AD_Org_ID = ORG.AD_Org_ID) "
				+ "INNER JOIN C_Location LO ON (LO.C_Location_ID = ORGINF.C_Location_ID) "
				+ "WHERE PSL.XX_REMB_SELECTION_ID = ? AND PSL.IsActive='Y'" ;

		ArrayList<Object> list = new ArrayList<Object>();
		PreparedStatement pst = null;
		ResultSet rs = null;

		try
		{
			pst = DB.prepareStatement(sql,get_Trx());
			pst.setInt(1, check.getXX_REMB_SELECTION_ID());

			rs = pst.executeQuery();
			if (rs.next()){
				list.add(rs.getString(1) == null ? "" : rs.getString(1).substring(0,rs.getString(1).length()>68?68:rs.getString(1).length()));
				list.add(rs.getString(2) == null ? "" : rs.getString(2).substring(0,rs.getString(2).length()>68?68:rs.getString(2).length()));
				list.add(rs.getString(3) == null ? "" : rs.getString(3).substring(0,rs.getString(3).length()>68?68:rs.getString(3).length()));
			}
		}
		catch (SQLException e)
		{
			log.saveError("Error", e.getMessage());
		}
		finally{
			Util.closeCursor(pst, rs);
		}
		//  convert to Array
		Object[] retValue = new Object[list.size()];
		list.toArray(retValue);
		return retValue;

	}
	
	private ArrayList<String> getInfoPaySelectionCheckAccount(X_XX_REMB_SEL_LIGNE PaySelectionCheck){
		ArrayList<String> values = new ArrayList<String>();
		StringBuffer sql = new StringBuffer("SELECT Z_RIBCLEAN(acct.iban), Z_RIBCLEAN(acct.bban), cur.iso_code, p.documentno ");
		sql.append("FROM XX_REMB_SEL_LIGNE ck ");
		sql.append("INNER JOIN C_Payment p ON (ck.c_payment_id = p.c_payment_id) ");
		sql.append("INNER JOIN C_BankAccount acct ON (p.c_bankaccount_id = acct.c_bankaccount_id) ");
		sql.append("INNER JOIN c_currency cur ON (p.C_Currency_ID = p.C_Currency_ID) ");
		sql.append("WHERE ck.XX_REMB_SEL_LIGNE_ID =? AND ck.IsActive='Y'");

		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			pst.setInt(1, PaySelectionCheck.getXX_REMB_SEL_LIGNE_ID());
			rs = pst.executeQuery();
			if (rs.next()){
				values.add(rs.getString(1) == null ? "" : rs.getString(1));
				values.add(rs.getString(2) == null ? "" : rs.getString(2));
				values.add(rs.getString(3) == null ? "" : rs.getString(3));
				values.add(rs.getString(4) == null ? "" : rs.getString(4));
			}
		} catch (Exception e) {
			log.saveError("Error", e.getMessage());
		}
		finally{
			Util.closeCursor(pst, rs);
		}

		return values;
	}// getInfoPaySelectionCheckAccount
	
	private ArrayList<String> getInfoPaySelectionCheckBPAccount(X_XX_REMB_SEL_LIGNE PaySelectionCheck){
		ArrayList<String> values = new ArrayList<String>();
		StringBuffer sql = new StringBuffer(" SELECT  null as A_CountryCode,  null as A_Street, null as A_City, "
				+ "null as  Z_SubCode,null as  Z_IDBk,null as  Z_OEurope, Z_RIBCLEAN(ck.bban), Z_RIBCLEAN(ck.iban), null as AccountNo, cur.ISO_Code, cb.Name as A_Name "
				+ "FROM XX_REMB_SEL_LIGNE ck "
				+ "inner join C_BPartner cb on cb.C_Bpartner_ID = ck.C_Bpartner_ID "
				+ "inner join XX_REMB_SELECTION sel on sel.XX_REMB_SELECTION_ID = ck.XX_REMB_SELECTION_ID "
				+ "INNER JOIN c_currency cur ON (cur.C_Currency_ID = sel.C_Currency_ID) "
				+ "WHERE ck.XX_REMB_SEL_LIGNE_ID =? AND ck.IsActive='Y' ");// #68213
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			pst.setInt(1, PaySelectionCheck.getXX_REMB_SEL_LIGNE_ID());
			rs = pst.executeQuery();
			if (rs.next()){
				values.add(rs.getString(1) == null ? "" : rs.getString(1));
				values.add(rs.getString(2) == null ? "" : rs.getString(2));
				values.add(rs.getString(3) == null ? "" : rs.getString(3));
				values.add(rs.getString(4) == null ? "" : rs.getString(4));
				values.add(rs.getString(5) == null ? "" : rs.getString(5));
				values.add(rs.getString(6) == null ? "" : rs.getString(6));
				values.add(rs.getString(7) == null ? "" : rs.getString(7));
				values.add(rs.getString(8) == null ? "" : rs.getString(8));
				values.add(rs.getString(9) == null ? "" : rs.getString(9));
				values.add(rs.getString(10) == null ? "" : rs.getString(10));
				values.add(rs.getString(11) == null ? "" : rs.getString(11));
			}
		} catch (Exception e) {
			log.saveError("Error", e.getMessage());
		}
		finally{
			Util.closeCursor(pst, rs);
		}

		return values;
	}// getInfoPaySelectionCheckAccount
}
