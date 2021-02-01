/**
 * 
 */
package org.compiere.gwt.server.window;

import static org.compiere.common.constants.CreateFromConstants.*;

import java.math.*;
import java.util.*;

import javax.swing.table.*;

import org.compiere.common.*;
import org.compiere.common.TableModel;
import org.compiere.common.constants.*;
import org.compiere.grid.*;
import org.compiere.gwt.server.component.*;
import org.compiere.intf.*;
import org.compiere.model.*;
import org.compiere.util.*;
import org.compiere.vos.*;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.util.CompiereException;

/**
 * @author gwu
 * 
 */
public class CreateFromShipmentWindowImpl extends WindowImpl
{

	private static CLogger s_log = CLogger.getCLogger( CreateFromShipmentWindowImpl.class );
	
	final SearchComponentImpl c_search;
	final VectorComponentImpl c_table;

	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();

	protected final Ctx serverCtx;

	protected final WindowCtx windowCtx;

	protected final UWindowID m_uid;

	protected final int windowNO;
	
	/**
	 * @param windowNO TODO
	 * @param serverCtx TODO
	 * @param windowCtx
	 * @param uid
	 */
	public CreateFromShipmentWindowImpl( int windowNO, final Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		boolean isReturnTrx = "Y".equals( windowCtx.get( IS_RETURN_TRX ) );
		int C_BPartner_ID = -1;
		int inout_ID = -1;
		try{ C_BPartner_ID = Integer.parseInt( windowCtx.get( BPARTNER ) ); } catch( Exception e ) {}
		try{ inout_ID =  windowCtx.getAsInt("M_InOut_ID"); } catch( Exception e ) {}
		MInOut mi = null;
		if(inout_ID!=0)
			mi = new MInOut(serverCtx, inout_ID, null);
		//Org_ID = mi.getAD_Org_ID();
		/*
		int Role_ID = windowCtx.getAsInt("#AD_Role_ID");
		
		int mls = DB.getSQLValue(null, "select Count(1) from M_Locator where M_WareHouse_ID = ? AND Z_LocatorType_ID = (Select MAX(Z_LocatorType_ID) from Z_LocatorType "
				+ "where Z_LocatorType.AD_Client_ID = M_Locator.AD_Client_ID and upper(Z_LocatorType.Description) = upper('Stock Central'))", mi.getM_Warehouse_ID());
		
		String Role_Exped_93 = DB.getSQLValueString(null, "Select MsgText from AD_Message where Value = 'Z_ROLE_ONLY_93_RECP' and 1 = ?", 1);
		
		if(Role_Exped_93.contains(""+Role_ID) && mls>0)
		{
			throw new CompiereException(Msg.getMsg(serverCtx.getCtx(windowNO), "Z_ROLE_ONLY_93_MSG"));
		}
		*/
		FieldVO f_BPartner = new FieldVO( BPARTNER, Msg.translate( serverCtx, BPARTNER ), DisplayTypeConstants.Search, true );
		f_BPartner.listBoxVO = new ListBoxVO();
		f_BPartner.listBoxVO.KeyColumn = BPARTNER;
		f_BPartner.isImpactsValue = true;
		
		
		FieldVO f_inout = new FieldVO( "M_InOut_ID", Msg.translate( serverCtx, "M_InOut_ID" ), DisplayTypeConstants.Search, true );
		f_inout.listBoxVO = new ListBoxVO();
		f_inout.listBoxVO.KeyColumn = "M_InOut_ID";
		f_inout.isImpactsValue = true;
		f_inout.IsDisplayed = false;
		f_inout.DefaultValue=""+inout_ID;
		
		boolean isProcure = false;
		if(mi!=null && !mi.isSOTrx() && mi.getC_Order_ID()!=0)
		{
			MOrder mo  = new MOrder(serverCtx, mi.getC_Order_ID(), null);
			MDocTypeInfo dti = MDocTypeInfo.get(serverCtx, mo.getC_DocType_ID(), null);
			isProcure = dti.isProcure();
		}
		
		FieldVO f_Locator = new FieldVO( LOCATOR, Msg.translate( serverCtx, LOCATOR ), DisplayTypeConstants.TableDir, true );
		MDefLocatorLookup locator = new MDefLocatorLookup( serverCtx, windowNO );
		int only_Warehouse_ID = windowCtx.getAsInt("M_Warehouse_ID");
		if (only_Warehouse_ID != 0) {
			locator.setOnly_Warehouse_ID(only_Warehouse_ID);
			locator.setOnly_DefLoc(true);
			locator.setOnly_Procure(isProcure);
			locator.refresh();
		}
		
		f_Locator.listBoxVO = new ListBoxVO( locator.getData( true, true, true, false ), null );
		if(isProcure && locator.getProcure()!=null)
			f_Locator.DefaultValue = locator.getProcure();
		else
			f_Locator.DefaultValue = locator.getDefault();
		s_log.warning("Defaut : "+f_Locator.DefaultValue);
		
		FieldVO f_isReturnTrx = new FieldVO( IS_RETURN_TRX, Msg.translate( serverCtx, IS_RETURN_TRX ), DisplayTypeConstants.YesNo, true );
		f_isReturnTrx.DefaultValue = isReturnTrx ? "Y" : "N";
		f_isReturnTrx.IsReadOnly = true;
		
		FieldVO f_PO = new FieldVO( ORDER, Msg.translate( Env.getAD_Language( serverCtx ), false, ORDER ), DisplayTypeConstants.Search, false );
		f_PO.isImpactsValue = true;
		FieldVO f_Invoice = new FieldVO( INVOICE, Msg.translate( Env.getAD_Language( serverCtx ), false, INVOICE ), DisplayTypeConstants.Search, false );
		f_Invoice.isImpactsValue = true;
		
		if( C_BPartner_ID > 0 )
		{
			f_BPartner.DefaultValue = Integer.toString( C_BPartner_ID );
			serverCtx.put("AD_OrgX_ID", mi==null?""+0:""+mi.getAD_Org_ID());
			ArrayList< NamePair > orders = VCreateFrom.getOrders( serverCtx, C_BPartner_ID, isReturnTrx, false );
			orders.add( 0, new KeyNamePair( -1, "" ) );
			f_PO.listBoxVO = new ListBoxVO( orders, null );
			f_BPartner.IsReadOnly = true;
			
			//Si C_Order_ID !=0 et Provenant de M_InOut et IssOtrx = N
			if(mi!=null && !mi.isSOTrx() && mi.getC_Order_ID()!=0)
			{
				f_PO.DefaultValue = Integer.toString( mi.getC_Order_ID());
				f_PO.IsReadOnly = true;
			}

			ArrayList< NamePair > invoices = VCreateFromShipment.getInvoices( serverCtx, C_BPartner_ID, isReturnTrx );
			invoices.add( 0, new KeyNamePair( -1, "" ) );
			f_Invoice.listBoxVO = new ListBoxVO( invoices, null );
		}

		FieldVO fVO_search = new FieldVO( SEARCH, Msg.getMsg( serverCtx, SEARCH ), DisplayTypeConstants.Button );
		fVO_search.WindowNo = windowNO;
		
		c_search = new SearchComponentImpl( new FieldVO[] { f_BPartner, f_Locator, f_isReturnTrx, f_PO, f_Invoice, fVO_search } );
		components.add( c_search );
		boolean autoSearch = false;
		//if(C_BPartner_ID>0 && mi!=null && !mi.isSOTrx() && mi.getC_Order_ID()!=0 && f_Locator.DefaultValue!=null)
		//	autoSearch = true;
		c_table = new VectorComponentImpl( "", ComponentVO.ComponentType.TABLE_MULTI, false, VCreateFrom.getTableFieldVOs( serverCtx ), null, 1, autoSearch )
		{

			@Override
			public TableModel getQueryResults( QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol )
			{
				s_log.finer( "Executing search" );

				int C_BPartner_ID = -1;
				try{ C_BPartner_ID = Integer.parseInt( windowCtx.get( BPARTNER ) ); } catch( Exception e ) {}
				
				int C_Order_ID = -1;
				try { C_Order_ID = Integer.parseInt( windowCtx.get( ORDER ) ); } catch( Exception e ) {}

				int C_Invoice_ID = -1;
				try { C_Invoice_ID = Integer.parseInt( windowCtx.get( INVOICE ) ); } catch( Exception e ) {}
 
				Vector< Vector< Object > > data = null;
				if( C_Order_ID > 0 )
					data = VCreateFrom.getOrderData( serverCtx, C_Order_ID,null,C_BPartner_ID, false, false, 0 );
				else if( C_Invoice_ID > 0 )
					data = VCreateFrom.getInvoiceData( serverCtx, C_Invoice_ID );

				setData( data );
				
				return super.getQueryResults( queryVO, windowImpl, windowCtx, fieldVO, startRow, rowCount, countOnly, asc, sortCol );
			}
			
		};
		components.add( c_table );

		
	
	}

