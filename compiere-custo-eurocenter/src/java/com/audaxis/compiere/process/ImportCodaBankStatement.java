package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.model.MBPBankAccount;
import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MBankStatement;
import org.compiere.model.MBankStatementLine;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPayment;
import org.compiere.model.X_I_Coda;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;

import com.audaxis.compiere.model.MCheckDelivery;
import com.audaxis.compiere.model.MCheckDeliveryLine;
import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.util.CompiereException;

public class ImportCodaBankStatement extends SvrProcessExtended {

	private HashSet<String> p_IgnoreStatements = new HashSet<String>();

	private HashMap<String, ArrayList<X_I_Coda>> p_BankStatements = new HashMap<String, ArrayList<X_I_Coda>>();

	private boolean m_deleteOldImported;

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? ";
	
	private int p_BankAccount_ID;
	private int v_AD_Client_ID;

	@Override
	protected void prepare() {
		v_AD_Client_ID = getAD_Client_ID();
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(element.getParameter());
			else if (name.equals("C_BankAccount_ID"))
				p_BankAccount_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		if(v_AD_Client_ID == 0)
			return "Erreur, soci�t� non connue";
		if(p_BankAccount_ID == 0)
			return "Banque inconnue";

		deleteOldImported();

		if (verification())
			if (generateBankStatments())
				return Msg.getMsg(getCtx(), ImportCodaMessages.PROCESSOK);
			else
				throw new CompiereException(
						Msg.getMsg(
								getCtx(),
								ImportCodaMessages.DUPLICATE_GENERATEBANKSTATMENTS_ERROR));

		return Msg.getMsg(getCtx(), ImportCodaMessages.PROCESSFAILED);
	}

	private void deleteOldImported() {

		if (m_deleteOldImported) {
			String sql = "DELETE FROM I_Coda WHERE I_IsImported='Y' and C_BankAccount_ID = "+p_BankAccount_ID
					+ STD_CLIENT_CHECK;
			int no = DB.executeUpdate(get_Trx(), sql, v_AD_Client_ID);
			log.info("Delete Old Impored =" + no);
		}
	}

	private boolean verification() {

		boolean IsAllAssignValid = true;

		ArrayList<X_I_Coda> listCoda = new ArrayList<X_I_Coda>();
		int[] coda_IDs = PO.getAllIDs(X_I_Coda.Table_Name,
				"I_IsImported = 'N' AND AD_Client_ID = " + v_AD_Client_ID+" AND C_BankAccount_ID = "+p_BankAccount_ID
						+ " ORDER BY StatementDate DESC", get_Trx());
		for (int i_Coda_ID : coda_IDs) {

			boolean isValide = true;

			X_I_Coda i_Coda = new X_I_Coda(getCtx(), i_Coda_ID, get_Trx());

			StringBuffer error = new StringBuffer("");
			//90353
			if(i_Coda.getC_BPartner_ID() > 0){
				String isActive = DB.getSQLValueString(get_Trx(), "select isactive from c_bpartner where c_bpartner_id = ?",i_Coda.getC_BPartner_ID());
				if(isActive.equals("N")){
					error = new StringBuffer
							((error.toString()).replace(Msg.getMsg(getCtx(),
									ImportCodaMessages.BPARTNER_INACTIVE), ""));
					error.append(Msg.getMsg(getCtx(),
							ImportCodaMessages.BPARTNER_INACTIVE));
					isValide = false;
					
				}	
			}
			//42840
			if (i_Coda.getC_Invoice_ID() > 0 
					&& isInvoiceInUnprocessedPaySelection(i_Coda)) {
				error = new StringBuffer((error.toString()).replace(Msg.getMsg(
						getCtx(), ImportCodaMessages.INVOICE_PAYSELECTION_ERROR),
						""));
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.INVOICE_PAYSELECTION_ERROR));
				isValide = false;
			}
			//42840

			if (!i_Coda.isXX_Assigned() && !i_Coda.isXX_IsValidManual()) {
				error = new StringBuffer((error.toString()).replace(Msg.getMsg(
						getCtx(), ImportCodaMessages.NOT_ASSIGNED_ERROR), ""));
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.NOT_ASSIGNED_ERROR));
				isValide = false;
			}
			if (!isImportTypeValide(i_Coda)) {
				error = new StringBuffer((error.toString()).replace(Msg.getMsg(
						getCtx(), ImportCodaMessages.ASSIGNATION_TYPE_ERROR),
						""));
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.ASSIGNATION_TYPE_ERROR));
				isValide = false;
			}
			//Passer le paiement � la facture quoi qu'il arrive
