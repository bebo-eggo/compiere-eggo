/**
 * 
 */
package org.compiere.gwt.server.window;

import static org.compiere.common.constants.AcctViewerConstants.*;

import java.math.*;
import java.sql.*;
import java.util.*;

import org.compiere.acct.*;
import org.compiere.apps.*;
import org.compiere.common.constants.*;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.*;
import org.compiere.intf.*;
import org.compiere.layout.*;
import org.compiere.model.*;
import org.compiere.report.core.*;
import org.compiere.util.*;
import org.compiere.vos.*;
import java.util.Queue;

/**
 * @author gwu
 * 
 */
public class AcctViewerWindowImpl extends WindowImpl {

	/** Logger */
	private static CLogger log = CLogger.getCLogger(AcctViewerWindowImpl.class);

	private AcctViewerData m_data = null;

	private final FieldVO m_selAcctSchema;
	private final FieldVO m_selDoc;
	private final FieldVO m_selTable;
	private final FieldVO m_selRecord;
	private final FieldVO m_selPostingType;
	private final FieldVO m_selAcctDate;
	private final FieldVO m_selOrg;
	
	private final FieldVO m_selBdg;//Redmine 14936-19595     
	private final FieldVO m_displayMode;//Redmine 14936-19595
	
	private final FieldVO fVO_search;

	private final FieldVO m_displayQty;
	private final FieldVO m_displaySourceInfo;
	private final FieldVO m_displayDocumentInfo;
	private final FieldVO m_displayRepartition;     //#40658
	
	private final FieldVO[] m_sortBy = new FieldVO[AcctViewerData.s_numSortByFields];
	private final FieldVO[] m_groupBy = new FieldVO[AcctViewerData.s_numSortByFields];

	private final FieldVO m_repost;
	private final FieldVO m_forcePost;

	private final SearchComponentImpl m_cQuery;
	private final SearchComponentImpl m_cDisplay;
	private final SearchComponentImpl m_cDisplayMode;//Redmine 14936-19595
	private final String DISPLAY_MODE = "DisplayModeGlobal";//Redmine 1493619595
	private final String DISPLAY_REPARTITION 	= "DisplayRepartition";	//#40658 
	private final ReportComponentImpl m_cReport;
	private final SearchComponentImpl m_cRepost;

	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();

	protected final Ctx serverCtx;

	protected final WindowCtx windowCtx;

	protected final UWindowID m_uid;

	protected final int windowNO;

