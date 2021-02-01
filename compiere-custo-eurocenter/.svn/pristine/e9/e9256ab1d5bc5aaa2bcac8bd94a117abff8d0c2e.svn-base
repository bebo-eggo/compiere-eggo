package com.audaxis.compiere.model;

import org.compiere.model.MOrderLine;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractOrderLine extends BasicContractPO<MOrderLine> implements
		ContractPO<MOrderLine> {

	public ContractOrderLine(MOrderLine po) {
		super(po);
	}
	
	@Override
	public String afterUpdate() {
		// TODO Auto-generated method stub
		if(getPO().getAD_Client_ID() == getCtx().getAD_Client_ID() && getPO().getParent().isSOTrx() && getPO().getQtyDelivered().equals(getPO().getQtyEntered()))
		{
			getPO().setProcessed(true);
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
