package com.audaxis.compiere.model;

import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.model.proxy.MOrgInfoProxy;

public class ContractOrg extends BasicContractPO<MOrg> {

	public ContractOrg(MOrg po) {
		super(po);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String afterUpdate() {
		if(getPO().is_ValueChanged("IsActive"))
		{
			MOrgInfo info = MOrgInfo.get(getCtx(), getPO().getAD_Org_ID(), get_Trx());
			info.setIsActive(getPO().isActive());
			info.save();
		}
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
		return null;
	}

}
