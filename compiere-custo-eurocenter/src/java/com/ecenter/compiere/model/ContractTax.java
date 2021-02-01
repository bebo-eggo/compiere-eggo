package com.ecenter.compiere.model;

import org.compiere.model.MTax;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.contract.po.BasicContractPO;

public class ContractTax  extends BasicContractPO<MTax>{

	public ContractTax(MTax po) {
		super(po);
	}

	@Override
	public String afterUpdate() {
		return null;
	}

	@Override
	public String beforeDelete() {
		return null;
	}

	@Override
	public String beforeUpdate() {
		
//		if (getPO().get_ValueAsBoolean("IsTVAIncyAP")){
//			
//			int count = DB.getSQLValue(get_Trx(), "SELECT count(*) FROM C_Tax WHERE IsTVAIncyAP='Y' AND C_TaxCategory_ID = "+getPO().getC_TaxCategory_ID()+" and IsActive='Y' AND C_Tax_ID <>? AND AD_Client_ID = ?", getPO().getC_Tax_ID()
//					, getPO().getAD_Client_ID());
//			
//			if (count >0)
//				return Msg.getMsg(getPO().getCtx(), "EC_IsTVAIncyAP_ERR");
//		}
//		
//		if (getPO().get_ValueAsBoolean("IsTVAIncyAR")){
//				
//				int count = DB.getSQLValue(get_Trx(), "SELECT count(*) FROM C_Tax WHERE IsTVAIncyAR='Y' AND C_TaxCategory_ID = "+getPO().getC_TaxCategory_ID()+" AND IsActive='Y' AND C_Tax_ID <>? AND AD_Client_ID = ?", getPO().getC_Tax_ID()
//						, getPO().getAD_Client_ID());
//				
//				if (count >0)
//					return Msg.getMsg(getPO().getCtx(), "EC_IsTVAIncyAR_ERR");
//		}
	
		return null;
		
	}


}
