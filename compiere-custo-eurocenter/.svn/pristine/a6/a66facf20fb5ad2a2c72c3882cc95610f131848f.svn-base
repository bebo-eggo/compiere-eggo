package org.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import com.audaxis.compiere.eurocenter.ws.WSUtil;

public class MPoAcknoledgment extends X_Z_PoAcknoledgment {

	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		// TODO Auto-generated method stub
		MOrder mo = new MOrder(getCtx(), getC_Order_ID(), get_Trx());
		if(!mo.isSOTrx())
		{
			WSUtil.updateOrder(getCtx(), mo, false, get_Trx());
			WSUtil.updatePoAcknoledgment(getCtx(), this, newRecord, get_Trx());
		}
		return super.afterSave(newRecord, success);
	}

	public MPoAcknoledgment(Ctx ctx, int Z_PoAcknoledgment_ID, Trx trx) {
		super(ctx, Z_PoAcknoledgment_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MPoAcknoledgment(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
		if(getZ_ArDate() == null)
			setZ_ArDate(new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
		return super.beforeSave(newRecord);
	}

	public static ArrayList<MPoAcknoledgment> getRecordFrom(Ctx ctx, String p_NoAR,int p_C_Order_ID, Trx trx)
	{
		ArrayList<MPoAcknoledgment> ret = new ArrayList<MPoAcknoledgment>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "Select * from Z_PoAcknoledgment where IsActive = 'Y' and C_Order_ID = ? and AD_Client_ID = ?";
		if(p_NoAR!=null)
			sql = sql+" and Z_ARNUMBER = ? ";
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, p_C_Order_ID);
			pstmt.setInt(2, ctx.getAD_Client_ID());
			if(p_NoAR!=null)
				pstmt.setString(3, p_NoAR);
			rs = pstmt.executeQuery ();
			while(rs.next ())
			{
				ret.add(new MPoAcknoledgment(Env.getCtx(),rs,trx));

			}
		} catch (Exception e)
		{
			CLogger.get().log (Level.SEVERE, sql, e);
		}
		finally 
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		return ret;
	}
		
}
