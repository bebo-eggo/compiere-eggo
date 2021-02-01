package org.compiere.gwt.server;



import java.math.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.Date;
import java.util.logging.*;

import org.compiere.common.*;
import org.compiere.common.constants.*;
import org.compiere.db.QueryUtil;
import org.compiere.framework.*;
import org.compiere.model.MSystem;
import org.compiere.model.M_Element;
import org.compiere.util.*;
import org.compiere.vos.*;

public final class Util {

	static CLogger log = CLogger.getCLogger( Util.class );
	public static boolean string2Boolean(String v) {
		return "Y".equals(v);
	}
	public static java.sql.Timestamp string2Timestamp(String v) {
		if (v == null)
			return null;
		try {
			return new java.sql.Timestamp(Long.parseLong(v));
		} catch (NumberFormatException e) {

		}
		return null;
	}
	public static Number string2Number(String v) {
		return null;
	}
	public static int string2Int(String v) {
		if (v == null)
			return 0;
		try {
			return Integer.parseInt(v);
		} catch (NumberFormatException e) {

		}
		return 0;
	}

	public static BigDecimal string2BigDecimal(String v) {
		return new BigDecimal(v);
	}

	public static ListBoxVO convertLookupToVO( Lookup l, boolean isMandatory, String p_default_key )
	{
		if( l == null )
			return null;

		ArrayList<NamePair> data = l.getData( isMandatory, true, true, true );

		ArrayList< ValueNamePair > list = new ArrayList< ValueNamePair >();

		for( Object obj : data )
		{
			String key = null;
			String name = null;
			if( obj instanceof NamePair )
			{
				NamePair p = (NamePair) obj;
				key = p.getID();
				name = p.getName();
				if (key == null)
					key = "";
				if (name == null)
					name = "";
			}
			else
			{
				key = "";
				name = "*** Unknown Lookup Type ***";
				log.severe( "Unknown Lookup Type: " + obj.getClass().getCanonicalName() );
			}

			list.add( new ValueNamePair( key, name ) );
		}

		return new ListBoxVO( list.toArray( new ValueNamePair[0] ), p_default_key );
	}
	/**
	 * Take an input string, and return a String, BigDecimal, Boolean, or Timestamp based on the field type 
	 * @param str
	 * @param f
	 * @return
	 */
	public static Object convertDataType( String str, int displayType )
	{
		Object result = null;
		if( "".equals( str ) )
			str = null;

		try
		{
			if( FieldType.isDate( displayType ) )
			{
				if( str != null )
				{
					Date d = new Date( Long.parseLong( str ) );
					result = new Timestamp( d.getTime() );
				}
			}
			else if ( FieldType.isID( displayType ) || FieldType.isNumeric( displayType )  )
			{
				//ZCOM999 Locale locale = new Locale( "en_US" );
				Locale locale = new Locale( "fr_FR" );
				NumberFormat nf = NumberFormat.getInstance( locale );
				if( str != null )
				{
					Number n = nf.parse( str );
					result = new BigDecimal( n.toString() );
				}
			}
			else if ( DisplayTypeConstants.YesNo == displayType )
			{
				result = "Y".equals( str );
			}
			else
			{
				result = str;
			}
		}
		catch( ParseException e )
		{
			result = str;
		}
		return result;
	}



	/**
	 * Returns the class object determined by the displayType
	 * @param displayType
	 * @return
	 */
	public static Class< ? > getClass( int displayType )
	{
		if( FieldType.isDate( displayType ) )
		{
			return Timestamp.class;
		}
		else if ( FieldType.isID( displayType ) || FieldType.isNumeric( displayType )  )
		{
			return BigDecimal.class;
		}
		else if ( DisplayTypeConstants.YesNo == displayType )
		{
			return Boolean.class;
		}
		else
		{
			return String.class;
		}
	}



	public static ArrayList<ValueNamePair> readReference( Ctx ctx, int AD_Reference_ID)
	{
		return readReference(ctx, AD_Reference_ID,"");
	}

