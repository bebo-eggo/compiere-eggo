/**
 * 
 */
package org.compiere.gwt.server;

import java.math.*;
import java.sql.*;
import java.util.*;
import java.util.Date;
import java.util.logging.*;

import org.compiere.apps.*;
import org.compiere.apps.form.*;
import org.compiere.common.*;
import org.compiere.db.*;
import org.compiere.db.QueryUtil;
import org.compiere.esb.*;
import org.compiere.gwt.client.service.*;
import org.compiere.gwt.server.component.*;
import org.compiere.gwt.server.component.TableComponentImpl.*;
import org.compiere.gwt.server.window.*;
import org.compiere.intf.*;
import org.compiere.model.*;
import org.compiere.util.*;
import org.compiere.vos.*;
import org.compiere.vos.ComponentVO.ComponentType;
import org.compiere.gwt.server.window.*;

/**
 * @author gwu
 * 
 */
public class InfoWindowServiceImpl extends CRemoteServiceServlet implements
InfoWindowService {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	static CLogger log = CLogger.getCLogger(ReportServiceImpl.class);


	public WindowVO getFormLayout(int windowNo, UWindowID uid, WindowCtx windowCtx) {
		log.entering(getClass().getName(), "getFormLayout", new Object[] { uid,
			windowCtx });
		GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());
		WindowImplIntf w = WindowImplFactory.getWindowImpl(windowNo, server, windowCtx, uid );
		if( w == null )
			return null;
		WindowVO wVO = WindowImplFactory.getWindowVO( w, windowNo, uid );
		addTableCustomization(server, wVO);
		return wVO;

	}

	private static void addTableCustomization(GwtServer server, WindowVO wVO) {
		for(ComponentVO cVO:wVO.componentVOs) {
			if (!cVO.componentType.equals(ComponentType.TABLE_MULTI) && //Redmine 29159
					!cVO.componentType.equals(ComponentType.TABLE_SINGLE) &&
						!cVO.componentType.equals(ComponentType.TABLE_NOSELECT))
				continue;
			
			//Redmine 29972
			ArrayList<Integer> seqs = new ArrayList<Integer>();
			ArrayList<String> columnNames = Util.getTableColumnNames(server.getContext().getAD_User_ID(), cVO.AD_Tab_ID, cVO.getUniqueTableID());

			if(columnNames != null){
				for(String columnName:columnNames){
					//il faut prendre en compte les anciens enregistrements qui sont des seqNo
					if(org.compiere.util.Util.isNumeric(columnName))
						seqs.add(Integer.valueOf(columnName));
					else
						for(int i=0;i<cVO.fieldVOs.size();i++)
						{
							FieldVO fieldVO = cVO.fieldVOs.get(i);
							if(columnName.equals(fieldVO.ColumnName)){
								//récuperer la sequenceNo de la colonne 
								seqs.add(Integer.valueOf(i));
								break;
							}
						}
				}

				cVO.setCustomizedDisplayedColPos(seqs);
			}

		}

	}
	public WindowVO getInfoWindowLayout( int windowNo, WindowCtx windowCtx, FieldVO fieldVO) {
		log.entering(getClass().getName(), "getInfoWindowLayoutByTableID",
				new Object[] { windowCtx, fieldVO });

		GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());
		UWindowID uid = WindowImplFactory.getInfoWindowUID(windowNo, server, windowCtx, fieldVO);
		WindowImplIntf w = WindowImplFactory.getWindowImpl(windowNo, server, windowCtx, uid);
		WindowVO wVO = WindowImplFactory.getWindowVO( w, windowNo, uid );
		addTableCustomization(server, wVO);
		return wVO;

	}

	private TableModel executeQuery(int windowNo, UWindowID uid,
			int componentNO, FieldVO fieldVO, QueryVO queryVO,
			WindowCtx windowCtx, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol) {
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		return executeQueryWithServer(server, windowNo, uid, componentNO, fieldVO, queryVO, windowCtx, startRow, rowCount, countOnly, asc, sortCol);
	}
	public static TableModel executeQueryWithServer(GwtServer server, int windowNo, UWindowID uid,
			int componentNO, FieldVO fieldVO, QueryVO queryVO,
			WindowCtx windowCtx, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol) {
		WindowImplIntf w = WindowImplFactory.getWindowImpl(windowNo, server, windowCtx, uid);
		ComponentImplIntf cs = w.getComponents().get(componentNO);
		return cs.getQueryResults(queryVO, w, windowCtx, fieldVO, startRow,
				rowCount, countOnly, asc, sortCol);
	}

	public TableModel getQueryResults(int windowNo, UWindowID uid,
			int componentNO, FieldVO fieldVO, QueryVO queryVO,
			WindowCtx windowCtx, int startRow, int rowCount, boolean asc, int sortCol) {
		log.entering(getClass().getName(), "getQueryResults", new Object[] {
			uid, componentNO, fieldVO, queryVO, windowCtx, startRow,
			rowCount });
		try { //ZCOM 49664 In case of TimeOut

		TableModel res = executeQuery( windowNo, uid, componentNO, fieldVO, queryVO, windowCtx, startRow, rowCount, false, asc, sortCol );

		return res;
		//ZCOM 49664
		} catch (Throwable e) {
			String msg = e.getMessage();
			if (e.getCause() != null) {
				msg = e.getCause().getMessage();
				if (msg != null && msg.indexOf("ORA-01013") >= 0)
					msg = "Query took too long to finish, please restrict your criteria";
			}
			TableModel res = new TableModel();
			res.addRow(new String[]{"0", "ERROR : "+msg}, 0, "ERROR : "+msg);
			return res;
		}
		//ZCOM 49664
	}

	public static void fillTableModel( TableModel res, Object[][] result )
	{
		for( Object[] row : result )
		{
			String[] str = new String[row.length];
			int j = 0;
			for( Object cell : row )
			{
				if( cell != null )
				{
					if( cell instanceof Date )
						str[j] = Long.toString( ((Date) cell).getTime() );
					else if (cell instanceof Boolean )
						str[j] = ((Boolean) cell) ? "Y" : "N";
					else
						str[j] = cell.toString();
				}
				j++;
			}
			res.addRow( str, 0, null );
		}
	}

	public TabFieldsVO getQueryCount(int windowNo, UWindowID uid, int componentNO,
			FieldVO fieldVO, QueryVO queryVO, WindowCtx windowCtx) {
		log.entering(getClass().getName(), "getQueryCount", new Object[] { uid,
			componentNO, fieldVO, queryVO, windowCtx });
		//ZCOM 49664 In case of TimeOut
		try { 
			
		TableModel res = executeQuery( windowNo, uid, componentNO, fieldVO, queryVO, windowCtx, 0, 1, true, false, -1 );
		TabFieldsVO fieldsVO = new TabFieldsVO();
		fieldsVO.resultCount = Integer.parseInt( res.get( 0, 0 ) );
		fieldsVO.fieldVOs = null;
		fieldsVO.tableModel = null;
		return fieldsVO;
		
		//ZCOM 49664
		} catch (Throwable e) {
			String msg = e.getMessage();
			if (e.getCause() != null) {
				msg = e.getCause().getMessage();
				if (msg != null && msg.indexOf("ORA-01013") >= 0)
					msg = "Query took too long to finish, please restrict your criteria";
			}
			TableModel res = new TableModel();
			res.addRow(new String[]{"0", "ERROR : "+msg}, 0, "ERROR : "+msg);
			TabFieldsVO fieldsVO = new TabFieldsVO();
			fieldsVO.resultCount = Integer.parseInt( res.get( 0, 0 ) );
			fieldsVO.fieldVOs = null;
			fieldsVO.tableModel = res;
			return fieldsVO;		
		}
		//ZCOM 49664
	}

	public ChangeVO callback(int windowNo, UWindowID uid,
			WindowCtx windowCtx, String source) {
		log.entering(getClass().getName(), "callback", new Object[] { uid,
			windowCtx, source });
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		WindowImplIntf w = WindowImplFactory.getWindowImpl(windowNo, server, windowCtx, uid );

		ChangeVO changeVO = w.processCallback(source);
		if( changeVO == null )
			changeVO = new ChangeVO();

		if( changeVO.updateCurrentRow )
		{			
			// moved from PaymentDialogWindowImpl

			if( changeVO.changedFields != null )
			{
				// put all the changed values back into windowCtx so we can save the changes
				for( Map.Entry<String, String> entry : changeVO.changedFields.entrySet() )
				{
					windowCtx.getStringMap().put(entry.getKey(), entry.getValue());
				}
			}

			ChangeVO saveResult =  server.updateRow(windowCtx.getAsInt(WindowVO.WINDOW_NO), 
					windowCtx.getAsInt(WindowVO.AD_TAB_ID),
					windowCtx.getAsInt(WindowVO.QUERY_RESULT_ID),
					windowCtx.getAsInt(WindowVO.CUR_ROW),
					windowCtx.getStringMap(),true);
			changeVO.addAll(saveResult);
		}

		if( changeVO.updateWindowVO )
		{
			changeVO.newWindowVO = WindowImplFactory.getWindowVO(w, windowNo, uid);
			addTableCustomization(server, changeVO.newWindowVO);//Redmine #21297
		}
		
		return changeVO;
	}





	public ListBoxVO getAutoCompleteList( int windowNo, FieldVO fieldVO, WindowCtx windowCtx, String name) {
		log.entering(getClass().getName(), "getAutoCompleteList", new Object[] {
			fieldVO, windowCtx, name });

		GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());
		UWindowID uid = WindowImplFactory.getInfoWindowUID(windowNo, server, windowCtx, fieldVO);
		WindowImplIntf w = WindowImplFactory.getWindowImpl(windowNo, server, windowCtx, uid);
		TableComponentImpl comp = (TableComponentImpl) w.getComponents().get(1);

		QueryComponents c = comp.getQueryComponents( fieldVO, windowCtx );

		String SQL;
		String[] params = null;

		if (name == null)
			name = "";
		name = name.toUpperCase();
		if (!name.endsWith("%"))
			name = name + "%";		

		if( c.autoCompletionFromClause != null && c.autoCompletionFromClause.indexOf('?') >= 0) {
			SQL = "SELECT DISTINCT " + c.keyColumn + ", " + c.idColumn + " FROM " + c.autoCompletionFromClause;
			// bind the query parameter with every instance of ?
			char[] chars = c.autoCompletionFromClause.toCharArray();
			ArrayList<String> p = new ArrayList<String>();
			for( char ch : chars ){
				if( ch == '?' )
					p.add(name);
			}
			params = p.toArray(new String[p.size()]);
		}
		else {
			//SQL = "SELECT DISTINCT " + c.keyColumn + ", " + c.idColumn + " FROM " + comp.getFromClause()
			//+ " WHERE ( UPPER(" + c.idColumn + ") LIKE ? OR UPPER(" + c.valueColumn + ") LIKE ? ) ";
			//params = new String[] { name, name };
			  // BBR : IMPROVE PERFS !!!!!
			  SQL = "SELECT DISTINCT " + c.keyColumn + ", " + c.idColumn + " FROM " + comp.getFromClause()
			  + " WHERE ( UPPER(" + c.idColumn + ") LIKE ? ";
			  if(!"NULL".equals(c.valueColumn)){
			      SQL += " OR UPPER(" + c.valueColumn + ") LIKE ? ) ";
			      params = new String[] { name, name };
			  }else{
			      SQL += ")";
			      params = new String[] { name};
			 }
			 // BBR : IMPROVE PERFS !!!!!

		}

		if( c.validationCode != null )
			SQL = SQL + " AND " + c.validationCode;

		SQL = SQL + " ORDER BY " + c.idColumn;

		SQL = comp.addAccessSQL(SQL);
		Object[][] obj = QueryUtil.executeQuery( SQL, params );

		ValueNamePair[] pairs = new ValueNamePair[obj.length];
		int i = 0;
		try { //ZCOM999
		for (Object[] row : obj) {
			pairs[i] = new ValueNamePair(row[0] == null ? "" : row[0]
			                                                       .toString(), row[1] == null ? "" : row[1].toString());
			i++;
		}
		//ZCOM999
		} catch (Exception e) {
			log.log(Level.SEVERE, "E", e);
		}
		//ZCOM999
		return new ListBoxVO(pairs, null);
	}

	public String getNameFromKey( int windowNo, FieldVO fieldVO, WindowCtx windowCtx, Integer key) {
		log.entering(getClass().getName(), "getNameFromKey", new Object[] {
			fieldVO, windowCtx, key });

		if( fieldVO.AD_Field_ID != 0 )
		{
			GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());

			ArrayList< String > keyValues = new ArrayList< String >();
			keyValues.add( key.toString() );


			ArrayList< NamePair > pairs = server.getLookupValueDirect( fieldVO.AD_Field_ID, keyValues, false );		
			return pairs.get( 0 ).getName();
		}
		else
		{		
			GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());
			UWindowID uid = WindowImplFactory.getInfoWindowUID(windowNo, server, windowCtx, fieldVO);
			WindowImplIntf w = WindowImplFactory.getWindowImpl(windowNo, server, windowCtx, uid);
			TableComponentImpl comp = (TableComponentImpl) w.getComponents().get(1);

			QueryComponents c = comp.getQueryComponents( fieldVO, windowCtx );

			//Redmine 48265
			String from = comp.getFromClause();
			if ("ECPOrder".equals(fieldVO.FieldGroup) || "ECReceipt".equals(fieldVO.FieldGroup))
				from = Evaluator.replaceVariables ( from, server.getContext(), windowCtx );
			//
			
			String SQL = "SELECT DISTINCT " + c.keyColumn + ", " + c.idColumn
			+ " FROM " + from + " WHERE " + c.keyColumn
			+ " = ? ";

			if( c.validationCode != null )
				SQL = SQL + " AND " + c.validationCode;

			SQL = SQL + " ORDER BY " + c.idColumn;

			SQL = comp.addAccessSQL(SQL);
			Object[][] obj = QueryUtil.executeQuery(SQL, new Object[] { key });

			String result = null;
			if (obj.length > 0 && obj[0][1] != null)
				result = obj[0][1].toString();
			return result;
		}
	}

	private static final String TOOLS_TABLE_SQL = "(208,318,539,259,319,335,291,207)";

	public List<NodeVO> getInfoWindowToolsSummary() {



		List<NodeVO> nodes = new ArrayList<NodeVO>();
		GwtServer server = LoginServiceImpl
		.getGwtServer(getThreadLocalRequest());
		Ctx serverCtx = server.getContext();
		String language = serverCtx.getContext("#AD_Language");

		int l_AD_User_ID = serverCtx.getAD_User_ID();
		int l_AD_Role_ID = serverCtx.getAD_Role_ID();
		int l_AD_Client_ID = serverCtx.getAD_Client_ID();

		MRole role = MRole.get(serverCtx, l_AD_Role_ID);

		String SQL = null;
		Object[][] result = null;

		SQL = "SELECT "
			+ "  IW.AD_InfoWindow_ID, IW.AD_Table_ID, COALESCE(IWT.Name,IW.Name), T.TableName, CASE IW.IsCustomDefault WHEN 'Y' THEN '0' ELSE '1' END "
			+ "FROM AD_InfoWindow IW INNER JOIN AD_Table T ON (IW.AD_Table_ID = T.AD_Table_ID) "
			+ "LEFT OUTER JOIN AD_InfoWindow_Trl IWT ON (IW.AD_InfoWindow_ID = IWT.AD_InfoWindow_ID AND IWT.ad_language = '"+language+"') "
			+ "WHERE IW.AD_Table_ID in "
			+ TOOLS_TABLE_SQL
			+ " AND IW.IsActive = 'Y' "
			+ "ORDER BY 4";

		result = QueryUtil.executeQuery(SQL, new Object[] {});
		for (Object[] row : result) {
			int AD_InfoWindow_ID = ((BigDecimal) row[0]).intValue();
			
			if(role.getInfoWindowAccess(AD_InfoWindow_ID))
			{
				int tableID = ((BigDecimal) row[1]).intValue();
				String name = (String) row[2];
				NodeVO node = new NodeVO();
				node.entityID = tableID;
				node.entityKey = (String) row[3];
				node.nodeType = NodeVO.TYPE_INFO_WINDOW;
				node.name = name;
				nodes.add(node);
			}
		}

		boolean showAcct = (serverCtx.get("#ShowAcct") != null && serverCtx.get("#ShowAcct").equals("Y"));//ZCOM999 38725-38662
		if(role.isShowAcct() && showAcct)//ZCOM999 38725-38662 showAcct
		{
			// Account Info
			NodeVO nodeAcct = new NodeVO();
			nodeAcct.entityID = 270;  // Fact_Acct
			nodeAcct.entityKey = "Fact_Acct";
			nodeAcct.nodeType = NodeVO.TYPE_INFO_WINDOW;
			nodeAcct.name = Msg.translate( server.getContext(), "InfoAccount" );
			nodes.add( nodeAcct );
		}
		 //ZCOM999 - #56770 Lettrage des comptes g�n�raux
		if(role.isShowAcct())
			{
				// Account Info
				NodeVO matchingNodeAcct = new NodeVO();
				matchingNodeAcct.entityID = 999;  // Fact_Acct 
				matchingNodeAcct.entityKey = "Fact_Acct"; 
				matchingNodeAcct.nodeType = NodeVO.TYPE_INFO_WINDOW;
				matchingNodeAcct.name = Msg.translate( server.getContext(), "MATCHING_ACCT_MSG" ); 
				nodes.add( matchingNodeAcct );  
		} 
			 //ZCOM999 - #56770 Lettrage des comptes g�n�raux

		// My Notices
		NodeVO nodeNotices = new NodeVO();
		//	Memo
		int notes = AMenu.getNotes( l_AD_User_ID, l_AD_Client_ID );
		nodeNotices.name = Msg.translate( serverCtx, "AD_Note_ID") + ": " + notes;
		nodeNotices.entityID = UWindowID.WINDOW_MY_NOTICE;
		nodeNotices.nodeType = NodeVO.TYPE_WINDOW;
		nodes.add( nodeNotices );

		// My Requests
		NodeVO nodeRequests = new NodeVO();
		int requests = AMenu.getRequests( serverCtx, l_AD_User_ID, l_AD_Role_ID );
		nodeRequests.name = Msg.translate( serverCtx, "R_Request_ID" ) + ": " + requests;
		nodeRequests.entityID = UWindowID.WINDOW_MY_REQUEST;
		nodeRequests.nodeType = NodeVO.TYPE_WINDOW;
		nodes.add( nodeRequests );

		return nodes;
	}




	private ArrayList< NamePair > getPAttributeSetInstanceData( int M_Product_ID )
	{
		Ctx ctx = LoginServiceImpl.getGwtServer( getThreadLocalRequest() ).getContext();
		int windowNO = 1;
		ctx.setContext( windowNO, "M_Product_ID", M_Product_ID );
		MPAttributeLookup lookup = new MPAttributeLookup( ctx, windowNO );
		ArrayList< NamePair > data = lookup.getData( true, true, true, true );
		return data;
	}



	public ListBoxVO getPAttributeSetInstanceAutoCompleteList( int M_Product_ID, String name )
	{
		log.entering( getClass().getName(), "getPAttributeSetInstanceAutoCompleteList", new Object[] { M_Product_ID, name } );
		ArrayList< NamePair > data = getPAttributeSetInstanceData( M_Product_ID );		

		ArrayList< NamePair > options = new ArrayList< NamePair >();
		for( NamePair pair : data )
		{
			if( pair.getName().startsWith( name ) )
				options.add( pair );				
		}

		return new ListBoxVO( options, null );
	}


	public String getPAttributeSetInstanceNameFromKey( int M_Product_ID, Integer key )
	{
		log.entering( getClass().getName(), "getPAttributeSetInstanceNameFromKey", new Object[] { M_Product_ID, key } );
//		ArrayList< NamePair > data = getPAttributeSetInstanceData( M_Product_ID );
		ArrayList<NamePair> data = new ArrayList<NamePair>();//#20050
		StringBuffer sql = new StringBuffer("SELECT ASI.M_AttributeSetInstance_ID, ASI.Description from M_AttributeSetInstance ASI, M_Product P")
		.append(" WHERE ASI.M_AttributeSet_ID = P.M_AttributeSet_ID AND P.M_Product_ID = ?" )
		.append(" AND ASI.M_AttributeSetInstance_ID=? AND ASI.IsActive='Y'");
		
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
			pstmt.setInt(1, M_Product_ID);
			pstmt.setInt(2, key);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				String desc = rs.getString(2);
				if( desc == null )
					desc = "{" + key + "}";
				data.add (new KeyNamePair(key, desc));
			}//#20050
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}//#20050
		for( NamePair pair : data )
		{
			if( pair.getID().equals( key.toString() ) )
				return pair.getName();				
		}

		return null;
	}

	public ListBoxVO getAccountCombinationAutoCompleteList( FieldVO fieldVO, WindowCtx windowCtx, String name )
	{

		String SQL = "SELECT DISTINCT vc.C_ValidCombination_ID, vc.Combination"
			+ " FROM C_ValidCombination vc WHERE UPPER(Combination) LIKE ? "
			+ " AND Ad_Client_Id = ?";

		SQL = SQL + " ORDER BY vc.Combination";

		String ClientID = windowCtx.getStringMap().get("AD_Client_ID");

		if (name == null)
			name = "";

		name = name.toUpperCase();
		if (!name.endsWith("%"))
			name = name + "%";
		String[] params= new String[] {name,ClientID};

		Object[][] obj = QueryUtil.executeQuery( SQL,params);

		ValueNamePair[] pairs = new ValueNamePair[obj.length];
		int i = 0;
		for (Object[] row : obj) {
			pairs[i] = new ValueNamePair(row[0] == null ? "" : row[0]
			                                                       .toString(), row[1] == null ? "" : row[1].toString());
			i++;
		}

		return new ListBoxVO(pairs, null);
	}

	public String getAccountCombinationNameFromKey( FieldVO fieldVO, WindowCtx windowCtx, Integer key) {
		log.entering(getClass().getName(), "getNameFromKey", new Object[] {
			fieldVO, windowCtx, key });

		GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());

		ArrayList< String > keyValues = new ArrayList< String >();
		keyValues.add( key.toString() );
		ArrayList< NamePair > pairs = server.getLookupValueDirect( fieldVO.AD_Field_ID, keyValues, true );		
		return pairs.get( 0 ).getName();
	}


	//get the types of tree and populate it in the drop down in UI client end 
	public KeyNamePair[] getTreeMaintainanceCompleteList()
	{
		GwtServer server = LoginServiceImpl.getGwtServer(getThreadLocalRequest());
		Ctx serverCtx = server.getContext();
		KeyNamePair[] trees = DB.getKeyNamePairs(MRole.getDefault(serverCtx, false).addAccessSQL(
				"SELECT AD_Tree_ID, Name FROM AD_Tree WHERE TreeType NOT IN ('BB','PC') ORDER BY 2", 
				"AD_Tree", MRole.SQL_NOTQUALIFIED, MRole.SQL_RW), false);


		return trees;
	}

	public Boolean moveTreeNode(int AD_Tree_ID, int newParentNodeID, ArrayList<Integer> newChildren) {

		Ctx ctx = LoginServiceImpl.getGwtServer( getThreadLocalRequest() ).getContext();
		Trx p_trx = Trx.get ("VTreePanel");
		MTree mtree = new MTree(ctx, AD_Tree_ID, p_trx);
		String nodeTableName = mtree.getNodeTableName();

		StringBuffer sql = new StringBuffer("UPDATE ");
		sql.append(nodeTableName);
		sql.append(" SET Parent_ID=?");
		sql.append(", SeqNo=?");
		sql.append(", Updated=SysDate");
		sql.append(" WHERE AD_Tree_ID=?");
		sql.append(" AND Node_ID=?");
		log.fine(sql.toString());

		PreparedStatement pstmt;
		int rowsUpdated = 0;
		try {
			pstmt = p_trx.getConnection().prepareStatement(sql.toString());

			int seqNo = 10;
			for( int childNodeID : newChildren )
			{
				pstmt.setInt(1, newParentNodeID);
				pstmt.setInt(2, seqNo);
				pstmt.setInt(3, AD_Tree_ID);
				pstmt.setInt(4, childNodeID);
				rowsUpdated += pstmt.executeUpdate();

				seqNo += 10;
			}
			pstmt.close();
			p_trx.commit();
			p_trx.close();
		} catch (SQLException e) {
			p_trx.rollback();
			p_trx.close();
			log.severe(e.getMessage());
			e.printStackTrace();
			return false;
		}

		if( rowsUpdated != newChildren.size() )
			return false;

		return true;
	}


	public TreeVO getTreeVO(int AD_Tree_ID) {
		TreeVO tree = new TreeVO();

		Ctx ctx = LoginServiceImpl.getGwtServer(getThreadLocalRequest())
		.getContext();
		MTree m_tree = new MTree(ctx, AD_Tree_ID, null);

		tree.AD_Tree_ID = AD_Tree_ID;
		tree.isAllNodes = m_tree.isAllNodes();

		String fromClause = m_tree.getSourceTableName(false); //	fully qualified
		String columnNameX = m_tree.getSourceTableName(true);
		String actionColor = m_tree.getActionColorName();
		//	List
		tree.treeNodes = new ArrayList<TreeNodeVO>();
		//ArrayList<NodeVO> model = new ArrayList<NodeVO>();
		String sql = "SELECT t." + columnNameX
		+ "_ID,t.Name,t.Description,t.IsSummary," + actionColor
		+ " FROM " + fromClause
		//	+ " WHERE t.IsActive='Y'"	//	R/O
		+ " ORDER BY 2";
		
		//Start Redmine 21992
		if ("C_ElementValue".equalsIgnoreCase(columnNameX))
			sql = "SELECT t." + columnNameX
			+ "_ID,t.Value || ' - ' || t.Name,t.Description,t.IsSummary," + actionColor
			+ " FROM " + fromClause
			//	+ " WHERE t.IsActive='Y'"	//	R/O
			+ " ORDER BY 2";
		//End Redmine 21992
		
		sql = MRole.getDefault(ctx, false).addAccessSQL(sql, "t",
				MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO);
		log.config(sql);
		//	
		PreparedStatement pstmt = null;
		try {
			pstmt = DB.prepareStatement(sql, (Trx) null);
			ResultSet rs = pstmt.executeQuery();
			try {
				while (rs.next()) {
					String AD_PrintColor_ID = rs.getString(5);
					TreeNodeVO item = new TreeNodeVO(rs.getInt(1), rs.getString(2),
							rs.getString(3), "Y".equals(rs.getString(4)), AD_PrintColor_ID);


					if (AD_PrintColor_ID != null && !m_tree.getTreeType().equals(X_AD_Tree.TREETYPE_Menu))
					{
						MPrintColor printColor = MPrintColor.get(ctx, AD_PrintColor_ID);
						if (printColor != null){
							String color = Integer.toHexString(printColor.getColor().getRGB() & 0xffffff); 
							// prepend zeros as necessary
							if (color.length() < 6)
								color = "000000".substring(0, 6 - color.length()) + color;
							item.color = color; 
						}
					}

					tree.treeNodes.add(item);
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

		boolean m_editable = false;
		Ctx ctx1 = LoginServiceImpl.getGwtServer(getThreadLocalRequest())
		.getContext();
		int userId = ctx1.getAD_User_ID();
		MTree m_tree1 = new MTree(ctx1, AD_Tree_ID, null);
		//  SQL for TreeNodes
		StringBuffer sql1 = new StringBuffer("SELECT "
				+ "tn.Node_ID,tn.Parent_ID,tn.SeqNo,tb.IsActive " + "FROM ")
		.append(m_tree1.getNodeTableName())
		.append(
				" tn"
				+ " LEFT OUTER JOIN AD_TreeBar tb ON (tn.AD_Tree_ID=tb.AD_Tree_ID"
				+ " AND tn.Node_ID=tb.Node_ID AND tb.AD_User_ID=?) " //	#1
				+ "WHERE tn.AD_Tree_ID=?"); //	#2
		if (!m_editable)
			sql1.append(" AND tn.IsActive='Y'");
		sql1.append(" ORDER BY COALESCE(tn.Parent_ID, -1), tn.SeqNo");
		log.finest(sql1.toString());
		//  The Node Loop
		PreparedStatement pstmt1 = DB.prepareStatement(sql1.toString(), (Trx) null);

		tree.parentChildRelations = new ArrayList<TreeParentChildVO>();
		try {
			// load Node details - addToTree -> getNodeDetail
			//getNodeDetails(); 
			//

			pstmt1.setInt(1, userId);
			pstmt1.setInt(2, AD_Tree_ID);
			//	Get Tree & Bar
			ResultSet rs = pstmt1.executeQuery();
			//m_root = new CTreeNode (0, 0, getName(), getDescription(), 0, true, null, false, null);

			while (rs.next()) {
				TreeParentChildVO pcList = new TreeParentChildVO();
				pcList.node_ID = rs.getInt(1);
				pcList.parent_ID = rs.getInt(2);
				pcList.seqNo = rs.getInt(3);
				tree.parentChildRelations.add(pcList);
			}
			rs.close();
			pstmt1.close();
			pstmt1 = null;
			//
			//m_nodeRowSet.close();
			//m_nodeRowSet = null;
		} catch (Exception e) {
			log.log(Level.SEVERE, sql1.toString(), e);
			e.printStackTrace();
		}
		try {
			if (pstmt1 != null)
				pstmt1.close();
			pstmt1 = null;
		} catch (Exception e) {
			pstmt1 = null;
			e.printStackTrace();
		}
		return tree;
	}

	public HashMap<Integer,Boolean> addTreeNodes(int AD_Tree_ID, ArrayList<Integer> nodes) {
		Ctx ctx = LoginServiceImpl.getGwtServer(getThreadLocalRequest())
		.getContext();
		MTree tree = new MTree(ctx, AD_Tree_ID, null);
		HashMap<Integer,Boolean> resultMap = new HashMap<Integer,Boolean>();
		for( int nodeID : nodes )
		{
			boolean result = VTreeMaintenance.action_treeAdd(tree, nodeID);
			resultMap.put(nodeID, result);
		}
		return resultMap;
	}

	public HashMap<Integer,Boolean> deleteTreeNodes(int AD_Tree_ID, ArrayList<Integer> nodes) {
		Ctx ctx = LoginServiceImpl.getGwtServer(getThreadLocalRequest())
		.getContext();
		MTree tree = new MTree(ctx, AD_Tree_ID, null);
		HashMap<Integer,Boolean> resultMap = new HashMap<Integer,Boolean>();
		for (int nodeID : nodes) {
			boolean result = VTreeMaintenance.action_treeDelete(tree, nodeID);
			resultMap.put(nodeID, result);
		}
		return resultMap;
	}


//ZCOM999 Evolution-12480
	
	public String  getMsg(String message)
	{
		String sql="Select MsgText From AD_Message where Value='"+message+"'";
		String retValue="";
		PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
		try {
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				retValue=rs.getString(1);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		} catch (Exception ex) {
			log.log(Level.SEVERE, sql.toString(), ex);
			ex.printStackTrace();
		}
		try {
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		} catch (Exception e) {
			pstmt = null;
			e.printStackTrace();
		}
		return retValue;
	}
	
	public HashMap<NamePair, ArrayList<NamePair>> getAttributs(){

		String columnName="";
		String name="";
		ArrayList<NamePair> options = new ArrayList<NamePair>();
		options.add(new ValueNamePair(columnName, name));
		String oldname="";
		HashMap<NamePair, ArrayList<NamePair>> map=new HashMap<NamePair, ArrayList<NamePair>>();
		
		String client = Msg.getMsg("en_US", "AUDAXIS_CLIENT_ATTRIBUTE_SEARCH");

		String sql="select attset.m_attributeset_id,attset.name,att.m_attribute_id,att.name from m_attributeset attset "+
		"left outer join m_attributeuse attuse on attuse.m_attributeset_id=attset.m_attributeset_id "+
		"left outer join m_attribute att on att.m_attribute_id=attuse.m_attribute_id ";
		if (client!= null && !client.equals(""))
			sql = sql + " where att.ad_client_id IN "+client;
		
		sql = sql + " order by attset.name desc ";
		
		PreparedStatement pstmt1 = DB.prepareStatement(sql.toString(), (Trx) null);
		map.put(new ValueNamePair("",""),options);
		options=new ArrayList<NamePair>();

		try {

			ResultSet rs = pstmt1.executeQuery();

			while (rs.next()) {
				columnName=rs.getString(1)==null ? "" : rs.getString(1);
				if(columnName.equals(oldname)){
					options.add(new ValueNamePair(rs.getString(3),rs.getString(4)));	
					map.put(new ValueNamePair(rs.getString(1),rs.getString(2)),options);
				}
				else{
					options=new ArrayList<NamePair>();
					options.add(new ValueNamePair(rs.getString(3),rs.getString(4)));
					map.put(new ValueNamePair(rs.getString(1),rs.getString(2)),options);
				}
				oldname=columnName;	
			}
			rs.close();
			pstmt1.close();
			pstmt1 = null;
		} catch (Exception ex) {
			log.log(Level.SEVERE, sql.toString(), ex);
			ex.printStackTrace();
		}
		try {
			if (pstmt1 != null)
				pstmt1.close();
			pstmt1 = null;
		} catch (Exception e) {
			pstmt1 = null;
			e.printStackTrace();
		}

		return map;

	}
	
	public HashMap<String, HashMap<String,ArrayList<NamePair>>> getAttributValues(){


		String attname="";
		String attvaltype="";
		String vattvalue="";
		String vattname="";
		
		String oldattname="";
		String oldattvaltype="";
		String oldvattvalue="";
		String oldvattname="";
		
		HashMap<String,ArrayList<NamePair>> values=new HashMap<String,ArrayList<NamePair>>();
		ArrayList<NamePair> options = new ArrayList<NamePair>();
		options.add(new ValueNamePair(vattvalue,vattname));
		HashMap<String, HashMap<String,ArrayList<NamePair>>> map=new HashMap<String, HashMap<String,ArrayList<NamePair>>>();

		String client = Msg.getMsg("en_US", "AUDAXIS_CLIENT_ATTRIBUTE_SEARCH");

		String sql="select att.name,att.attributevaluetype,val.value,val.name from M_Attribute att "+
		"left outer join M_AttributeValue val on val.m_attribute_id=att.m_attribute_id ";
		if (client!= null && !client.equals(""))
			sql = sql + " where att.ad_client_id IN "+client;
		
		sql = sql + " order by att.name,att.attributevaluetype";
		
		
		PreparedStatement pstmt1 = DB.prepareStatement(sql.toString(), (Trx) null);

		try {

			ResultSet rs = pstmt1.executeQuery();

			while (rs.next()) {
				
				attname=rs.getString(1)==null ? "" : rs.getString(1);
				attvaltype=rs.getString(2)==null ? "" : rs.getString(2);
				vattvalue=rs.getString(3)==null ? "" : rs.getString(3);
				vattname=rs.getString(4)==null ? "" : rs.getString(4);
				
				
				if(oldattname.equals(attname) && oldattvaltype.equals(attvaltype)){
					options.add(new ValueNamePair(vattvalue,vattname));
					values.put(attvaltype, options);
				}else{
					map.put(oldattname, values);
					options=new ArrayList<NamePair>();
					values=new HashMap<String, ArrayList<NamePair>>();
					options.add(new ValueNamePair("",""));
					options.add(new ValueNamePair(vattvalue,vattname));
					values.put(attvaltype, options);
				}
				
				oldattname=attname;
				oldattvaltype=attvaltype;
				oldvattvalue=vattvalue;
				oldvattname=vattname;
			}
			rs.close();
			pstmt1.close();
			pstmt1 = null;
		} catch (Exception ex) {
			log.log(Level.SEVERE, sql.toString(), ex);
			ex.printStackTrace();
		}
		try {
			if (pstmt1 != null)
				pstmt1.close();
			pstmt1 = null;
		} catch (Exception e) {
			pstmt1 = null;
			e.printStackTrace();
		}

		return map;

	}

	@Override
	public ArrayList<String[]> getNetworkData(String p_m_date,
			String p_m_network) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//ZCOM999 Evolution-12480
}