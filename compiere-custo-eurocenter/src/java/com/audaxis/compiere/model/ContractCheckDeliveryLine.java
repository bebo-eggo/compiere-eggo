package com.audaxis.compiere.model;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractCheckDeliveryLine  extends BasicContractPO<MCheckDeliveryLine> implements ContractPO<MCheckDeliveryLine> {

	public ContractCheckDeliveryLine(MCheckDeliveryLine po) {
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
		//Redmine 44708
		getPO().setAD_Org_ID(getPO().getParent().getAD_Org_ID());
		//
		return null;
	}

}
