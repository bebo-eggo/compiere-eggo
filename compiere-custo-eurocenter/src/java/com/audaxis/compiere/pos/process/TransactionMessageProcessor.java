package com.audaxis.compiere.pos.process;


import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.framework.PO;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MDocBaseType;
import org.compiere.model.MInventory;
import org.compiere.model.MInventoryLine;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocator;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MOrgPOS;
import org.compiere.model.MProduct;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.model.MWarehouse;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.model.MPosWfAction;
import com.audaxis.compiere.model.MPosWfActionActivity;
import com.audaxis.compiere.model.MPosWfActivity;
import com.audaxis.compiere.model.MTransactionMsg;
import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.util.CompiereException;


public class TransactionMessageProcessor {

	private CLogger log = CLogger.getCLogger(TransactionMessageProcessor.class);

	public TransactionMessageProcessor() {
	}


	public boolean  ProcessConfirmMsgFromOtherWH(Ctx ctx, int msgID, Trx trx0 ) throws Exception{
		if ( msgID < 1) throw new CompiereException("ERROR: Invalid parametre TransactionMessage ID");
		MTransactionMsg trMsg = new MTransactionMsg(ctx,msgID,trx0);
		MTransactionMsg initMsg = new MTransactionMsg(ctx,trMsg.get_ValueAsInt("InitialMsgID"),trx0);
		if (initMsg == null) throw new CompiereException("ERROR: Le message initial n'a pu être trouvé");
		else {

			initMsg.setIsValidatedRequest(trMsg.isValidatedRequest());
			initMsg.setIsCancelRequest(trMsg.isCancelRequest());
			trMsg.setIsValidatedRequest(false);
			trMsg.setIsCancelRequest(false);
			initMsg.save(trx0);
			ProcessMessage(ctx,initMsg.get_ID(),trx0);

			trMsg.setZ_PosWfActivity_ID(MPosWfActivity.getCOMPLETED_ACTIVITY());
			trMsg.setIsActive(false);
			trMsg.setIsProcessed("Y");
			trMsg.save(trx0);
		}

		return true;
	}

