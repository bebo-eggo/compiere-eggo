package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class MPosWfActivity extends X_Z_PosWfActivity {

	public MPosWfActivity(Ctx ctx, int Z_PosWfActivity_ID, Trx trx) {
		super(ctx, Z_PosWfActivity_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MPosWfActivity(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public static int getREJECTED_ACTION_ACTIVITY_ID()
	{
		int ret = 0;
		ret = DB.getSQLValue(null, "select max(Z_PosWfActivity_ID) from Z_PosWfActivity where Value in ( select msgText from AD_Message WHERE value = 'POS_ACTIVITY_ACTION_CANCEL_VALUE'  ) " );
		return ret;
	}
	
	public static int getCONFIRM_FORM_OTHER_WH_ACTIVITY()
	{
		int ret = 0;
		ret = DB.getSQLValue(null, "select max(Z_PosWfActivity_ID) from Z_PosWfActivity where Value in ( select msgText from AD_Message WHERE value = 'POS_CONFIRM_FORM_OTHER_WH_ACTIVITY' ) " ); 
		return ret;
	}
	
	public static int getPROCESS_BO_ACTIVITY()
	{
		int ret = 0;
		ret = DB.getSQLValue(null, "select max(Z_PosWfActivity_ID) from Z_PosWfActivity where Value in ( select msgText from AD_Message WHERE value = 'POS_PROCESS_BO_ACTIVITY'  ) " ); 
		return ret;
	}
	
	public static int getCOMPLETED_ACTIVITY()
	{
		int ret = 0;
		ret = DB.getSQLValue(null, "select max(Z_PosWfActivity_ID) from Z_PosWfActivity where Value in ( select msgText from AD_Message WHERE value = 'POS_COMPLETED_ACTIVITY'  ) " ); 
		return ret;
	}
	
}
