package org.compiere.gwt.server.window;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.db.QueryUtil;
import org.compiere.esb.GwtServer;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.layout.ElementBox;
import org.compiere.layout.VerticalBox;
import org.compiere.util.CContext;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.ComponentVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.UWindowID.WindowType;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO;
import org.compiere.vos.WindowVO.ClientWindowType;

import com.audaxis.compiere.model.GenericCall;

/**
 * @author dizhao
 *
 */
public class WindowImplFactory {

	static CLogger log = CLogger.getCLogger( WindowImplFactory.class );
	
	/**
	 * Loads the server-side WindowImpl class for each Form.
	 * Be sure to modify WindowManager to load the corresponding client-side Window class for the Form.
	 * @param windowNO TODO
	 * @param server
	 * @param uid
	 * @param ctx
	 * @return
	 */
	public static WindowImplIntf getWindowImpl( int windowNO, GwtServer server, WindowCtx windowCtx, UWindowID uid )
	{
		WindowImplIntf w = null;
		
		CContext serverCtx = server.getContext();

		if( uid.getType() == UWindowID.WindowType.FORM )
		{
			// If you're adding a custom form, you need to seed the class name
			// in AD_Form.WebClassname
			

			// load the class name from AD_Form
			String sql = "SELECT WebClassname FROM AD_Form WHERE AD_Form_ID = ?";
			int adFormId = uid.getAD_Form_ID();
			String webClassname = null;

			if (adFormId != 0){
				PreparedStatement pstmt = null;
				try
				{
					pstmt = DB.prepareStatement(sql, (Trx) null);
					pstmt.setInt (1, adFormId);

					ResultSet rs = pstmt.executeQuery ();
					try {
					if (rs.next())
					{
						webClassname = rs.getString(1);
					}
					}
					finally {
					rs.close ();
					}
					pstmt.close ();
					pstmt = null;
				}
				catch (SQLException e)
				{
					log.log (Level.SEVERE, sql, e);
				}
			}

			if( webClassname != null )
			{
				try {
					Class<?> c = Class.forName(webClassname);
					Constructor<?> ct = c.getConstructor( Integer.TYPE, Ctx.class, WindowCtx.class, UWindowID.class );
					w = (WindowImplIntf) ct.newInstance( windowNO, serverCtx, windowCtx, uid );
				} catch (ClassNotFoundException e) {
					log.log (Level.SEVERE, e.getLocalizedMessage(), e);
					e.printStackTrace();
				} catch (SecurityException e) {
					log.log (Level.SEVERE, e.getLocalizedMessage(), e);
					e.printStackTrace();
				} catch (NoSuchMethodException e) {
					log.log (Level.SEVERE, e.getLocalizedMessage(), e);
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					log.log (Level.SEVERE, e.getLocalizedMessage(), e);
					e.printStackTrace();
				} catch (InstantiationException e) {
					log.log (Level.SEVERE, e.getLocalizedMessage(), e);
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					log.log (Level.SEVERE, e.getLocalizedMessage(), e);
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					log.log (Level.SEVERE, e.getLocalizedMessage(), e);
					e.printStackTrace();
				}
				
			}
			
		}
		

		
		if( w == null && uid.getType() == UWindowID.WindowType.DIALOG )
		{
			
			//ZCOM999 Faire un load dynamique d'une classe com.audaxis.... si celle ci existe
			Object obj = GenericCall.genericCall("gwt","CreateFrom","getInstanceID",
					new Object[]{
						uid.getDialogID(),
						windowNO, 
						serverCtx, 
						windowCtx, 
						uid
					});
			if (obj != null){	
				w = (WindowImplIntf) obj;
			}
			if (w == null) {
			//ZCOM999 END

			switch( uid.getDialogID() )
			{
			case UWindowID.DIALOG_DOCACTION_DIALOG:
				w = new DocActionWindowImpl( windowNO, serverCtx, windowCtx, uid);
				break;

			case UWindowID.DIALOG_PAYMENT_DIALOG:
				w = new PaymentDialogWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;

			case UWindowID.DIALOG_ACCT_VIEWER:
				w = new AcctViewerWindowImpl( windowNO, serverCtx, windowCtx, uid);
				break;
            
				//ZCOM999 - #56770 Lettrage des comptes g�n�raux
			case UWindowID.DIALOG_MATCHING_ACCT_VIEWER: 
				w = new MatchingAcctViewerWindowImpl( windowNO, serverCtx, windowCtx, uid);
				break;
				//ZCOM999 - #56770 Lettrage des comptes g�n�raux
	

			case UWindowID.DIALOG_CREATE_FROM_SHIPMENT:
				w = new CreateFromShipmentWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;

			case UWindowID.DIALOG_CREATE_FROM_INVOICE:
				w = new CreateFromInvoiceWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;

			case UWindowID.DIALOG_CREATE_FROM_BANK_STATEMENT:
				w = new CreateFromStatementWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;


			case UWindowID.DIALOG_CREATE_BUSINESS_PARTNER:
				w = new BusinessPartnerWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.DIALOG_CREATE_LOCATION:
				w = new LocationWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;

			// ZCOM #20722	
			case UWindowID.DIALOG_RESOURCE_ASSIGNMENT:
				w = new ResourceAssignmentWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;					
			case UWindowID.DIALOG_PATTRIBUTE_WINDOW:
				w = new PAttributeSetInstanceWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;

			case UWindowID.DIALOG_VALUE_PREFERENCE:
				w = new ValuePreferenceWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.DIALOG_ACCT_EDITOR:
				w = new AccountEditorWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.DIALOG_EMAIL_DIALOG:
				w = new EmailWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;

			case UWindowID.DIALOG_PRINT_FORMAT:
				w = new PrintFormatWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.DIALOG_PRICE_HISTORY_WINDOW:
				w = new PriceHistoryWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.DIALOG_LOCATOR_DETAIL_WINDOW:
				w = new LocatorDetailWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.DIALOG_CREATE_PRINT_FORMAT:
				w = new CreatePFWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			// Calendar Dialog	
			case UWindowID.DIALOG_PRESTA_WINDOW:
				w = new CalendarDialogWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;	
			
			default: // ZCOM999 Redmine #19974  we have the ad_field_id as an entityID now ...
				if (uid.getFieldVO() != null) {
					log.info("Generic CreateFrom "+uid.getFieldVO().ColumnName);
					Object o = GenericCall.genericCall("gwt","CreateFrom","getInstance",
							new Object[]{
								uid.getFieldVO().ColumnName,  
								windowNO, 
								serverCtx, 
								windowCtx, 
								uid
							});
					if (o != null){	
						w = (WindowImplIntf) o;
					}
				}
				else {
					log.warning("UID have no FieldVO in it ? "+ uid);
				}
				break;
			//ZCOM427 GenericCall
				
			}
			
			} //ZCOM999
			
		}
	

		if( w == null && uid.getType() == UWindowID.WindowType.INFO_WINDOW )
		{
			
			//ZCOM999 Faire un load dynamique d'une classe com.audaxis.... si celle ci existe
			Object obj = GenericCall.genericCall("gwt","CreateFrom","getInstanceID",
					new Object[]{
						//uid.getDialogID(),
						uid.getAD_InfoWindow_ID(),
						windowNO, 
						serverCtx, 
						windowCtx, 
						uid
					});
			if (obj != null){	
				w = (WindowImplIntf) obj;
			}
			if (w == null) {
			//ZCOM999 END
			
			switch( uid.getAD_InfoWindow_ID() )
			{
			case UWindowID.INFO_BPARTNER:
				w = new InfoBPartnerWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.INFO_PRODUCT:
				w = new InfoProductWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.INFO_LOCATOR:
				w = new InfoLocatorWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.INFO_PATTRIBUTE_INSTANCE:
				w = new PAttributeInstanceWindowImpl( windowNO, serverCtx, windowCtx, uid );
				break;
			case UWindowID.INFO_GENERIC:
				w = new InfoGeneralWindowImpl( windowNO, serverCtx, windowCtx, uid, server );
				break;
			default:
				//ZCOM427 ZCreateFrom : on passe zero en ID mais on passe le ColumnName
				if (uid.getFieldVO() != null) {
					log.info("Generic CreateFrom "+uid.getFieldVO().ColumnName);
					Object o = null;
					if (uid.getFieldVO() != null && uid.getFieldVO().ColumnName != null)
						o = GenericCall.genericCall("gwt","CreateFrom","getInstance",
							new Object[]{
								//uid.getColumnName(),
								uid.getFieldVO().ColumnName,
								windowNO, 
								serverCtx, 
								windowCtx, 
								uid
							});
					if (o != null){	
						w = (WindowImplIntf) o;
					}
				}
				if (w == null)
			//ZCOM427 GenericCall
				
				w = new InfoWindowImpl( windowNO, serverCtx, windowCtx, uid );
			}
			
			} //ZCOM427
			
		}
		
		return w;
	}


