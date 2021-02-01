package org.compiere.gwt.server;

import java.sql.*;
import java.util.*;
import java.util.logging.*;

import org.compiere.common.*;
import org.compiere.esb.GwtServer;
import org.compiere.gwt.client.service.*;
import org.compiere.process.ZoomTarget2;
import org.compiere.util.*;
import org.compiere.vos.*;


/**
 *	Application Zoom Across Servlet.
 *  Called from window
 *	
 *  @author dizhao
 * 
 */

public class ZoomAcrossServiceImpl extends CRemoteServiceServlet implements ZoomAcrossService {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static CLogger log = CLogger.getCLogger(ZoomAcrossServiceImpl.class);

	/**
	 * 	Get the Zomm Into Target for a column.
	 *  
	 *  @param AD_Reference_ID for Table references
	 * 	@param colName Column where zoom is invoked
	 *  @param Record_ID ID of record to zoom into
	 *  @param curWindow_ID Window from where zoom is invoked
	 */
	public ArrayList<KeyNamePair> getZoomAD_Windows(int AD_Reference_ID, String colName, String Record_ID,int curWindow_ID, boolean isSOTrx) 
	{
		
		ArrayList<KeyNamePair> ret = new ArrayList<KeyNamePair>(1);
		ret.add(new KeyNamePair(getZoomAD_Window_ID(AD_Reference_ID, colName, Record_ID, curWindow_ID, isSOTrx ), ""));
		return ret;
	}
	private int getZoomAD_Window_ID(int AD_Reference_ID, String colName, String Record_ID,int curWindow_ID, boolean isSOTrx ) 
	{
		String columnName = colName;
		String tableName = null;
		if (AD_Reference_ID != 0)
		{
			String query = "SELECT kc.ColumnName, tab.TableName"
				+ " FROM AD_Ref_Table rt"
				+ " INNER JOIN AD_Column kc ON (rt.Column_Key_ID=kc.AD_Column_ID)"
				+ " INNER JOIN AD_Table tab ON (kc.AD_Table_ID = tab.AD_Table_ID)"
				+ "WHERE rt.AD_Reference_ID=?";

			PreparedStatement pstmt = null;
			try
			{
				pstmt = DB.prepareStatement(query, (Trx) null);
				pstmt.setInt(1, AD_Reference_ID);
				ResultSet rs = pstmt.executeQuery();
				try {
				if (rs.next())
				{
					columnName = rs.getString(1);
					tableName  = rs.getString(2);
				}
				else {
					log.warning("AD_Reference_ID is:"+AD_Reference_ID+" and columnName is:"+columnName);
					tableName = "AD_Ref_List";
				}
				}
				finally {
				rs.close();
				}
				pstmt.close();
				pstmt = null;
			}
			catch (Exception e)
			{
				log.log(Level.SEVERE, query, e);
			}
		}	//	Table Reference

		String whereClause = "";
		if(Record_ID != null && Record_ID.length()!=0)
			whereClause = columnName + "="+Record_ID;


		if(tableName == null) {
			int endIndex = columnName.indexOf("_ID");

			if(endIndex != -1)
				tableName = columnName.substring(0,endIndex);
			else
				tableName = columnName;
		}
		GwtServer server = LoginServiceImpl
				.getGwtServer(getThreadLocalRequest());
		int AD_Window_ID=0;
		try {
		AD_Window_ID=(ZoomTarget2.getZoomAD_Window_ID(tableName, curWindow_ID, whereClause, isSOTrx, server.getContext()));
		log.log(Level.SEVERE,  Msg.getMsg(server.getContext(), "MSG-AUDAXIS_GWT_ROWS_PER_PAGE"));
		System.out.println(Msg.getMsg(server.getContext(), "MSG-AUDAXIS_GWT_ROWS_PER_PAGE"));
		}
		catch (Throwable e)
		{
			log.log(Level.SEVERE,  e.getMessage());
			e.printStackTrace();
		}
		//AD_Window_ID=(ZoomTarget2.getZoomAD_Window_ID(tableName, curWindow_ID, whereClause, isSOTrx ));
		return AD_Window_ID ; 


	}

