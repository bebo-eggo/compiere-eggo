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
import org.compiere.framework.PO;
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
import org.compiere.util.Trx;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;

import com.audaxis.compiere.model.X_Z_OrderLinePosAction;
import com.audaxis.compiere.model.X_Z_PosWfAction;
import com.audaxis.compiere.model.X_Z_TransactionMsg;


public class ValidateMessageWindowImpl extends WindowImpl implements ASyncProcess 
{
	private static CLogger log = CLogger.getCLogger( ValidateMessageWindowImpl.class );
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	protected int ADRole_ID;
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
	
 	public ValidateMessageWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		serverCtx.setContext("IsSOTrx", "Y");

		FieldVO FieldRefresh = new FieldVO( "Refresh","Rafraichir les messages", DisplayTypeConstants.Button);
//		MLookup actionL = MLookupFactory.get( serverCtx, windowNO, 1005951, DisplayTypeConstants.Table);
//		fieldAction.listBoxVO = Util.convertLookupToVO( actionL, fieldAction.IsMandatoryUI, "" );
		FieldVO f_COrder = new FieldVO("COrderID", "N° document", DisplayTypeConstants.String );
		//f_COrder.DefaultValue="BDV-%";
		f_COrder.listBoxVO = new ListBoxVO();
		
		components.add( new SearchComponentImpl( new FieldVO[] {FieldRefresh,f_COrder} ) );
		