	//#39703 -  Extraction de la vue compte se mélange entre utilisateur
	protected static Queue<HashMap<String, RModel>> queue = new LinkedList<HashMap<String, RModel>>();
	/**
	 * @param windowNO
	 *            TODO
	 * @param serverCtx
	 *            TODO
	 * @param windowCtx
	 * @param uid
	 */
	public AcctViewerWindowImpl(int windowNO, Ctx serverCtx,
			WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		int AD_Table_ID = 0;
		try {
			AD_Table_ID = Integer.parseInt(windowCtx
					.getStringContext("AD_Table_ID"));
		} catch (NumberFormatException e) {
		}

		m_data = new AcctViewerData(serverCtx, windowNO, serverCtx
				.getAD_Client_ID(), AD_Table_ID);

		try {
			m_data.Record_ID = Integer.parseInt(windowCtx
					.getStringContext("Record_ID"));
		} catch (NumberFormatException e) {
		}

		m_selAcctSchema = new FieldVO(ACCT_SCHEMA, Msg.translate(serverCtx,
				ACCT_SCHEMA), DisplayTypeConstants.Table, true);
		m_selAcctSchema.listBoxVO = m_data.getAcctSchema();
		m_selAcctSchema.isImpactsValue = true;
		m_selAcctSchema.DefaultValue = windowCtx.getStringContext(ACCT_SCHEMA);
		if (m_selAcctSchema.DefaultValue == null
				&& m_selAcctSchema.listBoxVO.getOptions().size() > 0)
			m_selAcctSchema.DefaultValue = (m_selAcctSchema.listBoxVO
					.getOptions().get(0)).getID();
		//Redmine 25154
		windowCtx.put(m_selAcctSchema.ColumnName, m_selAcctSchema.DefaultValue);
		
		m_selDoc = new FieldVO(SELECT_DOCUMENT, Msg.translate(serverCtx,
				SELECT_DOCUMENT), DisplayTypeConstants.YesNo, true);
		if (windowCtx.getStringContext(SELECT_DOCUMENT) != null) {
			m_selDoc.DefaultValue = "Y".equals(windowCtx
					.getStringContext(SELECT_DOCUMENT)) ? "Y" : "N";
		} else if (m_data.AD_Table_ID != 0 && m_data.Record_ID != 0) {
			m_selDoc.DefaultValue = "Y";
		}
		m_selDoc.isImpactsValue = true;
		//#25154 WEB IMPUTATION TROP LONGUE
		windowCtx.put(m_selDoc.ColumnName, m_selDoc.DefaultValue);
		
		m_selTable = new FieldVO(DOC_TYPE, Msg.translate(serverCtx, DOC_TYPE),
				DisplayTypeConstants.Table, true);
		m_selTable.listBoxVO = m_data.getTable(serverCtx);
		if (windowCtx.getStringContext(DOC_TYPE) != null
				&& windowCtx.getStringContext(DOC_TYPE).length() > 0)
			m_selTable.DefaultValue = windowCtx.getStringContext(DOC_TYPE);
		else
			m_selTable.DefaultValue = m_selTable.listBoxVO.getDefaultKey();
		if ((m_selTable.DefaultValue == null || m_selTable.DefaultValue
				.length() == 0)
				&& m_selTable.listBoxVO.getOptions().size() > 0)
			m_selTable.DefaultValue = (m_selTable.listBoxVO.getOptions().get(0))
					.getID();
		m_selTable.isImpactsValue = true;
		//#25154 WEB IMPUTATION TROP LONGUE
		windowCtx.put(m_selTable.ColumnName, m_selTable.DefaultValue);
		
		String tableName = m_selTable.DefaultValue;
		String columnName = tableName + "_ID";

		m_selRecord = new FieldVO(columnName, Msg.translate(serverCtx,
				columnName), DisplayTypeConstants.Search, true);
		m_selRecord.DefaultValue = Integer.toString(m_data.Record_ID);
		//#25154 WEB IMPUTATION TROP LONGUE
		windowCtx.put(m_selRecord.ColumnName, m_selRecord.DefaultValue);
		
		m_selPostingType = new FieldVO(POSTING_TYPE, Msg.translate(serverCtx,
				POSTING_TYPE), DisplayTypeConstants.Table);
		m_selPostingType.listBoxVO = m_data.getPostingType();

		m_selAcctDate = new FieldVO(ACCT_DATE, Msg.translate(serverCtx,
				ACCT_DATE), DisplayTypeConstants.Date);
		m_selAcctDate.isRange = true;

		m_selOrg = new FieldVO(ORG, Msg.translate(serverCtx, ORG),
				DisplayTypeConstants.Table);
		m_selOrg.listBoxVO = m_data.getOrg();

		m_selBdg= new FieldVO( "GL_Budget_ID", Msg.translate( serverCtx, "GL_Budget_ID" ), DisplayTypeConstants.Table );//Redmine 14936-19595
		m_selBdg.listBoxVO=m_data.getBdg();//Redmine 14936-19595
		m_displayQty = new FieldVO(DISPLAY_QTY, Msg.translate(serverCtx,
				DISPLAY_QTY), DisplayTypeConstants.YesNo, true);
		m_displaySourceInfo = new FieldVO(DISPLAY_SOURCE_INFO, Msg.translate(
				serverCtx, DISPLAY_SOURCE_INFO), DisplayTypeConstants.YesNo,
				true);
		m_displayDocumentInfo = new FieldVO(DISPLAY_DOCUMENT_INFO, Msg
				.translate(serverCtx, DISPLAY_DOCUMENT_INFO),
				DisplayTypeConstants.YesNo, true);
		
		// #40658
		m_displayRepartition = new FieldVO(DISPLAY_REPARTITION, Msg.translate(
				serverCtx, DISPLAY_REPARTITION), DisplayTypeConstants.YesNo,
				true);    
		
        m_displayMode = new FieldVO( DISPLAY_MODE, Msg.translate( serverCtx, DISPLAY_MODE ), DisplayTypeConstants.YesNo, true );
        	
		for (int i = 0; i < AcctViewerData.s_numSortByFields; ++i) {
			m_sortBy[i] = new FieldVO(SORT_BY + i, Msg.getMsg(serverCtx,
					SORT_BY)
					+ " " + (i + 1), DisplayTypeConstants.List);
			m_groupBy[i] = new FieldVO(GROUP_BY + i, Msg.getMsg(serverCtx,
					GROUP_BY)
					+ " " + (i + 1), DisplayTypeConstants.YesNo, true);
		}

		fVO_search = new FieldVO(GlobalMessageConstants.SEARCH, Msg.getMsg(
				serverCtx, GlobalMessageConstants.SEARCH),
				DisplayTypeConstants.Button);

		ArrayList<FieldVO> searchFieldVOs = getSearchFieldVOs(m_selAcctSchema.DefaultValue);
		m_cQuery = new SearchComponentImpl(searchFieldVOs
				.toArray(new FieldVO[searchFieldVOs.size()]));
		
		components.add(m_cQuery);

		ArrayList<FieldVO> displayFieldVOs = getDisplayFieldVOs();
		m_cDisplay = new SearchComponentImpl(displayFieldVOs
				.toArray(new FieldVO[displayFieldVOs.size()]));
		components.add(m_cDisplay);

		m_cDisplayMode = new SearchComponentImpl();//Redmine 14936-19595
		m_cDisplayMode.addFieldVO(m_displayMode);//Redmine 14936-19595
		components.add(m_cDisplayMode);//Redmine 14936-19595

		// updates m_data using windowCtx
		boolean ready = actionQuery(windowCtx);
		RModel model = null;
		if (ready)
			model = m_data.query(serverCtx);
		else
			model = m_data.getRModel(serverCtx);

		//#39703 -  Extraction de la vue compte se mélange entre utilisateur
		String hashKey = serverCtx.get("#AD_Session_ID");//GET AD_Session_ID from Context
		HashMap<String, RModel> mapModel = new HashMap<String, RModel>();
		
		//Associate RModel with current AD_SEDSION_ID
		mapModel.put(hashKey, model);
		
		//Limiting the size of the Queue to 10
		if (queue.size() >= 10  ){
			queue.remove();
		}
		//add the HashMap to the queue
		queue.add(mapModel);
		
		m_cReport = new ReportComponentImpl(model);
		if(m_data.Record_ID != 0) {
			m_cReport.getComponentVO().isAutoRunSearch = true;
		}		
		components.add(m_cReport);

		
		m_repost = new FieldVO(REPOST, Msg.getMsg(serverCtx, REPOST),
				DisplayTypeConstants.Button);
		m_forcePost = new FieldVO(FORCEPOST, Msg.getMsg(serverCtx, FORCEPOST),
				DisplayTypeConstants.YesNo, true);
		m_forcePost.IsDisplayed = "Y".equals(serverCtx
				.getContext("#ShowAdvanced"));
		m_cRepost = new SearchComponentImpl(new FieldVO[] { m_repost,
				m_forcePost });

		// only allow repost if selecting a specific document
		if ("Y".equals(m_selDoc.DefaultValue)) {
			components.add(m_cRepost);
		}

	}

