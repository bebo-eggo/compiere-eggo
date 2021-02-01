package com.audaxis.compiere.model.proxy;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MCostElement;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.BasicProxy;
import com.audaxis.compiere.model.MAcctSchemaProxy;

public class MCostElementProxy extends BasicProxy<MCostElement> {

	protected static CLogger s_log = CLogger.getCLogger(MAcctSchemaProxy.class);
	
	public MCostElementProxy(MCostElement po) {
		super(po);
		// TODO Auto-generated constructor stub
	}
	
	public static MCostElement getDefaultCostElement (Ctx ctx, int AD_Client_ID, Trx trx)
	{
		MCostElement ret = null;
		String sql = "Select * from M_CostElement where AD_Client_ID = ? and IsActive = 'Y' Order By M_CostElement_ID DESC";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trx);
			pstmt.setInt(1, AD_Client_ID);//MERGE
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				ret = new MCostElement(ctx, rs, trx);
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
