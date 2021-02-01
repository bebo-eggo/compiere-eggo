package com.audaxis.compiere.model.proxy;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.model.MDocType;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.BasicProxy;

public class MDocTypeProxy extends BasicProxy<MDocType> {
	
	public MDocTypeProxy(MDocType po) {
		super(po);
	}
	
	public String getStatusFromDoctype()
	{
		String ret = null;
		String sql = "Select Z_OrderStepStatus from Z_INITFLUX where IsActive='Y' and AD_Client_ID = ? and C_DocType_ID = ? order by Z_INITFLUX_ID DESC";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			try {
				pstmt = DB.prepareStatement(sql.toString(), get_Trx());
				pstmt.setInt(1, getPO().getAD_Client_ID());
				pstmt.setInt(2, getPO().getC_DocType_ID());
				rs = pstmt.executeQuery();
				if (rs.next())
				{
					ret = rs.getString(1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Util.closeCursor(pstmt, rs);
			}
		
		return ret;
	}
	
}