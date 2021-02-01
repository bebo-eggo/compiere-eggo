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

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MDocBaseType;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.model.MPeriod;
import org.compiere.util.TimeUtil;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractAllocationLine extends BasicContractPO<MAllocationLine>
implements ContractPO<MAllocationLine>{

	public ContractAllocationLine(MAllocationLine po) {
		super(po);
	}

	public String afterUpdate() {
		MAllocationHdr aloc = getPO().getParent();
		MInvoice invoice = getPO().getInvoice();
		MPayment payment = new MPayment(getCtx(), getPO().getC_Payment_ID(), get_Trx());
		Timestamp dateacct = aloc.getDateAcct();
		Timestamp dateAcctPay = null;
		if (payment != null)
			dateAcctPay = payment.getDateAcct();
		Timestamp dateAcctInv = null;
		if (invoice != null)
			dateAcctInv = invoice.getDateAcct();
		Timestamp dateMax = null;

		if(dateAcctInv == null)
		{
			if (dateAcctPay != null)
				dateMax = dateAcctPay;
		}	
		else
		{
			if(dateAcctPay == null)
				dateMax = dateAcctInv;
			else
				dateMax = TimeUtil.max(dateAcctInv, dateAcctPay);
		}
		
		if(dateMax != null && dateacct != null)
		{
			dateacct = TimeUtil.max(dateMax, dateacct); 
			MPeriod pz = MPeriod.getOfOrg(getCtx(), getPO().getAD_Org_ID(), dateacct);
			String error = pz.isOpen(MDocBaseType.DOCBASETYPE_PaymentAllocation, dateacct);
			if (error == null && !aloc.getDateAcct().equals(dateacct)) {
				aloc.setDateAcct(dateacct);
				aloc.save();
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

}

