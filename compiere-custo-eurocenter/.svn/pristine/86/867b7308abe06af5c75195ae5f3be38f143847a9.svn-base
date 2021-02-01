package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MPosOrderMsg extends X_I_PosOrderMsg {
	/** Logger for class MPosOrderLine */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPosOrderMsg.class);

	public static MPosOrderMsg get(Ctx ctx, int I_PosOrderMsg_ID,int ad_org_id, Trx trx) {
		MPosOrderMsg retValue = null;
		String sql = "SELECT * FROM I_PosOrderMsg WHERE I_PosOrderMsg_ID=? AND ad_org_id=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, I_PosOrderMsg_ID);
			pstmt.setInt (2, ad_org_id);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPosOrderMsg (ctx, rs, trx);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		return retValue;
	}

	public MPosOrderMsg(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	

}
