package org.compiere.gwt.server;

import java.io.*;


import java.math.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.Date;
import java.util.logging.*;

import javax.servlet.*;

import org.compiere.*;
import org.compiere.apps.*;
import org.compiere.common.*;
import org.compiere.common.constants.*;
import org.compiere.controller.*;
import org.compiere.db.QueryUtil;
import org.compiere.esb.*;
import org.compiere.framework.*;
import org.compiere.gwt.client.service.*;
import org.compiere.gwt.server.viewhelper.*;
import org.compiere.gwt.server.window.*;
import org.compiere.impexp.*;
import org.compiere.model.*;
import org.compiere.print.*;
import org.compiere.util.*;
import org.compiere.vos.*;

import com.compiere.client.*;

/**
 * 
 * Web Window Servlet
 * 
 * 
 * 
 * @author Di Zhao
 * 
 * @version $Id: GWTServiceImpl.java 7363 2010-05-07 23:49:28Z nnayak $
 * 
 */

public class GWTServiceImpl extends CRemoteServiceServlet implements GWTService {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** Logger */

	protected static final CLogger log = CLogger
	.getCLogger(GWTServiceImpl.class);

	// WMenu picks it up
	protected static final String P_ROLE = "AD_Role_ID";

	protected static final String P_CLIENT = "AD_Client_ID";

	protected static final String P_ORG = "AD_Org_ID";

	protected static final String P_DATE = "Date";

	protected static final String P_WAREHOUSE = "M_Warehouse_ID";

	protected static final String P_ERRORMSG = "ErrorMessage";

	protected static final String P_STORE = "SaveCookie";

	/**
	 * 
	 * Initialize global variables
	 * 
	 * @param config
	 * 
	 * @throws ServletException
	 * 
	 */

	@Override
	public void init(ServletConfig config) throws ServletException {

		super.init(config);

		if (!WebEnv.initWeb(config))

			throw new ServletException("GWTServiceImpl.init");

	} // init

	/**
	 * 
	 * Get Servlet information
	 * 
	 * @return info
	 * 
	 */

	@Override
	public String getServletInfo() {

		return "Compiere GWT Window Service";

	} // getServletInfo

	/**
	 * 
	 * Clean up resources
	 * 
	 */

	@Override
	public void destroy() {

		log.fine("GWT window service destroy");

	} // destroy

	private WindowVO getWindowLayout(int WindowNO, int AD_Window_ID,
			int AD_Menu_ID, boolean loadAllFields) {
		log.entering(getClass().getName(), "getWindowLayout", new Object[] {
			WindowNO, AD_Window_ID, AD_Menu_ID });
		GwtServer server = getGwtServer();
		UIWindow w = server.getWindow(WindowNO, AD_Window_ID, AD_Menu_ID);

		if (w == null) {
			WindowVO v = new WindowVO();
			v.addError(Msg.translate(server.getContext(), "AccessTableNoView"));
			return v;
		}
		return ConvertUIVO.convertUIWindow(w, server.getContext(), WindowNO,
				loadAllFields);

	}

	/**
	 * 
	 * send the layout back to GWT client as list of tabs
	 * 
	 */

	public WindowVO getWindowLayout(int WindowNO, UWindowID uWindowID,
			int AD_Menu_ID) {
		return getWindowLayout(WindowNO, uWindowID.getAD_Window_ID(), AD_Menu_ID, false);
	}

	GwtServer getGwtServer() {
		return LoginServiceImpl.getGwtServer(getThreadLocalRequest());
	}

