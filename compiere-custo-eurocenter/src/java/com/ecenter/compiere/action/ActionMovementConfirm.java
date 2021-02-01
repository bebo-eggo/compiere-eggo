package com.ecenter.compiere.action;

import org.compiere.model.MInvoice;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementConfirm;
import org.compiere.model.MMovementLineConfirm;
import org.compiere.process.DocumentEngine;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.contract.action.BasicContractAction;

public class ActionMovementConfirm extends BasicContractAction<MMovementConfirm> {

	MMovementConfirm po;

	public ActionMovementConfirm(MMovementConfirm po) {
		super(po);
		this.po = po;
	}

	@Override
	public String afterComplete() {
		return null;
	}

	@Override
	public String beforePrepare() {
		// TODO Auto-generated method stub
		return null;
	}

}
