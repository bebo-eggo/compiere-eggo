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

package com.ecenter.compiere.model;

import org.compiere.model.MInvoice;
import org.compiere.model.X_I_Coda;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractCoda extends BasicContractPO<X_I_Coda>
implements ContractPO<X_I_Coda>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ContractCoda(X_I_Coda po) {
		super(po);
	}


	public String beforeDelete() {
		return null;
	}

	
	public String beforeUpdate() {
		
		//70923
		if(getPO().getC_Invoice_ID() > 0 && getPO().get_ValueAsInt("C_Order_ID") <= 0)
		{
			MInvoice invoice = new MInvoice(getCtx(), getPO().getC_Invoice_ID(), get_Trx());
			
			if(invoice.getC_Order_ID() > 0)
			{
				getPO().set_Value("C_Order_ID", invoice.getC_Order_ID());
			}
		}
		
		return null;
	}

	@Override
	public String afterUpdate() {
		return null;
	}



}