	/**
	 * 	Get the Zomm Targets for the table.
	 *  Fill the list and the popup menu
	 *  @param invoker component to display popup (optional)
	 * 	@param tableName table
	 */
	public ZoomTargetVO getZoomTargets (String tableName, QueryVO query, int AD_Window_ID)
	{
		String sql = "SELECT DISTINCT t.AD_Table_ID, t.TableName "
			+ "FROM AD_Table t "
			+ "WHERE EXISTS (SELECT 1 FROM AD_Tab tt "
			+ "WHERE tt.AD_Table_ID = t.AD_Table_ID AND tt.SeqNo=10) "
			+ " AND t.AD_Table_ID IN "
			+ "(SELECT AD_Table_ID FROM AD_Column "
			+ "WHERE ColumnName=?) " 
			+ "AND TableName NOT LIKE ? "
			+ "AND TableName NOT LIKE 'I%'"
			+ "ORDER BY 1";

		ZoomTargetVO vo = new ZoomTargetVO();
		vo.targets = new ArrayList<KeyNamePair>();
		GwtServer server = LoginServiceImpl
				.getGwtServer(getThreadLocalRequest());
		 
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			int index = 1;
			pstmt.setString (index++, tableName + "_ID");
			pstmt.setString (index++, tableName );
			ResultSet rs = pstmt.executeQuery();
			try {
			while (rs.next())
			{
				String targetTableName = rs.getString(2);
				ArrayList<KeyNamePair>	zoomList = ZoomTarget2.getZoomTargets(targetTableName, AD_Window_ID, query.getWhereClause().toString(), query.getParams(),server.getContext());
				for(int i=0;i<zoomList.size();i++)
				{
					KeyNamePair pp = zoomList.get(i);

					// Exclude windows that are not supported in the web UI
					if(!vo.targets.contains(pp) 
							&& pp.getKey() != 298 // Accounting Dimensions
							&& pp.getKey() != 283 // Workflow Activities
							&& pp.getKey() != 153 // Account Combination
							&& pp.getKey() != 162 // Accounting Fact Details
							&& pp.getKey() != 118 // Account Element
							&& pp.getKey() != 255 // Accounting Fact Balances
					)
						vo.targets.add(pp);
				}

			}
			}
			finally {
			rs.close();
			}
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}

		//	No Zoom
		if (vo.targets.size() == 0)
		{

			//log.info("BaseLanguage=" + baseLanguage);
			//vo.addError("NoZoomTarget");
			return vo;
		}
		return vo;
	}	//	getZoomTargets


	/*************************************************************************
	 * 	Zoom
	 *	@param AD_Table_ID
	 *	@param Record_ID
	 */
	public int getZoomAD_Window_ID (int AD_Table_ID, int Record_ID)
	{
		String TableName = null;
		int AD_Window_ID = 0;
		int PO_Window_ID = 0;
		String sql = "SELECT TableName, AD_Window_ID, PO_Window_ID FROM AD_Table WHERE AD_Table_ID=?";
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, AD_Table_ID);
			ResultSet rs = pstmt.executeQuery();
			try {
			if (rs.next())
			{
				TableName = rs.getString(1);
				AD_Window_ID = rs.getInt(2);
				PO_Window_ID = rs.getInt(3);
			}
			}
			finally {
			rs.close();
			}
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		//  Nothing to Zoom to
		if (TableName == null || AD_Window_ID == 0)
			return -1;

		//	PO Zoom ?
		if (PO_Window_ID != 0)
		{
			String whereClause = TableName + "_ID=" + Record_ID;
			/*			isSOTrx = DB.isSOTrx(TableName, whereClause);
				if (!isSOTrx)
					AD_Window_ID = PO_Window_ID;*/


			/* Handle cases where you have multiple windows for a single table.
			 * So far it is just the tables that have a PO Window defined.
			 * For eg., Order, Invoice and Shipments
			 * This will need to be expanded to add more tables if they have
			 * multiple windows.
			 */
			GwtServer server = LoginServiceImpl
					.getGwtServer(getThreadLocalRequest());
			
			ArrayList<KeyNamePair>	zoomList = ZoomTarget2.getZoomTargets(TableName, 0, whereClause,server.getContext());

			if(zoomList != null && zoomList.size()>0)
				AD_Window_ID=zoomList.get(0).getKey();

			if (AD_Window_ID == 0)
				return -1;
		}
		return AD_Window_ID;

		//log.config(TableName + " - Record_ID=" + Record_ID );
		//AWindow frame = new AWindow();
		//if (!frame.initWindow(AD_Window_ID, Query.getEqualQuery(TableName + "_ID", Record_ID)))
//		return;
		//AEnv.showCenterScreen(frame);
		//frame = null;
	}	//	zoom




}
