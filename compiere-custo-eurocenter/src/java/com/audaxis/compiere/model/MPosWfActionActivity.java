package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class MPosWfActionActivity extends X_Z_PosActionActivity {
	
	public MPosWfActionActivity(Ctx ctx, int Z_PosWfActionActivity_ID, Trx trx) {
		super(ctx, Z_PosWfActionActivity_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MPosWfActionActivity(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public static boolean isLastActivityFromOrgTo(int PosWfActionID,int currActID, int orgID ){
		int nextActionActivity = 0;
		String sql = "select Z_PosActionActivity_ID from Z_PosActionActivity  " +
			     " WHERE isActive = 'Y'   "+
			     " and Z_PosWFAction_ID = ? " +
			     " and isValidatedByOrgTo = 'Y' " +
			     " and SeqNo > ? " +
			     " order by SeqNo ";
				 ;
	PreparedStatement pst = null;
	ResultSet rs = null;
	try{
		pst = DB.prepareStatement(sql.toString(), null);
		pst.setInt(1, PosWfActionID);
		pst.setInt(2, DB.getSQLValue(null, "Select seqno from Z_PosActionActivity WHERE Z_PosActionActivity_ID = ?",currActID));
		rs = pst.executeQuery();
		if (rs.next()) nextActionActivity = rs.getInt(1); 
		
	}catch (Exception e){
		throw new CompiereException(e.getMessage());
	}				
		finally{
		Util.closeCursor(pst, rs);
	}

		
		if ( nextActionActivity > 1 ) return false;
		else return true;
	}
	
	
	public static int getNextActivity(int PosWfActionID,  int PosWfActivityID ){
		int nextActionActivity = 0;
		String sql = "select Z_PosActionActivity_ID from Z_PosActionActivity  " +
			     " WHERE isActive = 'Y'   "+
			     " and Z_PosWFAction_ID = ? " +
			     " and SeqNo > ? " +
			     " order by SeqNo ";
				 ;
	PreparedStatement pst = null;
	ResultSet rs = null;
	try{
		pst = DB.prepareStatement(sql.toString(), null);
		pst.setInt(1, PosWfActionID);
		pst.setInt(2, DB.getSQLValue(null, "Select seqno from Z_PosActionActivity WHERE Z_PosWFAction_ID = ? and Z_PosWfActivity_ID = ?",PosWfActionID,  PosWfActivityID));
		rs = pst.executeQuery();
		if (rs.next()) nextActionActivity = rs.getInt(1); 
		
	}catch (Exception e){
		throw new CompiereException(e.getMessage());
	}				
		finally{
		Util.closeCursor(pst, rs);
	}

		
		return nextActionActivity;
	}

	
	public static int getActionActivity(int PosWfActionID,  int PosWfActivityID ){
		int nextActionActivity = 0;
		String sql = "select Z_PosActionActivity_ID from Z_PosActionActivity  " +
			     " WHERE isActive = 'Y'   "+
			     " and Z_PosWFAction_ID = ? " +
			     " and Z_PosWFActivity_ID = ? " 
				 ;
	PreparedStatement pst = null;
	ResultSet rs = null;
	try{
		pst = DB.prepareStatement(sql.toString(), null);
		pst.setInt(1, PosWfActionID);
		pst.setInt(2, PosWfActivityID);
		rs = pst.executeQuery();
		if (rs.next()) nextActionActivity = rs.getInt(1); 
		
	}catch (Exception e){
		throw new CompiereException(e.getMessage());
	}				
		finally{
		Util.closeCursor(pst, rs);
	}

		
		return nextActionActivity;
	}
	


}
