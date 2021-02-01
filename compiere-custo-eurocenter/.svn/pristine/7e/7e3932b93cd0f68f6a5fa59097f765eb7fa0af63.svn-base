package com.audaxis.compiere.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.compiere.api.UICallout;
import org.compiere.framework.ModelValidationEngine;
import org.compiere.model.MBankAccount;
import org.compiere.model.MDocType;
import org.compiere.model.MPeriod;
import org.compiere.model.X_Z_BankTransfert;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env.QueryParams;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.DocActionConstants;



public class MBankTransfert extends X_Z_BankTransfert implements DocAction {
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;

	public MBankTransfert(Ctx ctx, int Z_BankTransfert_ID, Trx trx) {
		super(ctx, Z_BankTransfert_ID, trx);
	}
	
	public MBankTransfert(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}

	@Override
	public boolean unlockIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean invalidateIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String prepareIt() {
		m_justPrepared = true;
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.DOCTIMING_BEFORE_PREPARE);
		if (!DocActionConstants.ACTION_Complete.equals(getDocAction()))
			setDocAction(DocActionConstants.ACTION_Complete);
		
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		
//		Standard Period open?
		ArrayList<Integer> orgs = new ArrayList<Integer>();
		orgs.add(getAD_Org_ID());
		m_processMsg = MPeriod.isOpen(getCtx(), getAD_Client_ID(), orgs, getDateAcct(), dt.getDocBaseType());
		if (m_processMsg != null)
			return DocActionConstants.STATUS_Invalid;
		
		if (this.getZ_VirementIn_ID() < 1 || this.getZ_VirementOut_ID() < 1)
		{
			m_processMsg = "Traitement interdit car transfert non préparé";	
			return DocActionConstants.STATUS_Invalid;
		}
	
