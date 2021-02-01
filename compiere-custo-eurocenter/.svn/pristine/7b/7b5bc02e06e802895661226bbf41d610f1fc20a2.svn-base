package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.DB;
import org.compiere.util.DBException;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.SvrProcessExtended;

public class SetFileSizeOA extends SvrProcessExtended{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String SQL = "Select c_order_id, downloadurl from XRV_OrderFiles";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(SQL.toString(), get_TrxName());
			rs = pstmt.executeQuery();
			int oldOrder_ID = 0;
			long size_kb = 0;
			while (rs.next())
			{ 	
				int Order_ID = rs.getInt(1);
				if(oldOrder_ID!=Order_ID)
				{
					
					if(oldOrder_ID!=0)
					{
						DB.executeUpdate(get_Trx(), "DELETE FROM xx_order_files_size where C_Order_ID = ? ",oldOrder_ID);
						DB.executeUpdate(get_Trx(), "Insert into xx_order_files_size (C_ORDER_ID,FILES_SIZE) (?,?)", oldOrder_ID, ""+size_kb);
					}
					oldOrder_ID = Order_ID;
					size_kb = 0;
				}
				
				String url = rs.getString(2);
				File file = new File(url);
				if (file.exists()) {
					long bytes = file.length();
					size_kb+=(bytes / 1024);
				}
				
				
			}
			if(oldOrder_ID!=0)
			{
				DB.executeUpdate(get_Trx(), "DELETE FROM xx_order_files_size where C_Order_ID = ? ",oldOrder_ID);
				DB.executeUpdate(get_Trx(), "Insert into xx_order_files_size (C_ORDER_ID,FILES_SIZE) (?,?)", oldOrder_ID, ""+size_kb);
			}

		}
		catch (Exception e)
		{  
			log.log(Level.SEVERE, SQL.toString(), e);
			throw new DBException(e);

		}
		finally
		{
			Util.closeCursor(pstmt, rs);						
		}
		return null;
	}

}
