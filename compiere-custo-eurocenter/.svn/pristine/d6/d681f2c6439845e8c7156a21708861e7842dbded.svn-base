/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  
02110-1301, USA.
*/

package com.audaxis.compiere.acct.model;

import java.sql.Timestamp;

import org.compiere.model.MProduct;
import org.compiere.model.MTransaction;
import org.compiere.util.DB;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractTransaction extends BasicContractPO<MTransaction>
implements ContractPO<MTransaction>{
	
	public ContractTransaction(MTransaction po) {
		super(po);
	}

	public String afterUpdate() {
		if (isAccountingMovement()){
//			int product = getPO().getM_Product_ID();
//			Timestamp md = (Timestamp)product.get_Value("ZLastTransactionDate");
//			Timestamp movementDate = getPO().getMovementDate();
//			if (md != null && movementDate != null && md.before(movementDate)){
//				product.set_Value("ZLastTransactionDate", movementDate);
//				product.save();
//			}
//			else if (md == null){
//				product.set_Value("ZLastTransactionDate", movementDate);
//				product.save();
//			}
			
			try {
				int product = getPO().getM_Product_ID();
				DB.executeUpdate(get_Trx(), "UPDATE M_Product set ZLastTransactionDate = Sysdate where M_Product_ID = ? and AD_Client_ID = "+getCtx().getAD_Client_ID()+" AND (ZLastTransactionDate is null OR TRUNC(ZLastTransactionDate) <> TRUNC(SYSDATE))", product);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		return null;
	}

	public String beforeDelete() {
		return null;
	}

	public String beforeUpdate() {
		return null;
	}

	/**
	 * ZCOM405 <p>
	 * 
	 * On parle de VRAI mouvement ici cad des exped/receptions mais pas des inventaires ou mouvement de stock
	 * Ceci sert a savoir quand un article peut etre deprecie comptablement.
	 * 
	 * @return
	 */
	private boolean isAccountingMovement() {
		String movementType = getPO().getMovementType();
		return movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_CustomerReturns)
			|| movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_CustomerShipment)
			|| movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_VendorReceipts)
			|| movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_VendorReturns)
			|| movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_Production_)
			|| movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_ProductionPlus)
			|| movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_WorkOrder_)
			|| movementType.equalsIgnoreCase(MTransaction.MOVEMENTTYPE_WorkOrderPlus)
		;
	}

}