//			if (i_Coda.getC_Invoice_ID() > 0 && i_Coda.getC_Payment_ID() <= 0
//					&& !isInvoiceConsistent(i_Coda)) {
//				error = new StringBuffer((error.toString()).replace(Msg.getMsg(
//						getCtx(), ImportCodaMessages.CONSISTENT_INVOICE_ERROR),
//						""));
//				error.append(Msg.getMsg(getCtx(),
//						ImportCodaMessages.CONSISTENT_INVOICE_ERROR));
//				isValide = false;
//			}
			if (i_Coda.getC_Payment_ID() > 0 && !isPaymentConsistent(i_Coda)) {
				error = new StringBuffer((error.toString()).replace(Msg.getMsg(
						getCtx(), ImportCodaMessages.CONSISTENT_PAYMENT_ERROR),
						""));
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.CONSISTENT_PAYMENT_ERROR));
				isValide = false;
			}
			String key = i_Coda.getC_BankAccount_ID() + "|"
					+ i_Coda.getStatementDate();
			if (!p_IgnoreStatements.contains(key))
				if (isBankStatementExist(i_Coda))
					return false;
				else if (!isBankStatementCamplet(i_Coda))
					return false;

			ArrayList<X_I_Coda> codaListe;
			if (!p_BankStatements.containsKey(key))
				codaListe = new ArrayList<X_I_Coda>();
			else
				codaListe = p_BankStatements.get(key);
			codaListe.add(i_Coda);
			p_BankStatements.put(key, codaListe);

			if (!isValide)
				IsAllAssignValid = false;

			i_Coda.setI_ErrorMsg(error.toString());
			i_Coda.setXX_IsAssignValid(isValide);
			listCoda.add(i_Coda);
		}
		PO.saveAll(get_Trx(), listCoda);

		if (!IsAllAssignValid)
			addLog(Msg.getMsg(getCtx(),
					ImportCodaMessages.GLOBAL_ASSIGNATION_ERROR));

		return IsAllAssignValid;
	}

	private boolean isPaymentConsistent(X_I_Coda i_Coda) {

		StringBuffer sql = new StringBuffer(
				"SELECT COUNT(1) FROM C_Payment P WHERE P.C_Payment_ID = ? ");
		sql.append("AND ((P.Payamt = ? AND P.Isreceipt = 'Y') OR (- P.Payamt = ? AND P.Isreceipt = 'N')) AND p.DocStatus IN ('IP', 'CO') ");
		sql.append("AND (SELECT 1 FROM C_BankStatementLine bk WHERE bk.C_Payment_ID = p.C_Payment_ID ) IS NULL AND p.C_BankAccount_ID = ? ");
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(i_Coda.getC_Payment_ID());
		params.add(i_Coda.getTrxAmt());
		params.add(i_Coda.getTrxAmt());
		params.add(i_Coda.getC_BankAccount_ID());
		if (DB.getSQLValue(get_Trx(), sql.toString(), params) > 0)
			return true;

		return false;
	}

	private boolean isInvoiceConsistent(X_I_Coda i_Coda) {

		StringBuffer sql = new StringBuffer(
				"SELECT COUNT(1) FROM C_Invoice I WHERE I.C_Invoice_ID = ? ");
		sql.append("AND ((i.IsSOTrx  = 'Y' AND (i.grandtotal - COALESCE((SELECT SUM(al.amount) FROM C_Allocationline Al WHERE al.C_Invoice_ID = i.C_Invoice_ID),0)) >= ?) ");
		sql.append("OR (i.IsSOTrx = 'N' AND (i.grandtotal + COALESCE((SELECT SUM(al.amount) FROM C_Allocationline Al WHERE Al.C_Invoice_ID = i.C_Invoice_ID),0)) <= ? )) ");
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(i_Coda.getC_Invoice_ID());
		params.add(i_Coda.getTrxAmt());
		params.add(i_Coda.getTrxAmt());
		if (DB.getSQLValue(get_Trx(), sql.toString(), params) > 0)
			return true;

		return false;
	}
	
	//42840
	private boolean isInvoiceInUnprocessedPaySelection(X_I_Coda i_Coda) {

		StringBuffer sql = new StringBuffer(
				"SELECT COUNT(1) FROM C_PaySelection ps ");
			sql.append(" WHERE ( SELECT psl.C_PaySelection_ID FROM C_PaySelectionLine psl ");
			sql.append(" WHERE psl.C_Invoice_ID = ? ");
			sql.append(" ) = ps.C_PaySelection_ID ");
			sql.append(" AND ps.Processed = 'N' ");
			
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(i_Coda.getC_Invoice_ID());
		if (DB.getSQLValue(get_Trx(), sql.toString(), params) > 0)
			return true;

		return false;
	}
	//42840

	private boolean isBankStatementCamplet(X_I_Coda i_Coda) {

		StringBuffer sql = new StringBuffer(
				"SELECT CASE WHEN (SUM(TrxAmt) OVER( PARTITION BY C_BankAccount_ID,StatementDate)) = StatementDifference ");
		sql.append("THEN 1 ELSE 0 END FROM I_Coda WHERE C_BankAccount_ID = ? AND StatementDate = ?");

		boolean camplite = DB.getSQLValue(
				get_Trx(),
				sql.toString(),
				new Object[] { i_Coda.getC_BankAccount_ID(),
						i_Coda.getStatementDate() }) == 1;
		String key = i_Coda.getC_BankAccount_ID() + "|"
				+ i_Coda.getStatementDate();
		if (!camplite)
			addLog(Msg.getMsg(getCtx(),
					ImportCodaMessages.GLOBAL_VERIFICATION_ERROR));

		p_IgnoreStatements.add(key);

		return camplite;
	}

	private boolean isBankStatementExist(X_I_Coda i_Coda) {

		int c_BankStatement_ID = DB
				.getSQLValue(
						get_Trx(),
						"SELECT C_BankStatement_ID FROM C_BankStatement WHERE C_BankAccount_ID = ? AND  StatementDate = ?",
						new Object[] { i_Coda.getC_BankAccount_ID(),
								i_Coda.getStatementDate() });
		if (c_BankStatement_ID > 0) {
			MBankStatement statement = new MBankStatement(getCtx(),
					c_BankStatement_ID, get_Trx());
			addLog(Msg.getMsg(getCtx(),
					ImportCodaMessages.DOUBL_VERIFICATION_ERROR)
					+ " -> "
					+ "@C_BankStatement_ID@ = " + statement.getName());

			String key = i_Coda.getC_BankAccount_ID() + "|"
					+ i_Coda.getStatementDate();

			p_IgnoreStatements.add(key);
			return true;
		}
		return false;
	}

	private boolean isImportTypeValide(X_I_Coda i_Coda) {

		MBPartner partner = new MBPartner(getCtx(), i_Coda.getC_BPartner_ID(),
				get_Trx());
		char type = i_Coda.getXX_ImportType() != null ? i_Coda
				.getXX_ImportType().charAt(0) : '0';
		switch (type) {
		case '1':
			return (i_Coda.getC_BPartner_ID() > 0
					&& i_Coda.getC_Invoice_ID() > 0
					&& i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& !i_Coda.isXX_Debit() && i_Coda.getC_DocType_ID() > 0);
		case '2':
			return (i_Coda.getC_BPartner_ID() > 0
					&& i_Coda.getC_Invoice_ID() <= 0
					&& i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& partner.isCustomer() && i_Coda.getC_DocType_ID() > 0);
		case '3':
			return (i_Coda.getC_BPartner_ID() > 0
					&& i_Coda.getC_Payment_ID() > 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0 && !i_Coda
						.isXX_Debit());
		case '4':
			return (i_Coda.getC_BPartner_ID() > 0
					//Evolution #41652CODA - Optimisation (suite 3)
					&& i_Coda.getC_Invoice_ID() > 0
					&& i_Coda.getC_Payment_ID() <= 0 
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0 && i_Coda.isXX_Debit()
					&& i_Coda.getC_DocType_ID() > 0);
			
	case '5':
			return (i_Coda.getC_BPartner_ID() > 0
					&& i_Coda.getC_Invoice_ID() > 0
					&& i_Coda.getC_Payment_ID() > 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0 && i_Coda
						.isXX_Debit());
		case '6':
			return (i_Coda.getC_BPartner_ID() > 0
					&& i_Coda.getC_Invoice_ID() <= 0
					&& i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& partner.isVendor() && i_Coda.getC_DocType_ID() > 0);
		case '7':
			return (i_Coda.getC_Charge_ID() > 0
//42697					&& i_Coda.getC_Invoice_ID() <= 0
//42697					&& i_Coda.getC_Payment_ID() <= 0
//42697					&& i_Coda.getC_PaySelection_ID() <= 0 && i_Coda
//42697					.getZ_CheckDelivery_ID() <= 0);
					&& (i_Coda.get_ValueAsString("XX_Debit") != null && i_Coda.get_ValueAsString("XX_Debit").equals("Y") || i_Coda.get_ValueAsString("XX_Debit").equals("N"))//42697 Test pas nécéssaire vérifié dans DB, mais demandé (spécifié) par consultant
					);
					
		case '8':
			return (i_Coda.getC_PaySelection_ID() > 0
					&& i_Coda.getC_Invoice_ID() <= 0
					&& i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0 && i_Coda
					.getZ_CheckDelivery_ID() <= 0);
		case '9':
			return (i_Coda.getZ_CheckDelivery_ID() > 0
					&& i_Coda.getC_Invoice_ID() <= 0
					&& i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0 && i_Coda
					.getC_PaySelection_ID() <= 0);
		default:
			return false;
		}
	}

	private boolean generateBankStatments() {

		Iterator<Entry<String, ArrayList<X_I_Coda>>> iterator = p_BankStatements
				.entrySet().iterator();

		while (iterator.hasNext()) {

			MBankStatement bankStatement = null;
			BigDecimal StatementDifference = BigDecimal.ZERO;

			for (X_I_Coda i_Coda : (iterator.next()).getValue()) {

				if (bankStatement == null) {
					bankStatement = new MBankStatement(getCtx(), 0, get_Trx());
					bankStatement.setAD_Client_ID(i_Coda.getAD_Client_ID());
					
					//Evolution 70967
					int AD_Org_ID = DB.getSQLValue(get_Trx(), 
							"SELECT AD_Org_ID FROM AD_OrgInfo WHERE IsOrgAdmin = 'Y' AND AD_Client_ID = ? ", 
							new Object[] {getCtx().getAD_Client_ID()});
					bankStatement.setAD_Org_ID(AD_Org_ID);
					//Fin Evolution 70967
					
					String name = new SimpleDateFormat("yyyy-MM-dd")
							.format(i_Coda.getStatementDate())
							+ " | "
							+ i_Coda.getXX_Nbr();
					bankStatement.setName(name);
					bankStatement.setC_BankAccount_ID(i_Coda.getC_BankAccount_ID());
					bankStatement.setStatementDate(i_Coda.getStatementDate());
					BigDecimal beginningBalance = DB
							.getSQLValueBD(
									get_Trx(),
									"SELECT CurrentBalance FROM C_BankAccount WHERE C_BankAccount_ID = ? ",
									i_Coda.getC_BankAccount_ID());
					bankStatement.setBeginningBalance(beginningBalance);
					bankStatement.setEndingBalance(i_Coda.getEndingBalance());
					StringBuffer sql = new StringBuffer(
							"SELECT b.C_DocType_ID FROM C_Bank b WHERE b.C_Bank_ID = ");
					sql.append("(SELECT bc.C_Bank_ID FROM C_BankAccount bc WHERE bc.C_BankAccount_ID = ? )");
					int v_C_DocType_ID = DB.getSQLValue(get_Trx(),
							sql.toString(), i_Coda.getC_BankAccount_ID());
					bankStatement.set_Value("C_DocType_ID", v_C_DocType_ID);
					if (bankStatement.get_ID() == 0 && !bankStatement.save()) {
						log.log(Level.SEVERE, "Bank Statement not created");
						return false;
					}
					StatementDifference = i_Coda.getStatementDifference();
					
				}
				if (!switchActions(i_Coda, bankStatement, i_Coda
						.getXX_ImportType().charAt(0)))
					return false;
				if (i_Coda.getC_BPartner_ID() > 0
						&& DB.getSQLValue(
								get_Trx(),
								"SELECT (1) FROM C_BP_BankAccount WHERE IsActive = 'Y' AND C_BPartner_ID = ?",
								i_Coda.getC_BPartner_ID()) < 0)
					generateBPBankAccount(i_Coda.getC_BPartner_ID(),
							i_Coda.getXX_BP_AccountNbr(),
							i_Coda.getXX_BP_BBAN());

				//i_Coda.setC_BankStatement_ID(bankStatement
				//		.getC_BankStatement_ID());
				i_Coda.setName(bankStatement.getName());
				i_Coda.setI_IsImported("Y");
				i_Coda.save();
			}
			MBankStatementLine[] lines = bankStatement.getLines(true);
			BigDecimal total = BigDecimal.ZERO;
			Timestamp minDate = bankStatement.getStatementDate();
			Timestamp maxDate = minDate;
			for (MBankStatementLine line : lines) {
				total = total.add(line.getStmtAmt());
				if (line.getDateAcct().before(minDate))
					minDate = line.getDateAcct();
				if (line.getDateAcct().after(maxDate))
					maxDate = line.getDateAcct();
			}
			MBankAccount m_BankAccount = new MBankAccount(getCtx(),
					bankStatement.getC_BankAccount_ID(), get_Trx());
			String account = m_BankAccount.getIBAN() == null ? m_BankAccount
					.getAccountNo() : m_BankAccount.getIBAN();
			String coherent = StatementDifference
					.compareTo(total) == 0 ? " @Yes@ "
					: " @No@ ";
			addLog("@C_BankStatement_ID@ = " + bankStatement.getName());
			addLog("@C_BankAccount_ID@ = " + account);
			addLog(ImportCodaMessages.TOTAL_COHERENT + coherent
					+ StatementDifference + " <=> "
					+ total);
			if (!total.equals(StatementDifference))
				addLog(Msg.getMsg(getCtx(),
						ImportCodaMessages.FINAL_VERIFICATION_ERROR)
						+ " -> "
						+ "@C_BankStatement_ID@ = " + bankStatement.getName());
		}
		return true;
	}

	private void generateBPBankAccount(int c_BPartner_ID, String m_AccountNo,
			String m_BBAN) {

		MBPartner partner = new MBPartner(getCtx(), c_BPartner_ID, get_Trx());
		MBPBankAccount p_Account = new MBPBankAccount(getCtx(), c_BPartner_ID,
				m_AccountNo, "", m_AccountNo, get_Trx());
		p_Account.setClientOrg(getAD_Client_ID(), getCtx().getAD_Org_ID());
		p_Account.setIsActive(true);
		p_Account.setC_BPartner_ID(c_BPartner_ID);
		p_Account.setA_Name(partner.getName());
		p_Account.setBBAN(m_BBAN);
		p_Account.save();
		log.info("@C_BP_BankAccount_ID@ = " + p_Account.getA_Name());
	}

	private boolean switchActions(X_I_Coda i_Coda,
			MBankStatement bankStatement, char type) {

		switch (type) {
		case '1':
			return (generatePayment(i_Coda) && generateStatementLine(
					i_Coda, bankStatement));
		case '2':
			return (generatePayment(i_Coda) && generateStatementLine(i_Coda,
					bankStatement));
		case '3':
			return generateStatementLine(i_Coda, bankStatement);
			
		case '4':
			//Evolution #41652:CODA - Optimisation (suite 3)
				return (generatePayment(i_Coda) && generateStatementLine(
					i_Coda, bankStatement));
		case '5':
			return generateStatementLine(i_Coda, bankStatement);
			
		case '6':
			return (generatePayment(i_Coda) && generateStatementLine(i_Coda,
					bankStatement));
		case '7':
			return generateStatementLine(i_Coda, bankStatement);
			
		case '8':
			return generateFromPaySelection(i_Coda, bankStatement);
			
		case '9':
			return generateFromDeliveryCheck(i_Coda, bankStatement);
			
		default:
			return false;
		}
	}


	private boolean generateFromDeliveryCheck(X_I_Coda i_Coda,
			MBankStatement bankStatement) {

		MCheckDelivery del = new MCheckDelivery(getCtx(),
				i_Coda.getZ_CheckDelivery_ID(), get_Trx());
		MCheckDeliveryLine[] delLines = del.getLines(true);
		for (int j = 0; j < delLines.length; j++) {
			MCheckDeliveryLine delLine = delLines[j];
			MBankStatementLine bsl = new MBankStatementLine(bankStatement);
			MPayment pay = new MPayment(getCtx(), delLine.getC_Payment_ID(),
					get_Trx());
			if (!pay.isReconciled()) {
				bsl.setPayment(pay);
				bsl.setDescription("Auto Remise : " + del.getDocumentNo());
				if (!bsl.save()) {
					log.log(Level.SEVERE,
							"Bank Statement Line not written - statement="
									+ bankStatement.get_ID());
					return false;
				}
			} else
				log.info("Payment is allredy reconciled ! "
						+ pay.getDocumentNo());
		}
		return true;
	}

	private boolean generateFromPaySelection(X_I_Coda i_Coda,
			MBankStatement bankStatement) {

		MPaySelection ps = new MPaySelection(getCtx(),
				i_Coda.getC_PaySelection_ID(), get_Trx());
		String sql = "select C_Payment_ID from C_PaySelectionCheck where C_PaySelection_ID = ? and IsActive ='Y'";
		Object[][] results = QueryUtil.executeQuery(sql,
				new Object[] { ps.getC_PaySelection_ID() });
		for (Object[] row : results) {
			MBankStatementLine bsl = new MBankStatementLine(bankStatement);
			MPayment pay = new MPayment(getCtx(),
					((BigDecimal) row[0]).intValue(), get_Trx());
			if (!pay.isReconciled()) {
				bsl.setPayment(pay);
				bsl.setDescription("Auto Selection de Payment : "
						+ ps.get_ValueAsString("DocumentNo"));
				if (!bsl.save()) {
					log.log(Level.SEVERE,
							"Bank Statement Line not written - statement="
									+ bankStatement.get_ID());
					return false;
				}
			} else
				log.info("Payment is allredy reconciled ! "
						+ pay.getDocumentNo());
		}
		return true;
	}

	/**
	private boolean generateAllocation(X_I_Coda i_Coda) {

		if (i_Coda.getC_Invoice_ID() > 0 && i_Coda.getC_Payment_ID() > 0) {

			MInvoice invoice = new MInvoice(getCtx(), i_Coda.getC_Invoice_ID(),
					get_Trx());
			BigDecimal AppliedAmt = invoice.get_ValueAsBD(APPLIED_AMOUNT) != null ? invoice
					.get_ValueAsBD(APPLIED_AMOUNT) : BigDecimal.ZERO;
			BigDecimal DiscountAmt = invoice.get_ValueAsBD(DISCOUNT) != null ? invoice
					.get_ValueAsBD(APPLIED_AMOUNT) : BigDecimal.ZERO;
			BigDecimal WriteOffAmt = invoice.get_ValueAsBD(WRITEOFF) != null ? invoice
					.get_ValueAsBD(APPLIED_AMOUNT) : BigDecimal.ZERO;
			BigDecimal ConvertedOpenAmt = invoice.get_ValueAsBD(OPEN_AMOUNT) != null ? invoice
					.get_ValueAsBD(APPLIED_AMOUNT) : BigDecimal.ZERO;
			BigDecimal OverUnderAmt = (ConvertedOpenAmt).subtract(AppliedAmt)
					.subtract(DiscountAmt).subtract(WriteOffAmt);

			MPayment pay = new MPayment(getCtx(), i_Coda.getC_Payment_ID(),
					get_Trx());
			BigDecimal PaymentAmt = pay.getPayAmt();
			BigDecimal amount = BigDecimal.ZERO;
			if ((AppliedAmt.abs()).compareTo(PaymentAmt.abs()) > 0)
				amount = PaymentAmt;
			else
				amount = AppliedAmt;

			log.fine("C_Payment_ID=" + i_Coda.getC_Invoice_ID()
					+ ", C_Invoice_ID=" + i_Coda.getC_Payment_ID()
					+ ", Amount=" + amount + ", Discount=" + DiscountAmt
					+ ", WriteOff=" + WriteOffAmt);

			MAllocationHdr alloc = new MAllocationHdr(getCtx(), true,
					pay.getDateTrx(), pay.getC_Currency_ID(), getCtx()
							.getContext("#AD_User_Name"), get_Trx());
			alloc.setAD_Org_ID(i_Coda.getAD_Org_ID());
			if (alloc.get_ID() == 0 && !alloc.save()) {
				log.log(Level.SEVERE, "Allocation not created");
				return false;
			}

			MAllocationLine aLine = new MAllocationLine(alloc, amount,
					DiscountAmt, WriteOffAmt, OverUnderAmt);
			aLine.setDocInfo(invoice.getC_BPartner_ID(),
					invoice.getC_Order_ID(), invoice.get_ID());
			aLine.setPaymentInfo(pay.get_ID(), 0);
			if (!aLine.save()) {
				log.log(Level.SEVERE, "Allocation Line not written - Invoice="
						+ invoice.get_ID());
				return false;
			}

			if (pay.getRef_Payment_ID() != 0
					&& invoice.getRef_Invoice_ID() != 0)

			{
				MPayment payCounter = new MPayment(getCtx(),
						pay.getRef_Payment_ID(), get_Trx());
				payCounter.setC_Invoice_ID(invoice.getRef_Invoice_ID());
				payCounter.save();

				MAllocationHdr counterAlloc = new MAllocationHdr(getCtx(),
						false, pay.getDateTrx(), pay.getC_Currency_ID(),
						getCtx().getContext("#AD_User_Name"), get_Trx());
				counterAlloc.setAD_Org_ID(payCounter.getAD_Org_ID());
				if (counterAlloc.get_ID() == 0 && !counterAlloc.save()) {
					log.log(Level.SEVERE, "Counter Allocation not created");
					return false;
				}

				MAllocationLine aLineCounter = new MAllocationLine(
						counterAlloc, amount.negate(), DiscountAmt,
						WriteOffAmt, OverUnderAmt);
				aLineCounter.setAD_Org_ID(payCounter.getAD_Org_ID());
				aLineCounter.setDocInfo(payCounter.getC_BPartner_ID(),
						payCounter.getC_Order_ID(),
						payCounter.getC_Invoice_ID());
				aLineCounter.setPaymentInfo(pay.getRef_Payment_ID(), 0);
				if (!aLineCounter.save()) {
					log.log(Level.SEVERE,
							"Counter Allocation Line not written - Invoice="
									+ invoice.get_ID());
					return false;
				}

				if (counterAlloc.get_ID() != 0) {
					DocumentEngine.processIt(counterAlloc,
							DocActionConstants.ACTION_Complete);
					counterAlloc.save();
				}
			}
			log.fine("Allocation Amount=" + amount + " - Remaining  Applied="
					+ AppliedAmt + ", Payment=" + PaymentAmt);

			log.info("@C_AllocationHdr_ID@ = " + alloc.getDocumentNo());
		}
		return true;
	}**/

	//Evolution 70967
	private boolean generateStatementLine(X_I_Coda i_Coda, MBankStatement statement) {

		MBankStatementLine bsl = null;
		ArrayList<MBankStatementLine> bsls = new ArrayList<MBankStatementLine>();

		String com = (i_Coda.getXX_Com1() == null ? "" : i_Coda.getXX_Com1())
		+ (i_Coda.getXX_Com2() == null ? "" : i_Coda.getXX_Com2())
		+ (i_Coda.getXX_Com3() == null ? "" : i_Coda.getXX_Com3());

		char type = i_Coda.getXX_ImportType().charAt(0);

		bsl = new MBankStatementLine(statement);
		bsl.setAD_Client_ID(statement.getAD_Client_ID());
		bsl.setAD_Org_ID(i_Coda.getAD_Org_ID());
		bsl.set_Value("CreatedBy", getCtx().getAD_User_ID());
		bsl.set_Value("UpdatedBy", getCtx().getAD_User_ID());
		bsl.setLine(i_Coda.getXX_Sequence());
		bsl.setDescription(i_Coda.get_ValueAsString("XX_DateTrx") == null
				|| i_Coda.get_ValueAsString("XX_DateTrx").length() <= 0 ? com
				: i_Coda.get_ValueAsString("XX_DateTrx"));
		bsl.setValutaDate(i_Coda.getValutaDate());
		bsl.setDateAcct(i_Coda.getDateAcct());
		bsl.setStatementLineDate(i_Coda.getValutaDate());

		// type d’import différent de « 7. Autre transaction » : une seul ligne
		if(type !='7'){
			bsl.setC_Payment_ID(i_Coda.getC_Payment_ID());
			bsl.setC_BPartner_ID(i_Coda.getC_BPartner_ID());
			bsl.set_Value("C_Order_ID", i_Coda.get_Value("C_Order_ID"));
			bsl.setC_Charge_ID(0);
			bsl.setTrxAmt(i_Coda.getTrxAmt());
			bsl.setStmtAmt(i_Coda.getTrxAmt());
			bsl.setChargeAmt(BigDecimal.ZERO);
		}
		// type d’import « 7. Autre transaction » : une seul ligne
		else{
			bsl.setC_Payment_ID(0);
			bsl.setC_BPartner_ID(0);
			bsl.set_Value("C_Order_ID", 0);
			bsl.setC_Charge_ID(i_Coda.getC_Charge_ID());
			bsl.setTrxAmt(BigDecimal.ZERO);
//			if(i_Coda.get_ValueAsBD("XX_BrutAmt") == null || i_Coda.get_ValueAsBD("XX_BrutAmt").compareTo(BigDecimal.ZERO)<=0
//					&& i_Coda.get_ValueAsBD("XX_BrutAmt") == null || i_Coda.get_ValueAsBD("XX_CmsAmt").compareTo(BigDecimal.ZERO)<=0){
			if(i_Coda.get_ValueAsBD("XX_BrutAmt") == null || i_Coda.get_ValueAsBD("XX_BrutAmt").compareTo(BigDecimal.ZERO)<=0
					&& i_Coda.get_ValueAsBD("XX_CmsAmt") == null || i_Coda.get_ValueAsBD("XX_CmsAmt").compareTo(BigDecimal.ZERO)<=0){
				bsl.setStmtAmt(i_Coda.getTrxAmt());
				bsl.setChargeAmt(i_Coda.getTrxAmt());
			}else{
				bsl.setStmtAmt(i_Coda.get_ValueAsBD("XX_BrutAmt"));
				bsl.setChargeAmt(i_Coda.get_ValueAsBD("XX_BrutAmt"));
			}
		}

		bsl.setC_Currency_ID(i_Coda.getC_Currency_ID());
		bsl.setValutaDate(i_Coda.getValutaDate());
		bsl.setDateAcct(i_Coda.getDateAcct());
		bsl.setStatementLineDate(i_Coda.getValutaDate());
		
		bsls.add(bsl);

		// type d’import « 7. Autre transaction » : création du 2eme ligne
//		if(type =='7' && i_Coda.get_ValueAsBD("XX_BrutAmt") != null && i_Coda.get_ValueAsBD("XX_BrutAmt").compareTo(BigDecimal.ZERO)>0
//				&& i_Coda.get_ValueAsBD("XX_BrutAmt") != null && i_Coda.get_ValueAsBD("XX_CmsAmt").compareTo(BigDecimal.ZERO)>0){
		if(type =='7' && i_Coda.get_ValueAsBD("XX_BrutAmt") != null && i_Coda.get_ValueAsBD("XX_BrutAmt").compareTo(BigDecimal.ZERO)>0
		&& i_Coda.get_ValueAsBD("XX_CmsAmt") != null && i_Coda.get_ValueAsBD("XX_CmsAmt").compareTo(BigDecimal.ZERO)>0){
			bsl = new MBankStatementLine(statement);
			bsl.setAD_Client_ID(statement.getAD_Client_ID());
			bsl.setAD_Org_ID(i_Coda.getAD_Org_ID());
			bsl.set_Value("CreatedBy", getCtx().getAD_User_ID());
			bsl.set_Value("UpdatedBy", getCtx().getAD_User_ID());
			bsl.setLine(i_Coda.getXX_Sequence());
			bsl.setDescription(i_Coda.get_ValueAsString("XX_DateTrx") == null
					|| i_Coda.get_ValueAsString("XX_DateTrx").length() <= 0 ? com
					: i_Coda.get_ValueAsString("XX_DateTrx"));
			bsl.setC_Payment_ID(0);
			bsl.setC_BPartner_ID(0);
			bsl.set_Value("C_Order_ID", 0);

			int c_Charge_ID = DB.getSQLValue(get_Trx(), 
					"SELECT MAX(Z_TrxCODA.XX_CmsAcct_ID) FROM Z_TrxCODA " +
					//"INNER JOIN I_Coda ON (Z_TrxCODA.C_Charge_ID = I_Coda.C_Charge_ID) " +
					"WHERE Z_TrxCODA.XX_CmsAcct_ID IS NOT NULL and Z_TrxCODA.C_Charge_ID = ?", i_Coda.getC_Charge_ID());
			
			bsl.setC_Charge_ID(c_Charge_ID);
			bsl.setTrxAmt(BigDecimal.ZERO);
			bsl.setStmtAmt(i_Coda.get_ValueAsBD("XX_CmsAmt").negate());
			bsl.setChargeAmt(i_Coda.get_ValueAsBD("XX_CmsAmt").negate());
			bsl.setC_Currency_ID(i_Coda.getC_Currency_ID());
			bsl.setValutaDate(i_Coda.getValutaDate());
			bsl.setDateAcct(i_Coda.getDateAcct());
			bsl.setStatementLineDate(i_Coda.getValutaDate());
			bsl.set_Value("C_DocType_ID", i_Coda.getC_DocType_ID());
			bsl.set_Value("XX_Dossier", i_Coda.get_ValueAsString("XX_Projet"));
			bsls.add(bsl);
		}
		//save
		for (MBankStatementLine bsLine : bsls) {
			if (!bsLine.save()) {
				log.log(Level.SEVERE, "Bank Statement Line not written - statement=" + statement.get_ID());
				return false;
			}
			//i_Coda.setC_BankStatementLine_ID(bsLine.getC_BankStatementLine_ID());
		}
		return true;
	}

	private boolean generatePayment(X_I_Coda i_Coda) {

		int C_Invoice_ID = i_Coda.getC_Invoice_ID();
		int C_BPartner_ID = i_Coda.getC_BPartner_ID();
		int C_Currency_ID = i_Coda.getC_Currency_ID();
		int C_DocType_ID = i_Coda.getC_DocType_ID();
		int C_BankAccount_ID = i_Coda.getC_BankAccount_ID();
		int AD_Org_ID = i_Coda.getAD_Org_ID();
		int C_Order_ID = i_Coda.get_ValueAsInt("C_Order_ID"); //Evolution 70967
		String poref = i_Coda.get_ValueAsString("XX_Projet");
		
		BigDecimal TrxAmt = i_Coda.getTrxAmt();
		Timestamp DateAcct = i_Coda.getDateAcct();
		String Description = i_Coda.getXX_Com1() + i_Coda.getXX_Com2()
				+ i_Coda.getXX_Com3();
		BigDecimal PayAmt = TrxAmt;
		if (PayAmt == null)
			PayAmt = BigDecimal.ZERO;
		MPayment payment = new MPayment(getCtx(), 0, get_Trx());
		payment.setAD_Org_ID(AD_Org_ID);
		payment.setC_DocType_ID(C_DocType_ID);
		payment.setC_BankAccount_ID(C_BankAccount_ID);
		payment.setTenderType(MPayment.TENDERTYPE_Check);
		payment.set_Value("ZSubPaymentRule_ID", i_Coda.getZSubPaymentRule_ID());
		if (DateAcct != null)
			payment.setDateTrx(DateAcct);
		if (DateAcct != null)
			payment.setDateAcct(DateAcct);
		else
			payment.setDateAcct(payment.getDateTrx());
		payment.setDescription(Description);
		if (C_Invoice_ID != 0) {
			MInvoice invoice = new MInvoice(getCtx(), C_Invoice_ID, get_Trx());
			payment.setC_Invoice_ID(invoice.getC_Invoice_ID());
			payment.setC_BPartner_ID(invoice.getC_BPartner_ID());
			if (PayAmt.signum() != 0) {
				payment.setC_Currency_ID(C_Currency_ID);
				if (invoice.isSOTrx())
					payment.setPayAmt(PayAmt);
				else
					payment.setPayAmt(PayAmt.negate());
				payment.setOverUnderAmt(invoice.getGrandTotal(true).subtract(
						payment.getPayAmt()));
			} else {
				payment.setC_Currency_ID(invoice.getC_Currency_ID());
				if (invoice.getAllocatedAmt() != null)
					payment.setPayAmt(invoice.getGrandTotal(true).subtract(
							invoice.getAllocatedAmt()));
				else
					payment.setPayAmt(invoice.getGrandTotal(true));
			}
	} else if (C_BPartner_ID != 0) {
		payment.setC_BPartner_ID(C_BPartner_ID);
		payment.setC_Currency_ID(C_Currency_ID);
		
		if (PayAmt.signum() < 0)
			payment.setPayAmt(PayAmt.abs());
		else
			payment.setPayAmt(PayAmt);
		if (MDocType.get(getCtx(), C_DocType_ID).isSOTrx()
				&& PayAmt.signum() < 0)
			payment.setPayAmt(PayAmt);
		if (!MDocType.get(getCtx(), C_DocType_ID).isSOTrx()
				&& PayAmt.signum() > 0)
			payment.setPayAmt(PayAmt.negate());
	} else
		return false;
		
		payment.setC_Order_ID(C_Order_ID); //Evolution 70967 
		payment.set_Value("XX_Dossier", poref.equals("")?null:poref);
		
		if (payment.save()
				&& DocumentEngine.processIt(payment,
						MPayment.DOCACTION_Complete)) {
			payment.save();
			i_Coda.setC_Payment_ID(payment.get_ID());
			log.info("@C_Payment_ID@ = " + payment.getDocumentNo());
			return true;
		}
		return false;
	}

	
}
