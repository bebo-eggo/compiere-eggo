package org.compiere.gwt.server.window;

/**
 * @author 
 * 
 */


import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;

import org.compiere.common.QueryVO;
import org.compiere.common.TableModel;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.db.QueryUtil;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.TableComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgPOS;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;

import com.audaxis.compiere.pos.process.PosCtx;


public class ValidateShipMessageWindowImpl extends WindowImpl implements ASyncProcess 
{
	private static CLogger log = CLogger.getCLogger( ValidateShipMessageWindowImpl.class );
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
	
 	public ValidateShipMessageWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
// 		PosCtx.setConstants(serverCtx,null);
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;
		
		serverCtx.setContext("IsSOTrx", "Y");
		FieldVO FieldRefresh = new FieldVO( "Refresh","Raffraichir les messages", DisplayTypeConstants.Button);
//		FieldVO fieldAction = new FieldVO( "Z_PosWfAction_ID","Action", DisplayTypeConstants.Table);
//		MLookup actionL = MLookupFactory.get( serverCtx, windowNO, 1005951, DisplayTypeConstants.Table);
//		fieldAction.listBoxVO = Util.convertLookupToVO( actionL, fieldAction.IsMandatoryUI, "" );
		FieldVO f_COrder = new FieldVO("COrderID", "N° document", DisplayTypeConstants.String );
		f_COrder.DefaultValue="BDV-%";
		f_COrder.listBoxVO = new ListBoxVO();
		components.add( new SearchComponentImpl( new FieldVO[] {FieldRefresh,f_COrder} ) );
		
		
//		M_product_category_ID
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO("Z_TransactionMsg_ID","Z_TransactionMsg_ID", "trxMsg.Z_TransactionMsg_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("OrgTrx","Organisation origine", "orgTrx.name", DisplayTypeConstants.String, true),
				new FieldVO("Article","Article", "p.value||'-'||p.name", DisplayTypeConstants.String, true),
				new FieldVO("Qty","Quantité", "trxMsg.quantity", DisplayTypeConstants.Number, true),
				new FieldVO("Action","Action", "action.description", DisplayTypeConstants.String, true),
				new FieldVO("OrgTo","Organisation cible", "orgTo.name", DisplayTypeConstants.String, true),
				new FieldVO("Product_Price","Prix article", "trxMsg.Product_Price", DisplayTypeConstants.Number, true),
				new FieldVO("BPartner","Client", "(partner.name ||' '||partner.name2) as name", DisplayTypeConstants.String, true),
				new FieldVO("Fournisseur","Fournisseur", "trxMsg.Fournisseur", DisplayTypeConstants.String, true),
				new FieldVO("MarqueTxt","Marque", "trxMsg.MarqueTxt", DisplayTypeConstants.String, true),
				new FieldVO("DocumentNo", Msg.translate(serverCtx, "DocumentNo"), "trxMsg.DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("Date","Date", "trxMsg.actionDate", DisplayTypeConstants.Date, true),
				new FieldVO("Activity","Activité", "act.description", DisplayTypeConstants.String, true),
				new FieldVO("RequisitionOrder","Demande d'achat", "trxMsg.requisitionNo", DisplayTypeConstants.String, true),
				new FieldVO("PurchaseOrder","Ordre d'achat", "trxMsg.purchaseOrderNo", DisplayTypeConstants.String, true),
				new FieldVO("ReceiptNo","No réception", "trxMsg.poReceiptNo", DisplayTypeConstants.String, true),
				new FieldVO("Z_referenceArt","Article à créer", "trxMsg.Z_referenceArt", DisplayTypeConstants.String, true),
		},
		"",
		//	FROM
		"z_transactionmsg trxMsg "
		+"inner join Z_PosWfActivity act ON trxMsg.Z_PosWfActivity_ID = act.Z_PosWfActivity_ID "
		+"inner join Z_PosWfAction action ON trxMsg.Z_PosWfAction_ID = action.Z_PosWfAction_ID "
		+"inner join z_posactionactivity activity ON (action.Z_PosWfAction_ID = activity.Z_PosWfAction_ID AND act.Z_PosWfActivity_ID = activity.Z_PosWfActivity_ID)"
		+"inner join M_product p ON trxMsg.m_product_id=p.m_product_id "
		+"inner join Ad_org orgTo ON trxMsg.ad_orgTo_id=orgTo.ad_org_id "
		+"inner join Ad_org orgTrx ON trxMsg.ad_orgTrx_id=orgTrx.ad_org_id "
		+"inner join C_BPartner partner ON trxMsg.C_BPartner_ID=partner.C_BPartner_ID "
		+"inner join C_OrderLine ol ON trxmsg.C_OrderLine_ID=ol.C_OrderLine_ID "
		+"inner join C_Order o ON ol.C_Order_ID=o.C_Order_ID ",
		//	WHERE
		" trxMsg.z_transactionmsg_id in "+
		"(select z_transactionmsg_id "+
		"from z_transactionmsg tr "+
		"where((tr.ad_orgtrx_id = ? AND tr.ad_org_id = tr.ad_orgtrx_id "+
		"					AND "+
		"					EXISTS (select 1 "+
		"									from z_posactionActivity act "+
		"									where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id "+
		"												and act.isvalidatedbyorgfrom = 'Y'and act.ad_role_id = ?)     "+
		"				)"+
		"				or"+
		"				(tr.ad_orgto_id = ? AND tr.ad_org_id = tr.ad_orgto_id "+
		"					AND "+
		"					EXISTS (select 1 "+
		"									from z_posActionActivity act "+
		"									where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id "+
		"												and act.isvalidatedbyorgto = 'Y' and act.ad_role_id = ? ) "+    
		"				)"+
		"				or  "+
		"				EXISTS (select 1 "+
		"								from z_posActionActivity act "+
		"								where act.z_poswfaction_id = tr.z_poswfaction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id "+
		"								and act.isvalidatedbyorgfrom = 'Y'  and act.isvalidatedbyorgto = 'Y' and act.ad_role_id = ? )  "+
		"			)  "+
		"			and ( tr.isvalidatedrequest = 'N' and tr.iscancelrequest = 'N' )"+
		") AND (activity.isStocked ='Y' AND activity.isMvtIn='N') AND (o.C_DocTypeTarget_ID <> ? OR ol.IsPrepared='Y') ", 
		true, false, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {
				StringBuffer otherClause = new StringBuffer();
				MOrgPOS orgPOS = MOrgPOS.getOrgPos(ctx, ctx.getAD_Org_ID(), (Trx)null);
				ArrayList<Object> params = new ArrayList<Object>(1);
				params.add(ctx.getAD_Org_ID());
				params.add(ctx.getAD_Role_ID());
				params.add(ctx.getAD_Org_ID());
				params.add(ctx.getAD_Role_ID());
				params.add(ctx.getAD_Role_ID());
				params.add(orgPOS.getDocType_WebSales_ID());
				
				if((windowCtx.get("COrderID") != null) && !"".equals(windowCtx.get("COrderID"))) {
					otherClause.append("AND trxMsg.DocumentNo like ?");
					params.add(windowCtx.get("COrderID"));
				}
				
				String sql = getComponentSQL(null, null, fieldVO,otherClause.toString(), countOnly, asc, sortCol);

				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY trxMsg.created,trxMsg.DocumentNo DESC";
			}
			
		});
		//FieldVO f_SavStatusTarget= new FieldVO( "SAV_STATUS_TARGET", Msg.translate( serverCtx, "SAV_STATUS TARGET" ), DisplayTypeConstants.List, false );
