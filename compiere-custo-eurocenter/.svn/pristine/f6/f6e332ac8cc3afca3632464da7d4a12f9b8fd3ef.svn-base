package com.ecenter.compiere.action;

import java.sql.Timestamp;

import org.compiere.model.MRequisition;
import org.compiere.util.DB;
import org.compiere.util.TimeUtil;

import com.audaxis.compiere.contract.action.BasicContractAction;
import com.audaxis.compiere.contract.action.ContractAction;

public class ActionRequisition extends BasicContractAction<MRequisition> implements
		ContractAction<MRequisition> {

	public ActionRequisition(MRequisition po) {
		super(po);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String afterComplete() {
		// TODO Auto-generated method stub
		Timestamp today = TimeUtil.getDay(System.currentTimeMillis());
		getPO().setDateDoc(today);
		return null;
	}

	@Override
	public String beforePrepare() {
		// TODO Auto-generated method stub
		int no = DB.executeUpdate("DELETE FROM M_REQUISITIONLINE where QTY = 0 and M_REQUISITION_ID = ? ", getPO().getM_Requisition_ID(), get_Trx());
		if(no>0)
			getPO().getLines(true);
		return null;
	}
	
	

}