	private ArrayList<FieldVO> getSearchFieldVOs(String acctSchema) {
		int acctSchemaKey = -1;
		try {
			acctSchemaKey = Integer.parseInt(acctSchema);
		} catch (NumberFormatException e) {
		}
		log.fine(ACCT_SCHEMA + "=" + acctSchemaKey);

		ArrayList<FieldVO> fieldVOs = new ArrayList<FieldVO>();
		fieldVOs.add(m_selAcctSchema);
		fieldVOs.add(m_selDoc);

		if ("Y".equals(m_selDoc.DefaultValue)) {
			fieldVOs.add(m_selTable);
			fieldVOs.add(m_selRecord);
		}
		fieldVOs.add(m_selPostingType);

		if (!"Y".equals(m_selDoc.DefaultValue)) {
			fieldVOs.add(m_selAcctDate);
			fieldVOs.add(m_selOrg);
			fieldVOs.add( m_selBdg );//Redmine14936-19595
		}

		if (acctSchemaKey != -1) {
			m_data.C_AcctSchema_ID = acctSchemaKey;
			m_data.ASchema = MAcctSchema.get(serverCtx, m_data.C_AcctSchema_ID);
			log.info("" + m_data.ASchema);

			ArrayList<ArrayList<ValueNamePair>> pairsArray = new ArrayList<ArrayList<ValueNamePair>>();
			for (int i = 0; i < AcctViewerData.s_numSortByFields; ++i) {
				ArrayList<ValueNamePair> pairs = new ArrayList<ValueNamePair>();
				pairs.add(new ValueNamePair("", ""));
				pairs.add(new ValueNamePair("DateAcct", Msg.translate(
						serverCtx, "DateAcct")));
				pairs.add(new ValueNamePair("DateTrx", Msg.translate(serverCtx,
						"DateTrx")));
				pairs.add(new ValueNamePair("C_Period_ID", Msg.translate(
						serverCtx, "C_Period_ID")));
				pairsArray.add(pairs);
			}

			if (m_data.ASchema != null) {
				MAcctSchemaElement[] elements = m_data.ASchema
						.getAcctSchemaElements();
				for (MAcctSchemaElement ase : elements) {
					String columnName = ase.getColumnName();
					String displayColumnName = ase.getDisplayColumnName();

					// Add Sort Option
					for (ArrayList<ValueNamePair> pairs : pairsArray) {
						pairs.add(new ValueNamePair(columnName, Msg.translate(
								serverCtx, displayColumnName)));
					}

					if (!"Y".equals(m_selDoc.DefaultValue)) {

						if (ase
								.isElementType(X_C_AcctSchema_Element.ELEMENTTYPE_Account)) {
							FieldVO fVO = getLookupFieldVo(serverCtx, windowCtx, windowNO, "Account_ID", "Account_ID",  false);//new FieldVO( "C_ElementValue_ID", Msg.translate( serverCtx, "Account_ID" ), DisplayTypeConstants.Search );//Redmine #17784
							fVO.ValidationCode = "C_Element_ID="
									+ ase.getC_Element_ID();
							fVO.ValidationCode += " AND IsSummary = 'N'"; //ZCOM999
							fVO.isRange=true; //Redmine 14936-19595:Intervalle de comptes 
							fieldVOs.add(fVO);

							
						} else if (ase
								.isElementType(X_C_AcctSchema_Element.ELEMENTTYPE_UserList1)) {
							FieldVO fVO = getLookupFieldVo(serverCtx, windowCtx, windowNO, "User1_ID", "User1_ID",  false);//new FieldVO( "C_ElementValue_ID", Msg.translate( serverCtx, "User1_ID" ), DisplayTypeConstants.Search );//Redmine #17784
							fVO.ValidationCode = "C_Element_ID="
									+ ase.getC_Element_ID();
							fVO.ValidationCode += " AND IsSummary = 'N'"; //ZCOM999
							fieldVOs.add(fVO);
						} else if (ase
								.isElementType(X_C_AcctSchema_Element.ELEMENTTYPE_UserList2)) {
							FieldVO fVO = getLookupFieldVo(serverCtx, windowCtx, windowNO, "User2_ID", "User2_ID",  false);//new FieldVO( "C_ElementValue_ID", Msg.translate( serverCtx, "User2_ID" ), DisplayTypeConstants.Search );//Redmine #17784
							fVO.ValidationCode = "C_Element_ID="
									+ ase.getC_Element_ID();
							fVO.ValidationCode += " AND IsSummary = 'N'"; //ZCOM999
							fieldVOs.add(fVO);
						}else if (ase
								.isElementType(X_C_AcctSchema_Element.ELEMENTTYPE_UserElement1) ||
								ase.isElementType(X_C_AcctSchema_Element.ELEMENTTYPE_UserElement2)) {
							String lookupColumn = MColumn.getColumnName(Env.getCtx(), ase.getAD_Column_ID());
							FieldVO fVO = new FieldVO(lookupColumn, Msg
									.translate(serverCtx, lookupColumn),
									DisplayTypeConstants.Search);
							fVO.ValidationCode = "";
							fieldVOs.add(fVO);
						}
						// Additional Elements
						else if (!ase
								.isElementType(X_C_AcctSchema_Element.ELEMENTTYPE_Organization)
								&& !ase
										.isElementType(X_C_AcctSchema_Element.ELEMENTTYPE_Account)) {
							fieldVOs.add(new FieldVO(columnName, Msg.translate(
									serverCtx, columnName),
									DisplayTypeConstants.Search));
						}
					}
				}
			}

			for (int i = 0; i < AcctViewerData.s_numSortByFields; ++i) {
				m_sortBy[i].listBoxVO = new ListBoxVO(pairsArray.get(i)
						.toArray(new ValueNamePair[pairsArray.size()]), null);
			}
		}

		fieldVOs.add(fVO_search);

		return fieldVOs;
	}