	public static ArrayList<ValueNamePair> readReference( Ctx ctx, int AD_Reference_ID, String validationCode)
	{
		ArrayList<ValueNamePair> values = new ArrayList<ValueNamePair>();
		String SQL;
		if (Env.isBaseLanguage(ctx, "AD_Ref_List"))
			SQL = "SELECT Value, Name FROM AD_Ref_List WHERE AD_Reference_ID=?"
				+ " AND IsActive='Y'";
		else
			SQL = "SELECT AD_Ref_List.Value, t.Name FROM AD_Ref_List, AD_Ref_List_Trl t "
				+ "WHERE AD_Ref_List.AD_Ref_List_ID=t.AD_Ref_List_ID"
				+ " AND t.AD_Language='" + Env.getAD_Language(ctx) + "'"
				+ " AND AD_Ref_List.AD_Reference_ID=?"
				+ " AND AD_Ref_List.IsActive='Y'";

		if(validationCode!=null && validationCode.length()!=0)
			SQL += "AND " + validationCode;

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(SQL, (Trx) null);
			pstmt.setInt(1, AD_Reference_ID);
			ResultSet rs = pstmt.executeQuery();
			try {
			while (rs.next())
			{
				String value = rs.getString(1);
				String name = rs.getString(2);
				values.add(new ValueNamePair(value, name));
			}
			}
			finally {
			rs.close();
			}
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, SQL, e);
		}
		return values;
	}	//	readReference


	public static FieldVO createFieldVO(Ctx ctx, String columnName, String name, int displayType)
	{
		FieldVO f = new FieldVO (columnName, name, displayType);
		M_Element e = M_Element.getOfColumnName(ctx, columnName);
		f.Description = e.getDescription();
		f.Help = e.getHelp();

		return f;
	}
	
	//Redmine 29972
	public static ArrayList<String> getTableColumnNames(int userID, int AD_Tab_ID, long tableID) {
		String sql = "SELECT custom FROM AD_User_Customization WHERE AD_User_ID=? AND AD_COMPONENT_ID=? ";
		try {
			Object[][] result = QueryUtil.executeQuery(sql, new Object[] {
					new Integer(userID), new Long(tableID) });
			if (result == null || result.length == 0)
				return null;

			String[] columnNames = ((String) result[0][0]).split(",");
			ArrayList<String> tableColumnNames = new ArrayList<String>();
			for (String columnName : columnNames) {
				if(AD_Tab_ID > 0 && isDisplayed(columnName, AD_Tab_ID))
					tableColumnNames.add(columnName);
			}
			return tableColumnNames;
		} catch (Exception e) {// in case the table is not created, let's just
								// don't null to indicate no customization
			return null;
		}

	}

	
	//ZCOM999 if the field is displayed in multi-row mode #47968
	private static boolean isDisplayed(String columnName, int AD_Tab_ID) {
	
		int AD_Table_ID = DB.getSQLValue(null, "select AD_Table_ID From AD_Tab Where AD_Tab_ID = ? ", AD_Tab_ID);
		String sql = "SELECT 'Y' FROM AD_Field Where AD_Tab_ID = ? " +
			"AND AD_Column_ID = (select AD_Column_ID From AD_Column WHERE ColumnName = '"+columnName+"' AND AD_Table_ID = "+AD_Table_ID+") " +
			"AND isdisplayed = 'Y' AND mrseqno > 0 ";
		
		String isDispalyedStr = DB.getSQLValueString(null, sql, AD_Tab_ID);
		
		return isDispalyedStr != null && isDispalyedStr.equals("Y");
	}
	
	
	//Redmine 29972
	public static void saveTableColumnNames(int userID,int AD_Tab_ID, long tableID,
			ArrayList<String> columnNames, CContext ctx) {
		StringBuffer tmpColumnNames = new StringBuffer();
		for (String columnName : columnNames) {
			if(AD_Tab_ID > 0 && isDisplayed(columnName, AD_Tab_ID))
				tmpColumnNames.append(columnName).append(",");
		}
		int no;
		String strColumnNames = tmpColumnNames.toString();
		String exists = "SELECT count(*) FROM AD_User_Customization WHERE "
				+ "AD_User_ID=? AND AD_Component_ID=? ";
		Object[][] result = QueryUtil.executeQuery(exists, new Object[] {
				new Integer(userID), new Long(tableID) });
		if (new BigDecimal(0).equals(result[0][0])) {
			// REDMINE #28914
			String sql = "INSERT INTO AD_User_Customization(AD_User_Customization_ID, AD_User_ID, AD_Component_ID, Custom, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy) "
					+ "VALUES(AD_Sequence_NextNo('AD_User_Customization'), ?, ?, ?, ?, ?, 'Y', sysdate, ?, sysdate, ?)";
			// REDMINE #28914
			no = DB.executeUpdate(sql,
					new Object[] { new Integer(userID), new Long(tableID),
					strColumnNames, new Integer(ctx.getAD_Client_ID()),
							new Integer(ctx.getAD_Org_ID()),
							new Integer(userID), new Integer(userID) }, null);
		} else {
			String sql = "UPDATE AD_User_Customization SET Custom = ? , updated = sysdate WHERE AD_User_ID=? AND AD_COMPONENT_ID=? ";
			no = DB.executeUpdate(sql, new Object[] { strColumnNames,
					new Integer(userID), new Long(tableID) }, null);
		}
		if (no != 1)
			throw new CompiereStateException("Cannot save customization");
	}
	
	public static Map<String, String> readSystem( Ctx m_ctx)
	{
		MSystem system = MSystem.get(m_ctx);
		if (system == null)
			throw new CompiereStateException("No System Info");
		
		

		Map<String, String> values = new HashMap<String, String>();
		String Enabled3rdPartyAuthentication= "F";
		String DisableAuthentication= "F";
		Object o=system.get_Value("Enabled3rdPartyAuthentication");
		String message = (String)system.get_Value("HTTPMessage");
		String token =(String)system.get_Value("Token");
		
		if(o!=null && ( (Boolean) o).booleanValue()) {
			Enabled3rdPartyAuthentication= "T";
			values.put("Enabled3rdPartyAuthentication", Enabled3rdPartyAuthentication);
			values.put("HTTPMessage", message==null?"":message.trim() );
			values.put("Token", token==null?"":token.trim());
			Object oDisableAuthentication =(Object)system.get_Value("DisableAuthentication");
			if(oDisableAuthentication!=null && ( (Boolean) oDisableAuthentication).booleanValue()) {
				DisableAuthentication="T";
			}
			values.put("DisableAuthentication", DisableAuthentication);
		}
		return values;
	}
}
