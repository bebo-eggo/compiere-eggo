package com.audaxis.compiere.model.proxy;

import org.compiere.model.MProductCategory;
import com.audaxis.compiere.model.BasicProxy;

public class MProductCategoryProxy extends BasicProxy<MProductCategory> {
	
	public MProductCategoryProxy(MProductCategory po) {
		super(po);
	}
	
	public void setXX_Role_Able_Exped (boolean XX_Role_Able_Exped)
    {
        getPO().set_Value ("XX_Role_Able_Exped", Boolean.valueOf(XX_Role_Able_Exped));
        
    }
    
    public boolean isXX_Role_Able_Exped() 
    {
        return  getPO().get_ValueAsBoolean("XX_Role_Able_Exped");
        
    }
	
}