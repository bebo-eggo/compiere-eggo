package com.audaxis.compiere.eurocenter.interfaces;

import java.sql.ResultSet;


/**
 * Interface for Filter the ResultSet
 * The implementation of this interface should create a policy to filter the ResultSet
 * 
 * Ex: Do not Export records from specific organization
 * 
 *  public boolean filter(ResultSet rs)
 *  {
 * 		boolean retValue = true;
 * 		if (rs != null)
 * 		{
 * 			int AD_Org_ID = rs.getInt("AD_Org_ID");
 * 			if (AD_Org_ID == 1000000)
 * 				retValue = false;
 * 		}
 * 		return retValue;
 * } 
 * 
 * 
 * @author steven, vca
 *
 */
public interface FilterResultSet {

	/**
	 * 
	 * @param rs
	 * @return
	 */
	public boolean filter(ResultSet rs);

}
