package org.compiere.gwt.server.window;

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
import org.compiere.model.MBPartner;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
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

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.model.MTransactionMsg;
import com.audaxis.compiere.util.CompiereException;

public class TestPlanning extends WindowImpl implements ASyncProcess 
{
	private static CLogger log = CLogger.getCLogger( SavChangeStatusWindowImpl.class );
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
	
 	public TestPlanning(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

//		serverCtx.setContext("IsSOTrx", "Y");
//		FieldVO fieldWarehouse = new FieldVO( "AD_Org_ID", Msg.translate( serverCtx, "AD_Org_ID" ), DisplayTypeConstants.TableDir );
//		fieldWarehouse.IsMandatoryUI = true;
//		MLookup wareHouseL = MLookupFactory.get( serverCtx, windowNO, 528, DisplayTypeConstants.TableDir );
//		fieldWarehouse.listBoxVO = Util.convertLookupToVO( wareHouseL, fieldWarehouse.IsMandatoryUI, "" );
//		fieldWarehouse.listBoxVO.setDefaultKey(serverCtx.getContext( "#AD_Org_ID" ));
//
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
//		
//		FieldVO f_COrder = new FieldVO("COrderID", "Dossier SAV", DisplayTypeConstants.String );
//		f_COrder.DefaultValue="REPA";
//		f_COrder.listBoxVO = new ListBoxVO();
//		
//		components.add( new SearchComponentImpl( new FieldVO[] { fieldWarehouse, f_BPartner, f_SavStatus,f_PartnerRepairer,f_MProduct,f_YMarque,f_COrder} ) );
//		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
//				new FieldVO("C_Order_ID", Msg.translate(serverCtx, "C_Order_ID"), "ic.C_Order_ID", DisplayTypeConstants.ID, true, false, true),
//				new FieldVO("AD_Org_ID", Msg.translate(serverCtx, "AD_Org_ID"), "o.Name", DisplayTypeConstants.String, true),
//				new FieldVO("DocumentNo", Msg.translate(serverCtx, "DocumentNo"), "ic.DocumentNo", DisplayTypeConstants.String, true),
//				new FieldVO("SAV_STATUS", "Statut dossier", "ic.SAV_STATUS", DisplayTypeConstants.String, true),
//				new FieldVO("C_BPartner_ID", Msg.translate(serverCtx, "C_BPartner_ID"), "bp.Name", DisplayTypeConstants.String, true),
//				new FieldVO("Value", Msg.translate(serverCtx, "M_Product_ID"), "p.Value", DisplayTypeConstants.String, true),
//				new FieldVO("Marque", Msg.translate(serverCtx, "Y_Marque_ID"), "ym.name", DisplayTypeConstants.String, true),
//				new FieldVO("Description", Msg.translate(serverCtx, "Description"), "p.Description", DisplayTypeConstants.String, true),
//				new FieldVO("Repairer","Réparateur", "bpv.Name", DisplayTypeConstants.String, true),
//				
//		},
//		"",
//		//	FROM
//		"C_Order ic "
//		+"inner join AD_Org o ON o.ad_org_id=ic.ad_org_id "
//		+"inner join C_BPartner bp ON bp.c_bpartner_id=ic.c_bpartner_id "
//		+"inner join C_DocType dt ON ic.C_DocType_ID=dt.C_DocType_ID "
//		+"inner join C_OrderLine il ON ic.C_Order_ID=il.C_Order_ID "
//		+"inner join M_Product p ON p.M_Product_ID=il.M_Product_ID "
//		+"left outer join Y_Marque ym ON ym.Y_Marque_ID=p.Y_Marque_ID "
//		+"left outer join C_BPartner bpv ON ic.Vendor_ID=bpv.C_BPartner_ID ",
//		//	WHERE
//		" ic.Sav_Status is not null"
//		+" AND ic.AD_Client_ID=?", 
//		true, false, null) { //null means don't define security sql access here. Security access code is added manually
//			@Override
//			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {
//				ArrayList<Object> params = new ArrayList<Object>(1);
//				params.add(ctx.getAD_Client_ID());
//
//				StringBuffer otherClause = new StringBuffer();
//				if((windowCtx.get("AD_Org_ID") != null) && !"0".equals(windowCtx.get("AD_Org_ID"))) {
//					otherClause.append("AND ic.AD_Org_ID=?");
//					params.add(windowCtx.get("AD_Org_ID"));
//				}
//				
//				if((windowCtx.get("C_BPartner_ID") != null) && !"".equals(windowCtx.get("C_BPartner_ID"))) {
//					otherClause.append("AND ic.C_BPartner_ID=?");
//					params.add(windowCtx.get("C_BPartner_ID"));
//				}					
//
//				if((windowCtx.get("SAV_STATUS") != null) && !"".equals(windowCtx.get("SAV_STATUS"))) {
//					otherClause.append("AND ic.Sav_Status=?");
//					params.add(windowCtx.get("SAV_STATUS"));
//				}
//				if((windowCtx.get("Vendor_ID") != null) && !"".equals(windowCtx.get("Vendor_ID"))) {
//					otherClause.append("AND bpv.C_BPartner_ID=?");
//					params.add(windowCtx.get("Vendor_ID"));
//				}
//				if((windowCtx.get("M_Product_ID") != null) && !"".equals(windowCtx.get("M_Product_ID"))) {
//					otherClause.append("AND p.M_Product_ID=?");
//					params.add(windowCtx.get("M_Product_ID"));
//				}
//				if((windowCtx.get("Y_Marque_ID") != null) && !"".equals(windowCtx.get("Y_Marque_ID"))) {
//					otherClause.append("AND ym.Y_Marque_ID=?");
//					params.add(windowCtx.get("Y_Marque_ID"));
//				}	
//				if((windowCtx.get("COrderID") != null) && !"".equals(windowCtx.get("COrderID"))) {
//					otherClause.append("AND upper(ic.documentno) like upper(?)");
//					params.add("%"+windowCtx.get("COrderID")+"%");
//				}	
//				
//				String sql = getComponentSQL(null, null, fieldVO, otherClause.toString(), countOnly, asc, sortCol);
//
//				return new QueryWithBindings( sql, params );
//			}
//
//			@Override
//			protected String getDefaultOrderBy()
//			{
//				return " ORDER BY ic.DocumentNo";
//			}
//			
//		});
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
//		FieldVO fVO_printShipment = new FieldVO("IsPrint","Imprimer étiquettes", DisplayTypeConstants.YesNo);
//		fVO_printShipment.IsMandatoryUI = true;
//		fVO_printShipment.DefaultValue = "N";
//		components.add(new SearchComponentImpl(new FieldVO[]{f_SavStatusTarget,f_PartnerRepairerTarget,fVO_printShipment}));
	}//constructor

