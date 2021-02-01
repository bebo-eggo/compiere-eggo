package com.audaxis.compiere.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;

import org.compiere.util.Ctx;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.eurocenter.util.PaymentUtil;
import com.audaxis.compiere.util.CompiereException;

public class MOrderPayment extends X_Z_OrderPayment {
	@Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
		boolean payAmtChange = false;
		MZSubPaymentRule msz = new MZSubPaymentRule(getCtx(), getZSubPaymentRule_ID(), get_Trx());
		if(msz.IsRounded() && !getPayAmt().equals(Env.ZERO))
		{
			BigDecimal PriceRounded = PaymentUtil.roundAmt(getPayAmt());
		       
	        if(getPayAmt().doubleValue()!=(PriceRounded.doubleValue()))
	        	payAmtChange = true;
	        setPayAmt(PriceRounded);
		}
		if(payAmtChange)
			p_changeVO.addWarning(Msg.getMsg(getCtx(), "EGGO_WARN_PAYROUNDED"));
		return super.beforeSave(newRecord);
	}

	/** Logger for class MPosOrderPayment */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MOrderPayment.class);

	public MOrderPayment(Ctx ctx, int Z_OrderPayment_ID, Trx trx) {
		super(ctx, Z_OrderPayment_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrderPayment(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete ()
	{
		//	log.saveError("Error", Msg.getMsg(getCtx(), "CannotDelete"));
		
		if (this.getC_Payment_ID() > 0 )
		{
			MPayment pay = new MPayment(getCtx(), getC_Payment_ID(), get_Trx());
			if (pay != null)
			{
				throw new CompiereException("Supression Interdite ! Paiement Attaché ! ");
			}	
		}	
		return true;
	}

}
