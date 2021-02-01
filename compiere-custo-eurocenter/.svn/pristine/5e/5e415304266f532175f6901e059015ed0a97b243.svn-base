package com.audaxis.compiere.eurocenter.process;


import org.compiere.model.MPayment;
import org.compiere.process.DocumentEngine;

import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MBankTransfert;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;

public class PreparePayment extends SvrProcessExtended {

	private int p_C_BPartner_ID;
	
	@Override
	protected String doIt() throws Exception {
	
		
		String info = "";
		MBankTransfert transfert = new MBankTransfert(getCtx(), getRecord_ID(), get_Trx());
		
		if (transfert.getZ_VirementIn_ID()>0 && transfert.getZ_VirementOut_ID()>0)//Redmine 30895
			throw new CompiereException("@C_Payment_ID@ @AlreadyExists@");

		if(transfert.getPayAmt().signum() == 0) 
			throw new CompiereException(Msg.getMsg(getCtx(), "EC_AMOUNTZEROBKTFT"));
		
		p_C_BPartner_ID = DB.getSQLValue(get_Trx(), "SELECT C_BPartner_ID FROM C_BPartner WHERE IsBankTft='Y' and AD_Client_ID = "+transfert.getAD_Client_ID());
		if (p_C_BPartner_ID<=0)
			throw new CompiereException(Msg.getMsg(getCtx(), "EC_BPARTNERBKTFT"));

		MPayment paymentOut = new MPayment(getCtx(), 0, get_Trx());
		MPayment paymentIn = new MPayment(getCtx(), 0, get_Trx());

		setPayementInfos(paymentOut, transfert , true);
		setPayementInfos(paymentIn, transfert , false);

		if(!(paymentOut.save(get_Trx()) && paymentIn.save(get_Trx())))
			throw new CompiereException("@SaveError@ @C_Payment_ID@ ");

		DocumentEngine.processIt(paymentOut, DocActionConstants.ACTION_Complete);
		DocumentEngine.processIt(paymentIn, DocActionConstants.ACTION_Complete);

		if(!(paymentOut.save(get_Trx()) && paymentIn.save(get_Trx()))) 
			throw new CompiereException("@SaveError@ @C_Payment_ID@");

		transfert.setZ_VirementOut_ID(paymentOut.getC_Payment_ID());
		transfert.setZ_VirementIn_ID(paymentIn.getC_Payment_ID());

		if(!transfert.save(get_Trx()))
			throw new CompiereException("@SaveError@ @Z_BankTransfert_ID@");

		info = "@Created@ 2: @C_Payment_ID@ = " + paymentOut.getDocumentNo() + " - @C_Payment_ID@ = " + paymentIn.getDocumentNo();

		log.info(info);

		return info;
	}

	public void setPayementInfos(MPayment payment, MBankTransfert transfert , boolean isOut) throws Exception{

		payment.setAD_Client_ID(transfert.getAD_Client_ID());
		payment.setDateTrx(transfert.getDateTrx());
		payment.set_Value("DueDate", transfert.getDueDate());
		payment.setDateAcct(transfert.getDateAcct());
		payment.setDescription(transfert.getDescription());
		payment.setCheckNo(transfert.getDocumentNo());
		payment.setC_Currency_ID(transfert.getC_Currency_ID());
		payment.setC_BPartner_ID(p_C_BPartner_ID);

		if(isOut) {
			payment.setAD_Org_ID(transfert.getAD_Org_ID());
			payment.setC_BankAccount_ID(transfert.getC_BankAccount_From_ID());
			payment.setC_DocType_ID(transfert.getC_DocTypeFrom_ID());
			payment.set_Value("ZSubPaymentRule_ID", transfert.getZSubPaymentRule_ID());
			payment.setC_Charge_ID(transfert.getC_Charge_ID());
			//payment.setPayAmt(transfert.getPayAmt().negate());
			payment.setPayAmt(transfert.getPayAmt());
		}
		else{
			payment.setAD_Org_ID(transfert.getAD_OrgTo_ID());
			payment.setC_BankAccount_ID(transfert.getC_BankAccount_To_ID());
			payment.setC_DocType_ID(transfert.getC_DocTypeTo_ID());
			payment.set_Value("ZSubPaymentRule_ID", transfert.getZSubPaymentRuleTo_ID());
			payment.setC_Charge_ID(transfert.getC_ChargeTo_ID());
			payment.setPayAmt(transfert.getPayAmt());
		}

	}

	@Override
	protected void prepare() {}

}
