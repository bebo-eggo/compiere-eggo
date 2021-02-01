package com.audaxis.compiere.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgPOS;
import org.compiere.model.X_Ref_C_Order_DeliveryRule;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.model.MPayment;
import com.audaxis.compiere.pos.process.PosCtx;
import com.audaxis.compiere.util.CompiereException;





public class MTransactionMsg extends X_Z_TransactionMsg {

	/**  AD_Reference sur PosActionStatus */
	public static final String ACTION_JUST_CREATED = "00";
	public static final String ACTION_A_VALIDER_GERANT = "01";
	
	/** Logger for class MPosOrderLine */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MTransactionMsg.class);

	public MTransactionMsg(Ctx ctx, int I_PosOrderLine_ID, Trx trx) {
		super(ctx, I_PosOrderLine_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MTransactionMsg(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	
	public static boolean generateMsgFromPosOrder(MPosOrder posOrder, MPosOrderLineAction posOrderLineAction, int m_Product_ID) {
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(posOrder.getCtx(), posOrder.getAD_Org_ID(), posOrder.get_Trx());
		Trx trx = posOrder.get_Trx();
		MTransactionMsg msgTrans = new MTransactionMsg(posOrder.getCtx(), 0, trx);
		msgTrans.setClientOrg(posOrder.getAD_Client_ID(), posOrder.getAD_Org_ID());
		msgTrans.setAD_OrgTrx_ID(posOrder.getAD_Org_ID());
		msgTrans.setAD_OrgTo_ID(posOrderLineAction.getAD_OrgTo_ID());
		msgTrans.setZ_PosWfAction_ID(posOrderLineAction.getZ_PosWfAction_ID());
		msgTrans.setActionComment(posOrderLineAction.getComments());
		msgTrans.setActionDate(posOrderLineAction.getDateAction());
		msgTrans.setC_BPartner_ID(posOrder.getC_BPartner_ID());
		msgTrans.setDocumentNo(posOrder.getDocumentNo());
		msgTrans.setActionDate(posOrderLineAction.getDateAction());
		msgTrans.setM_Product_ID(m_Product_ID);
		msgTrans.setQuantity(posOrderLineAction.getQtyEntered());
		msgTrans.setLine(posOrderLineAction.getParent().getLine());
		msgTrans.setC_OrderLine_ID(posOrderLineAction.getC_OrderLine_ID()); 
		
		
		if (m_Product_ID == orgPOS.getDefaultProduct_ID()) 
		{
			MPosOrderLine posOLine = MPosOrderLine.get(posOrder.getCtx(), posOrderLineAction.getI_PosOrderLine_ID(),posOrderLineAction.getAD_Org_ID(), trx);
			msgTrans.setZ_ProdDescription(posOLine.getZ_ProdDescription());
			msgTrans.setZ_ReferenceArt(posOLine.getZ_ReferenceArt());
			msgTrans.setZ_S_Famille_ID(posOLine.getZ_S_Famille_ID());
			msgTrans.setZ_S_S_Famille_ID(posOLine.getZ_S_S_Famille_ID());
			msgTrans.setZ_S_S_S_Famille_ID(posOLine.getZ_S_S_S_Famille_ID());
			msgTrans.setM_Product_Category_ID(posOLine.getM_Product_Category_ID());
			msgTrans.setProduct_Price(posOLine.getProduct_Price());
			msgTrans.setY_Marque_ID(posOLine.getY_Marque_ID());
			msgTrans.setFournisseur(posOLine.getFournisseur());
		}	
		
		
//		if (PosCtx.ACTION_A_LIVRER.equalsIgnoreCase(posOrderLineAction.getActionValue())) 
		msgTrans.setZ_PosWfActivity_ID(MPosWfAction.getFirstActivity(posOrderLineAction.getZ_PosWfAction_ID()));
		String isAutoValidate = DB.getSQLValueString(trx, "SELECT IsAutoValidation FROM Z_PosActionActivity where Z_PosWFAction_id = " + msgTrans.getZ_PosWfAction_ID() + " and Z_PosWfActivity_ID= ? ", msgTrans.getZ_PosWfActivity_ID());
		if ("Y".equalsIgnoreCase(isAutoValidate)) msgTrans.setIsValidatedRequest(true);
	
			
		if (!msgTrans.save(trx)) return true;
		MOrderLinePosAction orderLinePosAction = new MOrderLinePosAction(posOrder.getCtx(),posOrderLineAction.getZ_OrderLinePosAction_ID(),trx);
		orderLinePosAction.setZ_TransactionMsg_ID(msgTrans.get_ID()); 
		if (!orderLinePosAction.save(trx)) return false;
		return true;
	}

	
	public static boolean generateMsgFromSAV(MOrder order,Trx trx) {
		// Attn ne prendre la ligne négative de la commande ( art stocké + qty -1 )
		
		
		MTransactionMsg msgTrans = new MTransactionMsg(order.getCtx(), 0, trx);
		msgTrans.setClientOrg(order.getAD_Client_ID(), order.getAD_Org_ID());
		msgTrans.setAD_OrgTrx_ID(order.getAD_Org_ID());
		msgTrans.setAD_OrgTo_ID(order.getAD_Org_ID());
		
		int posWfActionID = DB.getSQLValue(trx, "SELECT Z_PosWfAction_ID FROM Z_PosWfAction WHERE value = ? ", order.get_ValueAsString("SAV_STATUS"));
		if (posWfActionID < 1) throw new CompiereException("Code Action Inconnu : " + order.getSav_Status());
		msgTrans.setZ_PosWfAction_ID(posWfActionID);
		msgTrans.setActionComment(order.getDescription2());

		msgTrans.setActionDate(new Timestamp(System.currentTimeMillis()));
		msgTrans.setC_BPartner_ID(order.getVendorID());
		msgTrans.setDocumentNo(order.getDocumentNo());

		int orlID = DB.getSQLValue(trx, "Select C_OrderLine_ID from C_OrderLine where C_Order_ID = ? and qtyEntered < 0  and M_Product_ID in (select p.m_product_id from m_product p where p.m_product_id = c_orderline.m_product_id and p.isStocked = 'Y')",order.getID());
		if (orlID < 1) throw new CompiereException("Pas d'article SAV trouvé sur la commande : " + order.getDocumentNo());
		MOrderLine ol = new MOrderLine(order.getCtx(), orlID, trx);

		
		msgTrans.setM_Product_ID(ol.getM_Product_ID());
		msgTrans.setQuantity(ol.getQtyEntered());
		msgTrans.setLine(ol.getLine());
		msgTrans.setC_OrderLine_ID(ol.getC_OrderLine_ID()); 
		
		msgTrans.setZ_PosWfActivity_ID(MPosWfAction.getFirstActivity(posWfActionID));

		String isAutoValidate = DB.getSQLValueString(trx, "SELECT IsAutoValidation FROM Z_PosActionActivity where Z_PosWFAction_id = " + msgTrans.getZ_PosWfAction_ID() + " and Z_PosWfActivity_ID= ? ", msgTrans.getZ_PosWfActivity_ID());
		if ("Y".equalsIgnoreCase(isAutoValidate)) msgTrans.setIsValidatedRequest(true);
	
			
		if (!msgTrans.save(trx)) return true;
		else return false;
	}
	
	
	public static boolean generateMsgFromOrder(org.compiere.model.MOrder posOrder, MOrderLinePosAction posOrderLineAction, int m_Product_ID) {
		Trx trx = posOrder.get_Trx();
		MTransactionMsg msgTrans = new MTransactionMsg(posOrder.getCtx(), 0, trx);
		msgTrans.setClientOrg(posOrder.getAD_Client_ID(), posOrder.getAD_Org_ID());
		msgTrans.setAD_OrgTrx_ID(posOrder.getAD_Org_ID());
		msgTrans.setAD_OrgTo_ID(posOrderLineAction.getAD_OrgTo_ID());
		msgTrans.setZ_PosWfAction_ID(posOrderLineAction.getZ_PosWfAction_ID());
		msgTrans.setActionComment(posOrderLineAction.getComments());
		msgTrans.setActionDate(posOrderLineAction.getDateAction());
		msgTrans.setC_BPartner_ID(posOrder.getC_BPartner_ID());
		msgTrans.setDocumentNo(posOrder.getDocumentNo());
		msgTrans.setActionDate(posOrderLineAction.getDateAction());
		msgTrans.setM_Product_ID(m_Product_ID);
		msgTrans.setQuantity(posOrderLineAction.getQtyEntered());
		msgTrans.setLine(posOrderLineAction.getParent().getLine());
		msgTrans.setC_OrderLine_ID(posOrderLineAction.getC_OrderLine_ID()); 
		
		
		
//		if (PosCtx.ACTION_A_LIVRER.equalsIgnoreCase(posOrderLineAction.getActionValue())) 
		msgTrans.setZ_PosWfActivity_ID(MPosWfAction.getFirstActivity(posOrderLineAction.getZ_PosWfAction_ID()));
		String isAutoValidate = DB.getSQLValueString(trx, "SELECT IsAutoValidation FROM Z_PosActionActivity where Z_PosWFAction_id = " + msgTrans.getZ_PosWfAction_ID() + " and Z_PosWfActivity_ID= ? ", msgTrans.getZ_PosWfActivity_ID());
		if ("Y".equalsIgnoreCase(isAutoValidate)) msgTrans.setIsValidatedRequest(true);
	
			
		if (!msgTrans.save(trx)) return true;
		MOrderLinePosAction orderLinePosAction = new MOrderLinePosAction(posOrder.getCtx(),posOrderLineAction.getZ_OrderLinePosAction_ID(),trx);
		orderLinePosAction.setZ_TransactionMsg_ID(msgTrans.get_ID()); 
		if (!orderLinePosAction.save(trx)) return false;
		return true;
	}
	
	



	
	public void setError (String errorMsg) throws Exception
	{
		Object[] params = {"E", errorMsg, getID()};
		if (DB.executeUpdate("UPDATE Z_TransactionMsg SET  IsProcessed = ?, ErrorMsg = ErrorMSG || ? || ',' WHERE Z_TransactionMsg_ID = ?", params,get_Trx()) < 0) throw new CompiereException("Impossible MAJ Z_TransactionMsg_ID ErrMSG");
		throw new CompiereException(errorMsg);		
		
	}
	
	public MPosWfActionActivity getActionActivity()
	{
		int actionActivityID = DB.getSQLValue(get_Trx(), "select Z_PosActionActivity_ID from Z_PosActionActivity where Z_PosWfAction_ID = ? and Z_PosWfActivity_id = ? ", getZ_PosWfAction_ID(), getZ_PosWfActivity_ID());
		if (actionActivityID > 1 ) return new MPosWfActionActivity(getCtx(), actionActivityID, get_Trx());
		else return null;
	}
	

	
	
}
