package org.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MOrgPOS extends X_Z_OrgPOS {
	
	/**	Static Logger				*/
	private static final CLogger	s_log = CLogger.getCLogger(MLocation.class);
	
	public MOrgPOS(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrgPOS(Ctx ctx, int Z_OrgPOS_ID, Trx trx) {
		super(ctx, Z_OrgPOS_ID, trx);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 * @param ctx
	 * @param AD_Org_ID
	 * @param trx
	 * @return L'objet Z_OrgPos, setting magasin POS
	 */
	public static MOrgPOS getOrgPos (Ctx ctx, int AD_Org_ID, Trx trx)
	{
		MOrgPOS orgPos = null;
		if(AD_Org_ID <= 0)
			return orgPos;
		String sql = "select * from Z_OrgPos where AD_Org_ID = ? ";
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try
			{
				pstmt = DB.prepareStatement(sql, trx);
				pstmt.setInt(1, AD_Org_ID);
				rs = pstmt.executeQuery();
				if (rs.next())
					orgPos = new MOrgPOS (ctx, rs, trx);
			}
			catch (SQLException e) {
				s_log.log(Level.SEVERE, sql + " - " + AD_Org_ID, e);
				orgPos = null;
			}
			finally {
				DB.closeResultSet(rs);
				DB.closeStatement(pstmt);
			}
		return orgPos;
	}
	
	public String getDEFAULT_SAV_STATUS()
	{
		String ret = null;
		ret = DB.getSQLValueString(null,"select value from Z_PosWfAction where Z_PosWfAction_ID=?",this.getPosAction_Repa_ID());
		return ret;
	}
	

}
