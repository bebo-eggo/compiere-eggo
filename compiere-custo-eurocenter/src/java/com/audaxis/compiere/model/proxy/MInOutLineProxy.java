package com.audaxis.compiere.model.proxy;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MInOutLine;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.BasicProxy;
import com.audaxis.compiere.model.MAcctSchemaProxy;

public class MInOutLineProxy extends BasicProxy<MInOutLine> {

	protected static CLogger s_log = CLogger.getCLogger(MAcctSchemaProxy.class);

	public MInOutLineProxy(MInOutLine po) {
		super(po);
	}
	
	
	public int getC_OrderLine_ID(Ctx ctx, int C_order_ID, int M_Product_ID, BigDecimal qtyDelivred, Trx trx)
	{
		/*Méthode qui retourne le premier C_OrderLine_ID dont
		 *  - M_Product_ID correspond
		 *  - Qty receptionnable correspond
		 */

		int ret = 0;
		StringBuffer sql = new StringBuffer("SELECT C_OrderLine_ID FROM ")
		.append("(SELECT C_OrderLine_ID, ")
		.append("SUM(col.QtyOrdered)   over (partition BY col.m_product_id) AS QtyOrdered, ")
		.append("SUM(col.QtyDelivered) over (partition BY col.m_product_id) AS QtyDelivered ")
		.append("FROM C_orderLine col ")
		.append("WHERE col.C_order_ID = ? ")
		.append("AND col.M_Product_ID = ? ")
		.append("AND NOT EXISTS ")
		.append("(SELECT 1 FROM M_InOutline il ")
		.append("INNER JOIN m_inout i ON i.M_InOut_ID = il.M_InOut_ID ")
		.append("WHERE i.docstatus NOT IN ('CO','CL','RE','VO') ")
		.append("AND il.QTYENTERED >= ? ")
		.append("AND il.C_OrderLine_ID = col.C_OrderLine_ID ) ")
		.append("ORDER BY col.QTYORDERED-col.QtyDelivered DESC) ")
		.append("WHERE QtyOrdered - (QtyDelivered + ?) >= 0");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trx);
			pstmt.setInt(1, C_order_ID);
			pstmt.setInt(2, M_Product_ID);
			pstmt.setBigDecimal(3, qtyDelivred);
			pstmt.setBigDecimal(4, qtyDelivred);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				ret = rs.getInt(1);
			}
		}catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
			Util.closeCursor(pstmt, rs);
		}

		return ret;
	}

}