	private ArrayList<FieldVO> getDisplayFieldVOs() {
		ArrayList<FieldVO> fieldVOs = new ArrayList<FieldVO>();
		fieldVOs.add(m_displayQty);
		fieldVOs.add(m_displaySourceInfo);
		fieldVOs.add(m_displayDocumentInfo);
		fieldVOs.add(m_displayRepartition);  //#40658

		// labels only
		fieldVOs.add(new FieldVO(SORT_BY, Msg.getMsg(serverCtx, SORT_BY),
				DisplayTypeConstants.Label));
		fieldVOs.add(new FieldVO(GROUP_BY, Msg.getMsg(serverCtx, GROUP_BY),
				DisplayTypeConstants.Label));

		for (int i = 0; i < AcctViewerData.s_numSortByFields; ++i) {
			fieldVOs.add(m_sortBy[i]);
			fieldVOs.add(m_groupBy[i]);
		}

		return fieldVOs;
	}

	@Override
	public ChangeVO processCallback(String sender) {
		if (sender.equals(m_selAcctSchema.ColumnName)
				|| sender.equals(m_selDoc.ColumnName)
				|| sender.equals(m_selTable.ColumnName)) {
			m_cQuery.getComponentVO().fieldVOs = getSearchFieldVOs(windowCtx
					.get(m_selAcctSchema.ColumnName));

			ChangeVO chVO = new ChangeVO();
			chVO.updateWindowVO = true;
			log.fine("New ChangeVO");
			return chVO;
		} else if (sender.equals(m_repost.ColumnName)) {
			ChangeVO changeVO = new ChangeVO();
			boolean force = ((Boolean) m_cRepost.getFieldValue(windowCtx,
					m_forcePost.ColumnName)).booleanValue();
			MAcctSchema[] ass = MAcctSchema.getClientAcctSchema(Env.getCtx(), m_data.AD_Client_ID);
			String error = Doc.postImmediate(ass, m_data.AD_Table_ID, m_data.Record_ID, 
					force,null);
			
			if (error != null)
				changeVO.addError(Msg.getMsg(serverCtx, "PostingError-N")
						+ ": " + error);
			changeVO.commands = new String[] { fVO_search.ColumnName };
			return changeVO;
		} else {
			return null;
		}
	}

