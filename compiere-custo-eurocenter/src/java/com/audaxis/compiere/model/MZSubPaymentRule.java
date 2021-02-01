package com.audaxis.compiere.model;

import org.compiere.model.X_ZSubPaymentRule;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class MZSubPaymentRule extends X_ZSubPaymentRule{

	public MZSubPaymentRule(Ctx ctx, int ZSubPaymentRule_ID, Trx trx) {
		super(ctx, ZSubPaymentRule_ID, trx);
	}
	
    public void setIsClosingCash (boolean isClosingCash){
        set_Value ("IsClosingCash", Boolean.valueOf(isClosingCash));
    }

    public boolean isClosingCash() {
        return get_ValueAsBoolean("IsClosingCash");
    }
    
    public void setIsClosingCashDetail (boolean IsClosingCashDetail){
        set_Value ("IsClosingCashDetail", Boolean.valueOf(IsClosingCashDetail));
    }

    public boolean IsClosingCashDetail() {
        return get_ValueAsBoolean("IsClosingCashDetail");
    }
    
    public void setIsRounded (boolean XX_IsRounded){
        set_Value ("XX_IsRounded", Boolean.valueOf(XX_IsRounded));
    }

    public boolean IsRounded() {
        return get_ValueAsBoolean("XX_IsRounded");
    }
    

}
