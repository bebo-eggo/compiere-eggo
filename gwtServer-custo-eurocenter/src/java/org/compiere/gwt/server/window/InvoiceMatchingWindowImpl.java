/**
 * 
 */
package org.compiere.gwt.server.window;

import static org.compiere.common.constants.GlobalMessageConstants.*;
import static org.compiere.common.constants.InvoiceMatchingConstants.*;

import java.math.*;
import java.sql.*;
import java.util.*;

import org.compiere.apps.form.*;
import org.compiere.common.*;
import org.compiere.common.constants.*;
import org.compiere.db.QueryUtil;
import org.compiere.gwt.server.component.*;
import org.compiere.gwt.server.viewhelper.*;
import org.compiere.intf.*;
import org.compiere.model.MInOutLine;
import org.compiere.util.*;
import org.compiere.vos.*;
import org.compiere.vos.WindowVO.*;

/**
 * @author gwu
 * 
 */
public class InvoiceMatchingWindowImpl extends WindowImpl 
{
	/** Logger */
	private static CLogger log = CLogger.getCLogger( InvoiceMatchingWindowImpl.class );

	final ValueNamePair m_match_invoice;
	final ValueNamePair m_match_order;
	final ValueNamePair m_match_receipt;

	abstract class MatchInfoComponentImpl extends InfoComponentImpl
	{

		/*
		 * (non-Javadoc)
		 * 
		 * @see org.compiere.gwt.server.component.InfoComponentImpl#processQueryVO(org.compiere.common.QueryVO,
		 *      java.util.HashMap)
		 */
		@Override
		protected QueryVO processQueryVO( QueryVO p_queryVO, WindowCtx windowCtx )
		{
			QueryVO b = TableComponentImpl.buildQueryVO( windowCtx, componentVO.fieldVOs );
			TableComponentImpl.convertColumnNameToSelectClause( p_queryVO, componentVO.fieldVOs );

			Timestamp v_dateFrom = (Timestamp) c_search.getFieldValue( windowCtx, DATE_FROM );
			Timestamp v_dateTo = (Timestamp) c_search.getFieldValue( windowCtx, DATE_TO );
			if( v_dateFrom != null )
				b.restrictions.add( new QueryRestrictionVO( getDateColumn(), QueryRestrictionVO.GREATER_EQUAL, windowCtx
						.get( DATE_FROM ), null, null, c_search.getComponentVO().getFieldVO( DATE_FROM ).displayType ) );
			if( v_dateTo != null )
				b.restrictions.add( new QueryRestrictionVO( getDateColumn(), QueryRestrictionVO.LESS_EQUAL, windowCtx
						.get( DATE_TO ), null, null, c_search.getComponentVO().getFieldVO( DATE_TO ).displayType ) );

			Boolean isRet = (Boolean)c_search.getFieldValue( windowCtx, ISRETURNTRX );
			if(isRet.booleanValue())
				b.restrictions.add( new QueryRestrictionVO( "hdr.ISRETURNTRX", QueryRestrictionVO.EQUAL, "Y", 
						null, null, c_search.getComponentVO().getFieldVO(ISRETURNTRX).displayType ) );
			Boolean isRec = (Boolean)c_search.getFieldValue( windowCtx, "IsReconciled");
			//log.warning(""+isRec);
			String xxx = getLineIDColumn();
			log.warning(""+xxx);
			if( xxx.equals("M_InOutLine_ID") ){
				b.restrictions.add( new QueryRestrictionVO( "lin.IsReconciled", QueryRestrictionVO.EQUAL, isRec?"Y":"N", 
					null, null,DisplayTypeConstants.YesNo) );
			}

//			BigDecimal org_id = (BigDecimal)c_search.getFieldValue( windowCtx, "AD_Org_ID");
//			if(org_id!=null && org_id.intValue() > 0)
//			{
//				b.restrictions.add( new QueryRestrictionVO( new QueryRestrictionVO( "hdr.AD_Org_ID", QueryRestrictionVO.EQUAL, ""+org_id, 
//						null, null, c_search.getComponentVO().getFieldVO(ISRETURNTRX).displayType ) );
//				log.warning(""+org_id);
//			}
			b.addRestrictions( p_queryVO );
			return b;
		}

