package org.compiere.gwt.server.window;

/**
 * @author 
 * 
 */


import java.util.ArrayList;
import java.util.HashMap;

import org.compiere.common.QueryVO;
import org.compiere.common.TableModel;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.db.QueryUtil;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.ReportServiceImpl;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.TableComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.ProcessInfoVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;


public class GeneratePoWindowImpl extends WindowImpl implements ASyncProcess 
{
	private static CLogger log = CLogger.getCLogger( GeneratePoWindowImpl.class );
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	public void executeASync(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	public boolean isUILocked() {
		// TODO Auto-generated method stub
		return false;
	}

	public void lockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	public void unlockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}
	
 	public GeneratePoWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		serverCtx.setContext("IsSOTrx", "Y");
		FieldVO fieldWarehouse = new FieldVO( "AD_Org_ID", Msg.translate( serverCtx, "AD_Org_ID" ), DisplayTypeConstants.TableDir );
		fieldWarehouse.IsMandatoryUI = true;
		MLookup wareHouseL = MLookupFactory.get( serverCtx, windowNO, 528, DisplayTypeConstants.TableDir );
		fieldWarehouse.listBoxVO = Util.convertLookupToVO( wareHouseL, fieldWarehouse.IsMandatoryUI, "" );
		fieldWarehouse.listBoxVO.setDefaultKey(serverCtx.getContext( "#AD_Org_ID" ));

//		FieldVO f_BPartner = new FieldVO("C_BPartner_ID", Msg.translate( serverCtx, "C_BPartner_ID" ), DisplayTypeConstants.Search );
//		f_BPartner.listBoxVO = new ListBoxVO();
//		f_BPartner.listBoxVO.KeyColumn = "C_BPartner_ID";
//
//		FieldVO f_SavStatus = new FieldVO("SAV_STATUS", "Statut dossier", DisplayTypeConstants.List, false );
//		MLookup SavStatusL = MLookupFactory.get( serverCtx, windowNO, 1006878, DisplayTypeConstants.List );
//		f_SavStatus.listBoxVO =  Util.convertLookupToVO( SavStatusL, f_SavStatus.IsMandatoryUI, "" );
//	
//		FieldVO f_PartnerRepairer= new FieldVO( "Vendor_ID", "Réparateur",DisplayTypeConstants.Table);
//		MLookup M_PartnerRepairer = MLookupFactory.get( serverCtx, windowNO,1008031, DisplayTypeConstants.Table);	
//		f_PartnerRepairer.listBoxVO = Util.convertLookupToVO( M_PartnerRepairer, f_PartnerRepairer.IsMandatoryUI, "" );
//		f_PartnerRepairer.listBoxVO.KeyColumn ="C_BPartner_ID";
//		
//		FieldVO f_MProduct = new FieldVO("M_Product_ID", Msg.translate( serverCtx, "M_Product_ID" ), DisplayTypeConstants.Search );
//		f_MProduct.listBoxVO = new ListBoxVO();
//		f_MProduct.listBoxVO.KeyColumn = "M_Product_ID";
//		
//		FieldVO f_YMarque = new FieldVO("Y_Marque_ID", Msg.translate( serverCtx, "Y_Marque_ID" ),DisplayTypeConstants.TableDir);
//		MLookup YMarqueL = MLookupFactory.get( serverCtx, windowNO, 1005565, DisplayTypeConstants.TableDir );
//		f_YMarque.listBoxVO =  Util.convertLookupToVO( YMarqueL, f_YMarque.IsMandatoryUI, "" );
		
		FieldVO f_COrder = new FieldVO("COrderID", "Ordre de vente", DisplayTypeConstants.String );
		f_COrder.DefaultValue=" ";
		f_COrder.IsMandatoryUI = true;
		f_COrder.listBoxVO = new ListBoxVO();
		