		return DocActionConstants.STATUS_InProgress;
	}

	@Override
	public boolean approveIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean rejectIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String completeIt() {
		if(getPayAmt().signum() == 0) {
			m_processMsg = "Validation impossible : montant = 0";
			return DocActionConstants.ACTION_Invalidate;
		}
		
		if (!m_justPrepared){
			String status = prepareIt();
			if (!DocActionConstants.STATUS_InProgress.equals(status))
				return status;
		}
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.DOCTIMING_AFTER_COMPLETE);
		setProcessed(true);
		setDocAction(DocActionConstants.ACTION_Close);
		return DocActionConstants.STATUS_Completed;
	}

	@Override
	public boolean voidIt() {
		MPayment paymentOut = new MPayment(getCtx(),getZ_VirementOut_ID(), get_Trx());
		MPayment paymentIn = new MPayment(getCtx(), getZ_VirementIn_ID(), get_Trx());
		
		if(!(DocumentEngine.processIt(paymentOut, DocActionConstants.ACTION_Void) 
				&& DocumentEngine.processIt(paymentIn, DocActionConstants.ACTION_Void) 
				&& paymentOut.save(get_Trx()) 
				&& paymentIn.save(get_Trx()))) 
			
			return false; 
		
		setDocAction(DocActionConstants.ACTION_None);
		setProcessed(true);
		save(get_Trx());
		
		return true;
	}

	@Override
	public boolean closeIt() {
		
		MPayment paymentOut = new MPayment(getCtx(),getZ_VirementOut_ID(), get_Trx());
		MPayment paymentIn = new MPayment(getCtx(), getZ_VirementIn_ID(), get_Trx());
		
		if((getZ_VirementOut_ID() <= 0 && getZ_VirementIn_ID() <= 0)
				||((paymentOut.getDocStatus().equals(DocActionConstants.STATUS_Voided) || paymentOut.getDocStatus().equals(DocActionConstants.STATUS_Reversed)) 
						&&(paymentIn.getDocStatus().equals(DocActionConstants.STATUS_Voided)  || paymentIn.getDocStatus().equals(DocActionConstants.STATUS_Reversed)))) {
			setProcessed(true);
			setDocAction(DocActionConstants.ACTION_None);
			return true;
		}
		m_processMsg = "Veuillez d'abord annuler les paiements associés";
		log.saveError("Mouvement de trésorerie: ", "Veuillez d'abord annuler les paiements associés");
		return false;
	}

	@Override
	public boolean reverseCorrectIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reverseAccrualIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reActivateIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String getSummary() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getDocumentInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public File createPDF() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getProcessMsg() {
		return m_processMsg;
	}

	@Override
	public int getDoc_User_ID() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BigDecimal getApprovalAmt() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setProcessMsg(String processMsg) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Timestamp getDocumentDate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getDocBaseType() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QueryParams getLineOrgsQueryInfo() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	protected boolean beforeDelete() {
		
		if(getZ_VirementOut_ID() != 0 || getZ_VirementIn_ID() != 0){
			log.saveError("Error", Msg.getMsg(getCtx(), "EC_PAYMENTONBKTRT"));
			return false;
		}
		
		return super.beforeDelete();
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		
		//if(newRecord)
		//{
			//if(getAD_Client_ID() == ((Integer)DB.getSQLValue(null, "SELECT AD_Client_ID FROM AD_Client WHERE Value like 'EU' OR Value like 'EGGO'")))
				if(getPayAmt().equals(BigDecimal.ZERO))
				{
					log.saveError("Error", Msg.getMsg(getCtx(), "EC_AMOUNTZEROBKTFT"));
					return false;
				}
		//}
		if(getC_BankAccount_From_ID()!=0)
		{
			MBankAccount mba = new MBankAccount(getCtx(), getC_BankAccount_From_ID(), get_Trx()); 
			setDescription(getDescription()!=null && getDescription().length()>0 ? getDescription()+" - "+mba.getAccountNo():mba.getAccountNo());
		}
		return true;
	}
	
	
	@UICallout 
	public void setC_BankAccount_To_ID(String oldC_BankAccount_To_ID,String newC_BankAccount_To_ID, int windowNo){
		if ((newC_BankAccount_To_ID == null) || (newC_BankAccount_To_ID.length() == 0))
			return;
		int BankAccount_To_ID =Integer.parseInt(newC_BankAccount_To_ID);
		if (BankAccount_To_ID == 0)
			return;
		setC_BankAccount_To_ID(BankAccount_To_ID);
		String doc_sub = DB.getSQLValueString(get_Trx(), "SELECT C_DocType_ID||';'||ZSUBPAYMENTRULE_ID FROM C_BankAccountDoc  "
				+ "where C_BANKACCOUNT_ID = ? and C_BankAccountDoc.name ='Dépôt Banque Entrée' and rownum = 1", BankAccount_To_ID);
		if(doc_sub!=null)
		{
			String [] tt = doc_sub.split(";");
			if(tt.length==2 && tt[0]!=null && tt[1]!=null)
			{
				setC_DocTypeTo_ID(Integer.parseInt(tt[0]));
				setZSubPaymentRuleTo_ID(Integer.parseInt(tt[1]));
				int chg_ID = DB.getSQLValue(get_Trx(), "SELECT C_CHARGE_ID FROM ZSubPaymentRule WHERE ZSUBPAYMENTRULE_ID = ?", Integer.parseInt(tt[1]));
				if(chg_ID>0)
					setC_ChargeTo_ID(chg_ID);
			}
		}
	}
	
	@UICallout 
	public void setC_BankAccount_From_ID(String oldC_BankAccount_To_ID,String newC_BankAccount_To_ID, int windowNo){
		if ((newC_BankAccount_To_ID == null) || (newC_BankAccount_To_ID.length() == 0))
			return;
		int BankAccount_ID =Integer.parseInt(newC_BankAccount_To_ID);
		if (BankAccount_ID == 0)
			return;
		setC_BankAccount_From_ID(BankAccount_ID);
		String doc_sub = DB.getSQLValueString(get_Trx(), "SELECT C_DocType_ID||';'||ZSUBPAYMENTRULE_ID FROM C_BankAccountDoc  "
				+ "where C_BANKACCOUNT_ID = ? and C_BankAccountDoc.name ='Dépôt Banque Sortie' and rownum = 1", BankAccount_ID);
		if(doc_sub!=null)
		{
			String [] tt = doc_sub.split(";");
			if(tt.length==2 && tt[0]!=null && tt[1]!=null)
			{
				setC_DocTypeFrom_ID(Integer.parseInt(tt[0]));
				setZSubPaymentRule_ID(Integer.parseInt(tt[1]));
				int chg_ID = DB.getSQLValue(get_Trx(), "SELECT C_CHARGE_ID FROM ZSubPaymentRule WHERE ZSUBPAYMENTRULE_ID = ?", Integer.parseInt(tt[1]));
				if(chg_ID>0)
					setC_Charge_ID(chg_ID);
			}
		}
	}
	
	
	@UICallout 
	public void setAD_Org_ID(String oldAD_Org_ID,String newAd_Org_ID, int windowNo){
		if ((newAd_Org_ID == null) || (newAd_Org_ID.length() == 0))
			return;
		int ad_Org_ID =Integer.parseInt(newAd_Org_ID);
		if (ad_Org_ID == 0)
			return;
		setAD_Org_ID(ad_Org_ID);
		//System.out.println("IN CallOut MBankTransfert setAD_Org_ID");
		int Bk_ID = DB.getSQLValue(get_Trx(), "SELECT Max(C_Bankaccount_ID)  FROM C_BankAccount WHERE BankAccountType = 'X' and IsActive='Y' AND AD_Org_ID = ?", ad_Org_ID);
		if(Bk_ID>0){
			setC_BankAccount_From_ID(Bk_ID);
			String doc_sub = DB.getSQLValueString(get_Trx(), "SELECT C_DocType_ID||';'||ZSUBPAYMENTRULE_ID FROM C_BankAccountDoc  where C_BANKACCOUNT_ID = ? and C_BankAccountDoc.name ='Dépôt Banque Sortie' and rownum = 1", Bk_ID);
			if(doc_sub!=null)
			{
				String [] tt = doc_sub.split(";");
				if(tt.length==2 && tt[0]!=null && tt[1]!=null)
				{
					setC_DocTypeFrom_ID(Integer.parseInt(tt[0]));
					setZSubPaymentRule_ID(Integer.parseInt(tt[1]));
					int chg_ID = DB.getSQLValue(get_Trx(), "SELECT C_CHARGE_ID FROM ZSubPaymentRule WHERE ZSUBPAYMENTRULE_ID = ?", Integer.parseInt(tt[1]));
					if(chg_ID>0)
						setC_Charge_ID(chg_ID);
				}
			}
		
		}
	
	}

	@UICallout 
	public void setAD_OrgTo_ID(String oldAD_Org_ID,String newAd_Org_ID, int windowNo){
		if ((newAd_Org_ID == null) || (newAd_Org_ID.length() == 0))
			return;
		int ad_Org_ID =Integer.parseInt(newAd_Org_ID);
		if (ad_Org_ID == 0)
			return;
		set_ValueNoCheck("AD_OrgTo_ID", ad_Org_ID);
		//System.out.println("IN CallOut MBankTransfert setAD_OrgTo_ID");
		int Bk_ID = DB.getSQLValue(get_Trx(), "SELECT Max(C_Bankaccount_ID)  FROM C_BankAccount WHERE BankAccountType = 'X' and IsActive='Y' AND AD_Org_ID = ?", ad_Org_ID);
		if(Bk_ID>0){
			setC_BankAccount_To_ID(Bk_ID);
			String doc_sub = DB.getSQLValueString(get_Trx(), "SELECT C_DocType_ID||';'||ZSUBPAYMENTRULE_ID FROM C_BankAccountDoc  where C_BANKACCOUNT_ID = ? and C_BankAccountDoc.name ='Dépôt Banque Entrée' and rownum = 1", Bk_ID);
			if(doc_sub!=null)
			{
				String [] tt = doc_sub.split(";");
				if(tt.length==2 && tt[0]!=null && tt[1]!=null)
				{
					setC_DocTypeTo_ID(Integer.parseInt(tt[0]));
					setZSubPaymentRuleTo_ID(Integer.parseInt(tt[1]));
					int chg_ID = DB.getSQLValue(get_Trx(), "SELECT C_CHARGE_ID FROM ZSubPaymentRule WHERE ZSUBPAYMENTRULE_ID = ?", Integer.parseInt(tt[1]));
					if(chg_ID>0)
						setC_ChargeTo_ID(chg_ID);
				}
			}
		
		}
	}
	
}