	/**
	 * 
	 * @param windowCtx
	 * @return Whether m_data is ready to produce data
	 */
	private boolean actionQuery( WindowCtx windowCtx )
	{
		log.info( "windowCtx: " + windowCtx.getStringMap() );
		
		// Parameter Info
		StringBuffer para = new StringBuffer();
		// Reset Selection Data
		m_data.C_AcctSchema_ID = 0;
		m_data.AD_Org_ID = 0;

		// Save Selection Choices
		
		Object acctSchema_ID = m_cQuery.getFieldValue( windowCtx, m_selAcctSchema.ColumnName );
		if( acctSchema_ID instanceof BigDecimal )
			m_data.C_AcctSchema_ID = ((BigDecimal) acctSchema_ID).intValue();
		else if( acctSchema_ID != null )
			System.err.println( "acctSchema_ID: " + acctSchema_ID + " (" + acctSchema_ID.getClass().getName() + ")" );
		para.append("C_AcctSchema_ID=").append(m_data.C_AcctSchema_ID);
		//

		m_data.PostingType = (String) m_cQuery.getFieldValue( windowCtx, m_selPostingType.ColumnName );
		para.append(", PostingType=").append(m_data.PostingType);

		// Document
		m_data.documentQuery = (Boolean) m_cQuery.getFieldValue( windowCtx, m_selDoc.ColumnName );

		if (m_data.Record_ID > 0) m_data.documentQuery = true; //ZCOM

		para.append( ", DocumentQuery=" ).append( m_data.documentQuery );
		if( m_data.documentQuery )
		{
			try
			{				
				if (m_data.AD_Table_ID <= 0) //ZCOM
				m_data.AD_Table_ID = MTable.get( serverCtx, (String) m_cQuery.getFieldValue( windowCtx, m_selTable.ColumnName ) ).getAD_Table_ID();
			}
			catch( Exception e )
			{
				m_data.AD_Table_ID = 0;
			}
			try
			{
				if (m_data.Record_ID <= 0) //ZCOM
				m_data.Record_ID = ((BigDecimal)  m_cQuery.getFieldValue( windowCtx, m_selRecord.ColumnName )).intValue();
			}
			catch( Exception e )
			{
				m_data.Record_ID = 0;
			}
			para.append( ", AD_Table_ID=" ).append( m_data.AD_Table_ID ).append( ", Record_ID=" ).append( m_data.Record_ID );
			if( m_data.AD_Table_ID == 0 || m_data.Record_ID == 0 )
			{
				log.info( para.toString() );
				return false;
			}
		}
		else
		{
			m_data.DateFrom = (Timestamp)  m_cQuery.getFieldValue( windowCtx, m_selAcctDate.ColumnName );
			para.append(", DateFrom=").append(m_data.DateFrom);
			m_data.DateTo = (Timestamp) m_cQuery.getFieldToValue( windowCtx, m_selAcctDate.ColumnName );
			para.append(", DateTo=").append(m_data.DateTo);
			Object org_id =  m_cQuery.getFieldValue( windowCtx, m_selOrg.ColumnName );
			if( org_id instanceof BigDecimal )
				m_data.AD_Org_ID = ((BigDecimal) org_id).intValue();
			else if( org_id != null )
				System.err.println( "org_id: " + org_id + " (" + org_id.getClass().getName() + ")" );
			//#25154 WEB IMPUTATION TROP LONGUE
			if (m_data.AD_Org_ID != 0)
				para.append(", AD_Org_ID=").append(m_data.AD_Org_ID);
            //Redmine14936-19595
            Object bdg_id =  m_cQuery.getFieldValue( windowCtx, m_selBdg.ColumnName );
			if( bdg_id instanceof BigDecimal )
				m_data.GL_Budget_ID = ((BigDecimal) bdg_id).intValue();
			else if( bdg_id != null )
				System.err.println( "bdg_id: " + bdg_id + " (" + bdg_id.getClass().getName() + ")" );
			para.append(", GL_Budget_ID=").append(m_data.GL_Budget_ID);
           //Redmine14936-19595

			if( m_data.ASchema != null )
			{
				MAcctSchemaElement[] elements = m_data.ASchema.getAcctSchemaElements();
				for (MAcctSchemaElement ase : elements) {
					String columnName = ase.getColumnName();

					if( windowCtx.getStringContext( columnName ) != null )
					{
						if(columnName.equalsIgnoreCase("Account_ID"))
						{
                            //Redmine 14936-19595   						
							if(m_cQuery.getFieldValue( windowCtx, columnName)!=null)
							//m_data.whereInfo.put( columnName+"_From", columnName + ">=" + m_cQuery.getFieldValue( windowCtx, columnName)); //REDMINE 18565 
							m_data.whereInfo.put( columnName+"_From"," ev.value >=(SELECT C_ElementValue.Value FROM C_ElementValue WHERE "+m_cQuery.getFieldValue( windowCtx, columnName)+" =C_ElementValue.C_ElementValue_ID)");					 
							if(m_cQuery.getFieldToValue( windowCtx, columnName)!=null)
							//m_data.whereInfo.put( columnName+"_To"  , columnName + "<=" + m_cQuery.getFieldToValue( windowCtx, columnName));//REDMINE 18565  
							m_data.whereInfo.put( columnName+"_To"," ev.value <=(SELECT C_ElementValue.Value FROM C_ElementValue WHERE "+m_cQuery.getFieldToValue( windowCtx, columnName)+" =C_ElementValue.C_ElementValue_ID)");					 			
						}
						else
						   m_data.whereInfo.put( columnName, columnName + "=" + windowCtx.getStringContext( columnName ) );
					}
					//Redmine #17784
//					// Added by srajamani for Request no:1002055
//					else if ((windowCtx.getStringContext("C_ElementValue_ID")!=null) && (columnName.equals("Account_ID"))) 
//					{
//						m_data.whereInfo.put( "Account_ID", "Account_ID=" + windowCtx.getStringContext("C_ElementValue_ID") );
//
//					}
				}
			}
			//#25154 WEB IMPUTATION TROP LONGUE
			if (m_data.whereInfo.size() == 0 && m_data.DateFrom == null && m_data.DateTo == null && m_data.PostingType == null && m_data.AD_Org_ID == 0)
				// Nothing selected => do not query (perf issue)
				return false;
			else
			{
			
			//
			Iterator<String> it = m_data.whereInfo.values().iterator();
			while (it.hasNext())
				para.append(", ").append(it.next());
			}
		}
		log.info( para.toString() );
		
		// Save Display Choices
		m_data.displayQty = "Y".equals( windowCtx.getStringContext( DISPLAY_QTY ) );
		para.append(" - Display Qty=").append(m_data.displayQty);
		m_data.displaySourceAmt = "Y".equals( windowCtx.getStringContext( DISPLAY_SOURCE_INFO ) );
		para.append(", Source=").append(m_data.displaySourceAmt);
		m_data.displayDocumentInfo = "Y".equals( windowCtx.getStringContext( DISPLAY_DOCUMENT_INFO ) );
		para.append(", Doc=").append(m_data.displayDocumentInfo);
	    //Redmine 14936-19595: Si mode d'affichge global alors nafficher que les totaux et les sous totaux 
		m_data.displayMode = "Y".equals(m_cQuery.getFieldValue( windowCtx,m_displayMode.ColumnName));
		m_data.displayRepartition = "Y".equals( windowCtx.getStringContext(DISPLAY_REPARTITION));   // #40605 
		para.append(", Display Repartition=").append(m_data.displayRepartition);  
		
		para.append(" - Sorting: ");
		boolean first = true;
		for( int i = 0; i < AcctViewerData.s_numSortByFields; ++i )
		{
			m_data.sortBy[i] = windowCtx.getStringContext( SORT_BY + i );
			m_data.group[i] = "Y".equals( windowCtx.getStringContext( GROUP_BY + i ));
			if( !first )
				para.append( ", " );
			first = false;

			para.append(m_data.sortBy[i]).append("/").append(m_data.group[i]);
		}
		
		log.config(para.toString());

		return true;
}// actionQuery

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public Box getLayout() {
		VerticalBox vbox = new VerticalBox();
		HorizontalBox topbox = new HorizontalBox();
		topbox.add(new ElementBox(0));
		topbox.add(new ElementBox(1));
		vbox.add(topbox);
		for (int i = 2; i < components.size(); ++i)
			vbox.add(new ElementBox(i));
		return vbox;
	}
	