	public static UWindowID getInfoWindowUID(int windowNO,
			GwtServer server, WindowCtx windowCtx, FieldVO fieldVO) {

		String tableName = null;
		if (fieldVO.listBoxVO != null)
			tableName = fieldVO.listBoxVO.TableName;

		if ((tableName == null || tableName.length() == 0)
				&& fieldVO.ColumnName != null
				&& fieldVO.ColumnName.toUpperCase().endsWith("_ID"))
			tableName = fieldVO.ColumnName.substring(0, fieldVO.ColumnName
					.length() - 3);

		int AD_InfoWindow_ID = UWindowID.INFO_GENERIC;
		String SQL = null;
		Object[][] result = null;

		SQL = "SELECT "
				+ "  IW.AD_InfoWindow_ID, T.AD_Window_ID, T.PO_Window_ID, CASE IW.IsCustomDefault WHEN 'Y' THEN '0' ELSE '1' END "
				+ "FROM AD_InfoWindow IW INNER JOIN AD_Table T ON (IW.AD_Table_ID = T.AD_Table_ID) "
				+ "WHERE T.TableName = ? AND IW.IsActive = 'Y' " + "ORDER BY 4";

		result = QueryUtil.executeQuery(SQL, new Object[] { tableName });
		if (result.length > 0) {
			Object[] row = result[0];
			AD_InfoWindow_ID = ((BigDecimal) row[0]).intValue();

			if (fieldVO.listBoxVO != null) {
				if (fieldVO.listBoxVO.zoomWindow == 0 && row[1] != null)
					fieldVO.listBoxVO.zoomWindow = ((BigDecimal) row[1])
							.intValue();
				if (fieldVO.listBoxVO.ZoomWindowPO == 0 && row[2] != null)
					fieldVO.listBoxVO.ZoomWindowPO = ((BigDecimal) row[2])
							.intValue();
			}
		}

		//Start Redmine 48256
		if (fieldVO.FieldGroup.equals("ECPOrder")){
			AD_InfoWindow_ID = PO_InfoWindow_ID;
		}
			
		if (fieldVO.FieldGroup.equals("ECReceipt")){
			AD_InfoWindow_ID = RC_InfoWindow_ID;
		}
		//End Redmine 48256
			
		UWindowID uid = new UWindowID( WindowType.INFO_WINDOW, AD_InfoWindow_ID );
		uid.setFieldVO(fieldVO);
		return uid;
	}


