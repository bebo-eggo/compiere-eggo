package org.compiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.MOrder;
import org.compiere.model.MPayment;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import com.audaxis.compiere.model.MBankAccountDoc;
import com.audaxis.compiere.util.CompiereException;

public class CreatePaimentOrder extends SvrProcess{
	
    private int p_C_Order_ID = 0;
    private int p_Z_AD_ORG_ID = 0;
    private int p_ZSubPaymentRule_ID = 0;
    private BigDecimal p_amount = Env.ZERO;


	@Override
	protected void prepare() {
		
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("Z_AD_org_ID"))
				p_Z_AD_ORG_ID = element.getParameterAsInt();
			else if (name.equals("ZSubPaymentRule_ID"))
				p_ZSubPaymentRule_ID = element.getParameterAsInt();

			else if (name.equals("Amount"))
				p_amount = (BigDecimal)element.getParameter();
			else
			{
				log.severe("prepare - Unknown Parameter: " + name);
			}
		}
		p_C_Order_ID = getRecord_ID();
	} //prepare

	@Override
	protected String doIt() throws Exception {
		
		
		if (p_amount == Env.ZERO)
			throw new CompiereException(Msg.getMsg(getCtx(), "KM_NEC24_PAY0"));
		if ( getBankAccountDocByOrg(p_Z_AD_ORG_ID, p_ZSubPaymentRule_ID) < 0 )
			throw new CompiereException(" Compte bancaire introuvable ! " );
		
		MOrder order = new MOrder(getCtx(), p_C_Order_ID, get_Trx());
		
		MBankAccountDoc bnkAccountDoc = new MBankAccountDoc(getCtx(), getBankAccountDocByOrg(p_Z_AD_ORG_ID, p_ZSubPaymentRule_ID), get_Trx());
		
		MPayment payment = new MPayment(getCtx(), 0, get_Trx());
		payment.setClientOrg(order.getAD_Client_ID(), p_Z_AD_ORG_ID);
		payment.setC_Order_ID(order.getC_Order_ID());
		payment.set_Value("ZSubPaymentRule_ID", p_ZSubPaymentRule_ID);
		payment.setC_BankAccount_ID(bnkAccountDoc.getC_BankAccount_ID());
		payment.setC_DocType_ID(bnkAccountDoc.getC_DocType_ID());
		payment.setDateTrx(new Timestamp(System.currentTimeMillis()));
		payment.setDateAcct(new Timestamp(System.currentTimeMillis()));
		payment.setC_BPartner_ID(order.getC_BPartner_ID());
		payment.setC_Currency_ID(order.getC_Currency_ID());
		payment.setPayAmt(p_amount);
		payment.setDocStatus("DR");
		payment.setDocAction("CO");
		payment.setIsPrepayment(true);
		
		if (!payment.save())
    	{
    		throw new CompiereException("Cannot Save MPayment");
    	}
		
		if (!DocumentEngine.processIt(payment, MPayment.DOCACTION_Complete))
		{
			log.warning("Could not process payment : " + payment.getDocumentNo());
		}
		payment.save();
		

		
		return "Paiement généré : "+payment.getDocumentNo();
		
	} //do it
	
	
	private int getBankAccountDocByOrg(int p_Z_AD_ORG_ID , int p_C_PaySelection_ID ){
		String sql = " select C_BankAccountDoc_ID from C_BankAccountDoc where AD_Org_ID = ? and ZSubPaymentRule_ID = ? and isActive = 'Y' ";
		return DB.getSQLValue(get_Trx(), sql, p_Z_AD_ORG_ID, p_C_PaySelection_ID);
	}

}
