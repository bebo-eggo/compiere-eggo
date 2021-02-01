package org.compiere.model;

import java.sql.ResultSet;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MDefaultWarehouse extends X_Z_DefaultWarehouse {

	public MDefaultWarehouse(Ctx ctx, int Z_DefaultWarehouse_ID, Trx trx) {
		super(ctx, Z_DefaultWarehouse_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MDefaultWarehouse(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public static int getM_Warehouse_ID(Trx trx,int C_DocType_ID, int AD_Org_ID, int AD_Client_ID)
	{
		int M_Warehouse_ID = 0;
		Object[] params = new Object[3];
		params[0]=C_DocType_ID;
		params[1]=AD_Org_ID;
		params[2]=AD_Client_ID;
		M_Warehouse_ID = DB.getSQLValue(trx, "Select M_Warehouse_ID from Z_DefaultWarehouse where IsActive='Y' and C_DocType_ID=? and AD_Org_ID=? and AD_Client_ID = ?",params );
		
		return M_Warehouse_ID==-1?0:M_Warehouse_ID;
	}
	
	public static int getM_Locator_ID(Trx trx,int C_DocType_ID, int AD_Org_ID, int M_Warehouse_ID, int AD_Client_ID)
	{
		int M_Locator_ID = 0;
		Object[] params = new Object[4];
		params[0]=C_DocType_ID;
		params[1]=AD_Org_ID;
		params[2]=M_Warehouse_ID;
		params[3]=AD_Client_ID;
		M_Locator_ID = DB.getSQLValue(trx, "Select M_Locator_ID from Z_DefaultWarehouse where IsActive='Y' and C_DocType_ID=? and AD_Org_ID=? and M_Warehouse_ID=? and AD_Client_ID = ?",params );
		return M_Locator_ID==-1?0:M_Locator_ID;
	}

}