		ADRole_ID = serverCtx.getAD_Role_ID();
		if(ADRole_ID == 1002084)
			ADRole_ID = 1000836;
//		M_product_category_ID
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO("Z_TransactionMsg_ID","Z_TransactionMsg_ID", "trxMsg.Z_TransactionMsg_ID", DisplayTypeConstants.ID, true, false, true),
				//new FieldVO("OrgTrx","Magasin origine", "orgTrx.name", DisplayTypeConstants.String, true),
				new FieldVO("Article","Article", "p.value || CASE when trxMsg.Z_REFERENCEART is not null and upper(trxMsg.Z_REFERENCEART) <> upper(p.value) THEN ' - ('||trxMsg.Z_REFERENCEART||')' END ", DisplayTypeConstants.String, true),
				new FieldVO("Qty","Qté", "trxMsg.quantity", DisplayTypeConstants.Number, true),
				new FieldVO("Action","Action", "action.description", DisplayTypeConstants.String, true),
				new FieldVO("QtyAvailable","Qté dispo", "(SELECT bomQtyAvailable(trxMsg.M_Product_ID,(SELECT max(M_Warehouse_ID) FROM AD_OrgInfo r WHERE r.AD_Org_ID = trxMsg.AD_Org_ID ),0) FROM dual)", DisplayTypeConstants.Number, true),
				new FieldVO("QtyFourn","Qté Cmd Fourn.", "bomQtyOrderedByORG(trxMsg.m_product_id,trxMsg.ad_orgTrx_id) as QtyCmdFourn ", DisplayTypeConstants.Number, true),
				new FieldVO("Qty","Qté Trft", "bomQtyTftByORG(trxMsg.m_product_id,trxMsg.ad_orgTrx_id) as QtyTrft ", DisplayTypeConstants.Number, true),
				new FieldVO("Gamme","Gam.", "zg.Name", DisplayTypeConstants.String, true),
				new FieldVO("BPartner","Client", "(partner.name || ' ' ||partner.name2) as name", DisplayTypeConstants.String, true),
				new FieldVO("DocumentNo","N° bon", "trxMsg.DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("Date","Date", "trxMsg.actionDate", DisplayTypeConstants.Date, true),
				new FieldVO("Product_Price","Prix art.", "trxMsg.Product_Price", DisplayTypeConstants.Number, true),
				new FieldVO("Fournisseur","Fournisseur", "trxMsg.Fournisseur", DisplayTypeConstants.String, true),
				new FieldVO("Discontinued","Prod. arr.","p.Discontinued",DisplayTypeConstants.YesNo,true),
				//new FieldVO("OrgTo","Magasin destination", "orgTo.name", DisplayTypeConstants.String, true),
				//new FieldVO("DocumentNo", Msg.translate(serverCtx, "DocumentNo"), "trxMsg.DocumentNo", DisplayTypeConstants.String, true),
				//new FieldVO("Activity","Statut", "act.description", DisplayTypeConstants.String, true),
				//new FieldVO("RequisitionOrder","Demande d'achat", "trxMsg.requisitionNo", DisplayTypeConstants.String, true),
				//new FieldVO("PurchaseOrder","Ordre d'achat", "trxMsg.purchaseOrderNo", DisplayTypeConstants.String, true),
				//new FieldVO("ReceiptNo","No réception", "trxMsg.poReceiptNo", DisplayTypeConstants.String, true),
				//new FieldVO("Z_referenceArt","Réf. Article", "trxMsg.Z_referenceArt", DisplayTypeConstants.String, true),
				//new FieldVO("C_OrderLine_ID","C_OrderLine_ID", "trxMsg.C_OrderLine_ID", DisplayTypeConstants.ID, true, false, true),
				//new FieldVO("Z_PosWfAction_ID","Z_PosWfAction_ID", "trxMsg.Z_PosWfAction_ID", DisplayTypeConstants.ID, true, false, true),
				//new FieldVO("QtyFourn","Qté Cmd Fourn.", "bomQtyOrderedByORG(trxMsg.m_product_id,trxMsg.ad_orgTrx_id)", DisplayTypeConstants.Number, true),
				//new FieldVO("MarqueTxt","Marque", "trxMsg.MarqueTxt", DisplayTypeConstants.String, true),
				
		},
		"",
		//	FROM+
		"z_transactionmsg trxMsg "
		+"inner join Z_PosWfActivity act ON trxMsg.Z_PosWfActivity_ID = act.Z_PosWfActivity_ID "
		+"inner join Z_PosWfAction action ON trxMsg.Z_PosWfAction_ID = action.Z_PosWfAction_ID "
		+"inner join z_posactionactivity activity ON (action.Z_PosWfAction_ID = activity.Z_PosWfAction_ID AND act.Z_PosWfActivity_ID = activity.Z_PosWfActivity_ID)"
		+"inner join M_product p ON trxMsg.m_product_id=p.m_product_id "
		+"inner join Z_GAMME zg ON p.Z_GAMME_ID=zg.Z_GAMME_ID "
		+"inner join Ad_org orgTo ON trxMsg.ad_orgTo_id=orgTo.ad_org_id "
		+"inner join Ad_org orgTrx ON trxMsg.ad_orgTrx_id=orgTrx.ad_org_id "
		+"inner join C_BPartner partner ON trxMsg.C_BPartner_ID=partner.C_BPartner_ID ",
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
		") AND (activity.isStocked ='N' OR (activity.isStocked ='Y' AND activity.isMvtIn='Y')) ", 
		true, false, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {

				StringBuffer otherClause = new StringBuffer();
				
				ArrayList<Object> params = new ArrayList<Object>(1);
				params.add(ctx.getAD_Org_ID());
				params.add(ADRole_ID);
				params.add(ctx.getAD_Org_ID());
				params.add(ADRole_ID);
				params.add(ADRole_ID);
				
				if((windowCtx.get("COrderID") != null) && !"".equals(windowCtx.get("COrderID"))) {
					otherClause.append("AND trxMsg.DocumentNo like ?");
					params.add(windowCtx.get("COrderID")+"%");
				}
				
				//Smile 2857
				
				otherClause.append(" AND Exists (Select 1 from C_order co where co.DocumentNo = trxMsg.DocumentNo and trxMsg.AD_Client_ID = co.AD_Client_ID "
						+ "and co.AD_Org_ID = trxMsg.AD_Org_ID and co.C_DOCTYPETARGET_ID not in (1000846,1000095,1004041,1003716,1000745,1000101,1000102)) ");
				
				otherClause.append(" AND Exists (Select 1 from C_orderLine col where col.C_ORderLine_ID = trxMsg.C_ORderLine_ID and col.QtyOrdered <> 0) ");
								
				String sql = getComponentSQL(null, null, fieldVO,otherClause.toString(), countOnly, asc, sortCol);

				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				// return " ORDER BY trxMsg.created,trxMsg.DocumentNo,partner.name,partner.name2 DESC";
				return " ORDER BY trxMsg.actionDate,trxMsg.DocumentNo,partner.name,partner.name2 DESC";
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
		FieldVO validate = new FieldVO("Validate","Valider", DisplayTypeConstants.YesNo);
		validate.IsMandatoryUI = false; // check box instead of DDLB with null option
		
//		FieldVO f_actionsTarget= new FieldVO( "ActionCible", "Nouvelle action", DisplayTypeConstants.Table);
//		MLookup actionLTarget = MLookupFactory.get( serverCtx, windowNO, 1005951, DisplayTypeConstants.Table);
//		f_actionsTarget.listBoxVO =  Util.convertLookupToVO( actionLTarget, f_actionsTarget.IsMandatoryUI, "" );
		
//		FieldVO f_orgTo= new FieldVO( "orgTo", "Magasin destination", DisplayTypeConstants.Table);
//		MLookup orgToL = MLookupFactory.get( serverCtx, windowNO, 1005784, DisplayTypeConstants.Table);
//		f_orgTo.listBoxVO =  Util.convertLookupToVO( orgToL, f_orgTo.IsMandatoryUI, "" );

		components.add(new SearchComponentImpl(new FieldVO[]{validate,/*f_actionsTarget,f_orgTo*/}));
	}//constructor

