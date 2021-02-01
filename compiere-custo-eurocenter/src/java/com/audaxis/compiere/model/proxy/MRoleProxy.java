package com.audaxis.compiere.model.proxy;

import org.compiere.model.MRole;

import com.audaxis.compiere.model.BasicProxy;

public class MRoleProxy extends BasicProxy<MRole> {

	public MRoleProxy(MRole po) {
		super(po);
		// TODO Auto-generated constructor stub
	}

	 /** Get IsLimitDocAction.
    @return IsLimitDocAction */
    public boolean isLimitDocAction() 
    {
        return getPO().get_ValueAsBoolean("IsLimitDocAction");
        
    }
}
