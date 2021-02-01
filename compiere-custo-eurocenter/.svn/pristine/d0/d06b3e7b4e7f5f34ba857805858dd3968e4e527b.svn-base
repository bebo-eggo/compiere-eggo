package com.audaxis.compiere.eurocenter.helper;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProductPrice;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import com.audaxis.compiere.util.CompiereException;

public class PriceListHelper
{
	
	public static MPriceList getMPriceList(String priceListName, Trx trxName)
	{
		MPriceList mpl = null;

		String sql ="SELECT * FROM M_PriceList WHERE IsActive = 'Y' AND Name=? ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setString(1, priceListName);

			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				mpl = new MPriceList(Env.getCtx(),rs,trxName);
			}
		}
		catch (Exception e)
		{
			CLogger.get().log(Level.SEVERE, sql, e);
		}
		finally 
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}

		return mpl;
	}
}