	public boolean  ProcessMessage(Ctx ctx, int msgID, Trx trx0 ) throws Exception{
		boolean cancelaction = false;
		MPosWfActionActivity currentActionActivity = null;
		MPosWfActionActivity newActionActivity = null;
		if ( msgID < 1) throw new CompiereException("ERROR: Invalid parametre TransactionMessage ID ");
		MTransactionMsg trMsg = new MTransactionMsg(ctx,msgID,trx0);
		int curActionActivity = MPosWfActionActivity.getActionActivity(trMsg.getZ_PosWfAction_ID(), trMsg.getZ_PosWfActivity_ID());

		// Human Validation Push Message in Next Action Activity or Reject Message

		// Perhaps send mail if the PM cancel the Action ! ?
		if (trMsg.isCancelRequest()){
			trMsg.setZ_PosWfActivity_ID(MPosWfActivity.getREJECTED_ACTION_ACTIVITY_ID());
			trMsg.setIsCancelRequest(false);
			trMsg.save(trx0);
			cancelaction = true;
			
			
		}


		if (trMsg.isValidatedRequest()){
			trMsg.setIsValidatedRequest(false);
			// Check for Action in current MVT ( Stock Transfert / Purchase Request .......

			MPosWfAction action = new MPosWfAction(ctx, trMsg.getZ_PosWfAction_ID(), trx0);
			if ("Y".equalsIgnoreCase(action.get_ValueAsString("IsSavAction")))
					CheckForActionSAV(ctx,trMsg,trx0);
			else
					CheckForAction(ctx,trMsg,trx0);

			int nextActionActivity = MPosWfActionActivity.getNextActivity(trMsg.getZ_PosWfAction_ID(), trMsg.getZ_PosWfActivity_ID());
			if (nextActionActivity < 1) trMsg.setError("ERREUR: Pas Activité suivante définie pour ce Message");
			else {
				currentActionActivity = new MPosWfActionActivity(ctx,curActionActivity,trx0);
				newActionActivity = new MPosWfActionActivity(ctx,nextActionActivity,trx0);
				trMsg.setZ_PosWfActivity_ID(newActionActivity.getZ_PosWfActivity_ID());
				if (newActionActivity.IsAutoValidation()) trMsg.setIsValidatedRequest(true);
				else  trMsg.setIsValidatedRequest(false);
				if (! newActionActivity.IsAutoValidation() && ! newActionActivity.isValidatedByOrgFrom() && ! newActionActivity.isValidatedByOrgTo()) trMsg.setIsProcessed("Y");
			}


			trMsg.save(trx0);

			// if New Activity Is Validated by Org TO et Org from <> org To   ET   Org (record) = Org From  ->  Send Message for confirmation On Org TO
			if (newActionActivity.isValidatedByOrgTo() && !newActionActivity.isValidatedByOrgFrom()) {    // Inter ORG Validation
				// if  Org from <> org To   ET   Org (record) = Org From  ->  Send Message for confirmation On Org TO
				if (trMsg.getAD_OrgTrx_ID() != trMsg.getAD_OrgTo_ID() && trMsg.getAD_Org_ID() == trMsg.getAD_OrgTrx_ID()
						&& currentActionActivity.isValidatedByOrgFrom() && newActionActivity.isValidatedByOrgTo() && !isMsgAlreadyExist(ctx,trMsg,trx0)) {
					MTransactionMsg trMsgTo = new MTransactionMsg(ctx,0,trx0);
					PO.copyValues(trMsg, trMsgTo);
					trMsgTo.setAD_Org_ID(trMsgTo.getAD_OrgTo_ID());
					trMsgTo.setInitialMsgID(trMsg.getID());
					trMsgTo.save(trx0);
				}	
			}	

		}

		// Send Confirmation to the Origin WareHouse if required
		if (trMsg.getAD_OrgTrx_ID() != trMsg.getAD_OrgTo_ID() && trMsg.getAD_Org_ID() != trMsg.getAD_OrgTrx_ID()) {
			MTransactionMsg trMsgTo = new MTransactionMsg(ctx,0,trx0);
			PO.copyValues(trMsg, trMsgTo);
			trMsgTo.setAD_Org_ID(trMsgTo.getAD_OrgTrx_ID());
			trMsgTo.setZ_PosWfActivity_ID(MPosWfActivity.getCONFIRM_FORM_OTHER_WH_ACTIVITY());                   // Action de Confirmation d'un autre magasin
			if (trMsg.getZ_PosWfActivity_ID() == MPosWfActivity.getREJECTED_ACTION_ACTIVITY_ID() )
				trMsgTo.setIsCancelRequest(true);
			else trMsgTo.setIsValidatedRequest(true);
			trMsgTo.save(trx0);
		}


		// Si c'est la derniere opération sur l'organisation, on clos celle-ci
		if ( !cancelaction &&  currentActionActivity.isValidatedByOrgTo() && trMsg.getAD_Org_ID() == trMsg.getAD_OrgTo_ID() && trMsg.getAD_OrgTrx_ID() != trMsg.getAD_OrgTo_ID() &&  MPosWfActionActivity.isLastActivityFromOrgTo( trMsg.getZ_PosWfAction_ID() ,curActionActivity, trMsg.getAD_Org_ID() ) ) {
			trMsg.setZ_PosWfActivity_ID(MPosWfActivity.getCOMPLETED_ACTIVITY());
			trMsg.setIsProcessed("Y");
		}





		if (!trMsg.save(trx0)) throw new CompiereException("ERROR: Unable save result on Transaction ID : " + msgID);;

		return true;
		//		else return false;
	}