	//Redmine 29972
	public ArrayList<String> getTableColumnNames(int userID,int AD_Tab_ID, long tableID) {
		return Util.getTableColumnNames(userID, AD_Tab_ID, tableID);
	}
	public void saveTableColumnNames(int userID, int AD_Tab_ID, long tableID, ArrayList<String> columnNames) {
		GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());
		Util.saveTableColumnNames(userID, AD_Tab_ID, tableID, columnNames, server.getContext());
	}
	
	@Deprecated
	public ArrayList<Integer> getTableSeqs(int userID, long tableID) {
//		return Util.getTableSeqs(userID, tableID);
		return new ArrayList<Integer>();
	}
	@Deprecated
	public void saveTableSeqs(int userID, long tableID, ArrayList<Integer> seqs) {
//		GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());
//		Util.saveTableSeqs(userID, tableID, seqs, server.getContext());
	}

	public TabFieldsVO executeQuery(int windowNO, int AD_Tab_ID, long uniqueTableID, 
			QueryVO queryVO, WindowCtx windowCtx, int queryResultID,
			int searchResultID, int startRow, int rowCount, boolean withFieldVOs) {
		log.entering(getClass().getName(), "executeQuery");

		GwtServer server = getGwtServer();
		HashMap<String, String> context = windowCtx.getStringMap();

		Ctx serverContext = server.getContext();
		if (!context.containsKey("AD_Client_ID"))
			context.put("AD_Client_ID", serverContext.getContext(windowNO,
			"AD_Client_ID"));

		if (queryVO != null) {
			/*
			 * System.out
			 * .println("--------------------------------------------------");
			 * System.out.println("Search Executed: "); System.out
			 * .println("--------------------------------------------------");
			 * System.out.println("Only Current Days: " +
			 * queryVO.onlyCurrentDays);
			 * System.out.println("Only Current Created: " +
			 * queryVO.onlyCurrentCreated);
			 * System.out.println("Saved Query Name: " +
			 * queryVO.savedQueryName); System.out.print("Restrictions: "); if
			 * (queryVO.restrictions != null) for (Object o :
			 * queryVO.restrictions) { QueryRestrictionVO vo =
			 * (QueryRestrictionVO) o; if (vo != null)
			 * System.out.println(vo.ColumnName + " " + vo.Operator + " " +
			 * vo.Code + " CodeTO is: " + vo.Code_to); } System.out
			 * .println("--------------------------------------------------");
			 * System.out.println("End Search Executed"); System.out
			 * .println("--------------------------------------------------");
			 */
		} else {
			// TODO comment this out
			queryVO = new QueryVO();
		}

		TabFieldsVO vo = new TabFieldsVO();

		vo.resultCount = server.executeQuery(AD_Tab_ID, queryVO, context,
				queryResultID);

		if (vo.resultCount > UITab.MAX_QUERY_RESULT_SIZE) {
			vo.addWarning(Msg.getMsg(server.getContext(),
			"AD_QUERY_EXCEEDS_MAXIMUM"));
			vo.resultCount = UITab.MAX_QUERY_RESULT_SIZE;
		}
		if (withFieldVOs) {
			UITab uiTab = server.getTab(AD_Tab_ID);
			ConvertUIVO
			.assignFieldVOs(uiTab, vo, server.getContext(), windowNO);
		}
		//Redmine 29972
		ArrayList<Integer> tableSeqs=new ArrayList<Integer> ();
		ArrayList<String> fieldColumnNames =  getTableColumnNames(server.getContext().getAD_User_ID(),AD_Tab_ID, uniqueTableID); 
		UITab tab = server.getTab(AD_Tab_ID);
		//Redmine 43601
		boolean isnumeric = false;
		ArrayList<String> fieldColumnNamesNew = new ArrayList<String>();
		//
		if(fieldColumnNames!= null){
			for(String fieldName: fieldColumnNames){
				//il faut prendre en compte les anciens enregistrements qui sont des seqNo
				if(org.compiere.util.Util.isNumeric(fieldName)){
					//Redmine 43601
					String columnname = tab.getFields().get(Integer.valueOf(fieldName)).getColumnName();
					tableSeqs.add(tab.getFieldIndex(columnname));
					fieldColumnNamesNew.add(columnname);
					isnumeric = true;
					//
				}
				else if (tab.getFieldIndex(fieldName)>0)
					tableSeqs.add(tab.getFieldIndex(fieldName));

			}
			//Redmine 43601
			if (isnumeric)
				saveTableColumnNames(server.getContext().getAD_User_ID(), AD_Tab_ID, uniqueTableID, fieldColumnNamesNew);
			//
			vo.setCustomizedDisplayedColPos(tableSeqs);
		}
		
		vo.tableModel = getQueryResults(windowNO, AD_Tab_ID, queryResultID, startRow,
				rowCount);

		return vo;
	}

	public TableModel sortResults(int windowNo, int AD_Tab_ID, int AD_Field_ID,
			int queryResultID, int rowCount, boolean asc) {
		log.entering(getClass().getName(), "sortResults", new Object[] {
			AD_Tab_ID, AD_Field_ID, queryResultID, });

		GwtServer server = getGwtServer();
		server
		.sortResults(windowNo, AD_Tab_ID, AD_Field_ID, queryResultID,
				asc);
		return assembleTableModel(server, AD_Tab_ID, server.getResults(
				queryResultID, 0, rowCount), windowNo);

	}

	public TableModel getQueryResults(int windowNo, int AD_Tab_ID,
			int queryResultID, int startRow, int rowCount) {
		log.entering(getClass().getName(), "getQueryResults", new Object[] {
			AD_Tab_ID, queryResultID, startRow, rowCount });

		GwtServer server = getGwtServer();
		return assembleTableModel(server, AD_Tab_ID, server.getResults(
				queryResultID, startRow, rowCount), windowNo);
	}

	private TableModel assembleTableModel(GwtServer server, int AD_Tab_ID,
			String[][] data, int windowNo) {
		TableModel result = new TableModel();
		// String[][] data = server.getResults(queryResultID, startRow,
		// rowCount);
		if (data == null || data.length == 0)
			return result;

		CContext ctx = server.getContext();
		UITab tab = server.getTab(AD_Tab_ID);
		int AD_Window_ID = tab.getAD_Window_ID();
		String keyColumn = tab.getKeyColumnName();
		if ("EntityType".equals(keyColumn))
			keyColumn = "AD_EntityType_ID";
		if (!keyColumn.toUpperCase().endsWith("_ID"))
			keyColumn += "_ID"; // AD_Language_ID
		// MRole role = MRole.getDefault(ctx, false);
		MRole role = MRole.get(ctx, ctx.getAD_Role_ID(), ctx.getAD_User_ID(),
				false);
		int AD_Table_ID = tab.getAD_Table_ID();

		int idx = tab.getFieldIndex(keyColumn);

		for (int i = 0; i < data.length; i++) {
			if (data[i] != null) {
				String[] row = data[i].clone();
				// int Record_ID = tab.getRecord_ID(data[i]);

				int Record_ID = -1;
				if (idx >= 0)
					Record_ID = Util.string2Int(row[idx]);

				int numAttachments = getNumAttachments(AD_Table_ID, Record_ID);
				String comments = getComments(AD_Table_ID, Record_ID);
				result.addRow(row, numAttachments, comments);

				int AD_Client_ID = Util.string2Int(row[tab
				                                       .getFieldIndex("AD_Client_ID")]);
				int AD_Org_ID = Util.string2Int(row[tab
				                                    .getFieldIndex("AD_Org_ID")]);

				if (!role.canUpdate(AD_Client_ID, AD_Org_ID, AD_Table_ID,
						Record_ID,false)
						|| !role.getWindowAccess(AD_Window_ID))
					result.setRowReadOnly(i, true);

				int j = 0;
				for (UIField field : tab.getFields()) {
					// set context so we can retrieve trxInfo below
					ctx.setContext(windowNo, field.getColumnName(), row[j]);
					// return an empty string for passwords etc
					if (field.isEncryptedField() || field.isEncryptedColumn()
							|| "Password".equals(field.getColumnName()))
						row[j] = "";
					j++;
				}

				if (tab.checkReadOnlyLogic(ctx.getCtx(windowNo)))
					result.setRowReadOnly(i, true);
				
				if(tab.getTableName().equals("C_OrderLine") || tab.getTableName().equals("C_InvoiceLine")) {
					result.setTrxInfo(i, null);	
				}
				else {
					String trxInfo = GridTab.getTrxInfo(tab.getTableName(), ctx,
							windowNo, tab.getTabNo());
					result.setTrxInfo(i, trxInfo);

				}

			}
		}

		final HashMap<Integer, ArrayList<String>> exceptionIDs = new HashMap<Integer, ArrayList<String>>();
		int j = 0;
		for (UIField field : tab.getFields()) {
			// if not displayed, no need to get its value
			// if( FieldType.isID(field.getAD_Reference_ID()) ||
			// FieldType.isLookup(field.getAD_Reference_ID())
			// &&field.isDisplayed()) {
			if (FieldType.isID(field.getAD_Reference_ID()) || field.isLookup()
					|| field.isButtonLookup() && field.isDisplayed()) {
				for (int i = 0; i < result.rows(); i++) {
					if (result.get(i, j) == null
							|| result.get(i, j).length() == 0) {
						continue;
					}

					// if no arraylist, create one
					ArrayList<String> l = exceptionIDs.get(field
							.getAD_Field_ID());
					if (l == null) {
						l = new ArrayList<String>();
						exceptionIDs.put(field.getAD_Field_ID(), l);
					}
					if (!l.contains(result.get(i, j)))
						l.add(result.get(i, j));
				}
			}
			j++;

		}

		result.exceptionValues = getLookupValueDirect(exceptionIDs);

		return result;
	}

	public ChangeVO updateRow(int WindowNO, int AD_Tab_ID, int queryResultID,
			int relRowNo, WindowCtx windowCtx) {
		log.entering(getClass().getName(), "updateRow");
		GwtServer server = getGwtServer();
		HashMap<String, String> ctx = windowCtx.getStringMap();
		ChangeVO result = server.updateRow(WindowNO, AD_Tab_ID, queryResultID,
				relRowNo, ctx);
		checkClearWindowCache(WindowNO, AD_Tab_ID);
		return result;
	}

	private static final int TAB_TAB_ID = 106;

	private void checkClearWindowCache(int windowNO, int AD_Tab_ID) {
		// 100 is table tab, 101 is column tab, 311 access tab, 105 window tab,
		// 107 field tab
		if (AD_Tab_ID == TAB_TAB_ID || AD_Tab_ID == 100 || AD_Tab_ID == 101
				|| AD_Tab_ID == 105 || AD_Tab_ID == 311 || AD_Tab_ID == 107) {
			GwtServer.resetWinDefCache();
		}
	}

	public ChangeVO[] deleteRows(int windowNO, int AD_Tab_ID,
			int queryResultID, ArrayList<Integer> rows) {
		log.entering(getClass().getName(), "deleteRows");
		GwtServer server = getGwtServer();
		ChangeVO[] responses = new ChangeVO[rows.size()];
		for (int i = rows.size() - 1; i >= 0; i--) {
			int row = rows.get(i).intValue();
			responses[i] = server.deleteRow(windowNO, AD_Tab_ID, queryResultID,
					row);
		}
		return responses;
	}

	public ChangeVO newRow(int WindowNO, int AD_Tab_ID, WindowCtx windowCtx) {
		log.entering(getClass().getName(), "newRow");
		GwtServer server = getGwtServer();

		
		ChangeVO change = server.newRow(WindowNO, AD_Tab_ID, windowCtx
				.getStringMap());
		return change;

	}

	public ChangeVO insertRow(int WindowNO, int AD_Tab_ID, int queryResultID,
			int afterRelRowNo, WindowCtx windowCtx) {
		log.entering(getClass().getName(), "insertRow");
		GwtServer server = getGwtServer();
		return server.insertRow(WindowNO, AD_Tab_ID, queryResultID,
				afterRelRowNo, windowCtx.getStringMap());
	}

	public List<NodeVO> getMenuFavorites() {
		GwtServer server = getGwtServer();
		ArrayList<NodeVO> nodes = new ArrayList<NodeVO>();
		for (CTreeNode nd : server.getMenuFavorites()) {
			nodes.add(NodeViewHelper.convertTreeNode(nd));
		}
		return nodes;
	}

	public List<NodeVO> getMenuCreateNew() {
		GwtServer server = getGwtServer();
		ArrayList<NodeVO> nodes = new ArrayList<NodeVO>();

		for (CTreeNode nd : server.getMenuCreateNew()) {

			NodeVO node = NodeViewHelper.convertTreeNode(nd);
			node.mode = NodeVO.Mode.CREATE;
			nodes.add(node);
		}

		return nodes;
	}

	public List<NodeVO> getMenuNodes() {
		GwtServer server = getGwtServer();
		ArrayList<NodeVO> nodes = new ArrayList<NodeVO>();
		for (CTreeNode nd : server.getMenuTree()) {
			nodes.add(NodeViewHelper.convertTreeNode(nd));
		}
		return nodes;
	}

	public Boolean updateFavorites(List<NodeVO> favorites) {
		GwtServer server = getGwtServer();
		List<Integer> menuIDs = new ArrayList<Integer>();
		Iterator<NodeVO> i = favorites.iterator();
		while (i.hasNext()) {
			menuIDs.add(i.next().nodeId);
		}
		return server.updateFavorites(menuIDs);
	}

	public Boolean updateCreateNew(List<NodeVO> createNewItems) {
		GwtServer server = getGwtServer();
		List<Integer> menuIDs = new ArrayList<Integer>();
		Iterator<NodeVO> i = createNewItems.iterator();
		while (i.hasNext()) {
			menuIDs.add(i.next().nodeId);
		}
		return server.updateCreateNew(menuIDs);
	}

	public ChangeVO fieldChanged(int WindowNO, int AD_Field_ID, int AD_Tab_ID,
			String oldValue, String newValue, WindowCtx windowCtx) {
		log.entering(getClass().getName(), "fieldChanged",
				new Object[] { WindowNO, AD_Field_ID, AD_Tab_ID, oldValue,
			newValue, windowCtx });
		GwtServer server = getGwtServer();
		ChangeVO v = server.fieldChanged(WindowNO, AD_Field_ID, AD_Tab_ID,
				oldValue, newValue, windowCtx.getStringMap());

		return v;
	}

	public HashMap<Integer, ArrayList<NamePair>> getLookupValueDirect(
			HashMap<Integer, ArrayList<String>> exceptionIDs) {
		log.entering(getClass().getName(), "getLookupValueDirect");

		GwtServer server = getGwtServer();
		Set<Map.Entry<Integer, ArrayList<String>>> entries = exceptionIDs
		.entrySet();
		Iterator<Map.Entry<Integer, ArrayList<String>>> it = entries.iterator();
		HashMap<Integer, ArrayList<NamePair>> exceptionValues = new HashMap<Integer, ArrayList<NamePair>>();
		while (it.hasNext()) {
			Map.Entry<Integer, ArrayList<String>> entry = it.next();
			int AD_Field_ID = entry.getKey();
			exceptionValues.put(AD_Field_ID, server.getLookupValueDirect(
					AD_Field_ID, entry.getValue(), true));
		}
		return exceptionValues;
	}

	public ArrayList<NamePair> refreshLookupData(int windowNO, int AD_Field_ID,
			Map<String, String> windowCtx) {
		log.entering(getClass().getName(), "refreshLookupValue");
		GwtServer server = getGwtServer();

		if (AD_Field_ID == ReportService.FIELD_PRINT_FORMAT_BY_REPORT_VIEW) {
			int AD_ReportView_ID = 0;
			try {
				AD_ReportView_ID = Integer.parseInt(windowCtx
						.get("AD_ReportView_ID"));
			} catch (Exception e) {
			}
			return MPrintFormat.getPrintFormatsByReportView(server
					.getContext(), AD_ReportView_ID, MRole.SQL_RO);
		} else if (AD_Field_ID == ReportService.FIELD_PRINT_FORMAT_BY_TABLE) {
			int AD_Table_ID = 0;
			try {
				AD_Table_ID = Integer.parseInt(windowCtx.get("AD_Table_ID"));
			} catch (Exception e) {
			}
			return PrintFormatWindowImpl.getPrintFormatsByTable(server
					.getContext(), AD_Table_ID);
		} else
			return server.getLookupData(windowNO, AD_Field_ID, windowCtx, true);
	}

	public HashMap<Integer, ArrayList<NamePair>> getLookupData(int WindowNO,
			ArrayList<Integer> refreshIDs, WindowCtx windowCtx) {
		log.entering(getClass().getName(), "getLookupValues");
		GwtServer server = getGwtServer();
		Iterator<Integer> it = refreshIDs.iterator();
		HashMap<Integer, ArrayList<NamePair>> refreshValues = new HashMap<Integer, ArrayList<NamePair>>();

		while (it.hasNext()) {

			Integer fieldID = it.next();
			int AD_Field_ID = fieldID.intValue();
			UIField field = server.getField(AD_Field_ID, WindowNO);
			ArrayList<NamePair> values;
			if (field.getAD_Reference_ID() == DisplayTypeConstants.Search) {
				ArrayList<String> t = new ArrayList<String>(1);
				t.add(windowCtx.getStringContext(field.getColumnName()));
				values = server.getLookupValueDirect(AD_Field_ID, t, true);
			} else
				values = server.getLookupData(WindowNO, AD_Field_ID, windowCtx
						.getStringMap(), true);

			refreshValues.put(fieldID, values);
		}

		return refreshValues;
	}

	public String[] getAttachments(int AD_Table_ID, int Record_ID) {
		log.entering(getClass().getName(), "getAttachments");
		String[] attachments;
		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();
		MAttachment attachment = MAttachment.get(ctx, AD_Table_ID, Record_ID);

		if (attachment != null) {

			MAttachmentEntry[] entries = attachment.getEntries();
			attachments = new String[entries.length];
			int i = 0;
			for (MAttachmentEntry entry : entries) {
				attachments[i++] = entry.getName();
			}
		} else {
			attachments = new String[0];
		}
		return attachments;
	}

	public Boolean deleteAttachment(int AD_Table_ID, int Record_ID, int index) {
		log.entering(getClass().getName(), "deleteAttachment");
		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();

		MAttachment attachment = MAttachment.get(ctx, AD_Table_ID, Record_ID);
		if (attachment != null) {

			if (attachment.deleteEntry(index)) {

				if (attachment.save()) {

					return true;
				}
			}
		} else {
			log.warning("Attachment Table:" + AD_Table_ID + " Record:"
					+ Record_ID + " Index:" + index + " NOT FOUND");
		}
		log.warning("Attachment Table:" + AD_Table_ID + " Record:" + Record_ID
				+ " Index:" + index + " NOT DELETED");
		return false;
	}

	public static String getRowAsCSV(String[] row) {
		StringBuffer buf = new StringBuffer();
		for (int j = 0; j < row.length; ++j) {
			String cell = row[j];
			if (cell == null)
				cell = "";
			if (j != 0)
				buf.append(",");

			if (cell.indexOf(' ') >= 0 || cell.indexOf('"') >= 0
					|| cell.indexOf(',') >= 0)
				cell = "\"" + cell.replaceAll("\"", "\"\"") + "\"";

			buf.append(cell);
		}
		return buf.toString();
	}

	public static String getDisplayString(FieldVO f, String v) {
		if (f.displayType == DisplayTypeConstants.YesNo) {
			return "Y".equals(v) ? "Y" : "N";
		} else if (FieldType.isLookup(f.displayType)) {
			return f.listBoxVO.getValue(v);
		} else if (FieldType.isDate(f.displayType)) {
			if (v != null && v.length() > 0) {
				Long time = Long.parseLong(v);
				DateFormat df = new SimpleDateFormat(f.dateFormatPattern);
				Date date = new Date(time);
				return df.format(date);
			} else {
				return "";
			}
		} else {
			return v;
		}
	}

	public String executeReport(int WindowNo, int AD_Window_ID, int AD_Tab_ID,
			QueryVO queryVO, WindowCtx windowCtx, int queryResultID,
			ArrayList<String> selectedRowKeys) {
		log.entering(getClass().getName(), "executeReport");
		
		// need to specify content type for firefox, otherwise excel file displays as text in firefox
		String fileFormat=windowCtx.get("FileFormat");		
				
		WindowVO wVO = getWindowLayout(WindowNo, AD_Window_ID, 0, true);
		ComponentVO cVO = null;
		for (int i = 0; i < wVO.componentVOs.size(); ++i) {
			if (wVO.componentVOs.get(i).AD_Tab_ID == AD_Tab_ID) {
				cVO = wVO.componentVOs.get(i);
				break;
			}
		}

		if (cVO == null)
			return null;

		TableModel model = getQueryResults(WindowNo, AD_Tab_ID, queryResultID,
				0, 1000000);
		GwtServer server = getGwtServer();

		Query query = new Query(cVO.tableName);
		query.setReportParameter(true);
		cVO.refreshCachedData();
		ArrayList<Integer> keyColsPos = cVO.keyColPos;

		// #36258
//		if (!(selectedRowKeys == null || selectedRowKeys.size() == 0))  // #36258
//		{																// #36258
			for (int i = 0; i < model.rows(); ++i) {
				
				String[] rowVals = model.getRow(i);
				String rowKey = cVO.getRowKey(rowVals);
				StringBuffer whereClause = new StringBuffer();
	
				// if any records were selected, export only those;
				// if none were selected, export everything in the model
				
				
				if (selectedRowKeys == null || selectedRowKeys.size() == 0
						|| selectedRowKeys.contains(rowKey)) {
	
					// For multiple key columns we need to construct the where
					// clause ourselves;
					// there is no case where there are zero key columns (because if
					// none
					// are marked as a key, then getKeyColsPos() returns all
					// columns)
					whereClause.append("(");
					for (int j = 0; j < keyColsPos.size(); j++) {
						if (j > 0)
							whereClause.append(" AND");
	
						int column = keyColsPos.get(j).intValue();
						int displayType = cVO.fieldVOs.get(column).displayType;
	
						if (rowVals[column] == null) {
							whereClause.append(" ").append(cVO.tableName).append(
									".")
									.append(cVO.fieldVOs.get(column).ColumnName);
							whereClause.append(" IS NULL");
						} else if (FieldType.isDate(displayType)) {
							String t = new Timestamp(Long
									.parseLong(rowVals[column])).toString();
							// This is returning a date string like the following:
							// 1970-01-01 15:22:11.0
							// we don't need the tenths of seconds, so we are
							// stripping it here:
							int	 lastIndex = t.lastIndexOf(".");
							if (lastIndex > 0)
								t = t.substring(0, lastIndex);
	
							whereClause.append(" ").append(cVO.tableName).append(
									".")
									.append(cVO.fieldVOs.get(column).ColumnName);
							whereClause.append(" = TO_DATE('").append(t).append(
									"', 'YYYY-MM-DD HH24:MI:SS')");
						} else if (FieldType.isID(displayType)
								|| FieldType.isNumeric(displayType)) {
							whereClause.append(" ").append(cVO.tableName).append(
									".")
									.append(cVO.fieldVOs.get(column).ColumnName);
							whereClause.append(" = ").append(rowVals[column])
									.append("");
						} else {
							whereClause.append(" UPPER(").append(cVO.tableName)
									.append(".").append(
											cVO.fieldVOs.get(column).ColumnName)
									.append(")");
							whereClause.append(" = UPPER('")
									.append(rowVals[column]).append("')");
						}
					}
					whereClause.append(")");
	
					QueryRestriction restriction = new QueryRestriction(whereClause
							.toString());
					restriction.setAndCondition(false);
					query.addRestriction(restriction);
				}
			}
			// #36258
//		}else{
//			//Redmine 5158:ZCOM999 pb export takes all
//			StringBuffer whereClause = new StringBuffer();
//			MTable table=MTable.get(server.getContext(),cVO.tableName);
//			String sql="select ColumnName from ad_column where ad_table_id="+table.getAD_Table_ID()+" and IsParent='Y'";
//			//Redmine 14567: ZCOM999: table with multiple parents like M_ProductPrice
//			if (cVO.linkColumnName!=null)
//				sql += " AND ColumnName ='"+cVO.linkColumnName+"'";
//			//Redmine 14567: ZCOM999
//			PreparedStatement pstmt=null;
//			ResultSet rs=null;
//			try{
//				pstmt = DB.prepareStatement(sql, (Trx) null);
//				rs = pstmt.executeQuery();
//				while(rs.next()){
//					whereClause.append(" "+cVO.tableName+"."+rs.getString(1)+"="+server.getContext().getContext(WindowNo,rs.getString(1)));
//				}
//
//				if(whereClause.length()!=0 && !whereClause.equals(null)){
//
//					QueryRestriction restriction = new QueryRestriction(whereClause
//							.toString());
//					restriction.setAndCondition(false);
//					query.addRestriction(restriction);
//
//				}
//
//			}catch(Exception e){
//				log.warning(e.toString());
//			}finally{
//				UtilExtended.closeCursor(pstmt, rs);
//			}
//		}//end Redmine 5158:ZCOM999 pb export takes all
		// END #36258
		File f = ReportServiceImpl.getReport(server.getContext(),
				cVO.AD_Table_ID, query,
				windowCtx.getAsInt("AD_PrintFormat_ID"), fileFormat);

		return f.getName();
	}

	public String postImmediate(int windowNO, int AD_Client_ID,
			int AD_Table_ID, int Record_ID, boolean force) {
		log.entering(getClass().getName(), "postImmediate");
		GwtServer server = getGwtServer();
		return AEnv.postImmediate(server.getContext(), windowNO, AD_Client_ID,
				AD_Table_ID, Record_ID, force);
	}

	public List<SortVO> getOrderComponentResults(int AD_Table_ID,
			int AD_ColumnSortOrder_ID, int AD_ColumnSortYesNo_ID,
			String orderBy, WindowCtx ctx) {
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		Ctx serverCtx = server.getContext();

		return new OrderComponentHelper(serverCtx, AD_Table_ID,
				AD_ColumnSortOrder_ID, AD_ColumnSortYesNo_ID, ctx)
		.getResults(orderBy);
	}

	public Boolean saveOrderComponentResults(int AD_Table_ID,
			int AD_ColumnSortOrder_ID, int AD_ColumnSortYesNo_ID,
			WindowCtx ctx, List<SortVO> sorts) {
		log.entering(getClass().getName(), "saveOrderComponentResults");
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		Ctx serverCtx = server.getContext();

		return new OrderComponentHelper(serverCtx, AD_Table_ID,
				AD_ColumnSortOrder_ID, AD_ColumnSortYesNo_ID, ctx).save(sorts);
	}

	public List<String> getImportFormatPreview(int start, int numberOfRows) {
		String sessionId = getThreadLocalRequest().getSession().getId();
		ArrayList<String> filePreview = new ArrayList<String>();
		int end = start + numberOfRows;
		// int session = Integer.parseInt(sessionId);
		// String sql = " SELECT Name,Row_Text,Session_Id FROM AD_ImpFormat_Temp
		// WHERE session_id = ? AND RowNum Between ? AND ? ";
		String sql = " SELECT Name,BinaryData,WebSession FROM T_ImpFormat WHERE WebSession = ? ";

		try {
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setString(1, sessionId);

			int rowNum = 0;

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				// java.sql.Blob ablob = rs.getBlob(2);
				// java.io.InputStream ip = rs.getAsciiStream(2);
				java.io.InputStream ip = rs.getBinaryStream(2);
				// java.io.InputStream ip = ablob.getBinaryStream();
				BufferedReader br = new BufferedReader(
						// new InputStreamReader(ip);					// ZCOM999 - #34548
						new InputStreamReader(ip, "ISO-8859-1"));		// ZCOM999 - #34548
				String s;
				while ((s = br.readLine()) != null) {
					// System.out.println ("Selected Line from file is "+s);
					if ((rowNum < start) && (rowNum > end)) {
						++rowNum;
					} else {
						filePreview.add(s + "\n");
					}
				}
				br.close();
			}
			rs.close();
			pstmt.close();
		}

		catch (IOException i) {
			log.log(Level.SEVERE, "IO Exception during reading file ", i);
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql, e);
		}
		return filePreview;
	}

	public List<String> getImportFormat() {
		GwtServer server = getGwtServer();
		Ctx context = server.getContext(); //Getting the context 
		int AD_Client_ID =context.getAD_Client_ID();//Getting value from context in Web client

		ArrayList<String> options = new ArrayList<String>();
		String sql = "SELECT Name FROM AD_ImpFormat  WHERE AD_CLIENT_ID IN (0,?)";//Filtering data on tenant basis, add system level formats
		options.add("");
		try {
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1,AD_Client_ID);
			ResultSet rs = pstmt.executeQuery();
			try {
				while (rs.next()) {

					options.add(rs.getString(1));
				}
			}
			finally {
				rs.close();
			}
			pstmt.close();
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql, e);
		}
		return options;
	}

	public List<String> getImportFormatLayout(String formatName) {
		ArrayList<String> fields = new ArrayList<String>();
		ImpFormat m_format = ImpFormat.load(formatName);
		int size = m_format.getRowCount();
		for (int i = 0; i < size; i++) {
			ImpFormatRow row = m_format.getRow(i);
			fields.add(row.getColumnName());

			//
			int length = row.getEndNo() - row.getStartNo();
			if (length <= 5)
				length = 5;
			else if (length > 20)
				length = 20;

		}
		return fields;
	}

	public String[][] getImportFormatResults(String formatName, int start,
			int numberOfRows) {
		String sessionId = getThreadLocalRequest().getSession().getId();
		int end = start + numberOfRows;
		// int session = Integer.parseInt(sessionId);
		ImpFormat m_format = ImpFormat.load(formatName);
		// String sql = " SELECT Name,Row_Text,Session_Id FROM AD_ImpFormat_Temp
		// WHERE session_id = ? AND RowNum Between ? AND ? ";
		String sql = " SELECT Name,BinaryData,WebSession FROM T_ImpFormat WHERE WebSession = ? ";

		String[][] result = new String[numberOfRows][];
		try {
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setMaxRows(start + numberOfRows);
			pstmt.setString(1, sessionId);

			int rowNum = 0;
			int i = start;
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				// java.sql.Blob ablob = rs.getBlob(2);
				java.io.InputStream ip = rs.getBinaryStream(2);
				// java.io.InputStream ip = ablob.getBinaryStream();
				BufferedReader br = new BufferedReader(
						// new InputStreamReader(ip);					// ZCOM999 - #34548
						new InputStreamReader(ip, "ISO-8859-1"));		// ZCOM999 - #34548
				String s;
				while ((s = br.readLine()) != null) {
					if ((rowNum < start)
							// && (rowNum > i + numberOfRows)
					) {
						rowNum++;
					} else if (i < end) {

						String[] lInfo = m_format.parseLine(s, false, true,
								false);
						result[i - start] = lInfo;
						i++;
					}
				}
				br.close();
			}

			rs.close();
			pstmt.close();
		}

		catch (IOException i) {
			log.log(Level.SEVERE, "IO Exception during reading file ", i);
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql, e);
		}
		return result;
	}

	public String processImportFormatResults(String formatName) {
		GwtServer server = getGwtServer();
		String sessionId = getThreadLocalRequest().getSession().getId();
		ImpFormat m_format = ImpFormat.load(formatName);
		String sql = " SELECT Name,BinaryData,WebSession FROM T_ImpFormat WHERE WebSession = ? ";
		int i = 0;
		int imported = 0;
		int merged = 0;
		int errors = 0;
		
		try {
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setString(1, sessionId);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				// String[] lInfo = m_format.parseLine(rs.getString(2), false,
				// true, false);
				// java.sql.Blob ablob = rs.getBlob(2);
				// java.io.InputStream ip = ablob.getBinaryStream();
				java.io.InputStream ip = rs.getBinaryStream(2);
				BufferedReader br = new BufferedReader(
						// new InputStreamReader(ip);					// ZCOM999 - #34548
						new InputStreamReader(ip, "ISO-8859-1"));		// ZCOM999 - #34548
				String s;
				while ((s = br.readLine()) != null) {
					// System.out.println("Storing "+s);
					int updated = m_format.updateDB(server.getContext(), s, null);
					if(updated == 0)
						imported++;
					else if (updated == 1)
						merged++;
					else
						errors++;
					i++;
				}
				br.close();
			}
			rs.close();
			pstmt.close();
		} catch (IOException ie) {
			log.log(Level.SEVERE, "IO Exception during reading file ", ie);
		} catch (SQLException e) {
			log.log(Level.SEVERE, sql, e);
		}

		String deleteSql = " DELETE FROM T_ImpFormat WHERE WebSession =  ? ";
		try {
			PreparedStatement pstmt = DB.prepareStatement(deleteSql,
					ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE,
					null);
			pstmt.setString(1, sessionId);
			pstmt.execute();
			pstmt.close();
		}

		catch (SQLException e) {
			log.log(Level.SEVERE, deleteSql, e);
		}
		return  Msg.getMsg(Env.getCtx(), "FileImportR/I") + i + " / " 
					+ Msg.getMsg(server.getContext(), "Inserted") + " : " + imported 
					+ Msg.getMsg(server.getContext(), " Merged") + " : " + merged ;
	}

	public ChangeVO refreshRow(int windowNO, int AD_Tab_ID, int queryResultID,
			int relRowNo, Map<String, String> context) {
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		ChangeVO change = server.refreshRow(windowNO, AD_Tab_ID, queryResultID,
				relRowNo, context);
		return change;
	}

	public Boolean savePreferences(Map<String, String> ctx) {
		GwtServer server = getGwtServer();
		return server.savePreferences(ctx);
	}

	public String getLocation(int locationId, int windowNo) {
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		Ctx ctx = server.getContext();
		MLocationLookup locationLookup = new MLocationLookup(ctx, windowNo);

		MLocation m_location = locationLookup.getLocation(locationId, null);
		String locationValue = m_location.toString();
		// System.out.println("Location Value "+locationValue);
		return locationValue;
	}
	
	// ZCOM999 BEGIN
	public String getResourceAssignement(int S_ResourceAssignment_ID, int windowNo) {
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		Ctx ctx = server.getContext();
		MResourceAssignementLookup raLookup = new MResourceAssignementLookup(ctx, windowNo);

		MResourceAssignment m_ra = raLookup.getResourceAssignment(S_ResourceAssignment_ID, null);
		String raValue = m_ra.toString();
		return raValue;
	}
	// ZCOM999 END

	public void disposeWindow(ArrayList<Integer> resultIDs) {
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		server.disposeWindow(resultIDs);
	}

	public Boolean deleteSavedSearch(int tab_ID, String savedSearchName) {
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		return server.deleteSavedSearch(tab_ID, savedSearchName);
	}

	public int getNumAttachments(int AD_Table_ID, int Record_ID) {
		log.entering(getClass().getName(), "getNumAttachments");
		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();
		MAttachment attachment = MAttachment.get(ctx, AD_Table_ID, Record_ID);
		if (attachment != null) {
			MAttachmentEntry[] entries = attachment.getEntries();
			return entries.length;

		} else {
			return 0;
		}
	}

	public String[] printPayments(WindowCtx windowCtx, int mode) {

		NamePair paymentSelectionPair = windowCtx
		.getSelectedOption(PaymentPrintConstants.PAYMENTSELECTION);
		NamePair paymentMethodPair = windowCtx
		.getSelectedOption(PaymentPrintConstants.PAYMENTMETHOD);
		String documentNumStr = windowCtx
		.get(PaymentPrintConstants.DOCUMENTNUM);
		int paymentSelectionID = Integer.valueOf(paymentSelectionPair.getID());
		String paymentMethod = paymentMethodPair.getID();
		int documentNum = Integer.valueOf(documentNumStr);

		MPaySelectionCheck[] m_checks = null;
		m_checks = getChecks(paymentSelectionID, paymentMethod, documentNum,
				null);

		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();

		if (m_checks == null || m_checks.length == 0) {
			log.severe("Payment Selection '" + paymentSelectionPair.getName()
					+ "' has no checks");
			String[] returnStrings = { "m_checks is empty" };
			return returnStrings;
		}

		if (mode == PaymentPrintConstants.EXPORTMODE) {
			File f = null;
			try {
				f = File.createTempFile("U" + ctx.getAD_User_ID() + "_R",
						".csv", new File(System.getProperty("java.io.tmpdir")));
			} catch (IOException e) {
				// error log and error message
				log.severe(e.getMessage());
				String[] returnStrings = { "could not create file" };
				return returnStrings;
			}

			MPaySelectionCheck.exportToFile(m_checks, f);

			String[] returnStrings = { f.getName() };
			return returnStrings;
		} else if (mode == PaymentPrintConstants.CONFIRMMODE) {
			MPaymentBatch m_batch = MPaymentBatch.getForPaySelection(ctx,
					paymentSelectionID, null);
			int lastDocumentNumber = MPaySelectionCheck.confirmPrint(m_checks,
					m_batch);

			if (lastDocumentNumber != 0) {
				String bankAccountID = windowCtx
				.get(PaymentPrintConstants.BANKACCOUNTID);

				String sql = "UPDATE C_BankAccountDoc SET CurrentNext=?"
					+ " WHERE C_BankAccount_ID=?" + " AND PaymentRule=?";

				try {
					PreparedStatement pstmt = DB.prepareStatement(sql,
							(Trx) null);
					pstmt.setInt(1, ++lastDocumentNumber);
					pstmt.setInt(2, Integer.valueOf(bankAccountID));
					pstmt.setString(3, paymentMethod);
					pstmt.executeUpdate();
					pstmt.close();
				} catch (SQLException e) {
					log.log(Level.SEVERE, sql, e);
				}
			}

			String[] returnStrings = { "payment confirmed" };
			return returnStrings;
		} else if (mode == PaymentPrintConstants.PRINTMODE
				|| mode == PaymentPrintConstants.REMITMODE) {
			// if we ever enable direct printing for web in the future
			// boolean directPrint = !Ini.isPropertyBool(Ini.P_PRINTPREVIEW);
			boolean directPrint = false;
			File f = null;
			String[] returnStrings = new String[m_checks.length];

			for (int i = 0; i < m_checks.length; i++) {
				MPaySelectionCheck check = m_checks[i];
				ReportEngine re = ReportCtl.startDocumentPrint(
						ctx,
						mode == PaymentPrintConstants.PRINTMODE ? ReportEngine.CHECK
								: ReportEngine.REMITTANCE, check
								.get_ID(), directPrint);
				if (re == null) {
					returnStrings[returnStrings.length - 1] = "could not create file";
					return returnStrings;
				}
				if (!directPrint) {
					f = null;
					try {
						f = File.createTempFile("U" + ctx.getAD_User_ID()
								+ "_R", ".pdf", new File(System
										.getProperty("java.io.tmpdir")));
						re.createPDF(f);
					} catch (IOException e) {
						// error log and error message
						log.severe(e.getMessage());
						returnStrings[returnStrings.length - 1] = "could not create file";
						return returnStrings;
					}
					returnStrings[i] = f.getName();
				} else {
					returnStrings[i] = "printed directly";
				}
			}

			return returnStrings;
		}

		String[] returnStrings = { "never reach here" };
		return returnStrings;
	} // printPayments

	private MPaySelectionCheck[] getChecks(int C_PaySelection_ID,
			String PaymentRule, int startDocumentNo, Trx trx) {
		ArrayList<MPaySelectionCheck> list = new ArrayList<MPaySelectionCheck>();
		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();

		int docNo = startDocumentNo;
		String sql = "SELECT * FROM C_PaySelectionCheck "
			+ "WHERE C_PaySelection_ID=? AND PaymentRule=?";
		try {
			PreparedStatement pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_PaySelection_ID);
			pstmt.setString(2, PaymentRule);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				MPaySelectionCheck check = new MPaySelectionCheck(ctx, rs, trx);
				// Set new Check Document No - saved in confirmPrint
				check.setDocumentNo(String.valueOf(docNo++));
				list.add(check);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			;
		}

		// convert to Array
		MPaySelectionCheck[] retValue = new MPaySelectionCheck[list.size()];
		list.toArray(retValue);
		return retValue;
	} // getChecks

	public int generatePaySelect(WindowCtx windowCtx) {
		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();

		Trx trx = null;
		//
		// Create Header
		String paymentRule = windowCtx.getSelectedOption(
				PaymentPrintConstants.PAYMENTRULE).getID();
		Timestamp payDate = Util.string2Timestamp(windowCtx
				.get(PaymentPrintConstants.PAYDATE));
		MPaySelection m_ps = new MPaySelection(ctx, 0, trx);
		m_ps.setName(Msg.getMsg(ctx, "VPaySelect") + " - " + paymentRule
				+ " - " + payDate);

		m_ps.setPayDate(payDate);

		BankInfo bi = (BankInfo) windowCtx
		.getSelectedOption(PaymentPrintConstants.BANKACCOUNTID);
		m_ps.setC_BankAccount_ID(bi.C_BankAccount_ID);
		m_ps.setIsApproved(true);
		if (!m_ps.save()) {
			m_ps = null;
			return -1;
		}
		log.config(m_ps.toString());

		boolean isSOTrx = false;
		if (X_C_Order.PAYMENTRULE_DirectDebit.equals(paymentRule)) {
			isSOTrx = true;
		}

		if(windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
			UWindowID uid = new UWindowID(UWindowID.WindowType.FORM, UWindowID.FORM_PAYMENT_SELECTION);
			TableModel result = InfoWindowServiceImpl.executeQueryWithServer(server, 1, uid , 1, null, null, windowCtx, 0, QueryUtil.MAX_ROWS, false,false, -1);
			int line = 0;
			for(int i=0; i<result.rows(); i++) {
				MPaySelectionLine psl = new MPaySelectionLine(m_ps, line,
						paymentRule);
				int C_Invoice_ID = Util.string2Int(result.get(i, 0));
				BigDecimal OpenAmt = Util.string2BigDecimal(result.get(i, 8));
				BigDecimal PayAmt = Util.string2BigDecimal(result.get(i, 9));
				//
				psl.setInvoice(C_Invoice_ID, isSOTrx, OpenAmt, PayAmt, OpenAmt
						.subtract(PayAmt));
				if (!psl.save(trx)) {
					return -1;
				}
				log.fine("C_Invoice_ID=" + C_Invoice_ID + ", PayAmt=" + PayAmt);
			}
		}
		else {
			ArrayList<String[]> selectedRows = windowCtx.getSelectedRows(1);
			// Create Lines
			int line = 0;
			for (int i = 0; i < selectedRows.size(); i++) {
				MPaySelectionLine psl = new MPaySelectionLine(m_ps, line,
						paymentRule);
				int C_Invoice_ID = Util.string2Int(selectedRows.get(i)[0]);
				BigDecimal OpenAmt = Util.string2BigDecimal(selectedRows.get(i)[8]);
				BigDecimal PayAmt = Util.string2BigDecimal(selectedRows.get(i)[9]);
				//
				psl.setInvoice(C_Invoice_ID, isSOTrx, OpenAmt, PayAmt, OpenAmt
						.subtract(PayAmt));
				if (!psl.save(trx)) {
					return -1;
				}
				log.fine("C_Invoice_ID=" + C_Invoice_ID + ", PayAmt=" + PayAmt);
			} // for all rows in table
		}
		return m_ps.getC_PaySelection_ID();
	} // generatePaySelect

	public TabFieldsVO searchResults(int windowNo, int AD_Tab_ID,
			int queryResultID, int searchResultID, int rowCount, String query) {
		log.entering(getClass().getName(), "searchResults", new Object[] {
			AD_Tab_ID, queryResultID, });

		GwtServer server = getGwtServer();
		TabFieldsVO vo = new TabFieldsVO();
		vo.resultCount = server.searchTabResults(windowNo, AD_Tab_ID,
				queryResultID, searchResultID, query, rowCount);
		vo.tableModel = assembleTableModel(server, AD_Tab_ID, server
				.getTabSearchResults(searchResultID, rowCount), windowNo);
		return vo;

	}

	/*
	 * Selects the changelog information from DB Returns a
	 * Vector<Vector<String>> : the first vector is the who column line
	 * [createdBy, created, updatedBy, updated] the second vector is the column
	 * heading line [AD_Column_ID, OldValue, NewValue, UpdatedBy, Updated]
	 * followed by the data
	 */
	public Vector<Vector<String>> getRecordHistory(String[] curRowWho,
			int tableID, int recordID) {

		Vector<Vector<String>> recordHistory = new Vector<Vector<String>>();
		GwtServer server = getGwtServer();
		Ctx context = server.getContext();
		/** Date Time Format */
		SimpleDateFormat m_dateTimeFormat = DisplayType.getDateFormat(
				DisplayTypeConstants.DateTime, Env.getLanguage(context));

		// Check the Role preference level. Only if "Client" then we check for
		// history.
		if (X_AD_Role.PREFERENCETYPE_Tenant.equals(MRole.getDefault(context,
				false).getPreferenceType())) {

			/** Date Format */
			SimpleDateFormat m_dateFormat = DisplayType.getDateFormat(
					DisplayTypeConstants.Date, Env.getLanguage(context));

			/** Number Format */
			DecimalFormat m_numberFormat = DisplayType.getNumberFormat(
					DisplayTypeConstants.Number, Env.getLanguage(context));

			/** Amount Format */
			DecimalFormat m_amtFormat = DisplayType.getNumberFormat(
					DisplayTypeConstants.Amount, Env.getLanguage(context));

			/** Number Format */
			DecimalFormat m_intFormat = DisplayType.getNumberFormat(
					DisplayTypeConstants.Integer, Env.getLanguage(context));

			String sql = "SELECT AD_Column_ID, OldValue, NewValue, UpdatedBy, Updated, IsCustomization, AD_ChangeLog_ID "
				+ ",TrxName " //ZCOM #35755
				+ "FROM AD_ChangeLog "
				+ "WHERE AD_Table_ID=? AND Record_ID=? "
				+ "ORDER BY Updated DESC";
			PreparedStatement pstmt = null;
			try {
				pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, tableID);
				pstmt.setInt(2, recordID);
				ResultSet rs = pstmt.executeQuery();
				try {
					while (rs.next()) {
						recordHistory.add(generateHistoryLine(rs.getInt(1), rs
								.getString(2), rs.getString(3), rs.getInt(4), rs
								.getTimestamp(5), rs.getString(6), rs.getInt(7), context, m_dateTimeFormat,
								m_dateFormat, m_numberFormat, m_amtFormat,
								m_intFormat
								, rs.getString(8) //ZCOM #35755
								));
					}
				}
				finally {
					rs.close();
				}
				pstmt.close();
				pstmt = null;
			} catch (Exception e) {
				log.log(Level.SEVERE, sql, e);
			}

			Vector<String> columnNames = new Vector<String>();

			columnNames.add(Msg.translate(context, "AD_Column_ID"));
			columnNames.add(Msg.translate(context, "OldValue"));
			columnNames.add(Msg.translate(context, "NewValue"));
			columnNames.add(Msg.translate(context, "UpdatedBy"));
			columnNames.add(Msg.translate(context, "Updated"));
			columnNames.add(Msg.translate(context, "IsCustomization"));

			recordHistory.insertElementAt(columnNames, 0);
		}

		// curRowWhoV is a Vector<String> consisting of
		// createdBy, created, updatedBy, updated
		Vector<String> curRowWhoV = new Vector<String>();

		if (curRowWho[0] != null && //ZCOM999
				curRowWho[0].equals("")) {
			// this happens when the user clicks to view record history on a new
			// record that has not been saved yet
			// the calling method will have to process the null returned and
			// display an appropriate message
			curRowWhoV.add(null);
		} else {
			// createdBy
			MUser createdUser = MUser.get(context, Integer
					.parseInt(curRowWho[1]));
			curRowWhoV.add(createdUser.getName());

			// created
			Date created = new Date(Long.parseLong(curRowWho[0]));
			curRowWhoV.add(m_dateTimeFormat.format(created));

			// updatedBy
			MUser updatedUser = MUser.get(context, Integer
					.parseInt(curRowWho[3]));
			curRowWhoV.add(updatedUser.getName());

			// updated
			Date updated = new Date(Long.parseLong(curRowWho[2]));
			curRowWhoV.add(m_dateTimeFormat.format(updated));
		}

		recordHistory.insertElementAt(curRowWhoV, 0);

		return recordHistory;
	} // getRecordHistory

	/*
	 * Used only by getRecordHistory. converts the lines selected out of
	 * AD_CHANGELOG into strings formatted for readability Returns a
	 * Vector<String>
	 */
	private Vector<String> generateHistoryLine(int AD_Column_ID,
			String OldValue, String NewValue, int UpdatedBy, Timestamp Updated, String isCustomization, 
			int AD_ChangeLog_ID, Ctx context, SimpleDateFormat m_dateTimeFormat,
			SimpleDateFormat m_dateFormat, DecimalFormat m_numberFormat,
			DecimalFormat m_amtFormat, DecimalFormat m_intFormat
			, String trxName //ZCOM #35755
		) {

		Vector<String> line = new Vector<String>();

		// Column
		MColumn column = MColumn.get(context, AD_Column_ID);
		line.add(column.getName());

		if (OldValue != null && OldValue.equals(MChangeLog.NULL))
			OldValue = null;
		String showOldValue = OldValue;
		if (NewValue != null && NewValue.equals(MChangeLog.NULL))
			NewValue = null;
		String showNewValue = NewValue;
		//
		try {
			if (FieldType.isText(column.getAD_Reference_ID()))
				;
			else if (column.getAD_Reference_ID() == DisplayTypeConstants.YesNo) {
				if (OldValue != null) {
					boolean yes = OldValue.equals("true")
					|| OldValue.equals("Y");
					showOldValue = Msg.getMsg(context, yes ? "Y" : "N");
				}
				if (NewValue != null) {
					boolean yes = NewValue.equals("true")
					|| NewValue.equals("Y");
					showNewValue = Msg.getMsg(context, yes ? "Y" : "N");
				}
			} else if (column.getAD_Reference_ID() == DisplayTypeConstants.Amount) {
				if (OldValue != null)
					showOldValue = m_amtFormat.format(new BigDecimal(OldValue));
				if (NewValue != null)
					showNewValue = m_amtFormat.format(new BigDecimal(NewValue));
			} else if (column.getAD_Reference_ID() == DisplayTypeConstants.Integer) {
				if (OldValue != null)
					showOldValue = m_intFormat.format(new Integer(OldValue));
				if (NewValue != null)
					showNewValue = m_intFormat.format(new Integer(NewValue));
			} else if (FieldType.isNumeric(column.getAD_Reference_ID())) {
				if (OldValue != null)
					showOldValue = m_numberFormat.format(new BigDecimal(
							OldValue));
				if (NewValue != null)
					showNewValue = m_numberFormat.format(new BigDecimal(
							NewValue));
			} else if (column.getAD_Reference_ID() == DisplayTypeConstants.Date) {
				if (OldValue != null)
					showOldValue = m_dateFormat.format(Timestamp
							.valueOf(OldValue));
				if (NewValue != null)
					showNewValue = m_dateFormat.format(Timestamp
							.valueOf(NewValue));
			} else if (column.getAD_Reference_ID() == DisplayTypeConstants.DateTime) {
				if (OldValue != null)
					showOldValue = m_dateTimeFormat.format(Timestamp
							.valueOf(OldValue));
				if (NewValue != null)
					showNewValue = m_dateTimeFormat.format(Timestamp
							.valueOf(NewValue));
			} else if (FieldType.isLookup(column.getAD_Reference_ID())) {
				MLookup lookup = MLookupFactory.get(context, 0, AD_Column_ID,
						column.getAD_Reference_ID(), Env.getLanguage(context),
						column.getColumnName(), column
						.getAD_Reference_Value_ID(), column.isParent(),
						null);
				if (OldValue != null) {
					Object key = OldValue;
					if (column.getAD_Reference_ID() != DisplayTypeConstants.List
							&& column.getColumnName().toUpperCase().endsWith("_ID")) {
						try {
							key = new Integer(OldValue);
						} catch (Exception e) {
						}
					}
					NamePair pp = lookup.get(key);
					if (pp != null)
						showOldValue = pp.getName();
				}
				if (NewValue != null) {
					Object key = NewValue;
					if (column.getAD_Reference_ID() != DisplayTypeConstants.List
							&& column.getColumnName().toUpperCase().endsWith("_ID")) {
						try {
							key = new Integer(NewValue);
						}

						catch (Exception e) {
						}
					}
					NamePair pp = lookup.get(key);
					if (pp != null)
						showNewValue = pp.getName();
				}
			} else if (FieldType.isLOB(column.getAD_Reference_ID()))
				;
		} catch (Exception e) {
			log.log(Level.WARNING, OldValue + "->" + NewValue, e);
		}

		line.add(showOldValue);
		line.add(showNewValue);

		// User who updated
		MUser user = MUser.get(context, UpdatedBy);
		if (trxName == null) //ZCOM #35755
		line.add(user.getName());
		//ZCOM #35755
		else 
			line.add(user.getName()+ " - " + trxName);
		//ZCOM #35755

		// Updated date
		line.add(Updated.toString());

		// Is Customization
		line.add(isCustomization);
		line.add(String.valueOf(AD_ChangeLog_ID));
		
		return line;
	} // generateHistoryLine
	
	public Boolean saveRecordHistory(Vector<Vector<String>> recordHistoryList) {

		log.info("");
		
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		Ctx serverCtx = server.getContext();

		MTable table = MTable.get(serverCtx, 580); // AD_ChangeLog
		
		for (Vector<String> recordHistory: recordHistoryList)
		{
			int AD_ChangeLog_ID=Integer.parseInt(recordHistory.elementAt(0));
			PO po = table.getPO(serverCtx, AD_ChangeLog_ID, null);						
			String IsCustomization=recordHistory.elementAt(1);
			if (!IsCustomization.equalsIgnoreCase(po.get_ValueAsString("IsCustomization"))){
					po.set_Value("IsCustomization", IsCustomization);
					if (!po.save()){				
						log.log(Level.SEVERE, "Record history with AD_ChangeLog_ID of " + AD_ChangeLog_ID +" cannot be updated");	
						return false;
					}
			}
		}
		
		return true;
	} // saveRecordHistory

	public String setComments(int AD_Table_ID, int Record_ID,
			String Description, String comment) {
		log.entering(getClass().getName(), "getComments");
		MChat chat = null;
		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();
		String sql = "Select * from CM_CHAT where ad_table_id = ? and record_id = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, AD_Table_ID);
			pstmt.setInt(2, Record_ID);
			ResultSet rs = pstmt.executeQuery();
			try {
				if (rs.next()) {
					chat = new MChat(ctx, rs, null);
				} else {
					chat = new MChat(ctx, AD_Table_ID, Record_ID, Description, null);
					chat.save();
				}
			}
			finally {
				rs.close();
			}
			pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			log.log(Level.SEVERE, sql, e);
		}
		try {
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			pstmt = null;
		}
		MChatEntry entry = new MChatEntry(chat, comment);
		entry.save();

		return getComments(AD_Table_ID, Record_ID);
	}

	public String getComments(int AD_Table_ID, int Record_ID) {

		log.entering(getClass().getName(), "getComments");
		String comments;
		MChat chat = null;
		GwtServer server = getGwtServer();
		Ctx ctx = server.getContext();
		String sql = "Select * from CM_CHAT where ad_table_id = ? and record_id = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, AD_Table_ID);
			pstmt.setInt(2, Record_ID);
			ResultSet rs = pstmt.executeQuery();
			try {
				if (rs.next()) {
					chat = new MChat(ctx, rs, null);
				}
			}
			finally {
				rs.close();
			}
			pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			log.log(Level.SEVERE, sql, e);
		}
		try {
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			pstmt = null;
		}

		if (chat != null)
			comments = chat.getHistoryString();
		else
			comments = null;

		return comments;
	}

	/*
	 * Returns the system info
	 */
	public String getSystemInfo(Ctx serverCtx) {
		String license = SysEnv.getInfo(null);
		license = (license == null) ? null : license.replaceAll(Env.NL, "<br>");
		String s = "<HTML>" + Compiere.NAME + " " + Compiere.MAIN_VERSION + "_"
		+ Compiere.DATE_VERSION + " Implementation:"
		+ Compiere.getImplementationVersion() + "<BR>" + license
		+ "</HTML>";
		return s;
	} // getSystemInfo

	/*
	 * Returns login messages
	 */
	public List<Map<String, String>> getLoginMessage() {
		GwtServer server = this.getGwtServer();
		Ctx ctx = server.getContext();

		ArrayList<MLoginMsg> msgs = MLoginMsg.getForUser(ctx, ctx
				.getAD_User_ID());
		if (msgs == null || msgs.size() == 0)
			return null;

		ArrayList<Map<String, String>> retVal = new ArrayList<Map<String, String>>();
		for (int i = 0; i < msgs.size(); i++) {
			Map<String, String> message = new HashMap<String, String>();
			MLoginMsg msg = msgs.get(i);
			String loginMsgType = msg.getLoginMsgType();
			String cancel = loginMsgType
			.equals(X_AD_LoginMsg.LOGINMSGTYPE_Info) ? "N" : "Y";
			message.put("AD_LoginMsg_ID", String.valueOf(msg
					.getAD_LoginMsg_ID()));
			message.put("cancel", cancel);
			message.put("title", msg.getDescription());
			message.put("text", msg.getTextMsg());
			String additionalText = msg.getAdditionalText(ctx.getAD_User_ID());
			additionalText = (additionalText == null) ? null : additionalText
					.replaceAll(Env.NL, "<br>");
			message.put("additionalText", additionalText);
			retVal.add(message);
		}

		return retVal;
	} // getLoginMessage

	/*
	 * Log the response to the login message
	 */
	public Boolean saveLoginMessageLog(int AD_LoginMsg_ID, String response) {
		GwtServer server = this.getGwtServer();
		Ctx ctx = server.getContext();

		MLoginMsg loginMsg = MLoginMsg.get(ctx, AD_LoginMsg_ID);
		MLoginMsgLog loginMsgLog = new MLoginMsgLog(loginMsg);
		MSession session = MSession.get(ctx);
		loginMsgLog.setAD_Session_ID(session.getAD_Session_ID());
		loginMsgLog.setAD_User_ID(ctx.getAD_User_ID());
		loginMsgLog.setIsUserAccepted(response);
		return loginMsgLog.save();
	} // saveLoginMessageLog

	public ArrayList<CheckRequestVO> checkRequests(int AD_Table_ID,
			int Record_ID, int C_BPartner_ID) {
		GwtServer server = this.getGwtServer();
		Ctx ctx = server.getContext();
		int activeCount = 0;
		int inactiveCount = 0;
		ArrayList<CheckRequestVO> ret = new ArrayList<CheckRequestVO>();

		{
			CheckRequestVO cVO = new CheckRequestVO(Msg.getMsg(ctx,
			"RequestNew"), "");

			cVO.setValue("AD_Table_ID", String.valueOf(AD_Table_ID));
			cVO.setValue("Record_ID", String.valueOf(Record_ID));
			//
			if (C_BPartner_ID != 0)
				cVO.setValue("C_BPartner_ID", String.valueOf(C_BPartner_ID));
			//
			if (AD_Table_ID == X_C_BPartner.Table_ID)
				cVO.setValue("C_BPartner_ID", String.valueOf(Record_ID));
			else if (AD_Table_ID == X_AD_User.Table_ID)
				cVO.setValue("AD_User_ID", String.valueOf(Record_ID));
			//
			else if (AD_Table_ID == X_C_Project.Table_ID)
				cVO.setValue("C_Project_ID", String.valueOf(Record_ID));
			else if (AD_Table_ID == X_A_Asset.Table_ID)
				cVO.setValue("A_Asset_ID", String.valueOf(Record_ID));
			//
			else if (AD_Table_ID == X_C_Order.Table_ID)
				cVO.setValue("C_Order_ID", String.valueOf(Record_ID));
			else if (AD_Table_ID == X_C_Invoice.Table_ID)
				cVO.setValue("C_Invoice_ID", String.valueOf(Record_ID));
			//
			else if (AD_Table_ID == X_M_Product.Table_ID)
				cVO.setValue("M_Product_ID", String.valueOf(Record_ID));
			else if (AD_Table_ID == X_C_Payment.Table_ID)
				cVO.setValue("C_Payment_ID", String.valueOf(Record_ID));
			//
			else if (AD_Table_ID == X_M_InOut.Table_ID)
				cVO.setValue("M_InOut_ID", String.valueOf(Record_ID));
			//
			else if (AD_Table_ID == X_C_Campaign.Table_ID)
				cVO.setValue("C_Campaign_ID", String.valueOf(Record_ID));

			ret.add(cVO);
		}
		StringBuffer where = new StringBuffer();
		where.append("(AD_Table_ID=").append(AD_Table_ID).append(
		" AND Record_ID=").append(Record_ID).append(")");
		//
		if (AD_Table_ID == X_AD_User.Table_ID)
			where.append(" OR AD_User_ID=").append(Record_ID).append(
			" OR SalesRep_ID=").append(Record_ID);
		else if (AD_Table_ID == X_C_BPartner.Table_ID)
			where.append(" OR C_BPartner_ID=").append(Record_ID);
		else if (AD_Table_ID == X_C_Order.Table_ID)
			where.append(" OR C_Order_ID=").append(Record_ID);
		else if (AD_Table_ID == X_C_Invoice.Table_ID)
			where.append(" OR C_Invoice_ID=").append(Record_ID);
		else if (AD_Table_ID == X_C_Payment.Table_ID)
			where.append(" OR C_Payment_ID=").append(Record_ID);
		else if (AD_Table_ID == X_M_Product.Table_ID)
			where.append(" OR M_Product_ID=").append(Record_ID);
		else if (AD_Table_ID == X_C_Project.Table_ID)
			where.append(" OR C_Project_ID=").append(Record_ID);
		else if (AD_Table_ID == X_C_Campaign.Table_ID)
			where.append(" OR C_Campaign_ID=").append(Record_ID);
		else if (AD_Table_ID == X_A_Asset.Table_ID)
			where.append(" OR A_Asset_ID=").append(Record_ID);
		//
		String sql = "SELECT Processed, COUNT(*) " + "FROM R_Request WHERE "
		+ where + " GROUP BY Processed " + "ORDER BY Processed DESC";
		PreparedStatement pstmt = null;
		try {
			pstmt = DB.prepareStatement(sql, (Trx) null);
			ResultSet rs = pstmt.executeQuery();
			try {
				while (rs.next()) {
					if ("Y".equals(rs.getString(1)))
						inactiveCount = rs.getInt(2);
					else
						activeCount += rs.getInt(2);
				}
			}
			finally {
				rs.close();
			}
			pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			log.log(Level.SEVERE, sql, e);
		}
		try {
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			pstmt = null;
		}

		//
		if (activeCount > 0) {
			ret.add(new CheckRequestVO(Msg.getMsg(ctx, "RequestActive") + " ("
					+ activeCount + ")", "(" + where + ") AND Processed='N'"));
		}
		if (inactiveCount > 0) {

			ret.add(new CheckRequestVO(Msg.getMsg(ctx, "RequestAll") + " ("
					+ (activeCount + inactiveCount) + ")", where.toString()));
		}
		return ret;
	}

	public ContextVO getSessionInfo() 
	{
		ContextVO ctxvo = new ContextVO();
		GwtServer server = getGwtServer();
		CContext ctx = server.getContext();
		Login loginInfo = server.getLogin();

		MUser user = MUser.get(ctx);

		MOrg org = MOrg.get(ctx, ctx.getAD_Org_ID());
		String sWhId = server.getContext().getContext( "#M_Warehouse_ID" );
		MClient client = MClient.get(ctx);

		ctxvo.stringMap.put("AutoCommit", ctx.isAutoCommit()?"Y":"N");
		ctxvo.stringMap.put("Tenant", client.getName());
		ctxvo.stringMap.put("User", user.getName());
		ctxvo.stringMap.put("Role", loginInfo.getRole().getName());
		ctxvo.stringMap.put("Org", org.getName());
		if (sWhId != null && !("".equals(sWhId)))
		{
			MWarehouse wh = MWarehouse.get(ctx,Integer.valueOf(sWhId).intValue());
			ctxvo.stringMap.put("Warehouse", wh.getName());
		}
		else
			ctxvo.stringMap.put("Warehouse", null);
		return ctxvo;
	}

	// Dummy function called by ADE to reset the SessionTimeout timer
	public String pingTimer()
	{		
		return "OK";
	}

}