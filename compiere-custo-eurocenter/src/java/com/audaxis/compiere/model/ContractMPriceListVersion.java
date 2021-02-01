package com.audaxis.compiere.model;

import org.compiere.model.MPriceListVersion;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;
import com.audaxis.compiere.model.proxy.MPriceListVersionProxy;

public class ContractMPriceListVersion extends BasicContractPO<MPriceListVersion> implements
		ContractPO<MPriceListVersion> {

	public ContractMPriceListVersion(MPriceListVersion po) {
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
		//Si IsAlign est coché = IsPromo le sera !
		MPriceListVersionProxy mpvp = new MPriceListVersionProxy(getPO());
		if(mpvp.IsAlign())
			mpvp.Is_ZFolder(true);
		return null;
	}

}
