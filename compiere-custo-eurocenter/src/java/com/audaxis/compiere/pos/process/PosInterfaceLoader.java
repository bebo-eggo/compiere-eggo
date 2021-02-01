package com.audaxis.compiere.pos.process;


import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.model.MBPartner;
import org.compiere.model.MChat;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgPOS;
import org.compiere.model.MPeriod;
import org.compiere.model.X_M_InOut;
import org.compiere.model.X_Z_SavStatus;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MITrxMsg;
import com.audaxis.compiere.model.MPosChat;
import com.audaxis.compiere.model.MPosOrder;
import com.audaxis.compiere.model.MPosOrderPartner;
import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.util.CompiereException;




public class PosInterfaceLoader {

	private CLogger log = CLogger.getCLogger(PosInterfaceLoader.class);
	boolean newBDV = false;  // newBDV Method
	private MInOut	 	m_ship = null; // newBDV Method
	private int			m_line = 0; // newBDV Method
	private MBPartner	m_bp = null; // newBDV Method
	private Timestamp p_DateInvoiced = null; // newBDV Method


	public PosInterfaceLoader() {
	}

	public boolean  LoadTicket(MOrgPOS orgPOS, Ctx ctx, int iposID,int ad_org_id,Trx trx0 ){
		
		if ( iposID < 1) throw new CompiereException("ERROR: Invalid parametre posOrder ID ");
		MPosOrder posOrder = MPosOrder.get(ctx,iposID,ad_org_id,trx0);
//		posOrder.setError("");
		
		System.out.println(" -> cde " + posOrder.getDocumentNo());
		
		
		checkBPartner(posOrder, trx0);
		if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Ticket_ID()) posOrder = generateTicket(ctx,posOrder,trx0); 
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Bdv_ID() || posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_WebSales_ID() 
				|| posOrder.getC_DocTypeTarget_ID() == orgPOS.getDOCTTYPE_RETOUR_ID() || posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Consignation_ID()) 
			posOrder = generateBonDeVente(orgPOS,posOrder,ctx, trx0);
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Devis_ID()) 
			posOrder = generateDevis(orgPOS,posOrder,ctx, trx0);
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_SavDom_ID()) 
			posOrder = generateReparation(orgPOS,posOrder,ctx, trx0);
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Gc_ID()) 
			posOrder = generateReparation(orgPOS,posOrder,ctx, trx0);
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Rep_ID()) 
			posOrder = generateReparation(orgPOS,posOrder,ctx, trx0);
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Ech2_ID()) 
			posOrder = generateReparation(orgPOS,posOrder,ctx, trx0);
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Doa_ID()) 
			posOrder = generateReparation(orgPOS,posOrder,ctx, trx0);
		else if (posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_CreateCli_ID()){
			posOrder.setI_IsImported("Y");
			posOrder.setI_ErrorMsg("");
			posOrder.setProcessed(true);
		}
		else { 
			log.log(Level.SEVERE, "Invalid DocTypeTarget ", new Object[] {posOrder.getDocumentNo(),posOrder.getC_DocTypeTarget_ID()} );
			posOrder.setError("Invalid DocTypeTarget");
		}
		if (!posOrder.save(trx0)) throw new CompiereException("ERROR: Unable save check result on cheques : " + iposID);;
		if ("Y".equalsIgnoreCase(posOrder.getI_IsImported() ) ) return true;
		else return false;
	}
	
	public boolean  loadChat(Ctx ctx, int iposChatID,int ad_org_id,Trx trx0 ){
		if ( iposChatID < 1) throw new CompiereException("ERROR: Invalid parametre posChat ID ");
		MPosChat posChat = MPosChat.get(ctx,iposChatID,ad_org_id,trx0);
		MChat chat = posChat.generateChat();
		posChat.setCM_Chat_ID(chat.get_ID());
		posChat.setI_ErrorMsg("");
		posChat.setProcessed(true);
		if (!posChat.save(trx0)) throw new CompiereException("ERROR: Unable save check result I_PosChat :  " + iposChatID);
		if (posChat.isProcessed()) return true;
		else return false;
	}
	
	public boolean  loadTrxMsg(MOrgPOS orgPOS ,Ctx ctx, int iTrxMsg_ID,int ad_org_id,Trx trx0 ) throws Exception{
		int docTypeID = 0;
		if ( iTrxMsg_ID < 1) throw new CompiereException("ERROR: Invalid parametre iTrxMsg ID ");
		MITrxMsg itrxMsg = MITrxMsg.get(ctx,iTrxMsg_ID,ad_org_id,trx0);
		if (itrxMsg.getI_PosOrderLine_ID() > 0 )
			docTypeID =  DB.getSQLValue(trx0,"select c_doctypetarget_id from i_posorder where i_posorder_id in (select i_posorder_id from i_posorderline where i_posorderline_id = ? and ad_org_id = ?) and ad_org_id = ? ", new Object[] {itrxMsg.getI_PosOrderLine_ID(), itrxMsg.getAD_Org_ID(), itrxMsg.getAD_Org_ID()} );
			
		if (itrxMsg.getZ_PosWfAction_ID() == orgPOS.getPosAction_PretCli_ID() )
		{
		  if( itrxMsg.processZTransactionMsg(trx0)){

			itrxMsg.setI_ErrorMsg("");
			itrxMsg.setI_IsImported(true);
			if (!itrxMsg.save(trx0)) throw new CompiereException("ERROR: Unable save check result iTrxMsg :  " + iTrxMsg_ID);
			if (itrxMsg.isI_IsImported()) return true;
			else return false;
		  }
		}
		// Some Shipment Exist !  Réactivate I_posOrder to be treated
		int no = DB.executeUpdate("update I_PosOrder SET  I_IsImported='N' where i_posorder_id in (select i_posorder_id from i_posorderline where I_posorderline_id=? and ad_org_id = ?) and ad_org_id = ? ", new Object[] {itrxMsg.getI_PosOrderLine_ID(),itrxMsg.getAD_Org_ID(),itrxMsg.getAD_Org_ID()}, trx0);
		if(itrxMsg.get_ValueAsString("Iemi") != null && !itrxMsg.get_ValueAsString("Iemi").isEmpty()){
			no = DB.executeUpdate("update I_PosOrderline SET IEMI=? where I_posorderline_id=? and ad_org_id = ?", new Object[] {itrxMsg.get_ValueAsString("Iemi"),itrxMsg.getI_PosOrderLine_ID(),itrxMsg.getAD_Org_ID()}, trx0);
			no = DB.executeUpdate("update C_Orderline SET IEMI=? where I_posorderline_id=? and ad_org_id = ?", new Object[] {itrxMsg.get_ValueAsString("Iemi"),itrxMsg.getI_PosOrderLine_ID(),itrxMsg.getAD_Org_ID()}, trx0);
		}
		return true;
	}
	
	//  Document TICKET
	//************************
	private void checkBPartner(MPosOrder posOrder, Trx trx0) {
		// TODO VERIFY IF BPARNTER NOT INTEGRATED
		int bpID = 0; 
		MPosOrderPartner partner = posOrder.getPartner(trx0);
		if (partner != null){
			bpID=partner.addModifyPartner(trx0);
			if (posOrder.getC_BPartner_ID() <= 0) posOrder.setC_BPartner_ID(bpID);
			if (partner.getC_BPartner_ID() <= 0) partner.setC_BPartner_ID(bpID);
			posOrder.save(trx0);
			partner.save(trx0);
			trx0.commit();
		}
	}
	

	//  Document TICKET
	//************************
	private MPosOrder generateTicket(Ctx ctx, MPosOrder posOrder, Trx trx0) {
		MClient client = MClient.get(ctx, posOrder.getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
		// DO Order - Shipment - Invoice
		int order = DB.getSQLValue(trx0, "select 1 from c_order where documentno = ? " + clientProxy.getClientCheck() , posOrder.getDocumentNo());
		if (order < 1) {
			MOrder ord = posOrder.generateOrderHeader();
			posOrder.generateOrderLines(ord,"");
			posOrder.generateOrderMsg(ord);
			posOrder.setC_Order_ID(ord.get_ID());
			ord.setDocAction(MOrder.DOCACTION_Complete);
			boolean successInv = DocumentEngine.processIt(ord, DocActionConstants.ACTION_Complete);
			ord.save(trx0);
			if (!successInv) throw new CompiereException(ord.getProcessMsg());
			// DO Payment
			posOrder.generatePaymentTicket(posOrder,ord);
		}
		posOrder.setI_IsImported("Y");
		posOrder.setI_ErrorMsg("");
		posOrder.setProcessed(true);
		return posOrder;
	}

	//  Document BON DE VENTE
	//************************
	
	private MPosOrder generateBonDeVente(MOrgPOS orgPOS, MPosOrder posOrder, Ctx ctx, Trx trx0) {
	  MOrder ord = null;
	  String invDocno = "";	
		// Create or Update Order  
		if(posOrder.getC_Order_ID() < 1){
			ord = generateNewBDV(posOrder,ctx, trx0);
			//if (!posOrder.generateTransMsg()) 
			//	throw new CompiereException("Impossible de générer le message");
		}else{
			ord = new MOrder(ctx, posOrder.getC_Order_ID(), trx0);
			ord.set_Value("I_PosOrder_ID", posOrder.getI_PosOrder_ID());
			// NEW
			//if(posOrder.getC_DocTypeTarget_ID() == orgPOS.getDocType_Devis_ID()){
			//	posOrder.disableOrderline();
			//	posOrder.generateOrderLines(ord,"");
			//}
			// NEW
			//ADD new lines
			if(ord.getDocStatus().equals(MOrder.DOCSTATUS_Completed))
			{
				ord.setDocAction(MOrder.DOCACTION_Complete);
				boolean successInv = DocumentEngine.processIt(ord, DocActionConstants.ACTION_ReActivate);
				ord.save(trx0);
			}
			//Mettre à jour des lignes existantes
			posOrder.generateOrderLines(ord," AND NVL(C_ORDERLINE_ID,0) >0 ");
			//Ajout de nouvelles lignes
			posOrder.generateOrderLines(ord," AND NVL(C_ORDERLINE_ID,0) <=0 ");
			//Attention generateOrderMsg, avec une whereclause pour ajouter une odermsg si le couple I_POSORDER_ID, AD_ORG_ID et AD_MEssage_ID n'existse pas
			posOrder.updateComments(posOrder, ord);
			//
			ord.setDocAction(MOrder.DOCACTION_Complete);
			boolean successInv = DocumentEngine.processIt(ord, DocActionConstants.ACTION_Prepare);
			successInv = DocumentEngine.processIt(ord, DocActionConstants.ACTION_Complete);
			ord.save(trx0);
		}
		if(posOrder.getC_DocTypeTarget_ID() != orgPOS.getDocType_Devis_ID() 
				&& posOrder.getC_DocTypeTarget_ID() != orgPOS.getDocType_Consignation_ID()){
			// Ship, Invoice  Base on i_PosTrx  By Pos InvoiceIndx
			StringBuffer sql =
					new StringBuffer("select distinct t.InvoiceIndx,t.Z_COM,t.Z_COMID, t.AD_Org_ID ") 
			.append(" from i_trxmsg t")
			.append(" inner join I_PosOrderLine pl on pl.I_PosOrderLine_id = t.i_PosOrderLine_id")
			.append(" inner join I_PosOrder p on p.I_PosOrder_id = pl.i_PosOrder_id ")
			.append(" where  t.isActive = 'Y' and t.I_IsImported = 'N' ")
			.append(" and t.ad_client_id = ? ")
			.append(" and p.I_PosOrder_ID = ? ")
			.append(" and p.ad_org_id = ? ")
			.append(" and t.ad_org_id = ? ")
			.append(" and pl.ad_org_id = ? ");
			PreparedStatement pst = null;
			ResultSet rs = null;
			try{
				pst = DB.prepareStatement(sql.toString(), trx0);
				pst.setInt(1, posOrder.getAD_Client_ID());
				pst.setInt(2, posOrder.getI_PosOrder_ID());
				pst.setInt(3, posOrder.getAD_Org_ID());
				pst.setInt(4, posOrder.getAD_Org_ID());
				pst.setInt(5, posOrder.getAD_Org_ID());
				rs = pst.executeQuery();
				while ( rs.next() )
				{
					ord.setZ_com(rs.getString(2));
					ord.setZ_comID(rs.getString(3));
					shipInvoicePayBDV(posOrder, ord,rs.getInt(1),ctx,trx0, rs.getInt(4));
				}
				// DO Payment
				// ----------
				posOrder.generatePaymentTicket(posOrder,ord);  //  CHECK FOR DUPLUCATE PAYMENT ??????

			}catch (Exception e){
				e.printStackTrace();
				log.log(Level.SEVERE, e.getMessage());
				throw new CompiereException(e.getMessage());
			}				
			finally{
				Util.closeCursor(pst, rs);
			}
		}
		// CLOTURER BON INITIAL SI RETOUR
//		if(posOrder.getC_DocTypeTarget_ID() == PosCtx.orgConfigPOS.get(posOrder.getAD_Org_ID()).DOCTYPE_REPRISE_ID){
		MOrder origOrder = null;
		if(posOrder.get_ValueAsString("Z_OrigOrder") != null && posOrder.get_ValueAsString("Z_OrigOrder").length() > 0){
			int c_order_id = DB.getSQLValue(trx0,"SELECT C_Order_ID FROM C_ORDER WHERE DOCUMENTNO=?",new Object[]{posOrder.get_ValueAsString("Z_OrigOrder")});
			if (c_order_id > 0){
				origOrder = new MOrder(ctx, c_order_id,trx0);
				boolean successInv = DocumentEngine.processIt(origOrder, DocActionConstants.ACTION_Close);
				if (!successInv) throw new CompiereException(origOrder.getProcessMsg());
				origOrder.save(trx0);
			}
//			//Si rien n'est expédié sur le bon origine, cloturer le NCFLD
//			
//			if(origOrder !=null)
//			{
//				MOrderLine mols [] = origOrder.getLines(" QTYDELIVERED<>0 ", null);
//				if(mols != null && mols.length == 0 && ord!=null)
//				{
//					boolean successInv = DocumentEngine.processIt(ord, DocActionConstants.ACTION_Close);
//					if (!successInv) throw new CompiereException(ord.getProcessMsg());
//					ord.save(trx0);
//				}
//			}
			//Cancel Pending Transaction Message
			DB.executeUpdate("update z_transactionmsg set isvalidatedrequest = 'N', iscancelrequest = 'Y' where documentno = ? and isprocessed <> 'Y'", new Object[]{posOrder.get_ValueAsString("Z_OrigOrder")}, trx0);
			
		}
		posOrder.setI_IsImported("Y");
		posOrder.setI_ErrorMsg("");
		posOrder.setProcessed(true);
		return posOrder;
	}
	
	
	//  Document Devis
	//************************
	
	private MPosOrder generateDevis(MOrgPOS orgPOS,MPosOrder posOrder, Ctx ctx, Trx trx0) {
		
		
		/*
		// Si le devis existe déjà
		int order = DB.getSQLValue(trx0, "select c_order_id from c_order where documentno = ? " + PosCtx.CLIENTCHECK, posOrder.getDocumentNo());
		if (order > 1) {
			MOrder ord = new MOrder(ctx, order, trx0);
			posOrder.updateOrderLines(ord);
			posOrder.setI_IsImported("Y");
			posOrder.setProcessed(true);
			return posOrder;
		}
		
		MOrder ord = posOrder.generateOrderHeader();
		posOrder.generateOrderLines(ord);
		posOrder.generateOrderMsg(ord);
		
		posOrder.setC_Order_ID(ord.get_ID());
//		ord.setDocAction(MOrder.DOCACTION_Complete);
//		boolean successInv = DocumentEngine.processIt(ord, DocActionConstants.ACTION_Complete);
		ord.save(trx0);
//		if (!successInv) throw new CompiereException(ord.getProcessMsg());
		posOrder.setI_IsImported("Y");
		posOrder.setI_ErrorMsg("");
		posOrder.setProcessed(true);
		return posOrder;
		*/
		return generateBonDeVente(orgPOS,posOrder,ctx, trx0);


	}

	//  Document Réparation
	//************************
	
	private MPosOrder generateReparation(MOrgPOS orgPOS,MPosOrder posOrder, Ctx ctx, Trx trx0) {
		
	
	// Si la réparation existe déja - on enregistre que le paiement

/*		
	int order = DB.getSQLValue(trx0, "select c_order_id from c_order where documentno = ? " + PosCtx.CLIENTCHECK, posOrder.getDocumentNo());
	if (order > 1) {
		MOrder ord = new MOrder(ctx, order, trx0);
		posOrder.generatePaymentTicket(ord);
		posOrder.setI_IsImported("Y");
		posOrder.setProcessed(true);
		return posOrder;
	}
	
	
	MOrder ord = posOrder.generateOrderHeader();
	ord.setC_DocType_ID(posOrder.getC_DocTypeTarget_ID());
	posOrder.generateOrderLines(ord);
	posOrder.generateOrderMsg(ord);
	
	posOrder.setC_Order_ID(ord.get_ID());
*/
		posOrder = generateBonDeVente(orgPOS, posOrder,ctx, trx0);
		
		
		// Générer statut de la réparation
		X_Z_SavStatus savst = new X_Z_SavStatus(ctx, 0,trx0);
		savst.setC_Order_ID(posOrder.getC_Order_ID());
		savst.setSAV_STATUS(orgPOS.getDEFAULT_SAV_STATUS());
		savst.setDateMouvement(new Timestamp(System.currentTimeMillis()));
		savst.save(trx0);
		ArrayList<Integer> params = new ArrayList<Integer>();
		params.add(posOrder.getSalesRep_ID());
		params.add(posOrder.getSalesRep_ID());
		params.add(savst.get_ID());
		int rs = DB.executeUpdate("UPDATE Z_SAVSTATUS SET CREATEDBY = ?,UPDATEDBY= ? WHERE Z_SAVSTATUS_ID= ?",params.toArray(),trx0);
		if(rs < 1)
			throw new CompiereException("Impossible de mettre à jour le status");
		
		
		return posOrder;

		/*
		ord.save(trx0);
	
	
	MPosOrderLineAction[] posOrderLineActions = null;
	posOrderLineActions = posOrder.getLineActions("  AND Z_PosWfAction_ID in (select Z_PosWfAction_ID from Z_PosWfAction where GenerateMsg = 'Y' " + PosCtx.CLIENTCHECK + " )", null);
	for (MPosOrderLineAction posOrderlineAction : posOrderLineActions) {
		MOrderLine oline = new MOrderLine(ctx,posOrderlineAction.getParent().getC_OrderLine_ID(),trx0);
		MProduct product = new MProduct(ctx, oline.getM_Product_ID(),trx0);
		boolean genAction = MTransactionMsg.generateMsgFromPosOrder(posOrder,posOrderlineAction,product.get_ID());
		if (!genAction)throw new CompiereException("Impossible de Generer le TransactionMsg pour cet SAV");
	}	//	for all order lines



	// DO Payment
	posOrder.generatePaymentTicket(ord);
	posOrder.setI_IsImported("Y");
	posOrder.setI_ErrorMsg("");
	posOrder.setProcessed(true);
	return posOrder;
*/
	

	
	
	

	}
	
	

	
	//  Generate New BDV
	//************************
	private MOrder generateNewBDV(MPosOrder posOrder, Ctx ctx, Trx trx0) {
			// DO Order
		    MOrder ord = posOrder.generateOrderHeader();
			posOrder.generateOrderLines(ord,"");
			posOrder.generateOrderMsg(ord);
			posOrder.setC_Order_ID(ord.get_ID());
			ord.setDocAction(MOrder.DOCACTION_Complete);
			boolean successInv = DocumentEngine.processIt(ord, DocActionConstants.ACTION_Complete);
			if (!successInv) throw new CompiereException(ord.getProcessMsg());
			ord.save(trx0);
			return ord;
	}	
	
	
	private void shipInvoicePayBDV(MPosOrder posOrder, MOrder ord, int invIndx,Ctx ctx, Trx trx0, int AD_org_ID) {
		String invDocno = "";
		// DO Shipment
		// -----------
		MOrderLine[] olToShip = prepareOrderLineToShip( posOrder,  ord,  invIndx,  ctx,  trx0, AD_org_ID);
		//Vérifier si on ne va pas livrer plus que qté CMD
				for (int i = 0; i < olToShip.length; i++) {
					MOrderLine ol = olToShip[i];
					MInOutLine[] mils = MInOutLine.getOfOrderLine(ctx, ol.getC_OrderLine_ID(), "", trx0);
					BigDecimal sumInOut = BigDecimal.ZERO;
					for (int j = 0; j < mils.length; j++) {
						sumInOut=sumInOut.add(mils[j].getQtyEntered());
					}
					if(mils.length > 0 && sumInOut.abs().doubleValue()>=ol.getQtyOrdered().abs().doubleValue())
						olToShip[i] = null;
					
					if(mils.length > 0 && olToShip[i] !=null)
					{
						if(mils.length > 0 && olToShip[i] !=null)
						{
							BigDecimal resteToDelivered = ol.getQtyOrdered().abs().subtract(sumInOut.abs());
							if(resteToDelivered.compareTo(olToShip[i].get_ValueAsBigDecimal("QtyToDeliver"))<0)
								olToShip[i].set_ValueNoCheck("QtyToDeliver",resteToDelivered);		
						}
					}
				}
		
		int ok = 0;
		if (olToShip.length != 0 ){
			
/* UPD020514 *			
			// Check for Invoice Documentno
			boolean posInvoiceDocNo = false;
			if (invIndx >= 50){  // If One Invoice was or is Printed in POS !
				// Check if Invoice Exist with this Index, if exist -> take index < 50
				invDocno = ord.getDocumentNo() + "-" + invIndx;
				int exist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? ",invDocno);
				if (exist == 0) {  // Use InvoiceIndx Number from POS
					ord.set_ValueNoCheck("Z_PayGI",new BigDecimal(invIndx));
					posInvoiceDocNo = true;
				}	
			}	
			if (!posInvoiceDocNo)
			{
				boolean invFound = true;
				int idx = 0;
				while (invFound) {
					idx = idx + 1;
					invDocno = ord.getDocumentNo() + "-" + idx;
					int exist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? ",invDocno);
					if (exist <= 0) invFound = false;
				}
				ord.set_ValueNoCheck("Z_PayGI",new BigDecimal(idx));
			}
 UPD020514 */			
			
			
			if (p_DateInvoiced == null) p_DateInvoiced = new Timestamp(System.currentTimeMillis());
			MInOut io = null;
			for (int i = 0; i < olToShip.length; i++) {
				if(olToShip[i]==null)
					continue;
				if(io == null)
					io = new MInOut(ord,0,p_DateInvoiced, AD_org_ID);
				io.save(trx0);
				generateShip(io,olToShip[i],trx0);
				ok = ok + 1;
			}
			if (ok > 0 ){
				boolean successShip = DocumentEngine.processIt(io, DocActionConstants.ACTION_Complete);
				if (!successShip) throw new CompiereException(io.getProcessMsg());
				io.save(trx0);
				// DO Invoice     ATTENTION MAJ DOCUMENTNO ! ! ! !
				// -----------	
				MInvoice m_invoice = createInvoice(ord, invIndx, ctx, trx0);
				if (m_invoice != null ) {
					m_invoice.setOrderAllocate(true);
					boolean successInv = DocumentEngine.processIt(m_invoice, DocActionConstants.ACTION_Complete);
					if (!successInv) throw new CompiereException(m_invoice.getProcessMsg());
					m_invoice.save(trx0);
				}
			}	

		}
		
	}
	
	public void shipInvoicePayWEBOrder(MOrder ord, int invIndx,Ctx ctx, Trx trx0) {
		String invDocno = "";
		// DO Shipment
		// -----------
		MOrderLine[] olToShip = prepareWEBOrderLineToShip( ord,  invIndx,  ctx,  trx0);
		//Vérifier si on ne va pas livrer plus que qté CMD
		for (int i = 0; i < olToShip.length; i++) {
			MOrderLine ol = olToShip[i];
			MInOutLine[] mils = MInOutLine.getOfOrderLine(ctx, ol.getC_OrderLine_ID(), "", trx0);
			BigDecimal sumInOut = BigDecimal.ZERO;
			for (int j = 0; j < mils.length; j++) {
				sumInOut=sumInOut.add(mils[j].getQtyEntered());
			}
			if(mils.length > 0 && sumInOut.abs().doubleValue()>=ol.getQtyOrdered().abs().doubleValue())
				olToShip[i] = null;
			
			if(mils.length > 0 && olToShip[i] !=null)
			{
				if(mils.length > 0 && olToShip[i] !=null)
				{
					BigDecimal resteToDelivered = ol.getQtyOrdered().abs().subtract(sumInOut.abs());
					if(resteToDelivered.compareTo(olToShip[i].get_ValueAsBigDecimal("QtyToDeliver"))<0)
						olToShip[i].set_ValueNoCheck("QtyToDeliver",resteToDelivered);		
				}
			}
		}
		
		int ok = 0;
		if (olToShip.length != 0 ){
			// Check for Invoice Documentno
			
/*020520*			
			boolean posInvoiceDocNo = false;
			if (invIndx >= 50){  // If One Invoice was or is Printed in POS !
				// Check if Invoice Exist with this Index, if exist -> take index < 50
				invDocno = ord.getDocumentNo() + "-" + invIndx;
				int exist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? ",invDocno);
				if (exist == 0) {  // Use InvoiceIndx Number from POS
					ord.set_ValueNoCheck("Z_PayGI",new BigDecimal(invIndx));
					posInvoiceDocNo = true;
				}	
			}	
			if (!posInvoiceDocNo)
			{
				boolean invFound = true;
				int idx = 0;
				while (invFound) {
					idx = idx + 1;
					invDocno = ord.getDocumentNo() + "-" + idx;
					int exist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? ",invDocno);
					if (exist <= 0) invFound = false;
				}
				ord.set_ValueNoCheck("Z_PayGI",new BigDecimal(idx));
			}
*020520*/			
			
			if (p_DateInvoiced == null) p_DateInvoiced = new Timestamp(System.currentTimeMillis());
			MInOut io = null;
			for (int i = 0; i < olToShip.length; i++) {
				if(olToShip[i]==null)
					continue;
				if(io == null)
					io = new MInOut(ord,0,p_DateInvoiced);
				io.save(trx0);
				generateShip(io,olToShip[i],trx0);
				ok = ok + 1;
			}
			if (ok > 0 ){
				boolean successShip = DocumentEngine.processIt(io, DocActionConstants.ACTION_Complete);
				if (!successShip) throw new CompiereException(io.getProcessMsg());
				io.save(trx0);
				// DO Invoice     ATTENTION MAJ DOCUMENTNO ! ! ! !
				// -----------	
				MInvoice m_invoice = createInvoice(ord, invIndx, ctx, trx0);
				if (m_invoice != null ) {
					boolean successInv = DocumentEngine.processIt(m_invoice, DocActionConstants.ACTION_Complete);
					if (!successInv) throw new CompiereException(m_invoice.getProcessMsg());
					m_invoice.save(trx0);
				}
			}	

		}
		
	}

	
	private MOrderLine[] prepareOrderLineToShip(MPosOrder posOrder, MOrder ord, int invIndx, Ctx ctx, Trx trx0, int OrgID_TRX) {
		ArrayList<MOrderLine> list = new ArrayList<MOrderLine> ();

		StringBuffer sql =
		new StringBuffer("select pl.i_posOrderline_id, sum(t.qtyDelivered), max(t.created) as created")  
		.append(" from i_trxmsg t")
		.append(" inner join I_PosOrderLine pl on pl.I_PosOrderLine_id = t.i_PosOrderLine_id")
		.append(" inner join I_PosOrder p on p.I_PosOrder_id = pl.i_PosOrder_id ")
		.append(" where  t.isActive = 'Y' and t.I_IsImported = 'N' ")
		.append(" and t.ad_client_id = ? ")
		.append(" and p.I_PosOrder_ID = ? ")
		.append(" and p.ad_org_id = ?    ")
		.append(" and pl.ad_org_id = ?  ")
		.append(" and t.invoiceIndx = ? ")
		.append(" and t.ad_org_id = ?    ")
	
		.append(" group by pl.i_posOrderline_id having sum(t.qtyDelivered) <> 0 ");
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), trx0);
			pst.setInt(1, posOrder.getAD_Client_ID());
			pst.setInt(2, posOrder.getI_PosOrder_ID());
			pst.setInt(3, posOrder.getAD_Org_ID());
			pst.setInt(4, posOrder.getAD_Org_ID());
			pst.setInt(5, invIndx);
			pst.setInt(6, OrgID_TRX);
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				int olID = DB.getSQLValue(trx0, "select max(c_orderline_id) from c_orderline where ad_org_id = ? and i_posOrderline_id = ?", ord.getAD_Org_ID(), rs.getInt(1));
				if(olID == 0)
					olID = DB.getSQLValue(trx0, "select max(c_orderline_id) from i_posOrderline where ad_org_id = ? and i_posOrderline_id = ?", ord.getAD_Org_ID(), rs.getInt(1));			
				
				MOrderLine ol = new MOrderLine(ctx, olID, trx0);
				ol.set_ValueNoCheck("QtyToDeliver",rs.getBigDecimal(2));
				list.add(ol);
				p_DateInvoiced = rs.getTimestamp("created");
				int no = DB.executeUpdate("update i_trxMsg set I_errorMsg = '' ,  i_isImported = 'Y' where ad_org_id = ? and i_posOrderLine_id = ? and InvoiceIndx = ? ", new Object[] {OrgID_TRX,rs.getInt(1), invIndx}, trx0 );
			}
		}catch (Exception e){
			log.log(Level.SEVERE, e.getMessage());
			throw new CompiereException(e.getMessage());
		}				
			finally{
			Util.closeCursor(pst, rs);
		}
		MOrderLine[] lines = new MOrderLine[list.size ()];
		list.toArray (lines);
		return lines;
	}
	
	private MOrderLine[] prepareWEBOrderLineToShip(MOrder ord, int invIndx, Ctx ctx, Trx trx0) {
		ArrayList<MOrderLine> list = new ArrayList<MOrderLine> ();

		StringBuffer sql =
		new StringBuffer("select t.C_Orderline_id, sum(t.qtyDelivered), max(t.created) as created  ")  
		.append(" from i_trxmsg t")
		.append(" where  t.isActive = 'Y' and t.I_IsImported = 'N' ")
		.append(" and t.ad_client_id = ? ")
		.append(" and t.invoiceIndx = ? ")
		.append(" and t.ad_org_id = ? ")
		.append(" and t.c_orderline_id in (select c_orderline_id from c_orderline where c_order_id = ? ) ")
		.append(" group by t.c_Orderline_id having sum(t.qtyDelivered) <> 0 ");
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), trx0);
			pst.setInt(1, ord.getAD_Client_ID());
			pst.setInt(2, invIndx);
			pst.setInt(3, ord.getAD_Org_ID());
			pst.setInt(4, ord.getC_Order_ID());
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				MOrderLine ol = new MOrderLine(ctx, rs.getInt(1), trx0);
				ol.set_ValueNoCheck("QtyToDeliver",rs.getBigDecimal(2));
				list.add(ol);
				p_DateInvoiced = rs.getTimestamp("created");
				int no = DB.executeUpdate("update i_trxMsg set I_errorMsg = '' ,  i_isImported = 'Y' where ad_org_id = ? and C_OrderLine_id = ? and InvoiceIndx = ? ", new Object[] {ord.getAD_Org_ID(),rs.getInt(1), invIndx}, trx0 );
			}
		}catch (Exception e){
			log.log(Level.SEVERE, e.getMessage());
			throw new CompiereException(e.getMessage());
		}				
			finally{
			Util.closeCursor(pst, rs);
		}
		MOrderLine[] lines = new MOrderLine[list.size ()];
		list.toArray (lines);
		return lines;
	}

	
	
	
	
	public void generateShip(MInOut io, MOrderLine ol, Trx trx0) {
		MInOutLine iol = new MInOutLine(io);
		iol.setM_Product_ID(ol.getM_Product_ID(),true);
		iol.setQty(ol.get_ValueAsBigDecimal("QtyToDeliver"));
		iol.setC_OrderLine_ID(ol.getC_OrderLine_ID());
		int mLocID = DB.getSQLValue(trx0, "select max(m_locator_id) from m_locator where m_warehouse_id = ? and isdefault = 'Y' ", ol.getM_Warehouse_ID());
		if ( mLocID < 1 )throw new CompiereException(" Emplacement par défaut non trouvé pour le magasin (ID) : " + ol.getM_Warehouse_ID() );
		iol.setM_Locator_ID(mLocID);
		ol.set_ValueNoCheck("QtyToDeliver",(BigDecimal.ZERO));
		iol.save(trx0);
		ol.save(trx0);
	}
	
	
	private MInvoice createInvoice(MOrder order, int invIndx, Ctx ctx, Trx trx0) {
		
		
		MInvoice m_invoice = null;
		m_ship = null;
		MInOut shipment = null;
		MInOutLine[] shipmentLines = getShipmentLinesCompleted(order, ctx, trx0); /*ZCOM209*/
		// sraval: 10017443- Sort Shipment lines by Line Number 
		Arrays.sort(shipmentLines, new Comparator<MInOutLine>(){
			public int compare(MInOutLine o1, MInOutLine o2) {
				return o1.getLine()-o2.getLine();
		}});
		// end 10017443
		for (MInOutLine shipLine : shipmentLines) {
			if (shipLine.isInvoiced())
				continue;
			if (shipment == null 
				|| shipment.getM_InOut_ID() != shipLine.getM_InOut_ID())
				shipment = new MInOut(ctx, shipLine.getM_InOut_ID(), trx0);
			if (!shipment.isComplete()		//	ignore incomplete or reversals 
				|| shipment.getDocStatus().equals(X_M_InOut.DOCSTATUS_Reversed))
				continue;
			m_invoice = createInvLine (order, m_invoice, shipment, shipLine, invIndx, ctx, trx0);
			if (m_invoice != null ){
				m_invoice.prepareIt();
				m_invoice.save(trx0);
			}
		}	//	shipment lines
		return m_invoice;
	}
	
	/**
	 * 	Create Invoice Line from Shipment
	 *	@param order order
	 *	@param ship shipment header
	 *	@param sLine shipment line
	 */
	private MInvoice createInvLine (MOrder order, MInvoice m_invoice, MInOut ship, MInOutLine sLine, int invIndx, Ctx ctx, Trx trx0)
	{
		if (m_invoice == null)
		{
			m_invoice = new MInvoice (order, 0, p_DateInvoiced);
			// Setup Invoice DocumentNo According Pos InvoiceIndx
			// Règle Si Z_PayGI 
/*02052014*
			int invIndx = order.get_ValueAsBD("Z_PayGI").intValue();
			String documentNo = order.getDocumentNo() + '-' + invIndx;
			int invExist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? " , documentNo);
			int i = 0; 
			while (invExist != 0){
				documentNo = order.getDocumentNo() + '-' + invIndx + "/" + i;
				invExist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? " , documentNo);
				i = i + 1;
			}
*02052014*/
			
			String documentNo = "";
			MOrg org = new MOrg(ctx, order.getAD_Org_ID(), trx0);
			
			//TEMPORAIRE - POS V18 & V19 - BLOC A SUPPRIMER SI TOUS LES POS EN V19
			if (invIndx < 1000000) {				
				documentNo = order.getDocumentNo() + '-' + invIndx;
				int invExist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? " , documentNo);
				int i = 0;
				while (invExist != 0){
					documentNo = order.getDocumentNo() + '-' + invIndx + "/" + i;
					invExist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? " , documentNo);
					i = i + 1;
				}
			} else {
				documentNo = org.getValue() + invIndx;		
			}
			//TEMPORAIRE - POS V18 & V19
			//A DECOMMENTER SI POS EN V19               documentNo = org.getValue() + invIndx;
			

			int allreadyExist = DB.getSQLValue(trx0, "select count(*) from c_invoice where documentno = ? ", documentNo);
			if (allreadyExist > 0) throw new CompiereStateException("Facture " + documentNo + " déja existante ! ");
			
			m_invoice.setDocumentNo(documentNo);
			m_invoice.set_Value("Z_Com",order.getZ_com());
			m_invoice.set_Value("Z_ComID",order.getZ_comID());
			if (!m_invoice.save())
				throw new CompiereStateException("Could not create Invoice (s)");
			ArrayList<Integer> orgs = new ArrayList<Integer>();
			orgs.add(m_invoice.getAD_Org_ID());
			MDocType dt = new MDocType(ctx, m_invoice.getC_DocTypeTarget_ID(), trx0);
			String m_processMsg = MPeriod.isOpen(ctx, m_invoice.getAD_Client_ID(), orgs,p_DateInvoiced, dt.getDocBaseType());
			if(m_processMsg != null)
			{
				m_invoice.setDateInvoiced(new Timestamp(System.currentTimeMillis()));
			}
		}
		MInvoiceLine line = new MInvoiceLine (m_invoice);
		line.setShipLine(sLine);
		line.setQtyEntered(sLine.getQtyEntered());
		line.setQtyInvoiced(sLine.getMovementQty());
		line.setLine(m_line + sLine.getLine());
		line.setM_AttributeSetInstance_ID(sLine.getM_AttributeSetInstance_ID());
		line.updateHeaderTax();
		if (!line.save(trx0))
			throw new CompiereStateException("Could not create Invoice Line (s)");
		//	Link
		sLine.setIsInvoiced(true);
		if (!sLine.save(trx0))
			throw new CompiereStateException("Could not update Shipment Line");
		return m_invoice;
	}	//	createLine

	
	protected MInOutLine[] getShipmentLinesCompleted(MOrder order, Ctx ctx, Trx trx0)
	{
		ArrayList<MInOutLine> list = new ArrayList<MInOutLine>();
		//ZCOM207 String sql = "SELECT * FROM M_InOut WHERE C_Order_ID=? ORDER BY Created DESC";
		// ZCOM207
		String sql =  "SELECT * FROM M_InOutLine l WHERE l.M_Inout_ID in " 
			+ " (select iol.m_inout_id from m_inoutline iol inner join m_inout io on io.m_inout_id = iol.m_inout_id where iol.c_orderline_id in " 
			+ "  (select ol.c_orderline_id from c_orderline ol where ol.C_Order_ID=? ) "
			+ " and (io.docstatus = 'CO' or io.docstatus = 'CL' or io.docstatus = 'VO' or io.docstatus = 'RE') )"
			+ " and ( l.m_inoutline_id not in (select m_inoutline_id from c_invoiceline where m_inoutline_id = l.m_inoutline_id) ) "  // not already invoiced 
			+ " and l.AD_Client_ID=? and isInvoiced = 'N' "
			+ " ORDER BY l.Created ASC ";	
		//ZCOM207
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx0);
			pstmt.setInt(1, order.getC_Order_ID());
			pstmt.setInt(2, order.getAD_Client_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MInOutLine(ctx, rs, trx0));
		}
		catch (Exception e)
		{
			log.severe("getShipments"+ e);
			throw new DBException(e);
		}
		finally
		{
			Util.closeCursor(pstmt, rs);
		}
		//
		MInOutLine[] retValue = new MInOutLine[list.size()];
		list.toArray(retValue);
		return retValue;
	}
}

	
	






	


	
	
	