	@Override
	public ChangeVO processCallback( String sender )
	{
		s_log.fine( "callback source=" + sender );
		
		ChangeVO changeVO = new ChangeVO();		
		if( sender.equals( BPARTNER ) )
		{
			s_log.finer( "callback on " + BPARTNER );
			
			int C_BPartner_ID = -1;
			try{ C_BPartner_ID = Integer.parseInt( windowCtx.get( BPARTNER ) ); } catch( Exception e ) {}
			int inout_ID = -1;
			try{ inout_ID = Integer.parseInt( windowCtx.get( "M_InOut_ID" ) ); } catch( Exception e ) {}
			MInOut mi = new MInOut(serverCtx, inout_ID, null);
			if( C_BPartner_ID > 0 )
			{
				boolean isReturnTrx = "Y".equals( windowCtx.get( IS_RETURN_TRX ) );
				
				HashMap< String, ArrayList< NamePair >> changedDropDowns = new HashMap< String, ArrayList< NamePair > >();

				ArrayList< NamePair > orders = VCreateFrom.getOrders( serverCtx, C_BPartner_ID, isReturnTrx, false );
				orders.add( 0, new KeyNamePair( -1, "" ) );

				ArrayList< NamePair > invoices = VCreateFromShipment.getInvoices( serverCtx, C_BPartner_ID, isReturnTrx );
				invoices.add( 0, new KeyNamePair( -1, "" ) );
				
				changedDropDowns.put( ORDER, orders );
				changedDropDowns.put( INVOICE, invoices );
				
				changeVO.changedDropDowns = changedDropDowns;
			} 
		}		
		else if( sender.equals( GlobalMessageConstants.OK) )
		{
			BigDecimal C_BPartner_ID = (BigDecimal) c_search.getFieldValue( windowCtx, BPARTNER );
			BigDecimal C_Order_ID = (BigDecimal) c_search.getFieldValue( windowCtx, ORDER );
			BigDecimal C_Invoice_ID = (BigDecimal) c_search.getFieldValue( windowCtx, INVOICE );
			int M_Locator_ID = ((BigDecimal) c_search.getFieldValue( windowCtx, LOCATOR )).intValue();
			int M_InOut_ID = Integer.parseInt( windowCtx.get( SHIPMENT ) );
			
			MOrder p_order = null;
			Vector< Vector< Object > > data = null;
			if( C_Order_ID != null )
			{
				p_order = new MOrder( serverCtx, C_Order_ID.intValue(), null );
				data = VCreateFrom.getOrderData( serverCtx, C_Order_ID.intValue(),null,C_BPartner_ID.intValue(), false, false, 0 );
			}
			
			MInvoice m_invoice = null;
			if( C_Invoice_ID != null )
			{
				m_invoice = new MInvoice( serverCtx, C_Invoice_ID.intValue(), null );
				data = VCreateFrom.getInvoiceData( serverCtx, C_Invoice_ID.intValue() );
			}

			
			Vector<String> columnNames = new Vector<String>(7);
			columnNames.add(Msg.getMsg(serverCtx, "Select"));
			for( FieldVO vo : VCreateFrom.getTableFieldVOs( serverCtx ) )
			{
				columnNames.add( vo.name );
			}

			ArrayList<Integer> selRowNos = null;
			if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
				selRowNos = new ArrayList<Integer>();
				for (int i = 0; i < data.size(); ++i) {
					selRowNos.add(i);
				}
			} else {
				selRowNos = windowCtx.getSelectedRowNos(1);
			}
			
			if( selRowNos != null && selRowNos.size() > 0 )
			{

				//  Set Model
				DefaultTableModel model = new DefaultTableModel( data, columnNames);
				for( int i : selRowNos )
				{
					model.setValueAt( true, i, 0 );
				}

				boolean success = VCreateFromShipment.saveData( serverCtx, model, p_order, m_invoice, M_Locator_ID, M_InOut_ID );
				if( !success )
				{
					changeVO.addError( Msg.getMsg( serverCtx, "SaveError" ) );
				}
			}
		}
		else if( sender.equals(ORDER) )
		{
			changeVO.changedFields = new HashMap<String, String>();
			changeVO.changedFields.put(INVOICE, "");
			changeVO.queryComponents = new HashMap<Integer, QueryVO>();
			changeVO.queryComponents.put(1, null);
		}
		else if( sender.equals(INVOICE) )
		{
			changeVO.changedFields = new HashMap<String, String>();
			changeVO.changedFields.put(ORDER, "");
			changeVO.queryComponents = new HashMap<Integer, QueryVO>();
			changeVO.queryComponents.put(1, null);
		}
		else if( sender.equals(SEARCH) )
		{
			changeVO.queryComponents = new HashMap<Integer, QueryVO>();
			changeVO.queryComponents.put(1, null);
		}
		
		return changeVO;
	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}
}
