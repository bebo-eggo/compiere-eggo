package com.audaxis.compiere.model;


import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.model.MBPartner;
import org.compiere.model.MChat;
import org.compiere.model.MChatEntry;
import org.compiere.model.MClient;
import org.compiere.model.MInventory;
import org.compiere.model.MInventoryLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MOrgPOS;
import org.compiere.model.MProduct;
import org.compiere.model.MWarehouse;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.pos.process.PosCtx;
import com.audaxis.compiere.util.CompiereException;

public class MITrxMsg extends X_I_TrxMsg {

	/** Logger for class MPosOrder */
	private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MITrxMsg.class);

	public static MITrxMsg get(Ctx ctx, int I_PosChat_ID,int ad_org_id, Trx trx) {
		MITrxMsg retValue = null;
		String sql = "SELECT * FROM I_TrxMsg WHERE I_TrxMsg_ID=? AND ad_org_id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, I_PosChat_ID);
			pstmt.setInt (2, ad_org_id);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MITrxMsg (ctx, rs, trx);
			}
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		} finally {
			Util.closeCursor(pstmt, rs);
		}
		return retValue;
	}

	public MITrxMsg(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}


	public boolean processZTransactionMsg(Trx trx0) throws Exception{
		int c_orderline_id = getC_OrderLine_ID();
		if(c_orderline_id < 1)
			c_orderline_id = getC_Orderline_IDFromI_PosOrderline(trx0);
		if(c_orderline_id > 0){
			String sql = "SELECT Z_TransactionMsg_ID FROM Z_TransactionMsg WHERE C_ORDERLINE_ID=? AND Z_POSWFACTION_ID=? AND Z_POSWFACTIVITY_ID=? AND ISACTIVE='Y' AND ISVALIDATEDREQUEST='N' AND ISCANCELREQUEST='N' order by quantity";
			if(getQtyDelivered().compareTo(BigDecimal.ZERO) > 0){
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try
				{
					pstmt = DB.prepareStatement (sql,trx0);
					pstmt.setInt (1,c_orderline_id);
					pstmt.setInt (2,getZ_PosWfAction_ID());
					pstmt.setInt (3,getZ_PosWfActivity_ID());
					rs = pstmt.executeQuery ();
					boolean continueAllocation = true;
					BigDecimal qtyToAllocate = getQtyDelivered();
					while(rs.next () && continueAllocation)
					{
						MTransactionMsg trxMsg = new MTransactionMsg(getCtx(),rs.getInt(1), trx0);
						BigDecimal qtyRemaining = trxMsg.getQuantity().subtract(qtyToAllocate);
						if(qtyRemaining.compareTo(BigDecimal.ZERO) < 0){
							trxMsg.setIsValidatedRequest(true);
							trxMsg.setIsProcessed("N");
							if(!trxMsg.save())
								return false;
							qtyToAllocate = qtyToAllocate.subtract(trxMsg.getQuantity());
							if(qtyToAllocate.compareTo(BigDecimal.ZERO) == 0)
								continueAllocation = false;
						}else{
							if(qtyRemaining.compareTo(BigDecimal.ZERO) > 0){
								MTransactionMsg newMsg = new MTransactionMsg(getCtx(), 0, trx0);
								PO.copyValues(trxMsg, newMsg);
								newMsg.setAD_Client_ID(trxMsg.getAD_Client_ID());
								newMsg.setAD_Org_ID(trxMsg.getAD_Org_ID());
								newMsg.setQuantity(qtyRemaining);
								if(!newMsg.save())
									return false;
								trxMsg.setQuantity(qtyToAllocate);
							}
							trxMsg.setIsValidatedRequest(true);
							trxMsg.setIsProcessed("N");
							if(!trxMsg.save())
								return false;
							continueAllocation = false;
						}
					}
				}
				catch (Exception e)
				{
					log.log (Level.SEVERE, sql, e);
					trx0.rollback();
					throw e;
				}finally{
					Util.closeCursor(pstmt, rs);
				}
			}else{
				int maxActivity_ID = DB.getSQLValue(trx0,"select Z_POSWFACTIVITY_ID from z_posactionactivity wfa where wfa.seqno=(select max(aa.seqno) from z_posactionactivity aa where aa.z_poswfaction_id=wfa.z_poswfaction_id) and wfa.z_poswfaction_id=?",getZ_PosWfAction_ID());
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try
				{
					pstmt = DB.prepareStatement (sql,trx0);
					pstmt.setInt (1, c_orderline_id);
					pstmt.setInt (2, getZ_PosWfAction_ID());
					pstmt.setInt (3,maxActivity_ID);
					rs = pstmt.executeQuery ();
					boolean continueAllocation = true;
					BigDecimal qtyToAllocate = getQtyDelivered().negate();
					while(rs.next () && continueAllocation)
					{
						MTransactionMsg trxMsg = new MTransactionMsg(getCtx(),rs.getInt(1), trx0);
						BigDecimal qtyRemaining = trxMsg.getQuantity().subtract(qtyToAllocate);
						if(qtyRemaining.compareTo(BigDecimal.ZERO) < 0){
							trxMsg.setZ_PosWfActivity_ID(getZ_PosWfActivity_ID());
							if(!trxMsg.save())
								return false;
							qtyToAllocate = qtyToAllocate.subtract(trxMsg.getQuantity());
							if(qtyToAllocate.compareTo(BigDecimal.ZERO) == 0)
								continueAllocation = false;
						}else{
							if(qtyRemaining.compareTo(BigDecimal.ZERO) > 0){
								MTransactionMsg newMsg = new MTransactionMsg(getCtx(), 0, trx0);
								PO.copyValues(trxMsg, newMsg);
								newMsg.setAD_Client_ID(trxMsg.getAD_Client_ID());
								newMsg.setAD_Org_ID(trxMsg.getAD_Org_ID());
								newMsg.setQuantity(qtyRemaining);
								if(!newMsg.save())
									return false;
								trxMsg.setQuantity(qtyToAllocate);
							}
							qtyToAllocate = qtyToAllocate.subtract(trxMsg.getQuantity());
							trxMsg.setZ_PosWfActivity_ID(getZ_PosWfActivity_ID());
							if(!trxMsg.save())
								return false;
							continueAllocation = false;
						}
					}
				}
				catch (Exception e)
				{
					log.log (Level.SEVERE, sql, e);
					trx0.rollback();
					throw e;
				}finally{
					Util.closeCursor(pstmt, rs);
				}
				MOrderLine morderline = new MOrderLine(getCtx(),c_orderline_id, trx0);
				MOrgInfo orgInfo = MOrgInfo.get(getCtx(),getAD_Org_ID(), trx0);
				MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), getAD_Org_ID(), trx0);
				MInventory inventory = new MInventory(MWarehouse.get(getCtx(), orgInfo.getM_Warehouse_ID()));
				MProduct mp = new MProduct(getCtx(), morderline.getM_Product_ID(), get_Trx());
				inventory.setDescription("Produit : "+mp!=null?mp.getValue():morderline.getM_Product_ID() +" en retour");
				inventory.save(trx0);
				int locID = getDefaultLocator();
				MInventoryLine invl = new MInventoryLine(inventory,locID,morderline.getM_Product_ID(),morderline.getM_AttributeSetInstance_ID(), BigDecimal.ZERO, BigDecimal.ZERO);
				invl.setQtyInternalUse(getQtyDelivered()); // ALREADY NEGATIVE
				invl.setC_Charge_ID(orgPOS.getMVT_Charge_ID());
				invl.save(trx0);
				boolean successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
				if (!successMvt)
					return false;
//				reserveQty(getCtx(),morderline.getC_Order_ID(),morderline.getM_Product_ID(),locID,morderline.getM_AttributeSetInstance_ID(),getQtyDelivered().negate(),trx0);
				DB.executeUpdate("UPDATE C_ORDERLINE SET QTYINPROCESS=? WHERE C_ORDERLINE_ID=?",new Object[]{morderline.get_ValueAsBD("QtyInProcess").add(getQtyDelivered().negate()),c_orderline_id},trx0);
			}
		}
		return true;
	}
	
	private int getDefaultLocator()
	{
		MClient client = MClient.get(getCtx(), getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
		int locID = DB.getSQLValue(null, "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + MOrgInfo.get(getCtx(),this.getAD_Org_ID() , null).getM_Warehouse_ID() + " AND ISDEFAULT = 'Y' " + clientProxy.getClientCheck());
		if (locID < 1 )
		{
			throw new CompiereException("Pas de magasin/emplacement par défault pour l'organisation du ticket");
		}	
		return locID;
	}
	
	
	private int getC_Orderline_IDFromI_PosOrderline(Trx trx0){
		return DB.getSQLValue(trx0,"SELECT C_Orderline_ID FROM I_PosOrderline WHERE I_POSORDERLINE_ID=? AND AD_ORG_ID=?",new Object[]{getI_PosOrderLine_ID(),getAD_Org_ID()});
	}
	
//	private void reserveQty(Ctx ctx,int c_order_id,int m_product_id,int m_locator_id,int m_AttributeSetInstance_ID,BigDecimal qty,Trx trx0){
//		MOrder order = new MOrder(Env.getCtx(),c_order_id,trx0);
//		Object[] params2 = {getAD_Org_ID(),m_product_id,m_AttributeSetInstance_ID,m_locator_id,"W"};
//		int exist = DB.getSQLValue(trx0, "select 1 from M_StorageDetail where ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
//		String sql;
//		if(exist >= 0){
//			int qtyStorage = DB.getSQLValue(trx0, "select Qty from M_StorageDetail where ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
//			sql = 	"UPDATE M_StorageDetail SET Qty = ? , updated = sysdate WHERE ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?";
//			BigDecimal newQty = qty.add(new BigDecimal(qtyStorage));
//			Object[] paramsUP = {newQty,getAD_Org_ID(),m_product_id,m_AttributeSetInstance_ID,m_locator_id,"W"};
//			DB.executeUpdate(sql,paramsUP,trx0);
//		}else{
//			sql = 	"INSERT INTO M_StorageDetail (AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,M_Locator_ID, M_Product_ID, M_AttributeSetInstance_ID,QtyType, Qty, DateLastInventory)"+
//						"values (?,?,?,sysdate,?,sysdate,?,?,?,?,?,?,sysdate)";
//			
//			Object[] paramsINS = {getAD_Client_ID(),getAD_Org_ID(),"Y",order.getAD_User_ID(),order.getAD_User_ID(),m_locator_id,m_product_id,m_AttributeSetInstance_ID,"W",qty};
//			DB.executeUpdate(sql,paramsINS,trx0);
//		}
//	}
}
