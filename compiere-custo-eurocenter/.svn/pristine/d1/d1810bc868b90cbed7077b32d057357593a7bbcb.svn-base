package com.audaxis.compiere.model;

import org.compiere.model.MCharge;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractCharge extends BasicContractPO<MCharge> implements ContractPO<MCharge> {

	public ContractCharge(MCharge po) {
		super(po);
	}

	@Override
	public String afterUpdate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeDelete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeUpdate() {
		if (getPO().is_ValueChanged("IsCashDiff")
				&& getPO().get_ValueAsBoolean("IsCashDiff")){
			int no = DB.getSQLValue(get_Trx(), "SELECT COUNT(1) FROM C_Charge WHERE AD_Client_ID = "+getPO().getAD_Client_ID()+" and C_Charge_ID<>? AND IsCashDiff='Y' and AD_Org_ID = " + getPO().getAD_Org_ID(), 
					getPO().getC_Charge_ID());
			
			if (no>0)
				return Msg.getMsg(getCtx(), "EUROCENTER_UNIQUE_CASHDIFF");
		}
		return null;
	}

}
