package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class MPosWfAction extends X_Z_PosWfAction {
	public MPosWfAction(Ctx ctx, int Z_PosWfAction_ID, Trx trx) {
		super(ctx, Z_PosWfAction_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MPosWfAction(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public static int getFirstActivity(int actionID){
		int activityID = 0;
		PreparedStatement pstmt = null;
		StringBuffer sql = new StringBuffer("SELECT Z_PosWfActivity_ID FROM Z_PosActionActivity WHERE Z_PosWfAction_id = ? order by seqno ");
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, actionID);
			rs = pstmt.executeQuery();
			if (rs.next())
				activityID = rs.getInt("Z_PosWfActivity_ID");
		}
		catch (Exception e)
		{
			throw new CompiereException(e.getMessage());
		}finally{
			Util.closeCursor(pstmt, rs);
		}
		return activityID;
	}

}
