package com.audaxis.compiere.eurocenter.helper;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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

public class PriceListVersionHelper
{
	

	/**
	 * Return Current PriceListVersion (from today)
	 * 
	 * @param pl
	 * @param trxName
	 * @return
	 */
	public static MPriceListVersion getCurrentPriceListVersion(MPriceList pl ,Trx trxName)
	{
		Timestamp currentDate = new Timestamp(Env.getCtx().getContextAsTime("#Date"));
		if (currentDate == null) currentDate = new Timestamp(System.currentTimeMillis());
		return getPriceListVersion(pl, currentDate, trxName);
	}

	
	/**
	 * Return PriceListVersion related to the date given in parameters
	 * 
	 * @param pl
	 * @param trxName
	 * @return
	 */
	public static MPriceListVersion getPriceListVersion(MPriceList pl, Timestamp date ,Trx trxName)
	{
		if (pl == null)
			throw new CompiereException("Liste de prix inexistante !");

		MPriceListVersion retValue = null;
		
		String sql = "SELECT * FROM M_PRICELIST_VERSION  WHERE IsActive = 'Y' AND M_PriceList_ID=? and trunc(VALIDFROM) <="+DB.TO_DATE(date)+" ORDER BY VALIDFROM DESC" ;   

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setInt(1, pl.getM_PriceList_ID());
			//pstmt.setTimestamp(2, date);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPriceListVersion(Env.getCtx(),rs,trxName);

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

		return retValue;
	}
	
	/**
	 * Return PriceListVersion related to the date given in parameters
	 * 
	 * @param pl
	 * @param trxName
	 * @return
	 */
	public static MPriceListVersion getPriceListVersion(MPriceList pl, Timestamp date ,String whereclause,Trx trxName)
	{
		if (pl == null)
			throw new CompiereException("Liste de prix inexistante !");

		MPriceListVersion retValue = null;
		
		String sql = "SELECT * FROM M_PRICELIST_VERSION  WHERE IsActive = 'Y' AND M_PriceList_ID=? and TRUNC(VALIDFROM) <="+DB.TO_DATE(date);   
		if(whereclause!=null || !whereclause.equals(""))
			sql = sql+" " +whereclause;
		sql = sql+" ORDER BY VALIDFROM DESC, m_pricelist_version_id ASC" ;   
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setInt(1, pl.getM_PriceList_ID());
			//pstmt.setTimestamp(2, date);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPriceListVersion(Env.getCtx(),rs,trxName);

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

		return retValue;
	}
	
	/**
	 * Return PriceListVersion last from Name
	 * 
	 * @param pl
	 * @param trxName
	 * @return
	 */
	public static MPriceListVersion getPriceListLastVersion(MPriceList pl,String whereclause,Trx trxName)
	{
		if (pl == null)
			throw new CompiereException("Liste de prix inexistante !");
		MPriceListVersion retValue = null;
		
		String sql = "SELECT * FROM M_PRICELIST_VERSION  WHERE IsActive = 'Y' AND M_PriceList_ID=?  ";
		if(whereclause!=null || !whereclause.equals(""))
			sql = sql+" " +whereclause;
		
		sql = sql+" ORDER BY VALIDFROM DESC, m_pricelist_version_id ASC" ;   

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setInt(1, pl.getM_PriceList_ID());
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPriceListVersion(Env.getCtx(),rs,trxName);

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
		return retValue;
	}

	public static MProductPrice[] get(int pricelistversion ,Trx trxName )
	{
		ArrayList<MProductPrice> retvalue = new ArrayList<MProductPrice>();
		StringBuilder sql = new StringBuilder(" select * from M_ProductPrice where M_PriceList_Version_ID = ? and isActive ='Y'");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), trxName);
			pstmt.setInt(1, pricelistversion);
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				MProductPrice pr = new MProductPrice(Env.getCtx(), rs, trxName);
				if(pr.getM_Product_ID() > 0)
				{
					retvalue.add(pr);
				}
			}
		
		} catch (Exception e)
		{
			CLogger.get().log (Level.SEVERE, sql.toString(), e);
		}
		finally 
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		
		return retvalue.toArray( new MProductPrice[retvalue.size()]);
	}	
	
}