		components.add( new SearchComponentImpl( new FieldVO[] { fieldWarehouse, f_COrder} ) );
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO("C_OrderLine_ID", Msg.translate(serverCtx, "C_OrderLine_ID"), "il.C_OrderLine_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("C_Order_ID", Msg.translate(serverCtx, "C_Order_ID"), "ic.C_Order_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("AD_Org_ID", Msg.translate(serverCtx, "AD_Org_ID"), "o.Name", DisplayTypeConstants.String, true),
				new FieldVO("DocumentNo", Msg.translate(serverCtx, "DocumentNo"), "ic.DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("Line", "Ligne ODV", "il.Line", DisplayTypeConstants.Integer, true),
				new FieldVO("Value", Msg.translate(serverCtx, "M_Product_ID"), "p.Value", DisplayTypeConstants.String, true),
				new FieldVO("Marque", Msg.translate(serverCtx, "Y_Marque_ID"), "ym.name", DisplayTypeConstants.String, true),
				new FieldVO("Description", Msg.translate(serverCtx, "Description"), "p.Description", DisplayTypeConstants.String, true),
				new FieldVO("QtyOrdered","Qté", "il.QtyOrdered", DisplayTypeConstants.Integer, true),
				
		},
		"",
		//	FROM
		"C_Order ic "
		+"inner join AD_Org o ON o.ad_org_id=ic.ad_org_id "
		+"inner join C_BPartner bp ON bp.c_bpartner_id=ic.c_bpartner_id "
		+"inner join C_DocType dt ON ic.C_DocType_ID=dt.C_DocType_ID "
		+"inner join C_OrderLine il ON ic.C_Order_ID=il.C_Order_ID "
		+"inner join M_Product p ON p.M_Product_ID=il.M_Product_ID "
		+"left outer join Y_Marque ym ON ym.Y_Marque_ID=p.Y_Marque_ID "
		+"left outer join C_BPartner bpv ON ic.Vendor_ID=bpv.C_BPartner_ID "
		// JBR Add 2 Lines
	    +"inner join ad_orginfo oi on oi.ad_org_id = o.ad_org_id "
	    +"left outer join M_STORAGEWH_V st on st.ad_client_id = o.ad_client_id and st.ad_org_id = o.ad_client_id and st.m_product_id = p.m_product_id and st.m_warehouse_id = oi.m_warehouse_id "
		,
		//	WHERE
		" NOT EXISTS (SELECT NULL FROM C_Orderline pol INNER JOIN C_Order po ON (po.C_Order_ID= pol.C_Order_ID) WHERE po.IsSoTrx= 'N' AND pol.Ref_OrderLine_ID = il.C_OrderLine_ID)"
		+" AND il.isselectedpo <> 'C'"
		+" AND ic.AD_Client_ID=?"
		// JBR Add 1 Lines
	    +" AND nvl((ST.QTYONHAND - ST.QTYRESERVED),0) <= 0 "
	    , 
		true, false, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {
				ArrayList<Object> params = new ArrayList<Object>(1);
				params.add(ctx.getAD_Client_ID());

				StringBuffer otherClause = new StringBuffer();
				if((windowCtx.get("AD_Org_ID") != null) && !"0".equals(windowCtx.get("AD_Org_ID"))) {
					otherClause.append("AND ic.AD_Org_ID=?");
					params.add(windowCtx.get("AD_Org_ID"));
				}
				
				if((windowCtx.get("COrderID") != null) && !"".equals(windowCtx.get("COrderID"))) {
					otherClause.append("AND upper(ic.documentno) = upper(?)");
					params.add(windowCtx.get("COrderID"));
				}	
				
				String sql = getComponentSQL(null, null, fieldVO, otherClause.toString(), countOnly, asc, sortCol);

				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY il.Line";
			}
			
		});