	private boolean  CheckForAction(Ctx ctx, MTransactionMsg trMsg, Trx trx0 ){
		MClient client = MClient.get(ctx, trMsg.getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
		MPosWfActionActivity actionActivity = null;
		actionActivity = trMsg.getActionActivity();
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(ctx, trMsg.getAD_Org_ID(), trx0);
		// Process Stock Mvt If required
		////////////////////////////////
		
		
//		if(actionActivity != null && (actionActivity.isSetTransfert() || actionActivity.isReleaseTransfert()) && (  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTrx_ID() && actionActivity.isValidatedByOrgFrom() ) ||  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTo_ID() && actionActivity.isValidatedByOrgTo()) )){
//			MPosWfAction action = new MPosWfAction(ctx, actionActivity.getZ_PosWfAction_ID(), trx0);
//			// From -> To
//			int ad_orgTo_id=trMsg.getAD_OrgTo_ID();
//			int ad_orgFrom_id=trMsg.getAD_OrgTrx_ID();
//			// To -> From
//			if(action.get_ValueAsBoolean("IsTftFrom")){
//				ad_orgTo_id=trMsg.getAD_OrgTrx_ID();
//				ad_orgFrom_id=trMsg.getAD_OrgTo_ID();
//				if(actionActivity.isSetTransfert())
//					reserveQty(ctx, trMsg, actionActivity,ad_orgFrom_id,actionActivity.isSetTransfert()?trMsg.getQuantity():trMsg.getQuantity().negate(),trx0);
//				else{
//					// DECREASE Reserved Qty FROM
//					reserveQty(ctx, trMsg, actionActivity,ad_orgTo_id,trMsg.getQuantity().negate(),trx0);
//					// DECREASE Reserved Qty TO				
//					reserveQty(ctx, trMsg, actionActivity,ad_orgFrom_id,trMsg.getQuantity().negate(),trx0);
//				}
//			}
//			else if(actionActivity.isReleaseTransfert()){
//				// DECREASE Reserved Qty FROM
//				reserveQty(ctx, trMsg, actionActivity,ad_orgFrom_id,trMsg.getQuantity().negate(),trx0);
//				// INCREASE Reserved Qty TO				
//				reserveQty(ctx, trMsg, actionActivity,ad_orgTo_id,trMsg.getQuantity(),trx0);
//			}
//			updateTransfert(actionActivity.isSetTransfert()?trMsg.getQuantity():trMsg.getQuantity().negate(),new MOrderLine(ctx,trMsg.getC_OrderLine_ID(),trx0),ad_orgFrom_id,ad_orgTo_id,trx0);
//		}
		
		
		//  Generer Mvt de consignation 
		if (actionActivity != null && actionActivity.isGenConsignation())
		{
			int stkLocID = getDefaultLocator(trMsg.getAD_Org_ID());
			int consLocID = orgPOS.getM_LocatorConsignation_ID();
			String docNo = trMsg.getDocumentNo() + "- " + trMsg.getLine();
			
			/* Obsolete*
			if(!actionActivity.isValidatedByOrgFrom()){
				MInventory inventory = new MInventory(MWarehouse.get(ctx,getDefaultWH(trMsg.getAD_Org_ID())));
				inventory.setDescription("Cde: " + trMsg.getDocumentNo() + " Client :" + MBPartner.get(ctx,trMsg.getC_BPartner_ID()).getValue() );
				inventory.save(trx0);
				MInventoryLine invl = new MInventoryLine(inventory,stkLocID,trMsg.getM_Product_ID(),0, BigDecimal.ZERO, BigDecimal.ZERO);
				invl.setDescription(inventory.getDescription());
				invl.setQtyInternalUse(BigDecimal.ONE.negate());
				invl.setC_Charge_ID(PosCtx.CHARGE_MVT_NP_ID);
				invl.save(trx0);
				if (inventory != null) {
					boolean successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
					if(!successMvt)
						throw new CompiereException("ERROR: Impossible de générer un mouvement non planifié");
					inventory.save(trx0);
				}
			}
			*/
			generateTransfert(trMsg,docNo,trMsg.getC_BPartner_ID(),trMsg.getM_Product_ID(),
					actionActivity.isMvtIn()?trMsg.getQuantity():trMsg.getQuantity().negate(), stkLocID,consLocID,0, 
							clientProxy.getClientCheck(),ctx,trx0);
				
		}
		

		
		
		// Mvt NP Non SAV
		if (actionActivity != null && actionActivity.isStocked() &&  (  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTrx_ID() && actionActivity.isValidatedByOrgFrom() ) ||  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTo_ID() && actionActivity.isValidatedByOrgTo()) ))
		{
			boolean successMvt = false;
			int locID;
			MOrgInfo orgInfo = null;
			if(actionActivity.isValidatedByOrgTo())
				orgInfo = MOrgInfo.get(ctx,trMsg.getAD_OrgTo_ID(), trx0);
			else
				orgInfo = MOrgInfo.get(ctx,trMsg.getAD_Org_ID(), trx0);
			MOrderLine oline = new MOrderLine(ctx,trMsg.getC_OrderLine_ID(),trx0);
			MOrder o = new MOrder(ctx,oline.getC_Order_ID(),trx0);
			BigDecimal toDeliver = trMsg.getQuantity();
			MProduct product = new MProduct(ctx, trMsg.getM_Product_ID(),trx0);
			MInventory inventory = null;

			//	Comments & lines w/o product & services
			if (((product != null) || product.isStocked()) || (toDeliver.signum() != 0))		//	lines w/o product
			{
				if (inventory == null){
					inventory = new MInventory(MWarehouse.get(ctx, orgInfo.getM_Warehouse_ID()));
					
					String bpv = DB.getSQLValueString(null, "select value from c_bpartner where c_bpartner_id = ? ", o.getC_BPartner_ID());
					if (bpv == null || bpv.isEmpty()) throw new CompiereException("Tiers de la Cde non trouvé ");
					inventory.setDescription("Cde: " + o.getDocumentNo() + " Client :" +  bpv );
					inventory.save(trx0);
				}
				locID = 0;
				if (actionActivity.getLocationComment().isEmpty() ) locID = getDefaultLocator(orgInfo.getAD_Org_ID());
				else locID = getLocatorByName(trMsg.getAD_Org_ID(),actionActivity.getLocationComment());

				
				
				MInventoryLine invl = new MInventoryLine(inventory, locID, product.get_ID(), oline.getM_AttributeSetInstance_ID(), BigDecimal.ZERO, BigDecimal.ZERO);
				invl.setDescription(inventory.getDescription());
				if (actionActivity.isMvtIn()){ // Entrée non planif.
					invl.setQtyInternalUse(toDeliver.negate()); // -1
					oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver) ); // + 1
				}
				else{ // Sortie non planif.
					invl.setQtyInternalUse(toDeliver); // 1
					oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver.negate()) ); //+ (-1)
					oline.set_ValueNoCheck("IsPrepared","N");
				}
				invl.setC_Charge_ID(orgPOS.getMVT_Charge_ID());
				invl.save(trx0);
				oline.save(trx0);
				if (inventory != null) {
					successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
					inventory.save(trx0);
				}
				
				// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
				// stocké && orgFrom && mvtOut
				MPosWfAction action = new MPosWfAction(ctx, actionActivity.getZ_PosWfAction_ID(), trx0);
