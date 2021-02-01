package com.audaxis.compiere.model;

import org.compiere.model.MRequisition;
import org.compiere.util.DB;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractRequisition extends BasicContractPO<MRequisition>
		implements ContractPO<MRequisition> {

	public ContractRequisition(MRequisition po) {
		super(po);
		// TODO Auto-generated constructor stub
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
		// TODO Auto-generated method stub
		MRequisition po = getPO();
		
		if(getPO().getDescription() !=null && getPO().getDescription().trim()!=null)
		{
			Object[] params = {po.getDescription().trim(),po.getAD_Client_ID()};
			int RefOrderID = DB.getSQLValue(get_Trx(), "Select Max(C_Order_ID) from C_Order where C_Order.DOCUMENTNO = ? and C_Order.AD_Client_ID = ? ", params);
			if(RefOrderID>0)
				getPO().set_ValueNoCheck("Ref_Order_ID",RefOrderID);
		}
		return null;
	}

}