	public static WindowVO getWindowVO(WindowImplIntf window, int windowNO,
			UWindowID uid) {
		WindowVO windowVO = new WindowVO();
		windowVO.windowNO = windowNO;
		windowVO.componentVOs = new ArrayList<ComponentVO>();
		int i = 0;
		for (ComponentImplIntf c : window.getComponents()) {
			ComponentVO cVO = c.getComponentVO();
			// explicitly set ad_window_id and tabNo to track the component's
			// parent
			cVO.uid = uid;
			cVO.windowNO = windowNO;
			cVO.tabNo = i;
			windowVO.componentVOs.add(cVO);
			i++;
		}


		windowVO.name = window.getName();
		if (windowVO.name == null)
		{
			windowVO.name = "";
		}
		
		windowVO.layout = window.getLayout();
		if( windowVO.layout == null )
		{
			VerticalBox vbox = new VerticalBox();
			for( ComponentVO cVO : windowVO.componentVOs )
				vbox.add( new ElementBox( cVO.tabNo ) );
			windowVO.layout = vbox;
		}
		
		windowVO.clientWindowType = window.getClientWindowType();
		if( windowVO.clientWindowType == null )
			windowVO.clientWindowType = ClientWindowType.GENERIC_STACK;
		
		WindowImplFactory.getMiscAttributes(windowVO, uid);
		if( windowVO.help == null )
			windowVO.help = "";
		
		window.validateResponse(windowVO);

		return windowVO;
	}
	
	
	public static void getMiscAttributes(WindowVO windowVO, UWindowID m_uid){
		
		if( m_uid.getType() == UWindowID.WindowType.FORM )
		{		
			String sql = "SELECT AD_Form.Help, AD_CtxArea.IsSOTrx FROM AD_Form LEFT OUTER JOIN AD_CtxArea ON (AD_CtxArea.AD_CtxArea_ID = AD_Form.AD_CtxArea_ID) WHERE AD_Form_ID = ?";
			int adFormId = m_uid.getAD_Form_ID();
	
			if (adFormId != 0){
				PreparedStatement pstmt = null;
				try
				{
					pstmt = DB.prepareStatement(sql, (Trx) null);
					pstmt.setInt (1, adFormId);
	
					ResultSet rs = pstmt.executeQuery ();
					try {
					if (rs.next())
					{
						windowVO.help = rs.getString(1);
						windowVO.isSOTrx = "Y".equalsIgnoreCase(rs.getString(2));
					}
					}
					finally {
					rs.close ();
					}
					pstmt.close ();
					pstmt = null;
				}
				catch (Exception e)
				{
					log.log (Level.SEVERE, sql, e);
				}
			}
		}
	}
	
	//Start Redmine 48256
	static int PO_InfoWindow_ID=Integer.valueOf(Msg.getMsg("en_US", "EC_PO_InfoWindow_ID"));
	static int RC_InfoWindow_ID=Integer.valueOf(Msg.getMsg("en_US", "EC_RC_InfoWindow_ID"));
	//End Redmine 48256
}
