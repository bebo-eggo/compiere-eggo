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

import com.audaxis.compiere.util.CompiereException;

/**
 * @author gwu
 * 
 */
public class CreateFromInvoiceWindowImpl extends WindowImpl 
{

	private static CLogger s_log = CLogger.getCLogger( CreateFromInvoiceWindowImpl.class );
	
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
	public CreateFromInvoiceWindowImpl( int windowNO, final Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		windowCtx.put("#AD_Language", serverCtx.get( "#AD_Language" ));//Redmine 48265

		boolean isReturnTrx = "Y".equals( windowCtx.get( IS_RETURN_TRX ) );
		int C_BPartner_ID = -1;
		try{ C_BPartner_ID = Integer.parseInt( windowCtx.get( BPARTNER ) ); } catch( Exception e ) {}
		
		int C_Invoice_ID = -1;
		String vendorDocNum = null;
		MInvoice inv = null;
		try{ C_Invoice_ID = Integer.parseInt( windowCtx.get( INVOICE ) ); } catch( Exception e ) {}
		if(C_Invoice_ID>0){
			inv = new MInvoice(serverCtx, C_Invoice_ID, null);
			vendorDocNum = (inv.get_ValueAsString("VendorDocNum"));
		}
		
		int AD_OrgX_ID = -1;
		try{ AD_OrgX_ID = Integer.parseInt( serverCtx.get( "AD_OrgX_ID" ) ); } catch( Exception e ) {}//Redmine 48265
		
		FieldVO f_BPartner = new FieldVO( BPARTNER, Msg.translate( serverCtx, BPARTNER ), DisplayTypeConstants.Search, true );
		f_BPartner.listBoxVO = new ListBoxVO();
		f_BPartner.listBoxVO.KeyColumn = BPARTNER;
		f_BPartner.isImpactsValue = true;
		
		FieldVO f_isReturnTrx = new FieldVO( IS_RETURN_TRX, Msg.translate( serverCtx, IS_RETURN_TRX ), DisplayTypeConstants.YesNo, true );
		f_isReturnTrx.DefaultValue = isReturnTrx ? "Y" : "N";
		f_isReturnTrx.IsReadOnly = true;
		
		FieldVO f_PO = new FieldVO( ORDER, Msg.translate( Env.getAD_Language( serverCtx ), false, ORDER ), DisplayTypeConstants.Search, false );
		f_PO.isImpactsValue = true;
		
		//Redmine 48265
		f_PO.ValidationCode=getOrderValidation(C_BPartner_ID, isReturnTrx, 0);
		f_PO.FieldGroup = "ECPOrder";
		//
		
		FieldVO f_Shipment = new FieldVO( SHIPMENT, Msg.translate( Env.getAD_Language( serverCtx ), false, SHIPMENT ), DisplayTypeConstants.Search, false );
		f_Shipment.isImpactsValue = true;
		
		//Redmine 48265
		//f_Shipment.ValidationCode=getReceiptValidation(C_BPartner_ID);
		f_Shipment.FieldGroup = "ECReceipt";
		//
		
		FieldVO f_poreference = new FieldVO( "POReference", "Code projet", DisplayTypeConstants.String, false );
		f_poreference.isImpactsValue = true;
		f_poreference.DefaultValue = vendorDocNum;
		
		FieldVO f_isDiff_0 = new FieldVO( "isDiff_0", "Qté <> 0", DisplayTypeConstants.YesNo, true );
		f_isDiff_0.DefaultValue = "Y";
		
		if( C_BPartner_ID > 0 )
		{
			f_BPartner.DefaultValue = Integer.toString( C_BPartner_ID );
			/** Redmine 48265
			ArrayList< NamePair > orders = VCreateFrom.getOrders( serverCtx, C_BPartner_ID, isReturnTrx, true );
			f_PO.listBoxVO = new ListBoxVO( orders, null );

			ArrayList< NamePair > shipments = VCreateFromInvoice.getShipments( serverCtx, C_BPartner_ID );
			f_Shipment.listBoxVO = new ListBoxVO( shipments, null );
			**/
		}

		FieldVO fVO_search = new FieldVO( SEARCH, Msg.getMsg( serverCtx, SEARCH ), DisplayTypeConstants.Button );
		fVO_search.WindowNo = windowNO;
		
		c_search = new SearchComponentImpl( new FieldVO[] { f_BPartner, f_isReturnTrx, f_PO, f_Shipment,f_poreference,f_isDiff_0, fVO_search } );
		components.add( c_search );
		
		c_table = new VectorComponentImpl( "", ComponentVO.ComponentType.TABLE_MULTI, false, VCreateFrom.getTableFieldVOs( serverCtx ), null, 1, vendorDocNum!=null )
		{

			@Override
			public TableModel getQueryResults( QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol )
			{
				s_log.finer( "Executing search" );
				
				int C_BPartner_ID = -1;
				try{ C_BPartner_ID = Integer.parseInt( windowCtx.get( BPARTNER ) ); } catch( Exception e ) {}

				int C_Order_ID = -1;
				try { C_Order_ID = Integer.parseInt( windowCtx.get( ORDER ) ); } catch( Exception e ) {}

				int M_InOut_ID = -1;
				try { M_InOut_ID = Integer.parseInt( windowCtx.get( SHIPMENT ) ); } catch( Exception e ) {}

				String POref = null;
				try { POref = ( windowCtx.get( "POReference" ) ); } catch( Exception e ) {}
				
				String isDiff_0 = "Y";
				try { isDiff_0 = ( windowCtx.get( "isDiff_0" ) ); } catch( Exception e ) {}
				isDiff_0 = isDiff_0==null?"Y":isDiff_0;
				
				MInvoice inv = null;
				int C_Invoice_ID = 0;
				try{ C_Invoice_ID = Integer.parseInt( windowCtx.get( INVOICE ) ); } catch( Exception e ) {}
				if(C_Invoice_ID>0){
					inv = new MInvoice(serverCtx, C_Invoice_ID, null);
				}
				
				Vector< Vector< Object > > data = null;
				if( C_Order_ID > 0 )
					data = VCreateFrom.getOrderData( serverCtx, C_Order_ID,null,C_BPartner_ID, true, isDiff_0.equals("Y"), inv.get_ValueAsInt("Z_TypeOA_ID") );
				else if( M_InOut_ID > 0 )
					data = VCreateFromInvoice.getShipmentData( serverCtx, M_InOut_ID, null,  isDiff_0.equals("Y")  );
				else if(POref !=null && POref.trim().length()>0){
					data = VCreateFrom.getOrderData( serverCtx, 0,POref,C_BPartner_ID, true,  isDiff_0.equals("Y"), inv.get_ValueAsInt("Z_TypeOA_ID")   );
					//data.addAll(VCreateFromInvoice.getShipmentData( serverCtx, 0,C_BPartner_ID, POref,  isDiff_0.equals("Y")  ));
				}
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

			if( C_BPartner_ID > 0 )
			{
				/** Redmine 48265
				boolean isReturnTrx = "Y".equals( windowCtx.get( IS_RETURN_TRX ) );
				
				HashMap< String, ArrayList< NamePair >> changedDropDowns = new HashMap< String, ArrayList< NamePair > >();

				changedDropDowns.put( ORDER, VCreateFrom.getOrders( serverCtx, C_BPartner_ID, isReturnTrx, true ) );
				changedDropDowns.put( SHIPMENT, VCreateFromInvoice.getShipments( serverCtx, C_BPartner_ID ) );
				
				changeVO.changedDropDowns = changedDropDowns;
				**/
			
				//Redmine 48265
				changeVO.changedFields = new HashMap<String, String>();
				changeVO.changedFields.put(SHIPMENT, "");
				changeVO.changedFields.put(ORDER, "");
				//

			} 
		}		
		else if( sender.equals( GlobalMessageConstants.OK) )
		{

			int C_BPartner_ID = -1;
			try{ C_BPartner_ID = Integer.parseInt( windowCtx.get( BPARTNER ) ); } catch( Exception e ) {}
			
			BigDecimal C_Order_ID = (BigDecimal) c_search.getFieldValue( windowCtx, ORDER );
			BigDecimal M_InOut_ID = (BigDecimal) c_search.getFieldValue( windowCtx, SHIPMENT );
			String POref = (String)c_search.getFieldValue( windowCtx, "POReference" );
			String isDiff_0 = ((Boolean) (c_search.getFieldValue( windowCtx, "isDiff_0" )))?"Y":"N";
			isDiff_0 = isDiff_0==null?"Y":isDiff_0;
			
			int C_Invoice_ID = Integer.parseInt( windowCtx.get( INVOICE ) );
			MInvoice inv = null;
			if(C_Invoice_ID>0){
				inv = new MInvoice(serverCtx, C_Invoice_ID, null);
			}
			MOrder p_order = null;
			Vector< Vector< Object > > data = null;
			boolean fromOrderData = false;
			if( C_Order_ID != null )
			{
				p_order = new MOrder( serverCtx, C_Order_ID.intValue(), null );
				data = VCreateFrom.getOrderData( serverCtx, C_Order_ID.intValue(),null,C_BPartner_ID, true, isDiff_0.equals("Y"), inv.get_ValueAsInt("Z_TypeOA_ID") );
				fromOrderData = true;
			}
			
			MInOut m_shipment = null;
			if( M_InOut_ID != null )
			{
				m_shipment = new MInOut( serverCtx, M_InOut_ID.intValue(), null );
				data = VCreateFromInvoice.getShipmentData( serverCtx, M_InOut_ID.intValue(), null, isDiff_0.equals("Y"));
				if(p_order==null && m_shipment!=null && m_shipment.getC_Order_ID()>0)
				{
					p_order = new MOrder( serverCtx, m_shipment.getC_Order_ID(), null );
				}
			}
			
			if(POref!=null)
			{
				data = VCreateFrom.getOrderData( serverCtx, 0,POref,C_BPartner_ID, true, isDiff_0.equals("Y"), inv.get_ValueAsInt("Z_TypeOA_ID"));
				//data.addAll(VCreateFromInvoice.getShipmentData( serverCtx, 0,C_BPartner_ID, POref, isDiff_0.equals("Y") ));
				fromOrderData = true;
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

				boolean success = VCreateFromInvoice.saveData( serverCtx, model, p_order, m_shipment, C_Invoice_ID, fromOrderData );
				if( !success )
				{
					changeVO.addError( Msg.getMsg( serverCtx, "SaveError" ) );
				}
			}
			
		}
		else if( sender.equals(ORDER) )
		{
			changeVO.changedFields = new HashMap<String, String>();
			changeVO.changedFields.put(SHIPMENT, "");
			changeVO.queryComponents = new HashMap<Integer, QueryVO>();
			changeVO.queryComponents.put(1, null);
		}
		else if( sender.equals(SHIPMENT) )
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
	
	//Redmine 48265
	private String getOrderValidation(int C_BPartner_ID, boolean IsReturnTrx, int AD_OrgX_ID){
		StringBuffer whereclause = new StringBuffer("C_Order.C_BPartner_ID=")
			.append(C_BPartner_ID).append(" AND C_Order.IsReturnTrx='").append(IsReturnTrx ? "Y' " : "N' ");
		if (AD_OrgX_ID>0)
			whereclause.append("AND C_Order.AD_Org_ID= ").append(AD_OrgX_ID);
		return whereclause.toString();
	}
	
	//Redmine 48265
	private String getReceiptValidation(int C_BPartner_ID){
		StringBuffer whereclause = new StringBuffer("M_InOut.C_BPartner_ID=").append(C_BPartner_ID);
		return whereclause.toString();
	}
}