//		FieldVO f_SavStatusTarget= new FieldVO( "SAV_STATUS_TARGET", "Statut cible", DisplayTypeConstants.List, false );
//		MLookup SavStatusLTarget = MLookupFactory.get( serverCtx, windowNO, 1006878, DisplayTypeConstants.List );
//		//FieldVO fTypePiece  = new FieldVO( "Type_piece", Msg.translate( serverCtx, "Type_piece" ), DisplayTypeConstants.List, false );
//		f_SavStatusTarget.listBoxVO =  Util.convertLookupToVO( SavStatusLTarget, f_SavStatusTarget.IsMandatoryUI, "" );
//		//FieldVO fVO_printShipment = new FieldVO("IsPrint",  Msg.translate( serverCtx, "Change Status" ), DisplayTypeConstants.YesNo);
//		FieldVO f_PartnerRepairer= new FieldVO( "Vendor_ID", "Réparateur",DisplayTypeConstants.Table);
//		MLookup M_PartnerRepairer = MLookupFactory.get( serverCtx, windowNO,1008031, DisplayTypeConstants.Table);	
//		f_PartnerRepairer.listBoxVO = Util.convertLookupToVO( M_PartnerRepairer, f_PartnerRepairer.IsMandatoryUI, "" );
//		f_PartnerRepairer.listBoxVO.KeyColumn ="C_BPartner_ID";
//		FieldVO f_generateDocument= new FieldVO("GenSavQuotation", "Générer ordre",DisplayTypeConstants.Button);
		components.add(new SearchComponentImpl(new FieldVO[]{}));
	}//constructor

	@Override
	public ChangeVO processCallback(String sender) {
		// TODO Auto-generated method stub
		ChangeVO change = new ChangeVO();
		if(sender.equals(GlobalMessageConstants.PROCESS))
			generate(change, serverCtx, windowCtx, ReportEngine.SHIPMENT);
		else if(sender.equals("GenSavQuotation")){
			generate(change, serverCtx, windowCtx, ReportEngine.SHIPMENT);
			System.out.println("OK");
		}
		return change;
	}	




	/**************************************************************************
	 *	Change Status
	 */
	private void generate (ChangeVO change, Ctx ctx, WindowCtx windowCtx, int mode)
	{

		Trx trx = null;
		StringBuffer whereClause = new StringBuffer("Z_TransactionMsg_ID");



		ArrayList<String[]> selectedValues = null;
		if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
			QueryVO queryVO = windowCtx.getQueryVO(1);
			TableModel model = ((TableComponentImpl) components.get(1)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS,false, true, -1);
			selectedValues = new ArrayList<String[]>();
			for( int row = 0; row < model.rows(); ++row ){
				selectedValues.add(model.getRow(row));
			}
		} else {
			selectedValues = windowCtx.getSelectedRows(1);
		}
		if(selectedValues.size() == 0) {
			change.addError("No rows selected");
			return;
		}
		if(selectedValues.size() > 1)
			whereClause.append(" IN (");
		else
			whereClause.append("=");
		for (int i = 0; i < selectedValues.size(); i++)
		{
			if (i > 0)
				whereClause.append(",");

			whereClause.append(selectedValues.get(i)[0]);
		}

		if (selectedValues.size() > 1)
			whereClause.append(")");
		
