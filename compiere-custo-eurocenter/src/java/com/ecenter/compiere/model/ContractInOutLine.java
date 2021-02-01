package com.ecenter.compiere.model;

import java.math.BigDecimal;

import org.compiere.model.MInOutLine;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;

import com.audaxis.compiere.contract.po.BasicContractPO;

public class ContractInOutLine extends BasicContractPO<MInOutLine> {

	public ContractInOutLine(MInOutLine po) {
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
		MInOutLine mil = getPO();
		if(mil.getM_Product_ID()>0)
			if(mil.getQtyEntered().compareTo(mil.getMovementQty())!=0)
			{
				//Savoir si il y a un UOM qui nécessite des conversions.
				int M_Product_ID = mil.getM_Product_ID();
				//	log.log(Level.WARNING,"qty - init - M_Product_ID=" + M_Product_ID);
				BigDecimal MovementQty, QtyEntered;
				int C_UOM_To_ID = mil.getC_UOM_ID();
				QtyEntered = mil.getQtyEntered();
				BigDecimal QtyEntered1 = QtyEntered.setScale(MUOM.getPrecision
					(getCtx(), C_UOM_To_ID), BigDecimal.ROUND_HALF_UP);
				if (QtyEntered.compareTo(QtyEntered1) != 0)
				{  
					QtyEntered = QtyEntered1;
					mil.setQtyEntered(QtyEntered);
				}
				MovementQty = MUOMConversion.convertProductFrom (getCtx(), 
					M_Product_ID, C_UOM_To_ID, QtyEntered);
				if (MovementQty == null)
					MovementQty = QtyEntered;
				mil.setMovementQty(MovementQty);
			}
		return null;
	}

}