	@Override
	public ChangeVO processCallback(String sender) {
		// TODO Auto-generated method stub
		ChangeVO change = new ChangeVO();
		if(sender.equals(GlobalMessageConstants.PROCESS))
			generate(change, serverCtx, windowCtx, ReportEngine.SHIPMENT);
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
		
		String typeValidate = windowCtx.get("Validate");
		if(typeValidate == null){
			change.addError("Type de validation obligatoire");
			return;
		}
		if(windowCtx.get("ActionCible") != null){
			X_Z_PosWfAction nAction = new X_Z_PosWfAction(ctx, Integer.parseInt(windowCtx.get("ActionCible")), trx);
			if(nAction.isToOrgRequired() && ( windowCtx.get("orgTo") == null || Integer.parseInt(windowCtx.get("orgTo")) < 1) ){
				change.addError("Magasin de destination obligatoire");
				return;
			}
		}

		
		String sql = null;
		if(typeValidate.equals("Y")){
			sql = "UPDATE Z_TransactionMsg SET IsValidatedRequest = 'Y' WHERE ";
		}
		else
			sql = "UPDATE Z_TransactionMsg SET IsCancelRequest = 'Y' WHERE ";
		sql = sql.concat(whereClause.toString());
		ArrayList<Object> params = new ArrayList<Object>();
		int no = DB.executeUpdate(sql,params.toArray(new Object[params.size()]),trx);	
		if (no == 0)
		{
			String msg = "No message validated";     //  not translated!
			log.config(msg);
			change.addError(msg);
			return;
		}
		if(!typeValidate.equals("Y")){
			for (int i = 0; i < selectedValues.size(); i++) {
				if(windowCtx.get("ActionCible") != null){
					// Récupération de la ligne d'action
					int z_orderlinePosAction_ID = DB.getSQLValue(trx,"Select Z_OrderLinePosAction_ID from Z_OrderLinePosAction where C_OrderLine_ID=? AND Z_PosWfAction_ID=?",new Object[]{Integer.parseInt(selectedValues.get(i)[15]),Integer.parseInt(selectedValues.get(i)[16])});
					X_Z_OrderLinePosAction orderLineAction = new X_Z_OrderLinePosAction(ctx, z_orderlinePosAction_ID, trx);
					// Modification de la ligne d'action
					orderLineAction.setZ_PosWfAction_ID(Integer.parseInt(windowCtx.get("ActionCible")));
					orderLineAction.save(trx);
					// Récupération de la nouvelle action
					X_Z_PosWfAction newAction = new X_Z_PosWfAction(ctx, Integer.parseInt(windowCtx.get("ActionCible")), trx);
					// Récupération de la 1ère activité de la nouvelle action
					int activity_id = DB.getSQLValue(trx,"SELECT Z_PosWfActivity_ID FROM Z_PosActionActivity WHERE Z_PosWfAction_id = ? AND rownum=1 order by seqno",newAction.getID());
					// Créaction du message de transaction sur base de l'ancien message
					X_Z_TransactionMsg trxMsgOld = new X_Z_TransactionMsg(ctx, Integer.parseInt(selectedValues.get(i)[0]), trx);
					X_Z_TransactionMsg trxMsgNew = new X_Z_TransactionMsg(ctx,0, trx);
					trxMsgNew.setAD_Client_ID(trxMsgOld.getAD_Client_ID());
					trxMsgNew.setAD_Org_ID(trxMsgOld.getAD_Org_ID());
					PO.copyValues(trxMsgOld, trxMsgNew);
					trxMsgNew.setZ_PosWfAction_ID(Integer.parseInt(windowCtx.get("ActionCible")));
					trxMsgNew.setZ_PosWfActivity_ID(activity_id);
					trxMsgNew.setIsProcessed("N");
					trxMsgNew.setIsCancelRequest(false);
					trxMsgNew.setIsValidatedRequest(false);
					if(newAction.isToOrgRequired()){
						trxMsgNew.setAD_OrgTo_ID(Integer.parseInt(windowCtx.get("orgTo")));
					}
					trxMsgNew.save();
				}
			}
		}		
		
		StringBuffer summary = new StringBuffer();
		
		if(change.changedFields == null) 
			change.changedFields = new HashMap<String, String>();
		change.changedFields.put("isProcess", "Y");
		change.changedFields.put("summary","Nombre de message "+(windowCtx.get("Validate").equals("Y")?"validé":"refusé")+" : "+no);
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