//		String[] Z_TransactionMsg_ID =whereClause.toString().toUpperCase().replace("(","").replace(")","").replace("C_ORDER_ID=","").replace("C_ORDER_ID IN","").replace(" ","").split(",");
		MOrg org = new MOrg(ctx, ctx.getAD_Org_ID(), trx);
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTimeInMillis(System.currentTimeMillis());
		String key = org.getValue()+cal.get(Calendar.YEAR)+(cal.get(Calendar.MONTH)+1)+cal.get(Calendar.DAY_OF_MONTH);
		String query = "SELECT max(batchno) from Z_transactionMsg WHERE batchNo like '"+key+"%' AND 1=?";
		String lastBatchNo = DB.getSQLValueString(trx, query,1);
		if(lastBatchNo != null){
			String[]tab =lastBatchNo.split(key);
			int seq = Integer.parseInt(tab[1]);
			seq++;
			key = key.concat(String.format("%03d",seq));
		}else{
			key = key.concat("001");
		}
		String sql = "UPDATE Z_TransactionMsg SET BatchNO = ?,IsValidatedRequest = 'Y' WHERE ";
		sql = sql.concat(whereClause.toString());
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(key);
		int no = DB.executeUpdate(sql,params.toArray(new Object[params.size()]),trx);
		if (no == 0)
		{
			String msg = "No Shipment";     //  not translated!
			log.config(msg);
			change.addError(msg);
			return;
		}
		StringBuffer summary = new StringBuffer();
		summary.append("Numéro du lot d'expédition : "+key);
		
		if(change.changedFields == null) 
			change.changedFields = new HashMap<String, String>();
		change.changedFields.put("isProcess", "Y");
		change.changedFields.put("summary","Nombre d'expéditions générées : "+no);
		change.changedFields.put("logInfo" ,summary.toString());
	}   //  Change status

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.SELECTIONAUTO;
	}
}