		public MatchInfoComponentImpl( Ctx serverCtx, int AD_InfoWindow_ID )
		{
			super( serverCtx, AD_InfoWindow_ID, true, false, false );
		}

		public abstract String getQtyColumn();

		public abstract String getLineIDColumn();

		public abstract String getDateColumn();

		String getMatchedQtyColumn()
		{
			return "QtyMatched";
		}

	}

	private final MatchInfoComponentImpl[] m_matchInfoComp = new MatchInfoComponentImpl[3];
	private final SearchComponentImpl c_search;
	private final SearchComponentImpl c_match;
	private final SearchComponentImpl c_process;

	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();

	protected final Ctx serverCtx;

	protected final WindowCtx windowCtx;

	protected final UWindowID m_uid;

	protected final int windowNO;

	/**
	 * @param windowNO TODO
	 * @param serverCtx TODO
	 * @param serverCtx
	 * @param U_Window_ID
	 */
	public InvoiceMatchingWindowImpl( int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		m_match_invoice = new ValueNamePair( MATCH_OPTIONS[I_INVOICE], Msg.getElement( serverCtx, "C_Invoice_ID", false ) );
		m_match_order = new ValueNamePair( MATCH_OPTIONS[I_ORDER], Msg.getElement( serverCtx, "C_Order_ID", false ) );
		m_match_receipt = new ValueNamePair( MATCH_OPTIONS[I_RECEIPT], Msg.getElement( serverCtx, "M_InOut_ID", false ) );
		
		ValueNamePair[] matchMode = new ValueNamePair[] { new ValueNamePair( MATCH_UNMATCHED, Msg.translate( serverCtx, "NotMatched" ) ),
				new ValueNamePair( MATCH_MATCHED, Msg.translate( serverCtx, "Matched" ) ) };

		c_search = new SearchComponentImpl( );
		FieldVO f_MatchFrom = new FieldVO(MATCH_FROM, Msg.translate( serverCtx, "MatchFrom" ), DisplayTypeConstants.List);
		f_MatchFrom.IsMandatoryUI = true;
		c_search.addFieldVO( f_MatchFrom );
		FieldVO f_MatchTo = new FieldVO(MATCH_TO, Msg.translate( serverCtx, "MatchTo" ), DisplayTypeConstants.List);
		f_MatchTo.IsMandatoryUI = true;
		c_search.addFieldVO( f_MatchTo );
		

		FieldVO f_matchMode = new FieldVO(MATCH_MODE, Msg.translate( serverCtx, "MatchMode" ), DisplayTypeConstants.List);
		f_matchMode.IsMandatoryUI = true;
		c_search.addFieldVO( f_matchMode );
		f_matchMode.listBoxVO = new ListBoxVO( matchMode, MATCH_UNMATCHED );

		FieldVO f_BPartner = new FieldVO( BPARTNER, Msg.translate( serverCtx, BPARTNER ), DisplayTypeConstants.Search, false );
		f_BPartner.listBoxVO = new ListBoxVO();
		f_BPartner.listBoxVO.KeyColumn = BPARTNER;
		f_BPartner.DefaultValue = windowCtx.getStringContext( BPARTNER );
		c_search.addFieldVO( f_BPartner );
		
		FieldVO f_DateFrom =  new FieldVO( DATE_FROM, Msg.translate( serverCtx, "DateFrom" ), DisplayTypeConstants.Date );
		f_DateFrom.DefaultValue = windowCtx.getStringContext( DATE_FROM );		
		c_search.addFieldVO( f_DateFrom );
		FieldVO f_DateTo =  new FieldVO( DATE_TO, Msg.translate( serverCtx, "DateTo" ), DisplayTypeConstants.Date );
		f_DateTo.DefaultValue = windowCtx.getStringContext( DATE_TO );
		c_search.addFieldVO( f_DateTo );
		
		FieldVO f_Product = new FieldVO( PRODUCT, Msg.translate( serverCtx, PRODUCT ), DisplayTypeConstants.Search, false );
		f_Product.listBoxVO = new ListBoxVO();
		f_Product.listBoxVO.KeyColumn = PRODUCT;
		f_Product.DefaultValue = windowCtx.getStringContext( PRODUCT );
		c_search.addFieldVO( f_Product );
		
//		FieldVO f_ORG = new FieldVO( "AD_Org_ID", "Magasin", DisplayTypeConstants.Search, false );
//		f_ORG.listBoxVO = new ListBoxVO();
//		f_ORG.listBoxVO.KeyColumn = "AD_Org_ID";
//		f_ORG.DefaultValue = windowCtx.getStringContext( "AD_Org_ID" );
//		c_search.addFieldVO( f_ORG );
		
		FieldVO f_Order = new FieldVO( "C_Order_ID", "N° OA", DisplayTypeConstants.Search, false );
		f_Order.listBoxVO = new ListBoxVO();
		f_Order.listBoxVO.KeyColumn = "C_Order_ID";
		f_Order.DefaultValue = windowCtx.getStringContext( "C_Order_ID" );
		c_search.addFieldVO( f_Order );
		
		FieldVO f_InOut = new FieldVO( "M_InOut_ID", "N° Réception", DisplayTypeConstants.Search, false );
		f_InOut.listBoxVO = new ListBoxVO();
		f_InOut.listBoxVO.KeyColumn = "M_InOut_ID";
		f_InOut.DefaultValue = windowCtx.getStringContext( "M_InOut_ID" );
		c_search.addFieldVO( f_InOut );
		
		FieldVO f_invoice = new FieldVO( "C_Invoice_ID", "N° Facture", DisplayTypeConstants.Search, false );
		f_invoice.listBoxVO = new ListBoxVO();
		f_invoice.listBoxVO.KeyColumn = "C_Invoice_ID";
		f_invoice.DefaultValue = windowCtx.getStringContext( "C_Invoice_ID" );
		c_search.addFieldVO( f_invoice );
		
		FieldVO f_IsReturnTrx = new FieldVO( ISRETURNTRX, Msg.translate( serverCtx, ISRETURNTRX ), DisplayTypeConstants.YesNo, false );
		f_IsReturnTrx.IsMandatoryUI = true;
		f_IsReturnTrx.DefaultValue = "N";		
		c_search.addFieldVO( f_IsReturnTrx );
		
		FieldVO f_IsReconciled = new FieldVO( "IsReconciled", "Réconcilié (Forcé)", DisplayTypeConstants.YesNo, false );
		f_IsReconciled.IsMandatoryUI = true;
		f_IsReconciled.DefaultValue = "N";		
		c_search.addFieldVO( f_IsReconciled );

		c_match = new SearchComponentImpl( );
		FieldVO fVO_SameBPartner = new FieldVO( SAME_BPARTNER, Msg.translate( serverCtx, "SameBPartner" ), DisplayTypeConstants.YesNo, true );
		fVO_SameBPartner.isImpactsValue = true;
		fVO_SameBPartner.DefaultValue = "Y";
		c_match.addFieldVO( fVO_SameBPartner );
		FieldVO fVO_SameProduct = new FieldVO( SAME_PRODUCT, Msg.translate( serverCtx, "SameProduct" ), DisplayTypeConstants.YesNo, true );
		fVO_SameProduct.isImpactsValue = true;
		fVO_SameProduct.DefaultValue = "Y";
		c_match.addFieldVO( fVO_SameProduct );
		
		FieldVO fVO_SameQty = new FieldVO( SAME_QUANTITY, Msg.translate( serverCtx, "SameQty" ), DisplayTypeConstants.YesNo, true );
		fVO_SameQty.isImpactsValue = true;
		c_match.addFieldVO( fVO_SameQty );
		
		FieldVO fVO_ForceRec = new FieldVO( "IsForceRec2", "Forcer la réconciliation", DisplayTypeConstants.Button, false );
		fVO_ForceRec.isImpactsValue = true;
		c_match.addFieldVO( fVO_ForceRec );

		m_matchInfoComp[I_INVOICE] = new MatchInfoComponentImpl( serverCtx, 112 )
		{
			@Override
			public String getComponentSQL( QueryVO queryVO, WindowCtx windowCtx, FieldVO fieldVO, String p_otherClause, boolean countOnly, boolean asc, int sortCol )
			{

				boolean matched = false;
				if( windowCtx.get( MATCH_MODE ).equals( MATCH_MATCHED ) )
					matched = true;

				String otherClause = "HAVING " + (matched ? "0" : "lin.QtyInvoiced") + "<>SUM(NVL(mi.Qty,0))";
				String SQL = super.getComponentSQL( queryVO, windowCtx, fieldVO, otherClause, countOnly, asc, sortCol );

				return SQL;
			}

			@Override
			public String getLineIDColumn()
			{
				return "C_InvoiceLine_ID";
			}

			@Override
			public String getQtyColumn()
			{
				return "QtyInvoiced";
			}

			@Override
			public String getDateColumn()
			{
				return "DateInvoiced";
			}

		};

		m_matchInfoComp[I_ORDER] = new MatchInfoComponentImpl( serverCtx, 113 )
		{
			@Override
			public String getComponentSQL( QueryVO queryVO, WindowCtx windowCtx, FieldVO fieldVO, String p_otherClause, boolean countOnly, boolean asc, int sortCol )
			{

				boolean matched = false;
				if( windowCtx.get( MATCH_MODE ).equals( MATCH_MATCHED ) )
					matched = true;

				String otherClause = "HAVING " + (matched ? "0" : "lin.QtyOrdered") + "<>SUM(COALESCE(mo.Qty,0))";
				String SQL = super.getComponentSQL( queryVO, windowCtx, fieldVO, otherClause, countOnly, asc, sortCol );

				return SQL;
			}

			@Override
			public String getLineIDColumn()
			{
				return "C_OrderLine_ID";
			}

			@Override
			public String getQtyColumn()
			{
				return "QtyOrdered";
			}

			@Override
			public String getDateColumn()
			{
				return "DateOrdered";
			}

		};

		m_matchInfoComp[I_RECEIPT] = new MatchInfoComponentImpl( serverCtx, 114 )
		{
			@Override
			protected QueryVO processQueryVO( QueryVO p_queryVO, WindowCtx windowCtx )
			{
				boolean matchOrder = false;
				if( windowCtx.get( MATCH_FROM ).equals( MATCH_OPTIONS[I_ORDER] )
						|| windowCtx.get( MATCH_TO ).equals( MATCH_OPTIONS[I_ORDER] ) )
					matchOrder = true;

				// this needs to be here as it is used by the SQL statement to
				// resolve the right join table
				windowCtx.put( "MatchToTable", matchOrder ? "M_MatchPO" : "M_MatchInv" );

				return super.processQueryVO( p_queryVO, windowCtx );
			}

			@Override
			public String getComponentSQL( QueryVO queryVO, WindowCtx windowCtx, FieldVO fieldVO, String p_otherClause, boolean countOnly, boolean asc, int sortCol )
			{

				boolean matched = false;
				if( windowCtx.get( MATCH_MODE ).equals( MATCH_MATCHED ) )
					matched = true;

				String otherClause = "HAVING " + (matched ? "0" : "lin.MovementQty") + "<>SUM(NVL(m.Qty,0))";
				String SQL = super.getComponentSQL( queryVO, windowCtx, fieldVO, otherClause, countOnly, asc, sortCol );

				return SQL;
			}

			@Override
			public String getLineIDColumn()
			{
				return "M_InOutLine_ID";
			}

			@Override
			public String getQtyColumn()
			{
				return "MovementQty";
			}

			@Override
			public String getDateColumn()
			{
				return "MovementDate";
			}
		};

		c_process = new SearchComponentImpl( );
		FieldVO f_ToBeMatched = new FieldVO(TOBEMATCHED, Msg.getMsg( serverCtx, TOBEMATCHED ), DisplayTypeConstants.Amount);
		f_ToBeMatched.IsReadOnly = true;
		FieldVO f_Matching = new FieldVO(MATCHING, Msg.getMsg( serverCtx, MATCHING ), DisplayTypeConstants.Amount);
		f_Matching.IsReadOnly = true;
		FieldVO f_Difference = new FieldVO(DIFFERENCE, Msg.getMsg( serverCtx, DIFFERENCE ), DisplayTypeConstants.Amount);
		f_Difference.IsReadOnly = true;
		
		c_process.addFieldVO( f_ToBeMatched );
		c_process.addFieldVO( f_Matching );
		c_process.addFieldVO( f_Difference );

		components.clear();
		components.add( c_search );

		ValueNamePair[] matchFromOptions = new ValueNamePair[] { m_match_invoice, m_match_order, m_match_receipt };

		ValueNamePair[][] m_matchToOptions = { { m_match_receipt }, // INVOICE
				{ m_match_receipt }, // ORDER
				{ m_match_invoice, m_match_order } // RECEIPT
		};

		FieldVO f_matchFrom = c_search.getComponentVO().getFieldVO( MATCH_FROM );
		FieldVO f_matchTo = c_search.getComponentVO().getFieldVO( MATCH_TO );

		f_matchFrom.listBoxVO = new ListBoxVO( matchFromOptions, MATCH_OPTIONS[MODE_INDEX[uid.getMode()][0]] );
		f_matchTo.listBoxVO = new ListBoxVO( m_matchToOptions[MODE_INDEX[uid.getMode()][0]],
				MATCH_OPTIONS[MODE_INDEX[uid.getMode()][1]] );

		components.add( m_matchInfoComp[MODE_INDEX[uid.getMode()][0]] );
		components.add( c_match );
		components.add( m_matchInfoComp[MODE_INDEX[uid.getMode()][1]] );

		components.add( c_process );
	}

