package com.audaxis.compiere.callout;

import org.compiere.model.CalloutOrder;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MOrg;
import org.compiere.model.MWarehouse;
import org.compiere.util.Ctx;

public class EcCalloutOrder extends CalloutOrder {
	
	
	public String AdOrg(Ctx ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer AD_Org_ID = (Integer)value;
		MOrg org = new MOrg(ctx, AD_Org_ID,null);
		mTab.setValue("M_Warehouse_ID",org.getM_Warehouse_ID());
		return "";
	}

}