	@Override
	public ChangeVO processCallback(String sender) {
//		// TODO Auto-generated method stub
//		ChangeVO change = new ChangeVO();
//		if(sender.equals(GlobalMessageConstants.PROCESS))
//			generate(change, serverCtx, windowCtx, ReportEngine.SHIPMENT);
//		else if(sender.equals("GenSavQuotation")){
//			generate(change, serverCtx, windowCtx, ReportEngine.SHIPMENT);
//			System.out.println("OK");
//		}
//		return change;
		return null;
	}	




	/**************************************************************************
	 *	Change Status
	 */
	private void generate (ChangeVO change, Ctx ctx, WindowCtx windowCtx, int mode)
	{
//		Trx trx = null;
//		StringBuffer whereClause = new StringBuffer("C_Order_ID");
//
//
//
//		ArrayList<String[]> selectedValues = null;
//		if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
//			QueryVO queryVO = windowCtx.getQueryVO(1);
//			TableModel model = ((TableComponentImpl) components.get(1)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS,false, true, -1);
//			selectedValues = new ArrayList<String[]>();
//			for( int row = 0; row < model.rows(); ++row ){
//				selectedValues.add(model.getRow(row));
//			}
//		} else {
//			selectedValues = windowCtx.getSelectedRows( 1 );
//		}
//		if(selectedValues.size() == 0) {
//			change.addError("No rows selected");
//			return;
//		}
//		if(selectedValues.size() > 1)
//			whereClause.append(" IN (");
//		else
//			whereClause.append("=");
//		for (int i = 0; i < selectedValues.size(); i++)
//		{
//			if (i > 0)
//				whereClause.append(",");
//
//			whereClause.append(selectedValues.get(i)[0]);
//		}
//
//		if (selectedValues.size() > 1)
//			whereClause.append(")");
//		
//		String[] order_ID =whereClause.toString().toUpperCase().replace("(","").replace(")","").replace("C_ORDER_ID=","").replace("C_ORDER_ID IN","").replace(" ","").split(",");
//		String[] lastStatus = new String[order_ID.length];
//		String[] lastRepairer = new String[order_ID.length];
//		MOrder[] orderList = new MOrder[order_ID.length];
//		String[] repairerList = new String[order_ID.length];
//		for (int i = 0; i < orderList.length; i++) {
//			MOrder order = new MOrder(Env.getCtx(),Integer.parseInt(order_ID[i]),trx);
//			lastStatus[i] = (String)order.get_Value("SAV_STATUS");
//			Integer vendor_id =(Integer) order.get_Value("Vendor_ID");
//			if(vendor_id != null)
//				lastRepairer[i] = new MBPartner(Env.getCtx(),vendor_id, trx).getName();
//			else
//				lastRepairer[i]= "&nbsp;";
//		}
//		
//		//post processing	
//		
//		//	Set Selection
//		String sql = "UPDATE C_Order SET ";
//		if((windowCtx.get("SAV_STATUS_TARGET") != null) && !"".equals(windowCtx.get("SAV_STATUS_TARGET")))
//			sql = sql.concat("SAV_STATUS = ? ");
//		if((windowCtx.get("Vendor_ID_Target") != null) && !"".equals(windowCtx.get("Vendor_ID_Target"))){
//			if(sql.contains("SAV_STATUS"))
//				sql = sql.concat(",");
//			sql = sql.concat("VENDOR_ID = ? ");
//		}
//		sql = sql.concat("WHERE ").concat(whereClause.toString());
//		ArrayList<Object> params = new ArrayList<Object>();
//		if((windowCtx.get("SAV_STATUS_TARGET") != null) && !"".equals(windowCtx.get("SAV_STATUS_TARGET")))
//			params.add(windowCtx.get("SAV_STATUS_TARGET"));
//		if((windowCtx.get("Vendor_ID_Target") != null) && !"".equals(windowCtx.get("Vendor_ID_Target")))
//			params.add(windowCtx.get("Vendor_ID_Target"));
//		int no = DB.executeUpdate(sql,params.toArray(new Object[params.size()]),trx);
//		if (no == 0)
//		{
//			String msg = "No SAV Changed";     //  not translated!
//			log.config(msg);
//			change.addError(msg);
//			return;
//		}
//		StringBuffer summary = new StringBuffer();
//		summary.append("<style type=\"text/css\">@media print{ body * { visibility: hidden; } .compiere-main-content-window * { visibility: visible; zoom:105%;}}</style>");
//		summary.append("<div id=\"printable\">");
//		if((windowCtx.get("SAV_STATUS_TARGET") != null) && !"".equals(windowCtx.get("SAV_STATUS_TARGET"))){
//			for (int i = 0; i < order_ID.length; i++) {
//				String sql2 = "Insert into Z_SAVSTATUS (AD_CLIENT_ID,AD_ORG_ID,C_ORDER_ID,CREATED,CREATEDBY,DATEMOUVEMENT,ISACTIVE,SAV_STATUS,UPDATED,UPDATEDBY,Z_SAVSTATUS_ID)"
//							  +"values (?,?,?,SysDate,?,SysDate,?,?,SysDate,?,ad_sequence_nextno('Z_SavStatus'))";
//				MOrder order = new MOrder(Env.getCtx(),Integer.parseInt(order_ID[i]),trx);
//				orderList[i] = order;
//				ArrayList<Object> params2 = new ArrayList<Object>();
//				params2.add(order.getAD_Client_ID());
//				params2.add(order.getAD_Org_ID());
//				params2.add(order.get_ID());
//				params2.add(Env.getCtx().getAD_User_ID());
//				params2.add("Y");
//				params2.add(windowCtx.get("SAV_STATUS_TARGET"));
//				params2.add(Env.getCtx().getAD_User_ID());
//				DB.executeUpdate(sql2,params2.toArray(new Object[params2.size()]), trx );
//				
//				try
//				{
//				boolean genAction = MTransactionMsg.generateMsgFromSAV(order,trx);
//				}
//				catch (CompiereException e){
//					change.addError(e.getMessage());
//					return;
//					
//				}
//	
//			}
//			log.config("Set=" + no);
//			summary.append("<br/><br/><h2>Dossiers qui ont changés de status</h2><table border=\"1\"><tr><th>Document N°</th><th>Ancien statut</th><th>Nouveau statut</th></tr>");
//			for (int i = 0; i < orderList.length; i++) {
//				summary.append("<tr><td>"+orderList[i].getDocumentNo()+"</td><td>"+lastStatus[i]+"</td><td>"+orderList[i].get_Value("SAV_STATUS")+"</td></tr>");
//			}
//			summary.append("</table>");
//		}
//		if((windowCtx.get("Vendor_ID_Target") != null) && !"".equals(windowCtx.get("Vendor_ID_Target"))){
//			for (int i = 0; i < order_ID.length; i++) {
//				MOrder order = new MOrder(Env.getCtx(),Integer.parseInt(order_ID[i]),trx);
//				orderList[i] = order;
//				Integer vendor_id =(Integer) order.get_Value("Vendor_ID");
//				if(vendor_id != null)
//					repairerList[i] = new MBPartner(Env.getCtx(),vendor_id, trx).getName();
//				else
//					repairerList[i]="&nbsp;";
//			}
//			summary.append("<br/><br/><h2>Dossiers qui ont changés de réparateur</h2><table border=\"1\"><tr><th>Document N°</th><th>Ancien réparateur</th><th>Nouveau réparateur</th></tr>");
//			for (int i = 0; i < orderList.length; i++) {
//				summary.append("<tr><td>"+orderList[i].getDocumentNo()+"</td><td>"+(lastRepairer[i]==null?" ":lastRepairer[i])+"</td><td>"+repairerList[i]+"</td></tr>");
//			}
//			summary.append("</table><br/>");
//		}
////		summary.append("</div><p><style type=\"text/css\">@media print{body:not(.compiere-main-content-window) {display:none;}}</style><input type=\"button\" onClick=\"window.print()\" value=\"Print This Page\"/></p>");
//		summary.append("</div><br/><br/>");
//		
////		//	Prepare Process
//		String labelsHTML = "";
//		if("Y".equals(windowCtx.get("IsPrint"))){
//			int AD_Process_ID = DB.getSQLValue(trx,"select ad_process_id from ad_process where value ='SAV_Labels_Print' ");
//			if(AD_Process_ID > 0){
//				HashMap<String, ValueNamePair> parameters = new HashMap<String, ValueNamePair>();
//				ArrayList<FieldVO> fieldVOs = new ArrayList<FieldVO>(6);
//				fieldVOs.add(new FieldVO("C_Order_ID","C_Order_ID", DisplayTypeConstants.String));
//				ProcessInfoVO processInfo = ReportServiceImpl.staticGetProcessInfoByProcessID(AD_Process_ID, windowNO, ctx);
//				processInfo.Parameters = fieldVOs;
//				String ids = whereClause.toString().toUpperCase().replace("(","").replace(")","").replace("C_ORDER_ID=","").replace("C_ORDER_ID IN","").replace(" ","");
//				parameters.put("C_Order_ID", new ValueNamePair(ids,ids));
//				ProcessInfoVO result = ReportServiceImpl.startProcess(processInfo, serverCtx, parameters);
//				labelsHTML = labelsHTML.concat("<p><h2>Étiquette(s) générée(s) : <a href=\"Export?p_file_name="+result.FileName+"\">"+result.FileName+"</a></h2></p>");
//			}else{
//				change.addError("Pas de processus d'impression configuré");
//				return;
//			}
//		}
//		if(change.changedFields == null) 
//			change.changedFields = new HashMap<String, String>();
//		change.changedFields.put("isProcess", "Y");
//		change.changedFields.put("summary","Nombre de dossiers traités : "+no+"<br/>"+labelsHTML);
//		change.changedFields.put("logInfo" ,summary.toString());
	}   //  Change status

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}
	
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.PRESTA_CALANDER;
	}
}