	@Override
	public ChangeVO processCallback( String sender )
	{
		log.warning("Sender "+sender);
		ChangeVO changeVO = new ChangeVO();
		if(sender.equals("IsForceRec2"))
		{
			//log.warning("IsForceRec2");
			//setr
			SelectedTableModel xMatchedTable = getSelectedTableModel( windowCtx, TABNO_FROM, false );
			String I_LineFrom = ((MatchInfoComponentImpl) getComponents().get(TABNO_FROM)).getLineIDColumn();
			int from_Line_ID = ((BigDecimal) xMatchedTable.getValueAt( 0, I_LineFrom )).intValue();
			if( m_uid.getMode() == MODE_RECEIPT_TO_INVOICE || 
					m_uid.getMode() == MODE_RECEIPT_TO_ORDER )
			{
				int M_InOutLine_ID = from_Line_ID; // upper table
				DB.executeUpdate("UPDATE M_InOutLine set IsReconciled = 'Y' where M_InOutLine_ID = ?", M_InOutLine_ID, null);
					//MInOutLine mil = new MInOutLine(serverCtx, M_InOutLine_ID, null);
					//mil.set_ValueNoCheck("IsReconciled", true);
					//mil.save();
			}
				
		//	log.warning("Ok Ca fonctionne ! ");
			changeVO.commands = new String[] { SEARCH };
		}else
		if( sender.equals( PROCESS ) )
		{
			cmd_process( changeVO, serverCtx, windowCtx );
			changeVO.commands = new String[] { SEARCH };
		} else if (sender.equals(SELECT_ALL)
				&& windowCtx.getAsBoolean(TABNO_TO + "|" + Ctx.TABLE_SELECT_ALL)) {
			
			ComponentVO cToVO = m_matchInfoComp[MODE_INDEX[m_uid.getMode()][1]].getComponentVO();
			String qtyFromColumn = QTY_COLUMN[MODE_INDEX[m_uid.getMode()][0]];
			String qtyToColumn = QTY_COLUMN[MODE_INDEX[m_uid.getMode()][1]];
			String matchedQtyFromColumn = QTY_COLUMN[MODE_INDEX[m_uid.getMode()][0]+3];
			String matchedQtyToColumn = QTY_COLUMN[MODE_INDEX[m_uid.getMode()][1]+3];

			int qtyToColumnIndex = -1;
			for( int i = 0; i < cToVO.fieldVOs.size(); ++i ){
				if (qtyToColumn.equals(cToVO.fieldVOs.get(i).ColumnName)) {
					qtyToColumnIndex = i;
					break;
				}
			}
			int matchedQtyToColumnIndex = -1;
			for( int i = 0; i < cToVO.fieldVOs.size(); ++i ){
				if (matchedQtyToColumn.equals(cToVO.fieldVOs.get(i).ColumnName)) {
					matchedQtyToColumnIndex = i;
					break;
				}
			}
			

			SelectedTableModel xMatchedTable = getSelectedTableModel( windowCtx, TABNO_FROM, false );
			ArrayList<QueryRestrictionVO> restrictions = new ArrayList<QueryRestrictionVO>();
			if( windowCtx.getAsBoolean( SAME_BPARTNER ) )
			{
				int C_BPartner_ID = ((BigDecimal) xMatchedTable.getValueAt( 0, BPARTNER )).intValue();
				QueryRestrictionVO r = new QueryRestrictionVO( BPARTNER, QueryRestrictionVO.EQUAL, Integer
						.toString( C_BPartner_ID ), null, null, 0 );
				restrictions.add( r );
			}
			if( windowCtx.getAsBoolean( SAME_PRODUCT ) )
			{
				int M_Product_ID = ((BigDecimal) xMatchedTable.getValueAt( 0, PRODUCT )).intValue();
				QueryRestrictionVO r = new QueryRestrictionVO( PRODUCT, QueryRestrictionVO.EQUAL, Integer
						.toString( M_Product_ID ), null, null, 0 );
				restrictions.add( r );
			}
			if( windowCtx.getAsBoolean( SAME_QUANTITY ) )
			{
				BigDecimal qty = ((BigDecimal) xMatchedTable.getValueAt( 0, qtyFromColumn ));
				QueryRestrictionVO r = new QueryRestrictionVO( qtyToColumn, QueryRestrictionVO.EQUAL, qty.toString(), null,
						null, 0 );
				restrictions.add( r );
			}

			QueryVO queryVO = new QueryVO();
			queryVO.restrictions = restrictions;
			TableModel model = m_matchInfoComp[MODE_INDEX[m_uid.getMode()][1]].getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS, false, true, -1);
			BigDecimal total = BigDecimal.ZERO;
			for( int i = 0; i < model.rows(); ++i ){
				total = total.add(new BigDecimal(model.get(i,qtyToColumnIndex)));
				total = total.subtract(new BigDecimal(model.get(i,matchedQtyToColumnIndex)));
			}
			BigDecimal qtyMatchFrom = new BigDecimal(windowCtx.get(TOBEMATCHED));
			BigDecimal qtyDiff = qtyMatchFrom.subtract(total);
			
			changeVO.changedFields = new HashMap<String, String>();
			changeVO.changedFields.put(MATCHING, total.toString());
			changeVO.changedFields.put(DIFFERENCE, qtyDiff.toString());
		}

