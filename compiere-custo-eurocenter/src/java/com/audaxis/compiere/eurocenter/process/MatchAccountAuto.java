package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.acct.Doc;
import org.compiere.common.CompiereStateException;
import org.compiere.model.MAccount;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MBPartner;
import org.compiere.model.MClientInfo;
import org.compiere.model.MConversionType;
import org.compiere.model.MDocType;
import org.compiere.model.MJournal;
import org.compiere.model.MJournalLine;
import org.compiere.model.MOrder;
import org.compiere.model.MPeriod;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.MatchingAutoUtil;
import com.audaxis.compiere.util.CompiereException;

public class MatchAccountAuto extends SvrProcess{

	private int p_Client_ID;
	
	private int p_AccountID;
	
	private int p_BPartnerID;
	
	private BigDecimal AmountFrom;
	private BigDecimal AmountTo;
	
	private Timestamp p_DateFact;
	
	
	private int AcctSchema_ID = 0;
	
	private ArrayList<MatchingAutoUtil> maus;
	private ArrayList<MatchingAutoUtil> mausToGL;
 
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_Client_ID = element.getParameterAsInt();
			else if (name.equals("Account_ID"))
				p_AccountID = element.getParameterAsInt();
			else if (name.equals("Ecart")){
				AmountFrom = (BigDecimal)element.getParameter();
				AmountTo = (BigDecimal)element.getParameter_To();
			}
			else if (name.equals("C_BPartner_ID"))
				p_BPartnerID = element.getParameterAsInt();
			else if (name.equals("C_AcctSchema_ID"))
				AcctSchema_ID = element.getParameterAsInt();
			else if (name.equals("DateFact"))
				p_DateFact = (Timestamp)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);

			
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		//1. Rassembler les fact_acct du compte par tiers. Que si <> 0 et dans la fourchette
		maus = new ArrayList<MatchingAutoUtil>();
		mausToGL = new ArrayList<MatchingAutoUtil>();
		String sql = "select C_BPARTNER_ID,(AMTSOURCEDR - AMTSOURCECR)  "
				+ "from (Select C_BPARTNER_ID, sum(AMTSOURCECR) as AMTSOURCECR, sum(AMTSOURCEDR) AMTSOURCEDR  "
				+ "from FACT_ACCT "
				+ "where AD_Client_ID = ? and ACCOUNT_ID = ? and trunc(DateAcct) <= ? and MatchingNo is null and exists (select 1 from C_BPartner where C_BPartner.IsACtive = 'Y' and C_BPartner.C_BPartner_ID = FACT_ACCT.C_BPartner_ID)";
		if(p_BPartnerID>0)
			sql = sql+" and C_BPARTNER_ID = ? ";
		sql = sql+ "group by C_BPARTNER_ID) ";
		if(AmountFrom.equals(AmountTo))
			sql = sql+ "where round((AMTSOURCECR - AMTSOURCEDR),2) = round(?,2) ";
		else
		{
			sql = sql+ "where round((AMTSOURCECR - AMTSOURCEDR),2) between round(?,2) and round(?,2) ";
		} 
		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int counter = 0;
		try
		{
			int i = 1;
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(i++, p_Client_ID);
			pstmt.setInt(i++, p_AccountID);
			pstmt.setTimestamp(i++, p_DateFact);
			if(p_BPartnerID>0)
				pstmt.setInt(i++, p_BPartnerID);
			if(AmountFrom.equals(AmountTo))
				pstmt.setBigDecimal(i++, AmountFrom);
			else{
				pstmt.setBigDecimal(i++, AmountFrom);
				pstmt.setBigDecimal(i++, AmountTo);
			}
			
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MatchingAutoUtil mau = new MatchingAutoUtil(rs.getInt(1), rs.getBigDecimal(2));
				maus.add(mau);
			}
		}
			catch (Exception e)
			{
				log.log(Level.SEVERE, sql, e);
				throw e;
			} finally {
				Util.closeCursor(pstmt, rs);
			}
		
		//Create OD par tiers
		
		int OrgID = DB.getSQLValue(get_Trx(), "Select MAX(AD_Org_ID) from AD_OrgInfo where AD_Client_ID = ? and ISORGADMIN = 'Y' ", p_Client_ID );
		int ChargF = DB.getSQLValue(get_Trx(), "Select max(ACCOUNT_ID) from C_VALIDCOMBINATION where IsActive = 'Y' and  C_VALIDCOMBINATION_ID = "
				+ "(select WRITEOFF_ACCT from C_ACCTSCHEMA_DEFAULT where AD_CLIENT_ID = ? and IsActive = 'Y' and C_ACCTSCHEMA_ID = ? )",p_Client_ID, AcctSchema_ID ); 
		int DocType = DB.getSQLValue(get_Trx(), "Select MAX(C_DocType_ID) from C_DocType where AD_Client_ID = ? and Name = ? ", p_Client_ID,"ODG" );
		MDocType dt = new MDocType(getCtx(), DocType, get_Trx());
		int periodID = MPeriod.getC_Period_ID(getCtx(), OrgID, p_DateFact);
		int OldBpartner;
		MJournal journal = null; 
		if(maus.size()>0)
		{
			for (int i = 0; i < maus.size(); i++) {
				if(maus.get(i).getAmount().doubleValue()!=0 )
					mausToGL.add(maus.get(i));
			}
		}
		if(mausToGL.size()>0){
			journal = new MJournal (getCtx(), 0, get_TrxName());
			journal.setClientOrg(p_Client_ID, OrgID);
			journal.setPostingType("A");
			journal.setC_Period_ID(periodID);
			journal.setC_AcctSchema_ID(AcctSchema_ID);
			journal.setC_DocType_ID(DocType);
			journal.setGL_Category_ID(dt.getGL_Category_ID());
			journal.setDateAcct(p_DateFact);
			journal.setDateDoc(p_DateFact);
			journal.setC_Currency_ID(102);
			journal.setDescription("Lettrage Auto");
			journal.setDocAction("CO");
			journal.setC_ConversionType_ID(MConversionType.getDefault(p_Client_ID));
			if (!journal.save())
			{
				log.log(Level.SEVERE, "Journal not saved");
				Exception ex = CLogger.retrieveException();
				if (ex != null)
				{
					addLog (0, null, null, ex.getLocalizedMessage());
					throw ex;
				}
				return "Error";
			}
		}
		int lineNo = 10;
		BigDecimal amtDR = Env.ZERO;
		BigDecimal amtCR = Env.ZERO;
		
		for (int j = 0; j < mausToGL.size(); j++) {
			MJournalLine line = new MJournalLine (journal);
			MatchingAutoUtil mau = mausToGL.get(j);
			//
			MBPartner mb = new MBPartner(getCtx(), mau.getBPartner_ID(), get_Trx());
			line.setDescription("Lettrage Auto : "+mb.getValue());
			MAccount acct = MAccount.get(getCtx(), line.getAD_Client_ID(), line.getAD_Org_ID(), 
					journal.getC_AcctSchema_ID(), p_AccountID, 0,
					0, mau.getBPartner_ID(), line.getAD_Org_ID(),
					0, 0, 0,
					0, 0, 0,
					0, 0, 0, 0);
				if (acct != null && acct.get_ID() == 0)
					acct.save();
				if (acct == null || acct.get_ID() == 0)
				{
					addLog("ERROR creating Account");
					continue;
				}
				else
				{
					line.setC_ValidCombination_ID(acct.get_ID());
				}
				
				line.setLine (lineNo);
				lineNo+=10;
				if(mau.getAmount().doubleValue()<0)
				{
					line.setAmtAcctDr(mau.getAmount().abs());
					line.setAmtSourceDr(mau.getAmount().abs());
					amtDR = amtDR.add(mau.getAmount().abs());
				}else
				{
					line.setAmtAcctCr(mau.getAmount().abs());
					line.setAmtSourceCr(mau.getAmount().abs());
					amtCR = amtCR.add(mau.getAmount().abs());
				}
				
				line.setDateAcct (journal.getDateAcct());
				//
				line.setC_UOM_ID(100);
				line.setQty(Env.ONE);
				
				line.setAD_Org_ID(journal.getAD_Org_ID());//#64603
				//
				if (!line.save())
				{
					log.log(Level.SEVERE, "Line Journal not saved");
					Exception ex = CLogger.retrieveException();
					if (ex != null)
					{
						addLog (0, null, null, ex.getLocalizedMessage());
						throw ex;
					}
					return "Error";
				}
				MJournalLine line2 = new MJournalLine (journal);
				line2.setDescription("Lettrage Auto : "+mb.getValue());
				MAccount acct2 = MAccount.get(getCtx(), line.getAD_Client_ID(), line.getAD_Org_ID(), 
						journal.getC_AcctSchema_ID(), ChargF, 0,
						0, mau.getBPartner_ID(), line.getAD_Org_ID(),
						0, 0, 0,
						0, 0, 0,
						0, 0, 0, 0);
					if (acct2 != null && acct.get_ID() == 0)
						acct2.save();
					if (acct2 == null || acct.get_ID() == 0)
					{
						addLog("ERROR creating Account");
						continue;
					}
					else
					{
						line2.setC_ValidCombination_ID(acct2.get_ID());
					}
					
					line2.setLine (lineNo);
					lineNo+=10;
					if(mau.getAmount().doubleValue()>0)
					{
						line2.setAmtAcctDr(mau.getAmount().abs());
						line2.setAmtSourceDr(mau.getAmount().abs());
						amtDR = amtDR.add(mau.getAmount().abs());
					}else
					{
						line2.setAmtAcctCr(mau.getAmount().abs());
						line2.setAmtSourceCr(mau.getAmount().abs());
						amtCR = amtCR.add(mau.getAmount().abs());
					}
					
					line2.setDateAcct (journal.getDateAcct());
					//
					line2.setC_UOM_ID(100);
					line2.setQty(Env.ONE);
					
					line2.setAD_Org_ID(journal.getAD_Org_ID());//#64603
					//
					if (!line2.save())
					{
						log.log(Level.SEVERE, "Line Journal not saved");
						Exception ex = CLogger.retrieveException();
						if (ex != null)
						{
							addLog (0, null, null, ex.getLocalizedMessage());
							throw ex;
						}
						return "Error";
					}
		}
		boolean OkT = true;
		
		if(journal != null)
		{//get_Trx().commit();
			journal.setTotalCr(amtCR);
			journal.setTotalDr(amtDR);
			journal.setDocStatus(MJournal.DOCSTATUS_Drafted);
			journal.setDocAction(MJournal.DOCACTION_Complete);
			journal.save();
			journal.get_Trx().commit();
			
			if(!DocumentEngine.processIt(journal, MJournal.DOCACTION_Complete))
			{
				// Ignore errors in processing
				log.warning("Impossible de traiter l'OD : " + journal.getDocumentNo());
				log.warning(""+journal.getProcessMsg());
				return"Impossible de Traiter l'OD " + journal.getDocumentNo();
			}
			//journal.setDocStatus(MJournal.DOCACTION_Complete);
			//journal.setDocAction(MJournal.DOCACTION_Close);
			journal.save();
			//get_Trx().commit();
			if(journal.getDocStatus().equals("CO"))
			{journal.get_Trx().commit();
				MAcctSchema[] ass = MAcctSchema.getClientAcctSchema(getCtx(), p_Client_ID);
				String retx = Doc.postImmediate(ass, journal.get_Table_ID(), journal.get_ID(), true, get_Trx());
				if(retx!=null){
					addLog (0, null, null, "Impossible de poster l'OD");
					return"Impossible de poster l'OD " + journal.getDocumentNo();
				}
			}

		}
		//650060
		//Matching Fact_Acct
		DB.executeUpdate("TRUNCATE TABLE ZT_FACT_ACCT_MATCH", get_Trx());
		sql = "insert into ZT_FACT_ACCT_MATCH "
				+ " select C_BPARTNER_ID,AMTSOURCEDR,AMTSOURCECR,(AD_SEQUENCE_NEXTNO2('MATCHING_ACCT',0)) "
				+ "from (Select C_BPARTNER_ID, sum(AMTSOURCECR) as AMTSOURCECR, sum(AMTSOURCEDR) AMTSOURCEDR "
				+ "from FACT_ACCT "
				+ "where AD_Client_ID = ? and ACCOUNT_ID = ? and trunc(DateAcct) <= trunc(?) and MatchingNo is null "
				+ " group by C_BPARTNER_ID) where round((AMTSOURCECR - AMTSOURCEDR),2) = round(0,2) ";
		if(p_BPartnerID>0)
			sql = "insert into ZT_FACT_ACCT_MATCH "
					+ " select C_BPARTNER_ID,AMTSOURCEDR,AMTSOURCECR,(AD_SEQUENCE_NEXTNO2('MATCHING_ACCT',0)) "
					+ "from (Select C_BPARTNER_ID, sum(AMTSOURCECR) as AMTSOURCECR, sum(AMTSOURCEDR) AMTSOURCEDR "
					+ "from FACT_ACCT "
					+ "where AD_Client_ID = ? and ACCOUNT_ID = ? and trunc(DateAcct) <= trunc(?) and MatchingNo is null and C_BPARTNER_ID = ? "
					+ " group by C_BPARTNER_ID) where round((AMTSOURCECR - AMTSOURCEDR),2) = round(0,2) "; 
		if(p_BPartnerID>0)
			DB.executeUpdate(get_Trx(), sql, p_Client_ID,p_AccountID, p_DateFact, p_BPartnerID );
		else
			DB.executeUpdate(get_Trx(), sql, p_Client_ID,p_AccountID, p_DateFact );
		
		sql = "merge into Fact_Acct zz using "
				+ "(Select C_BPartner_ID,MatchingNo from ZT_FACT_ACCT_MATCH ) yy "
				+ "on (zz.C_BPartner_ID = yy.C_BPartner_ID and zz.ACCOUNT_ID = ? ) "
				+ "when matched then update set zz.MatchingNo = yy.MatchingNo, zz.Matchingdate = trunc(?)";

		DB.executeUpdate(get_Trx(), sql, p_AccountID, p_DateFact );
		
		addLog("Nombre de tiers traités avec OD générées : "+mausToGL.size());
		addLog("Nombre de tiers traités : "+maus.size());
		return "Processus OK";
	}

}
