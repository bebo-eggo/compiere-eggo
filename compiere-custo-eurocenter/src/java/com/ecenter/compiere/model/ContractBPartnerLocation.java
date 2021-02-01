package com.ecenter.compiere.model;

import org.compiere.model.MBPartnerLocation;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;

public class ContractBPartnerLocation extends BasicContractPO<MBPartnerLocation>
implements ContractPO<MBPartnerLocation>{

	public ContractBPartnerLocation(MBPartnerLocation po) {
		super(po);
	}

	@Override
	public String afterUpdate() {
		//if (getPO().is_new()){
		//	if (getPO().isShipTo() && getPO().isEggo()){
		//		getPO().copyBPartnerLocation(false, true, false);
		//		getPO().copyBPartnerLocation(true, false, false);
				//	}
		//}
		return null;
	}

	@Override
	public String beforeDelete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeUpdate() {
		return null;
	}

}