		return changeVO;
	}

	/**
	 * Process Button Pressed - Process Matching
	 */
	private void cmd_process( ChangeVO changeVO, Ctx ctx, WindowCtx windowCtx )
	{

		log.config( "" );
		boolean isForceRec2 = windowCtx.getAsBoolean("IsForceRec2");
		
		// Matched From
		SelectedTableModel xMatchedTable = getSelectedTableModel( windowCtx, TABNO_FROM, false );
		if( xMatchedTable.getRowCount() != 1 )
			return;

		String I_QTY = ((MatchInfoComponentImpl) getComponents().get(TABNO_FROM)).getQtyColumn();
		String I_MATCHED = ((MatchInfoComponentImpl) getComponents().get(TABNO_FROM)).getMatchedQtyColumn();
		int M_Product_ID = ((BigDecimal) xMatchedTable.getValueAt( 0, PRODUCT )).intValue();
		double matchedQty = ((BigDecimal) xMatchedTable.getValueAt( 0, I_MATCHED )).doubleValue();
		double toMatchQty = ((BigDecimal) xMatchedTable.getValueAt( 0, I_QTY )).doubleValue() -
						  	matchedQty;

		String I_LineFrom = ((MatchInfoComponentImpl) getComponents().get(TABNO_FROM)).getLineIDColumn();
		int from_Line_ID = ((BigDecimal) xMatchedTable.getValueAt( 0, I_LineFrom )).intValue();

		
		// Matched To		
		SelectedTableModel xMatchedToTable = null;
		if (windowCtx.getAsBoolean(TABNO_TO + "|" + Ctx.TABLE_SELECT_ALL)) {
			QueryVO queryVO = windowCtx.getQueryVO(TABNO_TO);
			TableModel model = ((MatchInfoComponentImpl) components.get(TABNO_TO)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS, false, true, -1);
			ArrayList<String[]> data = new ArrayList<String[]>();
			for (int i = 0; i < model.rows(); ++i) {
				data.add(model.getRow(i));
			}
			xMatchedToTable = new SelectedTableModel(components.get(TABNO_TO).getComponentVO().fieldVOs, data, false);
		} else {
			xMatchedToTable = getSelectedTableModel( windowCtx, TABNO_TO, false );
		}
		I_QTY = ((MatchInfoComponentImpl) getComponents().get(TABNO_TO)).getQtyColumn();
		I_MATCHED = ((MatchInfoComponentImpl) getComponents().get(TABNO_TO)).getMatchedQtyColumn();
		String I_LineTo = ((MatchInfoComponentImpl) getComponents().get(TABNO_TO)).getLineIDColumn();
		
		for( int row = 0; row < xMatchedToTable.getRowCount(); row++ )
		{
			// need to be the same product
			int to_M_Product_ID = ((BigDecimal) xMatchedToTable.getValueAt( row, PRODUCT )).intValue();
			if( M_Product_ID != to_M_Product_ID )
				continue;

			int to_Line_ID = ((BigDecimal) xMatchedToTable.getValueAt( row, I_LineTo )).intValue();

			// Qty
			double qty = 0.0;
			// If we are doing not matched, qty will be the total remaining to match.
			// If we are doing matched, qty will be the total matched, negative.
			if( c_search.getFieldValue( windowCtx, MATCH_MODE ).equals( MATCH_UNMATCHED ) )			
				qty = ((BigDecimal) xMatchedToTable.getValueAt( row, I_QTY )).doubleValue();  // doc
			qty -= ((BigDecimal) xMatchedToTable.getValueAt( row, I_MATCHED )).doubleValue(); // matched

			// If we are doing not matched, allow matching up to toMatchQty.
			// If we are doing matched, allow matching up to matchedQty in the negative direction.
			if( c_search.getFieldValue( windowCtx, MATCH_MODE ).equals( MATCH_UNMATCHED ) )			
			{
				if (qty > toMatchQty)
					qty = toMatchQty;
				toMatchQty -= qty;
			} else {
				if (Math.abs(qty) > matchedQty)
					qty = -matchedQty;
				matchedQty += qty;
			}
			
			// Invoice or PO
			boolean invoice = true;
			if( m_uid.getMode() == MODE_ORDER_TO_RECEIPT || 
					m_uid.getMode() == MODE_RECEIPT_TO_ORDER )
				invoice = false;

			// Get Shipment_ID
			int M_InOutLine_ID = 0;
			int Line_ID = 0;
			if( m_uid.getMode() == MODE_RECEIPT_TO_INVOICE || 
					m_uid.getMode() == MODE_RECEIPT_TO_ORDER )
			{
				M_InOutLine_ID = from_Line_ID; // upper table
				Line_ID = to_Line_ID;
			}
			else
			{
				M_InOutLine_ID = to_Line_ID; // lower table
				Line_ID = from_Line_ID;
			}

			// Create it
			VMatch.createMatchRecord( invoice, M_InOutLine_ID, Line_ID, new BigDecimal( qty ) );
		}
	} // cmd_process

	/**
	 * 
	 * @param windowCtx
	 * @param tabNo
	 * @param includeCheckBox if true, add a leading column of booleans to indicate the selection status
	 * @return
	 */
	private SelectedTableModel getSelectedTableModel( WindowCtx windowCtx, int tabNo, boolean includeCheckBox )
	{
		return new SelectedTableModel( getComponents().get(tabNo).getComponentVO().fieldVOs, windowCtx.getSelectedRows( tabNo ), includeCheckBox );
	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}
	
	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.INVOICE_MATCHING;
	}
	
}