//		//FieldVO f_SavStatusTarget= new FieldVO( "SAV_STATUS_TARGET", Msg.translate( serverCtx, "SAV_STATUS TARGET" ), DisplayTypeConstants.List, false );
//		FieldVO f_SavStatusTarget= new FieldVO( "SAV_STATUS_TARGET", "Statut cible", DisplayTypeConstants.List, false );
//		MLookup SavStatusLTarget = MLookupFactory.get( serverCtx, windowNO, 1006878, DisplayTypeConstants.List );
//		//FieldVO fTypePiece  = new FieldVO( "Type_piece", Msg.translate( serverCtx, "Type_piece" ), DisplayTypeConstants.List, false );
//		f_SavStatusTarget.listBoxVO =  Util.convertLookupToVO( SavStatusLTarget, f_SavStatusTarget.IsMandatoryUI, "" );
//		//FieldVO fVO_printShipment = new FieldVO("IsPrint",  Msg.translate( serverCtx, "Change Status" ), DisplayTypeConstants.YesNo);
//		FieldVO f_PartnerRepairerTarget= new FieldVO( "Vendor_ID_Target", "Réparateur",DisplayTypeConstants.Table);
//		MLookup M_PartnerRepairerTarget = MLookupFactory.get( serverCtx, windowNO,1008031, DisplayTypeConstants.Table);	
//		f_PartnerRepairerTarget.listBoxVO = Util.convertLookupToVO( M_PartnerRepairerTarget, f_PartnerRepairerTarget.IsMandatoryUI, "" );
//		f_PartnerRepairerTarget.listBoxVO.KeyColumn ="C_BPartner_ID";
		components.add(new SearchComponentImpl(new FieldVO[]{}));
	}//constructor

	@Override
	public ChangeVO processCallback(String sender) {
		// TODO Auto-generated method stub
		ChangeVO change = new ChangeVO();
		if(sender.equals(GlobalMessageConstants.PROCESS))
//			generate(change, serverCtx, windowCtx, ReportEngine.SHIPMENT);
			generate(change, serverCtx, windowCtx, ReportEngine.ORDER);
		
		return change;
	}	




	/**************************************************************************
	 *	Change Status
	 */
	private void generate (ChangeVO change, Ctx ctx, WindowCtx windowCtx, int mode)
	{
			Trx trx = null;
			StringBuffer whereClause = new StringBuffer("C_OrderLine_ID");
			
			ArrayList<String[]> orderlineSelected = null;
			int orderSelected = 0;
			if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
				QueryVO queryVO = windowCtx.getQueryVO(1);
				TableModel model = ((TableComponentImpl) components.get(1)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS, false, true, -1);
				orderlineSelected = new ArrayList<String[]>();
				for( int row = 0; row < model.rows(); ++row ){
					orderlineSelected.add(model.getRow(row));
				}
			} else {
				orderlineSelected = windowCtx.getSelectedRows( 1 );
			}
			if(orderlineSelected.size() == 0) {
				change.addError("No rows selected");
				return;
			}
			if(orderlineSelected.size() > 1)
				whereClause.append(" IN (");
			else
				whereClause.append("=");
			orderSelected = Integer.parseInt(orderlineSelected.get(0)[1]);
			for (int i = 0; i < orderlineSelected.size(); i++)
			{
				if (i > 0)
					whereClause.append(",");

				whereClause.append(orderlineSelected.get(i)[0]);
			}
			if (orderlineSelected.size() > 1)
				whereClause.append(")");
			
			String sql = "UPDATE C_OrderLine SET isSelectedPO='Y' where C_Order_ID="+orderSelected+" AND "+whereClause.toString();
			int no = DB.executeUpdate(sql, trx);
			if (no <= 0)
			{
				String msg = "Problème mise à jour isSelectedPO";     //  not translated!
				log.config(msg);
				change.addError(msg);
				return;
			}
					
			//	Prepare Process
			int AD_Process_ID = 1001535;  
			HashMap<String, ValueNamePair> parameters = new HashMap<String, ValueNamePair>();


			ArrayList<FieldVO> fieldVOs = new ArrayList<FieldVO>(2);
			fieldVOs.add(new FieldVO("C_Order_ID", "C_Order_ID", DisplayTypeConstants.ID));
			ProcessInfoVO processInfo = ReportServiceImpl.staticGetProcessInfoByProcessID(AD_Process_ID, windowNO, ctx);
			processInfo.Parameters = fieldVOs;
			
			parameters.put("C_Order_ID", new ValueNamePair(String.valueOf(orderSelected),String.valueOf(orderSelected)));
//			parameters.put("DocAction", new ValueNamePair("CO", "CO"));
			ReportServiceImpl.startProcess(processInfo, serverCtx, parameters);
			String[] tdRemoved = processInfo.logInfo.split("<td>");
			processInfo.logInfo ="";
			processInfo.logInfo =processInfo.logInfo.concat(tdRemoved[0]);
			for (int i = 1; i < tdRemoved.length; i++){
				String[] tdCloseRemoved = tdRemoved[i].split("</td>");
				if(tdCloseRemoved.length > 1){
					String hrefAdd = "<td><a href=\"./Compiere.html#Node?nodeID=205&mode=single&where=documentno@eq@'"+tdCloseRemoved[0]+"'\" target=\"_blank\">"
							.concat(tdCloseRemoved[0])
							.concat("</a></td>");
					processInfo.logInfo =processInfo.logInfo.concat(hrefAdd).concat(tdCloseRemoved[1]);
				}
			}
//			System.out.println(processInfo.logInfo);
			//post processing
//			sql = "UPDATE C_Order SET IsSelected = 'N' WHERE " + whereClause;
//			no = DB.executeUpdate(sql, (Trx) null);
//			log.config("Reset=" + no);
			
//			if("Y".equals(windowCtx.get("IsPrint"))) {
//			//	Get results
//			int[] ids = processInfo.IDs;
//			if (ids == null || ids.length == 0)
//				return;
//
//					//	Loop through all items
//					for (int ID : ids) {
//						ReportCtl.startDocumentPrint(ctx, mode, ID, true);
//					}
//			}	//	OK to print invoices
			if(change.changedFields == null) 
				change.changedFields = new HashMap<String, String>();
			//change.changedFields.put("ProcessInfo", processInfo);
			change.changedFields.put("isProcess", "Y");
			change.changedFields.put("isError", processInfo.isError ? "Y" : "N");
			change.changedFields.put("summary", processInfo.Summary);
			change.changedFields.put("logInfo" , processInfo.logInfo);
		}   //  generateInvoices_complete

		@Override
		public final ArrayList<ComponentImplIntf> getComponents() {
			return components;
		}

		@Override
		public ClientWindowType getClientWindowType() {
			return ClientWindowType.SELECTIONAUTO;
		}
}
