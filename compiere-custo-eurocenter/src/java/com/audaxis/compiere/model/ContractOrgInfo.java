package com.audaxis.compiere.model;

import org.compiere.model.MOrgInfo;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;
import com.audaxis.compiere.util.CompiereException;

public class ContractOrgInfo extends BasicContractPO<MOrgInfo> implements
		ContractPO<MOrgInfo> {

	public ContractOrgInfo(MOrgInfo po) {
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
		if(!getPO().get_ValueAsBoolean("IsOrgAdmin"))
			return null;
		String sql = "Select count(*) from AD_OrgInfo aoi " +
				"where aoi.IsOrgAdmin = 'Y' and aoi.IsActive='Y' and aoi.AD_Client_ID = "+getPO().getAD_Client_ID()+
				" and aoi.AD_Org_ID != ?";
		int nb = DB.getSQLValue(null, sql, getPO().getAD_Org_ID());
		if(nb>0)
			throw new CompiereException(Msg.getMsg(getCtx(),"EGGO_ERROR_ORGADMIN"));
		return null;
	}

}