	//Redmine #17784
	private FieldVO getLookupFieldVo(Ctx serverCtx, WindowCtx windowCtx, int windowNo, String columnName, String columnAlias, Boolean isMandatory) {
		
		MColumn column = MColumn.get(serverCtx, DB.getSQLValue(null, "select ad_column.ad_column_id from ad_column inner join ad_table on (ad_column.ad_table_id = ad_table.ad_table_id) where columnname = ? and tablename = 'Fact_Acct' " , columnName));
		
		if(column.getAD_Column_ID() == 0)
			column = MColumn.get(serverCtx, DB.getSQLValue(null, "select ad_column.ad_column_id from ad_column inner join ad_table on (ad_column.ad_table_id = ad_table.ad_table_id) where columnname = ? and tablename = 'Fact_Acct' " , columnAlias));
		
		
		MLookup fieldToLookup = MLookupFactory.get(serverCtx, windowNo, column.getAD_Column_ID(), DisplayTypeConstants.Table, Language.getLoginLanguage(), column.getColumnName(), 
				column.getAD_Reference_Value_ID(), false, null);
		
		FieldVO fieldVo = new FieldVO( columnName, Msg.translate( serverCtx, columnAlias ), DisplayTypeConstants.Search );
		fieldVo.IsMandatoryUI = isMandatory;
		fieldVo.AD_Reference_Value_ID = column.getAD_Reference_Value_ID();
		fieldVo.AD_Column_ID = column.getAD_Column_ID();
		fieldVo.ColumnName = column.getColumnName();
		fieldVo.AD_Reference_ID = DisplayTypeConstants.Search;
		
		fieldVo.listBoxVO = Util.convertLookupToVO( fieldToLookup, fieldVo.IsMandatoryUI, "" );
		
		return fieldVo;
	}

	//#39703 -  Extraction de la vue compte se mélange entre utilisateur
	public static RModel getRModel(String key) {
		//return the Model using the Key Ad_SESSION_ID
		HashMap<String, RModel> hashmap;
	    ListIterator<HashMap<String, RModel>> litr = ((LinkedList<HashMap<String, RModel>>) queue).listIterator(queue.size());
	    
	    //Iterating the list in backwards to get the last desired HashMap
	    while(litr.hasPrevious()) {
	          hashmap = litr.previous();
	         if(hashmap.containsKey(key))
					return hashmap.get(key);
		}
	    log.severe("Account view lines not loaded");
	    return null;
	}
}
