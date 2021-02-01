package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.compiere.model.MOrder;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

import com.audaxis.compiere.eurocenter.ws.WSUtil;

public class MOrderStep extends X_Z_OrderStep {

	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		// TODO Auto-generated method stub
		if(success && getZ_OrderStepStatus().equals("04"))
			WSUtil.addExtraData(getCtx(), new MOrder(getCtx(),getC_Order_ID(), get_Trx()), false, get_Trx());
		return super.afterSave(newRecord, success);
	}

	public MOrderStep(Ctx ctx, int Z_OrderStep_ID, Trx trx) {
		super(ctx, Z_OrderStep_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrderStep(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

}