//				if (!actionActivity.isStocked() || !actionActivity.isValidatedByOrgTo() || actionActivity.isMvtIn())
//					reserveQty(ctx,trMsg,actionActivity,oline.getAD_Org_ID(),actionActivity.isMvtIn()?trMsg.getQuantity():trMsg.getQuantity().negate(),trx0);
//				else if(!action.get_ValueAsBoolean("IsTftFrom") || !actionActivity.IsAutoValidation() || !actionActivity.isStocked() || actionActivity.isMvtIn() || !actionActivity.isValidatedByOrgTo())
//					reserveQty(ctx,trMsg,actionActivity,trMsg.getAD_OrgTo_ID(),actionActivity.isMvtIn()?trMsg.getQuantity():trMsg.getQuantity().negate(),trx0);
			}

		}
		
		// Requisition

		if (actionActivity != null && actionActivity.IsRequisition() &&  (  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTrx_ID() && actionActivity.isValidatedByOrgFrom() ) ||  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTo_ID() && actionActivity.isValidatedByOrgTo()) ))
		{
			MOrgInfo orgInfo = MOrgInfo.get(ctx,trMsg.getAD_OrgTo_ID(), trx0);

			//
			int prodID = 0;
			if (trMsg.getZ_ReferenceArt() != null){
				prodID = DB.getSQLValue(trx0, "select m_product_id from m_product where value = ? ", trMsg.getZ_ReferenceArt());
			}else {
				prodID = trMsg.getM_Product_ID();
			}
			
			if (prodID < 1){
				throw new CompiereException("Article " + trMsg.getZ_ReferenceArt() + " non encore créé !");
			}
			
			MRequisition requisition = null;
			MWarehouse wh = MWarehouse.get(ctx, orgInfo.getM_Warehouse_ID());
					requisition = new MRequisition (ctx, 0, trx0);
					//requisition.setAD_User_ID (PosCtx.DEFAULT_User_ID);
					int user = DB.getSQLValue(trx0, "Select NVL(MAX(SalesRep_ID), 0) from I_POSORDER where DocumentNo = ? AND  AD_Org_ID = "+trMsg.getAD_Org_ID(),trMsg.getDocumentNo());
					requisition.setAD_User_ID(user!=0?user:orgPOS.getVendor_For_Requisition_ID());
					requisition.setC_DocType_ID(orgPOS.getDOCTYPE_Requisition_ID());
					requisition.setDescription(trMsg.getDocumentNo());
					requisition.setM_PriceList_ID(orgPOS.getPO_PriceList_ID());
					//	Set Org/WH
					requisition.setAD_Org_ID(trMsg.getAD_Org_ID());
					requisition.setM_Warehouse_ID(wh.getM_Warehouse_ID());
					requisition.setDateRequired(trMsg.getActionDate());
					if (!requisition.save(trx0))
						throw new CompiereException("Impossible de créer l entête de requisition");
					if (trMsg.getProcessComment() != null)
						trMsg.setProcessComment(trMsg.getProcessComment() + " DA: " + requisition.getDocumentNo());
					else
						trMsg.setProcessComment(" DA: " + requisition.getDocumentNo());
				//
				MRequisitionLine line = new MRequisitionLine(requisition);
				line.setM_Product_ID(prodID);
				line.setQty(trMsg.getQuantity());
				line.set_Value("QtyEntered",trMsg.getQuantity());
				line.save(trx0);

				//TA
				 requisition.setDocAction(MRequisition.DOCACTION_Complete);
				 boolean success = DocumentEngine.processIt(requisition, DocActionConstants.ACTION_Complete);
				 requisition.save(trx0);
				 if (!success) throw new CompiereException(requisition.getProcessMsg());
				//TA
		}
		
		// Creation de Produit
		
		if (actionActivity != null && actionActivity.isProduct() &&  (  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTrx_ID() && actionActivity.isValidatedByOrgFrom() ) ||  ( trMsg.getAD_Org_ID() == trMsg.getAD_OrgTo_ID() && actionActivity.isValidatedByOrgTo()) ))
		{//MERGE
			int product = DB.getSQLValue(trx0, "select m_product_id from m_product where ad_client_id = ? and value = ?" ,trMsg.getAD_Client_ID(),trMsg.getZ_ReferenceArt());
			MProduct prod = null;
			if(product < 1){
				 prod = new MProduct(ctx,0, trx0);
				 prod.setAD_Org_ID(0);
				 prod.setValue(trMsg.getZ_ReferenceArt());
				 prod.setName(trMsg.getZ_ReferenceArt());
				 prod.setDescription(trMsg.getZ_ProdDescription());
				 prod.setM_Product_Category_ID(trMsg.getM_Product_Category_ID());
				 if(trMsg.getZ_S_Famille_ID() > 0)
					 prod.setZ_S_Famille_ID(trMsg.getZ_S_Famille_ID());
				if(trMsg.getZ_S_S_Famille_ID() > 0)
					prod.setZ_S_S_Famille_ID(trMsg.getZ_S_S_Famille_ID());
				if(trMsg.getZ_S_S_S_Famille_ID() > 0)
					prod.setZ_S_S_S_Famille_ID(trMsg.getZ_S_S_S_Famille_ID());
				 prod.save(trx0);
				 int nbMAJ = DB.executeUpdate("update Z_TransactionMsg set m_product_id=? where z_referenceart=? and m_product_id=?" ,new Object[]{prod.getM_Product_ID(),trMsg.getZ_ReferenceArt(),orgPOS.getDefaultProduct_ID()},trx0);
				 log.info(nbMAJ+" message(s) MAJ avec l'article "+prod.getValue());
			}
			else
				throw new CompiereException("Impossible de créer le produit");
			if (trMsg.getProcessComment() != null)
				trMsg.setProcessComment(trMsg.getProcessComment() + " Article: " + prod.getValue());
			else
				trMsg.setProcessComment(" Article: " + prod.getValue());
			
			int i = DB.executeUpdate("update c_orderline set m_product_id = ? where c_orderline_id = ? " , new Object[] {prod.get_ID(), trMsg.getC_OrderLine_ID()}, trx0 );
			if (i >  0){
				 int invLineID = DB.getSQLValue(trx0, "select c_invoiceline_id from c_invoiceline where c_orderline_id = ? ", trMsg.getC_OrderLine_ID());
				 if (invLineID > 0){
					 int j =  DB.executeUpdate("update c_invoiceline set m_product_id = ? where c_invoiceline_id = ? " , new Object[] {prod.get_ID(), invLineID}, trx0 );
				 }
			 }
			 else
				 throw new CompiereException("Impossible de mettre à jour la commande");
			 
		}
		
		return true;
	}	
	
	
	private boolean  CheckForActionSAV(Ctx ctx, MTransactionMsg trMsg, Trx trx0 ){
		MPosWfActionActivity actionActivity = null;
		actionActivity = trMsg.getActionActivity();
		
		//  Generer Mvt de SAV 
		if (actionActivity != null && actionActivity.get_ValueAsBoolean("ISGENSAV"))
		{
			boolean successMvt = false;
			int locID;
			MOrgInfo orgInfo = null;
			if(actionActivity.isValidatedByOrgTo())
				orgInfo = MOrgInfo.get(ctx,trMsg.getAD_OrgTo_ID(), trx0);
			else
				orgInfo = MOrgInfo.get(ctx,trMsg.getAD_Org_ID(), trx0);
			MOrgPOS orgpos = MOrgPOS.getOrgPos(ctx, orgInfo.getAD_Org_ID(), trx0);
			MOrderLine oline = new MOrderLine(ctx,trMsg.getC_OrderLine_ID(),trx0);
			MOrder o = new MOrder(ctx,oline.getC_Order_ID(),trx0);
			BigDecimal toDeliver = trMsg.getQuantity();
			MProduct product = new MProduct(ctx, trMsg.getM_Product_ID(),trx0);
			MInventory inventory = null;

			//	Comments & lines w/o product & services
			if (((product != null) || product.isStocked()) || (toDeliver.signum() != 0))		//	lines w/o product
			{
				if (inventory == null){
					inventory = new MInventory(MWarehouse.get(ctx, orgInfo.getM_Warehouse_ID()));
					inventory.setC_DocType_ID(orgpos.getDOCTYPE_TRXPLAN_ID());//MERGE
					String bpv = DB.getSQLValueString(null, "select value from c_bpartner where c_bpartner_id = ? ", o.getC_BPartner_ID());
					if (bpv == null || bpv.isEmpty()) throw new CompiereException("Tiers de la Cde non trouvé ");
					inventory.setDescription("Cde: " + o.getDocumentNo() + " Client :" +  bpv );
					inventory.set_ValueNoCheck("IsInternalUse", true);
					inventory.save(trx0);
				}
				MOrgPOS orgPOS = MOrgPOS.getOrgPos(ctx, inventory.getAD_Org_ID(), trx0);
				locID = orgPOS.getM_LocatorSAV_ID();
				
				MInventoryLine invl = new MInventoryLine(inventory, locID, product.get_ID(), oline.getM_AttributeSetInstance_ID(), BigDecimal.ZERO, BigDecimal.ZERO);
				invl.setDescription(inventory.getDescription());
				invl.set_ValueNoCheck("IsInternalUse", true);
				if (actionActivity.isMvtIn()){ // Entrée non planif.
					invl.setQtyInternalUse(toDeliver); // -1
				}
				else{ // Sortie non planif.
					invl.setQtyInternalUse(toDeliver.negate()); // 1
				}
				invl.setC_Charge_ID(orgPOS.getMVT_Charge_ID());
				invl.save(trx0);
				if (inventory != null) {
					successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
					inventory.save(trx0);
				}
		}
		}	
	
/*		
		// Mvt NP 
		if (actionActivity != null && actionActivity.isStocked() )
		{
			boolean successMvt = false;
			
			int defOrg = trMsg.getAD_Org_ID();
			if (actionActivity.get_ValueAsInt("AD_OrgTrx_ID") > 1) defOrg = actionActivity.get_ValueAsInt("AD_OrgTrx_ID") ;  // Organisation Forcée
			
			MOrgInfo orgInfo = MOrgInfo.get(ctx,defOrg, trx0);
			MOrderLine oline = new MOrderLine(ctx,trMsg.getC_OrderLine_ID(),trx0);
			MOrder o = new MOrder(ctx,oline.getC_Order_ID(),trx0);
			BigDecimal toDeliver = trMsg.getQuantity().negate();
			MProduct product = new MProduct(ctx, trMsg.getM_Product_ID(),trx0);
			MInventory inventory = null;

			int whID = 0;
			if (actionActivity.getLocationComment().isEmpty() ) whID = getDefaultWH(defOrg);
			else whID = getWhByName(defOrg,actionActivity.getLocationComment());
			
			
			//	Comments & lines w/o product & services
			if (((product != null) || product.isStocked()) || (toDeliver.signum() != 0))		//	lines w/o product
			{
				if (inventory == null){
					inventory = new MInventory(MWarehouse.get(ctx, whID));
					inventory.setDescription("Cde: " + o.getDocumentNo() + " Client :" + MBPartner.get(ctx, o.getC_BPartner_ID()).getValue() );
					inventory.save(trx0);
				}
				
				
				int locID = 0;
				if (actionActivity.getLocationComment().isEmpty() ) locID = getDefaultLocator(defOrg);
				else locID = getLocatorByName(whID,actionActivity.getLocationComment());
				
				if ( "Y".equalsIgnoreCase(actionActivity.get_ValueAsString("IsUseLocBP")))
				{
					String locName = DB.getSQLValueString(trx0, "SELECT bp.value from C_OrderLine ol inner join C_Order o on o.C_Order_ID = ol.C_Order_ID inner join C_BPartner bp on bp.C_BPartner_ID = o.VENDOR_ID WHERE ol.C_OrderLine_ID = ?", trMsg.getC_OrderLine_ID());
					if (locName == null) throw new CompiereException("Movement avec tiers requis mais non défini");
//					locID = getCreateLocatorForVendor(defOrg,locName.trim(),ctx,trx0);
				}	
				
				

				
				
				MInventoryLine invl = new MInventoryLine(inventory, locID, product.get_ID(), oline.getM_AttributeSetInstance_ID(), BigDecimal.ZERO, BigDecimal.ZERO);
				invl.setDescription(inventory.getDescription());
				if (actionActivity.isMvtIn()){ // Entrée non planif.
					invl.setQtyInternalUse(toDeliver.negate()); // -1
					oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver) ); // + 1
				}
				else{ // Sortie non planif.
					invl.setQtyInternalUse(toDeliver); // 1
					oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver.negate()) ); //+ (-1)
				}
				invl.setC_Charge_ID(PosCtx.CHARGE_MVT_NP_ID);
				invl.save(trx0);
				oline.save(trx0);
				if (inventory != null) {
					successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
					inventory.save(trx0);
				}
				
				Object[] params2 = {oline.getAD_Client_ID(),oline.getAD_Org_ID(),product.get_ID(),oline.getM_AttributeSetInstance_ID(),locID,"W"};
				int exist = DB.getSQLValue(trx0, "select 1 from M_StorageDetail where ad_client_id=? and ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
				String sql;
				BigDecimal mvtQty = (actionActivity.isMvtIn())?toDeliver:toDeliver.negate();
				if(exist >= 0){
					int qtyStorage = DB.getSQLValue(trx0, "select Qty from M_StorageDetail where ad_client_id=? and ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
					sql = 	"UPDATE M_StorageDetail SET Qty = ?, updated = sysdate WHERE ad_client_id=? and ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?";
					BigDecimal newQty = mvtQty.add(new BigDecimal(qtyStorage));
					Object[] paramsUP = {newQty,oline.getAD_Client_ID(),oline.getAD_Org_ID(),product.get_ID(),oline.getM_AttributeSetInstance_ID(),locID,"W"};
					DB.executeUpdate(sql,paramsUP,trx0);
				}else{
					sql = 	"INSERT INTO M_StorageDetail (AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,M_Locator_ID, M_Product_ID, M_AttributeSetInstance_ID,QtyType, Qty, DateLastInventory)"+
								"values (?,?,?,sysdate,?,sysdate,?,?,?,?,?,?,sysdate)";
					MOrder order = new MOrder(Env.getCtx(),oline.getC_Order_ID(),trx0);
					Object[] paramsINS = {oline.getAD_Client_ID(),oline.getAD_Org_ID(),"Y",order.getAD_User_ID(),order.getAD_User_ID(),locID,product.get_ID(),
							oline.getM_AttributeSetInstance_ID(),"W",mvtQty};
					DB.executeUpdate(sql,paramsINS,trx0);
				}


			}

		}
		
*/		
		
		
		return true;
	}	

	
	// Genere Transfert ( CONSIGNATION,... )
	static public boolean generateTransfert(PO doc,String docNo, int bpID, int productID, BigDecimal qty , int fromLocID,int toLocID, int docTypeConsID, String clientCheck, Ctx ctx, Trx trx0)
	{
		boolean successMvt = false;
		MMovement mv = new MMovement(ctx, 0, trx0);
		mv.setClientOrg(doc.getAD_Client_ID(), doc.getAD_Org_ID());
		if(doc!=null && doc.get_TableName().equals("C_Order"))
			mv.set_Value("C_Order_ID",doc.get_ID());
		if (bpID > 0 ) mv.set_ValueNoCheck("C_BPartner_ID", bpID);
		if (docNo != null )mv.setDocumentNo(docNo);
		mv.setMovementDate(new Timestamp(System.currentTimeMillis()));
		int docTypeID = 0;
		if (docTypeConsID > 1) docTypeID = docTypeConsID;
		else docTypeID = DB.getSQLValue(trx0, "select max(C_DocType_ID) from c_doctype where DocBaseType=? and isInTransit='N' " + clientCheck, MDocBaseType.DOCBASETYPE_MaterialMovement);
		mv.setC_DocType_ID(docTypeID);
		mv.save(trx0);
		
		MMovementLine mvl = new MMovementLine(mv);
		mvl.setLine(10);
		mvl.setM_Product_ID(productID);
		mvl.setM_Locator_ID(fromLocID);
		mvl.setM_LocatorTo_ID(toLocID);
		mvl.setMovementQty(qty);
		mvl.save(trx0);
    	successMvt = DocumentEngine.processIt(mv, DocActionConstants.ACTION_Complete);
    	mv.save(trx0);
		if (!successMvt)
			return false;
		else
			return true;
	}


	private void updateTransfert(BigDecimal qty,MOrderLine line,int ad_orgFrom_id,int ad_orgTo_id,Trx trx0 ){
		Object[] params = {line.getM_Product_ID(),ad_orgFrom_id,ad_orgTo_id};
		int exists = DB.getSQLValue(trx0, "select 1 from Z_TransferedQty where m_product_id=? and ad_org_id=? and ad_orgTo_id = ?", params);		
		String sql;
		if(exists >= 0){
			int qtyStorage = DB.getSQLValue(trx0, "select Qty from Z_TransferedQty where m_product_id=? and ad_org_id=? and ad_orgTo_id = ?", params);
			sql = 	"UPDATE Z_TransferedQty SET Qty = ?,updated=sysdate WHERE m_product_id=? and ad_org_id=? and ad_orgTo_id = ?";
			BigDecimal newQty = qty.add(new BigDecimal(qtyStorage));
			Object[] paramsUP = {newQty,line.getM_Product_ID(),ad_orgFrom_id,ad_orgTo_id};
			DB.executeUpdate(sql,paramsUP,trx0);
		}else{
			sql = 	"INSERT INTO Z_TransferedQty (Z_TransferedQty_ID,Ad_Client_ID,AD_Org_ID,IsActive, Created, CreatedBy, Updated, UpdatedBy,M_Product_ID,Qty,ad_orgTo_id)"+
						"values (ad_sequence_nextno('Z_TransferedQty'),?,?,?,sysdate,?,sysdate,?,?,?,?)";
			Object[] paramsINS = {line.getAD_Client_ID(),ad_orgFrom_id,"Y",line.get_Value("CreatedBy"),line.get_Value("CreatedBy"),line.getM_Product_ID(),qty,ad_orgTo_id};
			DB.executeUpdate(sql,paramsINS,trx0);
		}
	}
	
	private int getDefaultLocator(int orgID)
	{
		int locID = DB.getSQLValue(null, "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + MOrgInfo.get(Env.getCtx(),orgID , null).getM_Warehouse_ID() + " AND ISDEFAULT = 'Y'");
		if (locID < 1 )
		{
			throw new CompiereException("Pas de magasin/emplacement par défault pour l'organisation du ticket");
		}	
		return locID;
	}
	
	private int getLocatorByName(int whID, String locVal)
	{
		int locID = DB.getSQLValue(null, "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + whID + " AND value = ? ", locVal);
		if (locID < 1 )
		{
			throw new CompiereException("Pas de magasin/emplacement par défault pour l'organisation du ticket : " + locVal);
		}	
		return locID;
	}

	
	
//	public int getCreateLocatorForVendor(int orgID, String locVal,Ctx ctx, Trx trx)
//	{
//		int whID = DB.getSQLValue(trx, "select m_warehouse_id from m_warehouse where upper(value) = upper(?) ", PosCtx.WAREHOUSE_REPARATEUR);
//		int locID = DB.getSQLValue(trx, "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + whID + " AND value = ? " + PosCtx.CLIENTCHECK, locVal);
//		if (locID < 1 )
//		{
//			MWarehouse wh = new MWarehouse(ctx, whID , trx);
//			MLocator loc = new MLocator(wh, locVal);
//			loc.setXYZ(locVal, locVal, locVal, locVal, locVal);
//			loc.save(trx);
//			locID = loc.get_ID();
//		}	
//		return locID;
//	}
	
	private boolean isMsgAlreadyExist(Ctx ctx,MTransactionMsg trMsg,Trx trx0 )
	{
		MClient client = MClient.get(ctx, trMsg.getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
		int nbMsg = DB.getSQLValue(trx0, "select count(1) from Z_TransactionMsg WHERE initialmsgid=? AND isActive='Y' AND (IsValidatedRequest='Y' OR isCancelRequest='Y') AND AD_OrgTo_Id <> ?"+clientProxy.getClientCheck(),new Object[]{trMsg.getZ_TransactionMsg_ID(),trMsg.getAD_Org_ID()});
		return nbMsg > 0;
	}
	
//	private void reserveQty(Ctx ctx,MTransactionMsg trMsg,MPosWfActionActivity actionActivity,int ad_org_id,BigDecimal mvtQty,Trx trx0){
//		MOrderLine oline = new MOrderLine(ctx,trMsg.getC_OrderLine_ID(),trx0);
//		BigDecimal toDeliver = trMsg.getQuantity();
//		MProduct product = new MProduct(ctx, trMsg.getM_Product_ID(),trx0);
//		int locID = 0;
//		if (actionActivity.getLocationComment().isEmpty() ) locID = getDefaultLocator(ad_org_id);
//		else locID = getLocatorByName(ad_org_id,actionActivity.getLocationComment());
//		
//		Object[] params2 = {product.get_ID(),oline.getM_AttributeSetInstance_ID(),locID,"W"};
//		int exist = DB.getSQLValue(trx0, "select 1 from M_StorageDetail where m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
//		String sql;
//		if(exist >= 0){
//			int qtyStorage = DB.getSQLValue(trx0, "select Qty from M_StorageDetail where m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
//			sql = 	"UPDATE M_StorageDetail SET Qty = ? , updated = sysdate WHERE m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?";
//			BigDecimal newQty = mvtQty.add(new BigDecimal(qtyStorage));
//			Object[] paramsUP = {newQty,product.get_ID(),oline.getM_AttributeSetInstance_ID(),locID,"W"};
//			DB.executeUpdate(sql,paramsUP,trx0);
//		}else{
//			sql = 	"INSERT INTO M_StorageDetail (AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,M_Locator_ID, M_Product_ID, M_AttributeSetInstance_ID,QtyType, Qty, DateLastInventory)"+
//						"values (?,?,?,sysdate,?,sysdate,?,?,?,?,?,?,sysdate)";
//			MOrder order = new MOrder(Env.getCtx(),oline.getC_Order_ID(),trx0);
//			Object[] paramsINS = {Env.getCtx().getAD_Client_ID(),ad_org_id,"Y",order.getAD_User_ID(),order.getAD_User_ID(),locID,product.get_ID(),
//									oline.getM_AttributeSetInstance_ID(),"W",mvtQty};
//			DB.executeUpdate(sql,paramsINS,trx0);
//		}
//	}



}
