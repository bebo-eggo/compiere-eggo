package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;

public class MPosOrderLine extends X_I_PosOrderLine {
	/** Logger for class MPosOrderLine */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPosOrderLine.class);

	public static MPosOrderLine get(Ctx ctx, int I_PosOrderLine_ID,int ad_org_id, Trx trx) {
		MPosOrderLine retValue = null;
		String sql = "SELECT * FROM I_PosOrderLine WHERE I_PosOrderLine_ID=? AND ad_org_id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, I_PosOrderLine_ID);
			pstmt.setInt (2, ad_org_id);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPosOrderLine (ctx, rs, trx);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		return retValue;
	}

	public MPosOrderLine(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	/**************************************************************************
	 * 	Get Lines of PosOrderLineAction
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MPosOrderLineAction[] getLineActions (String whereClause, String orderClause)
	{
		ArrayList<MPosOrderLineAction> list = new ArrayList<MPosOrderLineAction> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderLineAction WHERE I_PosOrderLine_ID=? AND AD_Org_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getC_OrderLine_ID());
			pstmt.setInt(2, getAD_Org_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrderLineAction ol = new MPosOrderLineAction(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MPosOrderLineAction[] lines = new MPosOrderLineAction[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	public int getRefC_OrderLine(int c_order_id){
		int c_orderline_id=0;
		StringBuffer sql = new StringBuffer("SELECT C_Orderline_ID FROM C_Orderline WHERE C_Order_ID=? AND M_Product_ID=? AND line=? ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1,c_order_id);
			pstmt.setInt(2,getM_Product_ID());
			pstmt.setInt(3,getLine());
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				c_orderline_id = rs.getInt(1);
			}
			rs.close();
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
		}
		return c_orderline_id;
	}

}
