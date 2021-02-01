package com.audaxis.compiere.eurocenter.acct.util;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Map;

public class ParamHelper {
	

	public static String getString(Map<String, Object> params, String columnName)
	{
		Object o = params.get(columnName);
		if (o != null)
			return o.toString();
		else
			return null;
	}
	public static Timestamp getTimestamp(Map<String, Object> params, String columnName)
	{
		return (Timestamp) params.get(columnName);
	}

	public static boolean getBoolean(Map<String, Object> params, String columnName)
	{
		Object o = params.get(columnName);
		if (o instanceof String)
			return "Y".equalsIgnoreCase((String)o);
		else if (o instanceof Boolean)
			return (o==null)?false:((Boolean)o);
		return false;
	}
	/**
	 * format is 
	 * 		0 = Y / N
	 * 		1 = Yes / No
	 * 		2 = O / N
	 * 		3 = Oui / NON
	 * 
	 * @param params
	 * @param columnName
	 * @param format
	 * @return
	 */
	public static String getBooleanAsString(Map<String, Object> params, String columnName, int format)
	{
		boolean b = getBoolean(params, columnName);
		switch (format) {
		case 0:
			return (b) ? "Y" : "N";
		case 1:
			return (b) ? "Yes" : "No";
		case 2:
			return (b) ? "O" : "N";
		case 3:
			return (b) ? "Oui" : "Non";
		}
		throw new RuntimeException("Undefined Format !");
	}
	
	public static BigDecimal getBigDecimal(Map<String, Object> params, String columnName)
	{
		Object o = params.get(columnName);
		if (o instanceof BigDecimal)
			return (BigDecimal)o;
		else if (o instanceof Double)
			return BigDecimal.valueOf((Double)o);
		else if (o instanceof Integer)
			return BigDecimal.valueOf((Integer)o);
		
		return null;
	}

	public static int getInteger(Map<String, Object> params, String columnName) throws NumberFormatException 
	{
		Object o = params.get(columnName);
		if (o == null)
			return 0;
		if (o instanceof Integer)
			return (Integer) o;
		else if (o instanceof Double)
			return ((Double)o).intValue();
		else if (o instanceof BigDecimal)
			return ((BigDecimal)o).intValue();
		else if (o instanceof String)
			return Integer.valueOf((String)o);

		return 0;
	}

	
}
