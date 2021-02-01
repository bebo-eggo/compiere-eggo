package com.audaxis.compiere.model;


import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MConversionType;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInventory;
import org.compiere.model.MInventoryLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocator;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MOrgPOS;
import org.compiere.model.MPeriod;
import org.compiere.model.MPeriodControl;
import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProduct;
import org.compiere.model.MWarehouse;
import org.compiere.model.X_Ref_C_Order_DeliveryRule;
import org.compiere.model.X_Ref_C_Order_InvoiceRule;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.helper.PriceListHelper;
import com.audaxis.compiere.eurocenter.helper.PriceListVersionHelper;
import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.pos.process.PosCtx;
import com.audaxis.compiere.util.CompiereException;

import org.compiere.model.MPayment;

public class MPosOrder extends X_I_PosOrder {

	/** Logger for class MPosOrder */
	private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPosOrder.class);
	public static final String DELIVERYRULE_Force = X_Ref_C_Order_DeliveryRule.FORCE.getValue();
	/** After Delivery = D */
	public static final String INVOICERULE_AfterDelivery = X_Ref_C_Order_InvoiceRule.AFTER_DELIVERY.getValue();



	public static MPosOrder get(Ctx ctx, int I_PosOrder_ID,int ad_org_id, Trx trx) {
		MPosOrder retValue = null;
		String sql = "SELECT * FROM I_PosOrder WHERE I_PosOrder_ID=? AND ad_org_id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, I_PosOrder_ID);
			pstmt.setInt (2, ad_org_id);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPosOrder (ctx, rs, trx);
			}
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		return retValue;
	}

	public MPosOrder(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}



	/**************************************************************************
	 * 	Generate OrderHeader
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MOrder generateOrderHeader() {
		MOrder ord = new MOrder(getCtx(),0,get_Trx());
		ord.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
		MOrder.copyValues(this, ord);
		ord.set_ValueNoCheck("CreatedBy",this.getCreatedBy());
		ord.set_ValueNoCheck("UpdatedBy",this.getUpdatedBy());
		ord.setPOReference(getZ_PosNbr());
		ord.setVendorID(getVendorID());
		ord.set_ValueNoCheck("Z_Warranty",get_Value("Z_Warranty"));
		ord.setDescription2(getDescription2());
		ord.set_ValueNoCheck("Z_OrigOrder",this.get_Value("Z_OrigOrder"));
		ord.set_ValueNoCheck("Z_TotPayment",this.get_Value("Z_TotPayment"));
		ord.set_ValueNoCheck("Z_GrandTotal",this.get_Value("Z_GrandTotal"));
		ord.setDeliveryRule(DELIVERYRULE_Force);
		ord.set_ValueNoCheck("I_PosOrder_ID", getI_PosOrder_ID());
		ord.setC_DocType_ID(getC_DocTypeTarget_ID());
		ord.save(get_Trx());
		this.set_ValueNoCheck("C_Order_ID",ord.getC_Order_ID());
		this.save();
		
		return ord;
	}

	/**************************************************************************
	 * 	Generate Line
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MOrder generateOrderLines(MOrder ord, String whereClause) {
		int origOrder_ID = 0;
		ArrayList<Integer> orgs = new ArrayList<Integer>();
		orgs.add(ord.getAD_Org_ID());
		MDocType dt = new MDocType(getCtx(), ord.getC_DocTypeTarget_ID(), get_Trx());
		String m_processMsg = MPeriod.isOpen(getCtx(), getAD_Client_ID(), orgs,ord.getDateOrdered(), dt.getDocBaseType());
		MClient client = MClient.get(getCtx(), ord.getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), ord.getAD_Org_ID(), get_Trx());
		if(ord.get_ValueAsString("Z_OrigOrder") != null && !ord.get_ValueAsString("Z_OrigOrder").isEmpty()){
			origOrder_ID = DB.getSQLValue(get_Trx(), "select c_order_id from c_order where documentno = ? " + clientProxy.getClientCheck() , ord.get_ValueAsString("Z_OrigOrder"));
		}
		MPosOrderLine[] posOrderLines = getLines(whereClause, "");
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		String dateOrdered = df.format(ord.getDateOrdered());
		Timestamp dateO = new Timestamp(GregorianCalendar.getInstance().getTimeInMillis());
		if(m_processMsg != null)
		{
			dateOrdered = df.format(dateO);
		}
		for (int i = 0; i < posOrderLines.length; i++) {
			MPosOrderLine posOrderLine = posOrderLines[i];
			if(posOrderLine.getC_OrderLine_ID() <=0){
				MOrderLine ordLine =  new MOrderLine(getCtx(),0,get_Trx());
				ordLine.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				ordLine.setOrder(ord);
				ordLine.setLine(posOrderLine.getLine());
				ordLine.setMProductState(posOrderLine.getMProductState());
				ordLine.setAccessories(posOrderLine.getAccessories());
				ordLine.setPurchaseDate(posOrderLine.getPurchaseDate());
				ordLine.setC_Tax_ID((Integer)posOrderLine.get_Value("C_Tax_ID"));
				ordLine.setC_Order_ID(ord.get_ID());
				ordLine.setM_Product_ID(posOrderLine.getM_Product_ID());
				ordLine.setQtyEntered(posOrderLine.getQtyEntered());
				if(m_processMsg != null)
					ordLine.setDateOrdered(dateO);
				MPriceListVersion mpv = new MPriceListVersion(getCtx(), DB.getSQLValue(get_Trx(), "Select getPriceListLastVersionPrice(?, ?, ?) from DUAL ",  new Object[] {ord.getM_PriceList_ID(),posOrderLine.getM_Product_ID(),ord.getDateOrdered()  }) , get_Trx());
				if(mpv==null || mpv.get_ID() == 0)
					ordLine.setDateOrdered(dateO);
				ordLine.set_ValueNoCheck("QtyToDeliver", posOrderLine.get_Value("QtyToDeliver"));   // newBDV
				ordLine.set_Value("Z_OrigOrderline_ID",posOrderLine.get_Value("Z_OrigOrderline_ID"));
				
				if (ord.getC_DocTypeTarget_ID() == orgPOS.getDocType_Consignation_ID()  ||
					ord.getC_DocTypeTarget_ID() == orgPOS.getDocType_Rep_ID() 	)
					ordLine.set_ValueNoCheck("ZIsComplement", "Y");
				
				//Save POPRICE Pour marge
				if(posOrderLine.get_Value("storePoPrice")==null)
				{
					BigDecimal po = DB .getSQLValueBD(get_Trx(), "Select GETPRODUCTPRICE(?,"+getAD_Client_ID()+",trunc(to_date('" +dateOrdered+ "','dd/mm/yyyy'))) FROM DUAL", posOrderLine.getM_Product_ID());
					double POPrice = po==null?0:po.doubleValue();
					ordLine.set_ValueNoCheck("storePoPrice",new BigDecimal(POPrice).setScale(2,RoundingMode.HALF_UP));
				}
				else
				{
					ordLine.set_ValueNoCheck("storePoPrice",posOrderLine.get_ValueAsBigDecimal("storePoPrice").setScale(2,RoundingMode.HALF_UP));
				}
				
				ordLine.setPrice(posOrderLine.getPriceEntered());
				ordLine.setPriceList(posOrderLine.getPriceList());
				// Default Locator de l'organisation du pos
				ordLine.set_ValueNoCheck("M_Locator_ID", getDefaultLocator(ordLine.getAD_Client_ID()));
				ordLine.setDescription(posOrderLine.get_ValueAsString("Description"));
				if(origOrder_ID > 0 && ordLine.getQtyEntered().compareTo(BigDecimal.ZERO) < 0){
					Object[] params1 = {origOrder_ID,ordLine.getM_Product_ID()};
					int origOrderLine_id = DB.getSQLValue(get_Trx(), "Select C_OrderLine_ID from c_orderline where C_Order_ID=? and m_product_id=?", params1);
					if(origOrderLine_id > 0 ){
						MOrderLine origOrderLine = new MOrderLine(getCtx(), origOrderLine_id, get_Trx());
						Object[] params2 = {"Y",origOrderLine.getQtyReturned().add(ordLine.getQtyEntered().abs()),origOrder_ID,ordLine.getM_Product_ID()};
						DB.executeUpdate("UPDATE C_OrderLine SET Z_isReturned=?,QtyReturned=? WHERE C_Order_ID=? and m_product_id=?", params2, get_Trx());
						BigDecimal zGrandTotal = DB.getSQLValueBD(get_Trx(),"select sum((qtyEntered-qtyReturned)*priceEntered) from c_orderline where c_order_id=?",origOrder_ID);
						Object[] params3 = {zGrandTotal,origOrder_ID};
						DB.executeUpdate("UPDATE C_Order SET Z_GrandTotal=? WHERE C_Order_ID=?",params3, get_Trx());
					}
				}
				if(ord.getC_DocTypeTarget_ID() == orgPOS.getDocType_Rep_ID()  && ordLine.getQtyEntered().compareTo(BigDecimal.ZERO) < 0)
				{
					ordLine.set_ValueNoCheck("M_Locator_ID", orgPOS.getM_LocatorSAV_ID());
					//Réaliser TRX non planifié
					generateSAVIN(getCtx(), ordLine,orgPOS, get_Trx());
				}
				if (posOrderLine.getZ_SerNo() != null) {
					ordLine = generateSerno(ordLine, posOrderLine.getZ_SerNo());
				}	
				if (posOrderLine.get_Value("Iemi") != null) ordLine.set_Value("Iemi", posOrderLine.get_Value("Iemi"));
				ordLine.set_ValueNoCheck("I_PosOrderLine_ID",posOrderLine.getI_PosOrderLine_ID());
				ordLine.setIsActive(posOrderLine.isActive());
				if(!ordLine.isActive()){
					ordLine.setQtyEntered(BigDecimal.ZERO);
					ordLine.setQtyOrdered(BigDecimal.ZERO);
					ordLine.set_ValueNoCheck("QtyToDeliver",BigDecimal.ZERO); 
					ordLine.setPrice(BigDecimal.ZERO);
					ordLine.setPriceList(BigDecimal.ZERO);
					ordLine.setLineNetAmt();
				}
				ordLine.save(get_Trx());
				ordLine.updateHeaderTax();
				posOrderLine.setC_OrderLine_ID(ordLine.get_ID());
				posOrderLine.save(get_Trx());
				int no = DB.executeUpdate("update I_PosOrderLine SET  qtyToDeliver = 0 where I_posorderline_id = ? and ad_org_id = ? ", new Object[] {posOrderLines[i].getI_PosOrderLine_ID(),posOrderLines[i].getAD_Org_ID()}, get_Trx());
				generateOrderLinesActon(true,ordLine,posOrderLine);
				//generate newligne avec ODV existant
				
			}
			else{
				//MAJ de ligne de BDV
				//if(ord.getDocumentNo().equals("BDV-20060104488490"))
				//{
				
				if(ord.getC_DocType_ID() != orgPOS.getDocType_Bdv_ID())
					continue;
				MOrderLine ordLine =  new MOrderLine(getCtx(),posOrderLine.getC_OrderLine_ID(),get_Trx());
				//MAJ prix et Qté
				ordLine.setQtyEntered(posOrderLine.getQtyEntered());
				ordLine.setPrice(posOrderLine.getPriceEntered());
				if(ordLine.get_Value("storePoPrice")==null)
				{
					BigDecimal po = DB .getSQLValueBD(get_Trx(), "Select GETPRODUCTPRICE(?,"+getAD_Client_ID()+",trunc(to_date('" +dateOrdered+ "','dd/mm/yyyy'))) FROM DUAL", posOrderLine.getM_Product_ID());
					double POPrice = po==null?0:po.doubleValue();
					ordLine.set_ValueNoCheck("storePoPrice",new BigDecimal(POPrice).setScale(2,RoundingMode.HALF_UP));
				}
				else
				{
					ordLine.set_ValueNoCheck("storePoPrice",ordLine.get_ValueAsBigDecimal("storePoPrice").setScale(2,RoundingMode.HALF_UP));
				}
				if (posOrderLine.get_Value("Iemi") != null) ordLine.set_Value("Iemi", posOrderLine.get_Value("Iemi"));
				ordLine.set_ValueNoCheck("I_PosOrderLine_ID",posOrderLine.getI_PosOrderLine_ID());
				ordLine.setIsActive(posOrderLine.isActive());
				if(!ordLine.isActive()){
					ordLine.setQtyEntered(BigDecimal.ZERO);
					ordLine.setQtyOrdered(BigDecimal.ZERO);
					ordLine.set_ValueNoCheck("QtyToDeliver",BigDecimal.ZERO); 
					ordLine.setPrice(BigDecimal.ZERO);
					ordLine.setPriceList(BigDecimal.ZERO);
					ordLine.setLineNetAmt();
				}
				ordLine.save(get_Trx());
				ordLine.updateHeaderTax();
				posOrderLine.setC_OrderLine_ID(ordLine.get_ID());
				posOrderLine.save(get_Trx());
				int no = DB.executeUpdate("update I_PosOrderLine SET  qtyToDeliver = 0 where I_posorderline_id = ? and ad_org_id = ? ", new Object[] {posOrderLines[i].getI_PosOrderLine_ID(),posOrderLines[i].getAD_Org_ID()}, get_Trx());
				if(ord.getC_DocType_ID() != orgPOS.getDocType_WebSales_ID())
					generateOrderLinesActon(false,ordLine,posOrderLine);
			//	}
			}
		}
		return ord;
	}
	
	private MInventory generateSAVIN(Ctx ctx, MOrderLine mol,MOrgPOS orgpos, Trx trx)
	{
		MInventory inventory = null;
		int TolocID =orgpos.getM_LocatorSAV_ID();
		MProduct product = new MProduct(ctx, mol.getM_Product_ID(),trx);
		if (((product != null) || product.isStocked()) || (mol.getQtyOrdered().signum() != 0))		//	lines w/o product
		{
			if (inventory == null){
				inventory = new MInventory(MWarehouse.get(ctx, mol.getM_Warehouse_ID()));
				inventory.set_ValueNoCheck("IsInternalUse", true);
				String bpv = DB.getSQLValueString(null, "select value from c_bpartner where c_bpartner_id = ? ", mol.getParent().getC_BPartner_ID());
				if (bpv == null || bpv.isEmpty()) throw new CompiereException("Tiers de la Cde non trouvé ");
				inventory.setDescription("Cde: " + mol.getParent().getDocumentNo() + " Client :" +  bpv );
				inventory.setC_DocType_ID(orgpos.getDOCTYPE_TRXPLAN_ID());//MERGE
				inventory.save(trx);
			}
			
			MInventoryLine invl = new MInventoryLine(ctx, 0, trx);
			invl.setM_Product_ID(mol.getM_Product_ID());
			invl.setM_Inventory_ID(inventory.getM_Inventory_ID());
			invl.setM_Locator_ID(TolocID);
			invl.set_ValueNoCheck("IsInternalUse", true);
			invl.setLine(10);
			invl.setDescription(inventory.getDescription());
			invl.setQtyInternalUse(mol.getQtyEntered()); // -1
			invl.setC_Charge_ID(orgpos.getMVT_Charge_ID());
			invl.setAD_Org_ID(inventory.getAD_Org_ID());
			invl.save(trx);
			if (inventory != null) {
				boolean successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
				inventory.save(trx);
			}
		}
		return inventory;
	}

	/**************************************************************************
	 * 	Generate Msg
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MOrder generateOrderMsg(MOrder ord) {
		MPosOrderMsg[] posOrderMsgs = getLineMsg("", "");
		for (int i = 0; i < posOrderMsgs.length; i++) {
			MPosOrderMsg posOrderMsg = posOrderMsgs[i];
			MOrderMsg ordLineMsg =  new MOrderMsg(getCtx(),0,get_Trx());
			ordLineMsg.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
			ordLineMsg.setC_Order_ID(ord.getC_Order_ID());
			ordLineMsg.setAD_Message_ID(posOrderMsg.getAD_Message_ID());
			ordLineMsg.save(get_Trx());
		}
		return ord;
	}

	
	
	public void disableOrderline() {
		MPosOrderLine[] posOrderLines = getLines("", "");
		// Mise à jour des COrderline existante
		for (int i = 0; i < posOrderLines.length; i++) {
			if(posOrderLines[i].getC_OrderLine_ID() > 0 && !posOrderLines[i].isActive()){
				DB.executeUpdate("UPDATE C_ORDERLINE SET ISACTIVE='N',QtyEntered=0,QtyOrdered=0,QtyToDeliver=0,PriceList=0,PriceEntered=0,PriceActual=0,LineNetAmt=0 WHERE C_ORDERLINE_ID=?",new Object[]{posOrderLines[i].getC_OrderLine_ID()},get_Trx());
			}
		}
	}
	
//	public MOrder updateMOrderline(MPosOrder posOrder,MOrder ord) {
//		MPosOrderLine[] posLines = getLines("","");
//		for (int j = 0; j < posLines.length; j++) {
//			if(posLines[j].getC_OrderLine_ID() > 0)
//				DB.executeUpdate("UPDATE C_ORDERLINE SET I_POSORDERLINE_ID=? WHERE C_ORDERLINE_ID=?",new Object[]{posLines[j].getI_PosOrderLine_ID(),posLines[j].getC_OrderLine_ID()},get_Trx());
//		}
//		return ord;
//	}
	
	public MOrder updateComments(MPosOrder posOrder,MOrder ord) {
		MOrderLine[] orderlines = ord.getLines();
		// Mise à jour des COrderline existante
		for (int i = 0; i < orderlines.length; i++) {
			MPosOrderLine[] posLines = getLines("","");
			for (int j = 0; j < posLines.length; j++) {
				if(orderlines[i].getM_Product_ID() == posLines[j].getM_Product_ID()
						&& orderlines[i].getQtyEntered().compareTo(posLines[j].getQtyEntered()) == 0){
					MOrderLinePosAction[] orderlineActions = getActionsForOrderline(orderlines[i]);
					for (int k = 0; k < orderlineActions.length; k++) {
						MPosOrderLineAction[] posactions = getLineActionsForPOSOrderLine(posLines[j].getI_PosOrderLine_ID());
						boolean ok = false;
						for (int l = 0; l < posactions.length && !ok; l++) {
							if(orderlineActions[k].getZ_PosWfAction_ID() == posactions[l].getZ_PosWfAction_ID()){
								orderlineActions[k].setComments(posactions[l].getComments());
								orderlineActions[k].save();
								ok=true;
							}
						}
					}
				}
			}
		}
		return ord;
	}
	
	public MOrderLinePosAction[] getActionsForOrderline(MOrderLine orderline){
		ArrayList<MOrderLinePosAction> list = new ArrayList<MOrderLinePosAction> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM Z_OrderlinePosAction WHERE C_OrderLine_ID=?");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, orderline.get_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderLinePosAction ol = new MOrderLinePosAction(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MOrderLinePosAction[] lines = new MOrderLinePosAction[list.size ()];
		list.toArray (lines);
		return lines;
	}


	/**************************************************************************
	 * 	Generate Line
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public void generateOrderLinesActon(boolean newLigne,MOrderLine ordLine,MPosOrderLine posLine) {
		MPosOrderLineAction[] posOrderLinesAction = getLineActionsForPOSOrderLine(posLine.getI_PosOrderLine_ID());
		
		//Savoir si la ligne de MOrderLinePosAction exists !
		for (int i = 0; i < posOrderLinesAction.length; i++) {
			MOrderLinePosAction ordLineActionX =  new MOrderLinePosAction(getCtx(),posOrderLinesAction[i].getZ_OrderLinePosAction_ID(),get_Trx());
			//NEW !
			if(newLigne || ordLineActionX.get_ID() == 0)
			{
				MPosOrderLineAction posOrderLineAction = posOrderLinesAction[i];
				MOrderLinePosAction ordLineAction =  new MOrderLinePosAction(getCtx(),0,get_Trx());
				ordLineAction.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				PO.copyValues(posOrderLineAction, ordLineAction);
				ordLineAction.setC_OrderLine_ID(ordLine.get_ID());
				ordLineAction.save(get_Trx());
				posOrderLineAction.setZ_OrderLinePosAction_ID(ordLineAction.getZ_OrderLinePosAction_ID());
				posOrderLineAction.save(get_Trx());
				MProduct product = new MProduct(getCtx(), posLine.getM_Product_ID(),get_Trx());
				MPosWfAction posA = new MPosWfAction(getCtx(), posOrderLineAction.getZ_PosWfAction_ID(), get_Trx());
				if(posA.isGenerateMsg()	)		
					MTransactionMsg.generateMsgFromPosOrder(this,posOrderLineAction,product.get_ID());
			}
			else{				
				ordLineActionX.setQtyEntered(posOrderLinesAction[i].getQtyEntered());
				ordLineActionX.setComments(posOrderLinesAction[i].getComments());
				ordLineActionX.save(get_Trx());
			}
			//UPDATE !

		}
	}





	//	public MInOut generateShipment (MOrder ord, Ctx ctx)
	//	{
	//		MInOut shipment = null;
	//		ArrayList<MInOutLine> ioLines = new ArrayList<MInOutLine>();
	//
	//		if (!DELIVERYRULE_Force.equals(ord.getDeliveryRule()))
	//			ord.setDeliveryRule(DELIVERYRULE_Force);
	//
	//		MDocType dt = new MDocType(ctx, ord.getC_DocType_ID(), get_Trx());
	//		ord.set_Trx(get_Trx());
	//		shipment = new MInOut (ord, dt.getC_DocTypeShipment_ID(), null);
	//		if (!shipment.save(get_Trx()))
	//		{
	//			return null;
	//		}
	//
	//		MClient client = MClient.get(ctx);
	//
	//		MPosOrderLineAction[] posOrderLineActions = getLineActions(" AND Z_PosWfAction_ID in (select Z_PosWfAction_ID from Z_PosWfAction where value in ('" + PosCtx.ACTION_EMPORTER + "','" + PosCtx.ACTION_A_LIVRER + "') ) ", null);
	//
	//		for (MPosOrderLineAction posOrderlineAction : posOrderLineActions) {
	//			//log.fine("check: " + line);
	//			MOrderLine oline = new MOrderLine(ctx,posOrderlineAction.getParent().getC_OrderLine_ID(),get_Trx());
	//			BigDecimal toDeliver = posOrderlineAction.getQtyEntered();
	//			MProduct product = new MProduct(getCtx(), oline.getM_Product_ID(),get_Trx());
	//			//	Comments & lines w/o product & services
	//			if (((product == null) || !product.isStocked())
	//					&& ((oline.getQtyOrdered().signum() == 0 	//	comments
	//							)
	//							|| (toDeliver.signum() != 0)))		//	lines w/o product
	//			{
	//				ioLines.addAll(ord.createLine (shipment, oline, toDeliver, null, false));
	//				continue;
	//			}
	//
	//			//	Nothing to Deliver
	//			if ((product != null) && (toDeliver.signum() == 0))
	//				continue;
	//
	//			//	Stored Product
	//			MProductCategory pc = MProductCategory.get(ctx, product.getM_Product_Category_ID());
	//			String MMPolicy = pc.getMMPolicy();
	//			if ((MMPolicy == null) || (MMPolicy.length() == 0))
	//				MMPolicy = client.getMMPolicy();
	//			//
	//			List<Storage.VO> storages = Storage.getWarehouse(ctx,
	//					oline.getM_Warehouse_ID(), oline.getM_Product_ID(), oline.getM_AttributeSetInstance_ID(),
	//					product.getM_AttributeSet_ID(), oline.getM_AttributeSetInstance_ID()==0, ord.getDateOrdered(),
	//					X_AD_Client.MMPOLICY_FiFo.equals(MMPolicy), get_Trx());
	//
	//
	//			ioLines.addAll(ord.createLine (shipment, oline, toDeliver, storages, true));
	//		}	//	for all order lines
	//
	//		if(!saveAll(get_Trx(), ioLines)) {
	//			//			m_processMsg = "Could not save shipment lines";
	//			return null;
	//		}
	//		//	Manually Process Shipment
	//		boolean successShipment = DocumentEngine.processIt(shipment, DocActionConstants.ACTION_Complete);
	//		shipment.save(get_Trx());
	//		if (!successShipment)
	//		{
	//			//	m_processMsg = "@M_InOut_ID@: " + shipment.getProcessMsg();
	//			return null;
	//		}
	//		return shipment;
	//	}	//	generate
	//

	/**
	 * 	Create Invoice
	 *	@param dt order document type
	 *	@param shipment optional shipment
	 *	@param invoiceDate invoice date
	 *	@return invoice or null
	 */
	public MInvoice createInvoice (MOrder ord, MDocType dt, MInOut shipment, Timestamp invoiceDate)
	{
		log.info(dt.toString());
		MInvoice invoice = new MInvoice (ord, dt.getC_DocTypeInvoice_ID(), invoiceDate);
		if (!invoice.save(get_Trx()))
		{
			//			m_processMsg = "Could not create Invoice";
			return null;
		}

		//	If we have a Shipment - use that as a base
		if (shipment != null)
		{
			if (!INVOICERULE_AfterDelivery.equals(ord.getInvoiceRule()))
				ord.setInvoiceRule(INVOICERULE_AfterDelivery);
			//
			MInOutLine[] sLines = shipment.getLines(false);
			ArrayList<MInvoiceLine> iLines = new ArrayList<MInvoiceLine>();
			for (MInOutLine sLine : sLines)
			{
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				iLine.setShipLine(sLine);
				//	Qty = Delivered
				iLine.setQtyEntered(sLine.getQtyEntered());
				iLine.setQtyInvoiced(sLine.getMovementQty());
				iLines.add(iLine);
				//
				sLine.setIsInvoiced(true);
			}
			if (!saveAll(get_Trx(), iLines))
			{
				//			m_processMsg = "Could not create Invoice Line from Shipment Line";
				return null;
			}
			if (!saveAll(get_Trx(), Arrays.asList(sLines)))
			{
				log.warning("Could not update Shipment lines");
			}
		}
		//	Manually Process Invoice
		boolean successInv = DocumentEngine.processIt(invoice, DocActionConstants.ACTION_Complete);
		invoice.save(get_Trx());
		ord.setC_CashLine_ID(invoice.getC_CashLine_ID());
		ord.save(get_Trx());
		if (!successInv)
		{
			//			m_processMsg = "@C_Invoice_ID@: " + invoice.getProcessMsg();
			return null;
		}
		return invoice;
	}	//	createInvoice



	public boolean generatePaymentTicket(MPosOrder posOrder, MOrder order) {
		//MClient client = MClient.get(getCtx(), order.getAD_Client_ID());
		//MClientProxy clientProxy = new MClientProxy(client);
		
		MPosOrderPayment[] posOrderPayments = getPayments(" AND PayAmt <> 0 AND C_Payment_ID = 0 ", "");  // newBDV
		//int invoiceID = DB.getSQLValue(get_Trx(), "SELECT max(C_Invoice_ID) from C_Invoice where C_Order_ID = ? " + clientProxy.getClientCheck(), order.getC_Order_ID());
		// if (invoiceID < 1) throw new CompiereException("Invoice must exist to create Tiket Payment"); 
		for (int i = 0; i < posOrderPayments.length; i++) {
			MPosOrderPayment posOrderPayment = posOrderPayments[i];
			if(posOrderPayment.get_ValueAsInt("C_Payment_ID") <= 0){
				createdPayment(getCtx(),posOrder, order,posOrderPayment,get_Trx() );
			}
		}
		return true;
	}


	public static void createdPayment(Ctx ctx, MPosOrder posOrder, MOrder order, MPosOrderPayment posOrderPayment, Trx trx)
	{
		//Check si période open
		ArrayList<Integer> orgs = new ArrayList<Integer>();
		MPayment paym =  new MPayment(ctx,0,trx);
		orgs.add(order.getAD_Org_ID());
		if(MPeriod.isOpen(ctx, order.getAD_Client_ID(), orgs, posOrderPayment.getCreated(), paym.getDocBaseType())!=null)
			return;
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(ctx, order.getAD_Org_ID(), trx);
		paym.setClientOrg(order.getAD_Client_ID(), order.getAD_Org_ID());
		MPayment.copyValues(posOrderPayment, paym);
		paym.setC_BPartner_ID(order.getC_BPartner_ID());
//		if (invoiceID > 0)
//			paym.setC_Invoice_ID(invoiceID);
		if (paym.getDescription() != null)
			paym.setDescription(paym.getDescription() + " - " + posOrder.getZ_PosNbr());
		else
			paym.setDescription(posOrder.getZ_PosNbr());
		paym.setC_Currency_ID(orgPOS.getDefaultC_Currency_ID());
		paym.set_Value("ZCreateFromOpenInvoice", "N");
		
		paym.setDateAcct(posOrderPayment.getCreated());
		paym.setDateTrx(posOrderPayment.getCreated());
		paym.setDateAcct(posOrderPayment.getCreated());
		paym.set_Value("DueDate", posOrderPayment.getCreated());
		
		paym.setC_ConversionType_ID(MConversionType.getDefault(order.getAD_Client_ID()));//MERGE
		paym.setChargeAmt(BigDecimal.ZERO);
		paym.setOProcessing("N");
		paym.setDocAction(MOrder.DOCACTION_Complete);
		paym.setC_Order_ID(order.getC_Order_ID());
		paym.set_Value("PayReceived",posOrderPayment.get_Value("PayReceived"));
//		paym.setC_Invoice_ID(order.getC_Invoice_ID());
		paym.save(trx);
		paym.setOrderAllocate(true);
		boolean successPay = DocumentEngine.processIt(paym, DocActionConstants.ACTION_Complete);
		paym.save(trx);
		if (!successPay) throw new CompiereException(paym.getProcessMsg());
		posOrderPayment.set_ValueNoCheck("C_Payment_ID", paym.getC_Payment_ID());
		posOrderPayment.save(trx);
		paym.set_ValueNoCheck("I_PosOrderPayment_ID",posOrderPayment.getI_PosOrderPayment_ID());
		paym.save(trx);
	}



	private MOrderLine generateSerno(MOrderLine ordLine , String serNo ) {
		ordLine.set_ValueNoCheck("Z_SerNo",serNo);
//		int attrSetID = DB.getSQLValue(null, "select p.M_AttributeSet_id from M_product p inner join M_AttributeSet a on (a.M_AttributeSet_id = p.M_AttributeSet_id ) where p.m_product_id = ? and a.ISSERNO = 'Y' ", ordLine.getM_Product_ID());
//		if (attrSetID > 0 )
//		{	
//			MAttributeSetInstance asi = new MAttributeSetInstance(getCtx(), 0, get_Trx());
//			asi.setClientOrg(ordLine.getAD_Client_ID(), ordLine.getAD_Org_ID());
//			asi.setM_AttributeSet_ID(attrSetID);
//			asi.setSerNo(serNo);
//			asi.getGuaranteeDate(true);
//			asi.setDescription();
//			asi.save(get_Trx());
//			ordLine.setM_AttributeSetInstance_ID(asi.get_ID());
//		}
		return ordLine;
	}

	/**************************************************************************
	 * 	Get Lines of PosOrder
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MPosOrderLine[] getLines (String whereClause, String orderClause)
	{
		ArrayList<MPosOrderLine> list = new ArrayList<MPosOrderLine> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderLine WHERE I_PosOrder_ID=? and ad_org_id=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getI_PosOrder_ID());
			pstmt.setInt(2, getAD_Org_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrderLine ol = new MPosOrderLine(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MPosOrderLine[] lines = new MPosOrderLine[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines
	
	/**************************************************************************
	 * 	Get Lines of PosOrder
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MPosOrderMsg[] getLineMsg (String whereClause, String orderClause)
	{
		ArrayList<MPosOrderMsg> list = new ArrayList<MPosOrderMsg> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderMsg WHERE I_PosOrder_ID=? AND AD_Org_ID=?");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, get_ID());
			pstmt.setInt(2, getAD_Org_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrderMsg ol = new MPosOrderMsg(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MPosOrderMsg[] lines = new MPosOrderMsg[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLinesMsg



	/**************************************************************************
	 * 	Get Lines of PosOrder
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MPosOrderLineAction[] getLineActions (String whereClause, String orderClause)
	{
		ArrayList<MPosOrderLineAction> list = new ArrayList<MPosOrderLineAction> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderLineAction WHERE I_PosOrderLine_ID in (select I_PosOrderLine_ID from I_PosOrderLine where I_PosOrder_id = ?  AND AD_ORG_ID=?) AND AD_Org_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getI_PosOrder_ID());
			pstmt.setInt(2,getAD_Org_ID());
			pstmt.setInt(3,getAD_Org_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrderLineAction ol = new MPosOrderLineAction(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
			throw new CompiereException(e.getMessage());
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MPosOrderLineAction[] lines = new MPosOrderLineAction[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	/**************************************************************************
	 * 	Get Lines of PosOrder for OrderLine
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MPosOrderLineAction[] getLineActionsForPOSOrderLine (int posOrderLineID)
	{
		ArrayList<MPosOrderLineAction> list = new ArrayList<MPosOrderLineAction> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderLineAction WHERE I_POSORDERLINE_ID  = ? AND AD_Org_ID=?");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, posOrderLineID);
			pstmt.setInt(2, getAD_Org_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrderLineAction ol = new MPosOrderLineAction(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MPosOrderLineAction[] lines = new MPosOrderLineAction[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines


	/**************************************************************************
	 * 	Get Payment of PosOrder
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return Payment
	 */
	public MPosOrderPayment[] getPayments (String whereClause, String orderClause)
	{
		ArrayList<MPosOrderPayment> list = new ArrayList<MPosOrderPayment> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderPayment WHERE I_PosOrder_ID=? AND AD_Org_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getI_PosOrder_ID());
			pstmt.setInt(2,getAD_Org_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrderPayment ol = new MPosOrderPayment(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MPosOrderPayment[] lines = new MPosOrderPayment[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	/**************************************************************************
	 * 	Get Payment of PosOrder
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return Payment
	 */
	public static MPosOrderPayment[] getPaymentsForOrder (Ctx ctx, MPosOrder posOrder, Trx trx)
	{
		ArrayList<MPosOrderPayment> list = new ArrayList<MPosOrderPayment> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderPayment WHERE I_PosOrder_ID=? AND AD_Org_ID=? and PayAmt <> 0 AND C_Payment_ID = 0");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trx);
			pstmt.setInt(1, posOrder.getI_PosOrder_ID());
			pstmt.setInt(2,posOrder.getAD_Org_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrderPayment ol = new MPosOrderPayment(ctx, rs, trx);
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		//
		MPosOrderPayment[] lines = new MPosOrderPayment[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	public static MPosOrder[] getPosOrderNotImpPayment(Ctx ctx, Trx trx)
	{
		ArrayList<MPosOrder> list = new ArrayList<MPosOrder> ();
		StringBuffer sql = new StringBuffer("SELECT ipo.I_POSORDER_ID, ipo.AD_ORG_ID from I_PosOrderPayment ipp " +
				"inner join I_POSORDER ipo on ipo.I_POSORDER_ID = ipp.I_POSORDER_ID and ipp.AD_ORG_ID = ipo.AD_ORG_ID " +
				"inner join C_Order co on co.C_ORDER_ID = ipo.C_ORDER_ID " +
				"WHERE ipp.PayAmt <> 0 AND ipp.C_Payment_ID = 0 and co.DOCSTATUS  in ('CO','CL') " +
				"GROUP BY ipo.I_POSOrder_ID, ipo.AD_Org_ID");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trx);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPosOrder ol = MPosOrder.get(ctx, rs.getInt(1), rs.getInt(2), trx);
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		
		MPosOrder[] lines = new MPosOrder[list.size ()];
		list.toArray (lines);
		return lines;
	}


	public boolean checkQtyForAction (String actionCode)
	{
		MClient client = MClient.get(getCtx(), getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
		StringBuffer sql = 
				new StringBuffer( 
						"select nvl ( CAST (" 
						.concat("   (select sum(ila.qtyentered) from i_posorderlineaction ila where ila.AD_ORG_ID=? AND ila.i_posOrderline_id in  ")
						.concat("           ( select il2.i_posOrderLine_id from I_POSORDERLINE il2 where il2.i_posorder_id = ? AND il2.AD_ORG_ID=? ) and ila.Z_PosWfAction_ID in (select Z_PosWfAction_ID from Z_PosWfAction where value = ? " + clientProxy.getClientCheck() +  " )  ) " )  
						.concat("              AS INTEGER) , 1 ) " )
						.concat("from dual " ) 
						);
		Object[] params = {getAD_Org_ID(),get_ID(),getAD_Org_ID(), actionCode};
		int qty = DB.getSQLValue(null, sql.toString(), params);
		return ((qty != 0)? true : false);
	}	

	// Genere MVT NP
	public boolean generateTransMsg()
	{
		boolean successMvt = false;
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(),getAD_Org_ID(), get_Trx());

		MInventory inventory = null;
		int oldProdID = 0;
		try{ 
			/*
			 MPosOrderLineAction[] posOrderLineActions = getLineActions("  AND Z_PosWfAction_ID in (select Z_PosWfAction_ID from Z_PosWfAction where IsStocked = 'Y' " + PosCtx.CLIENTCHECK +  " )", null);

			for (MPosOrderLineAction posOrderlineAction : posOrderLineActions) {

						if (inventory == null){
							inventory = new MInventory(MWarehouse.get(getCtx(), orgInfo.getM_Warehouse_ID()));
							inventory.setDescription("Cde: " + getDocumentNo() + " Client :" + MBPartner.get(getCtx(), getC_BPartner_ID()).getValue() );
							inventory.save(get_Trx());
						}

				//log.fine("check: " + line);
				MOrderLine oline = new MOrderLine(getCtx(),posOrderlineAction.getParent().getC_OrderLine_ID(),get_Trx());
				BigDecimal toDeliver = posOrderlineAction.getQtyEntered();
				MProduct product = new MProduct(getCtx(), oline.getM_Product_ID(),get_Trx());
				MPosWfAction action = new MPosWfAction(getCtx(),posOrderlineAction.getZ_PosWfAction_ID(),get_Trx());
				MLocator loc = MLocator.get(getCtx(),action.getM_Locator_ID());
				//	Comments & lines w/o product & services
				if (((product != null) || product.isStocked()) || (toDeliver.signum() != 0))		//	lines w/o product
				{

					Object[] params = {inventory.get_ID(),product.get_ID(),getDefaultLocator()};
					int invID = DB.getSQLValue(get_Trx(), "select m_inventoryline_id from m_inventoryline where m_inventory_id = ? and m_product_id = ? and m_locator_id = ?", params);

					if (invID > 1){
						MInventoryLine invl = new MInventoryLine(getCtx(), invID, get_Trx());
						if (action.isMvtIn()){
							invl.setQtyInternalUse(invl.getQtyInternalUse().add(toDeliver.negate()));
							oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver) );
						}
						else{
							invl.setQtyInternalUse(invl.getQtyInternalUse().add(toDeliver));
							oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver.negate()) );
						}
						invl.save(get_Trx());

					}
					else {
						MInventoryLine invl = new MInventoryLine(inventory, getDefaultLocator(), product.get_ID(), oline.getM_AttributeSetInstance_ID(), BigDecimal.ZERO, BigDecimal.ZERO);
						invl.setDescription(inventory.getDescription());
						if (action.isMvtIn()){
							invl.setQtyInternalUse(toDeliver.negate());
//							if(!loc.getValue().equals(PosCtx.LOCCONSIGNATION))
								oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver) );
						}
						else{
							invl.setQtyInternalUse(toDeliver);
//							if(!loc.getValue().equals(PosCtx.LOCCONSIGNATION))
								oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver.negate()) );
						}
						invl.setC_Charge_ID(PosCtx.CHARGE_MVT_NP_ID);
						invl.save(get_Trx());

					}
					oline.save(get_Trx());
					
					MOrg org = new MOrg(Env.getCtx(),oline.getAD_Org_ID(),get_Trx());
					MWarehouse warehouse = new MWarehouse(getCtx(), org.getM_Warehouse_ID(),get_Trx());
					MLocator locator = warehouse.getDefaultLocator();
					Object[] params2 = {getAD_Client_ID(),getAD_Org_ID(),product.get_ID(),oline.getM_AttributeSetInstance_ID(),locator.get_ID(),"W"};
					int exist = DB.getSQLValue(get_Trx(), "select 1 from M_StorageDetail where ad_client_id=? and ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
					String sql;
					if(exist >= 0){
						int qtyStorage = DB.getSQLValue(get_Trx(), "select qty from M_StorageDetail where ad_client_id=? and ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
						sql = 	"UPDATE M_StorageDetail SET Qty = ?, updated = sysdate WHERE ad_client_id=? and ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?";
						BigDecimal newQty = new BigDecimal(oline.get_Value("QtyInProcess").toString()).add(new BigDecimal(qtyStorage));
						Object[] paramsUP = {newQty,getAD_Client_ID(),getAD_Org_ID(),product.get_ID(),oline.getM_AttributeSetInstance_ID(),locator.get_ID(),"W"};
						DB.executeUpdate(sql,paramsUP,get_Trx());
					}else{
						sql = 	"INSERT INTO M_StorageDetail (AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,M_Locator_ID, M_Product_ID, M_AttributeSetInstance_ID,QtyType, Qty, DateLastInventory)"+
									"values (?,?,?,sysdate,?,sysdate,?,?,?,?,?,?,sysdate)";
						MOrder order = new MOrder(Env.getCtx(),oline.getC_Order_ID(),get_Trx());
						Object[] paramsINS = {getAD_Client_ID(),getAD_Org_ID(),"Y",order.getAD_User_ID(),order.getAD_User_ID(),locator.get_ID(),product.get_ID(),
								oline.getM_AttributeSetInstance_ID(),"W",oline.get_Value("QtyInProcess")};
						DB.executeUpdate(sql,paramsINS,get_Trx());
					}
				}
			}	//	for all order lines

			New BDV */
			MClient client = MClient.get(getCtx(), getAD_Client_ID());
			MClientProxy clientProxy = new MClientProxy(client);
			MPosOrderLineAction[] posOrderLineActions = null;
			posOrderLineActions = getLineActions("  AND Z_PosWfAction_ID in (select Z_PosWfAction_ID from Z_PosWfAction where GenerateMsg = 'Y' " + clientProxy.getClientCheck() + " )", null);
			for (MPosOrderLineAction posOrderlineAction : posOrderLineActions) {
				MOrderLine oline = new MOrderLine(getCtx(),posOrderlineAction.getParent().getC_OrderLine_ID(),get_Trx());
				MProduct product = new MProduct(getCtx(), oline.getM_Product_ID(),get_Trx());
				boolean genAction = MTransactionMsg.generateMsgFromPosOrder(this,posOrderlineAction,product.get_ID());
				if (!genAction) return false;
			}	//	for all order lines
		}
		catch(Exception e) { 
			throw new CompiereException(e.getMessage());
		}


		if (inventory != null) {
			successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
			inventory.save(get_Trx());
		}
		else successMvt = true;
		if (!successMvt)
		{
			//			m_processMsg = "@C_Invoice_ID@: " + invoice.getProcessMsg();
			return false;
		}

		return true;
	}
	
	




	public MPosOrderPartner getPartner(Trx trx){
		MPosOrderPartner partner = null;
		StringBuffer sql = new StringBuffer("SELECT * FROM I_PosOrderPartner WHERE I_PosOrderPartner_ID=? AND AD_Org_ID=?");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trx);
			pstmt.setInt(1, get_ValueAsInt("I_PosOrderPartner_ID"));
			pstmt.setInt(2, get_ValueAsInt("Z_AD_org_ID"));
			rs = pstmt.executeQuery();
			if (rs.next()) partner = new MPosOrderPartner(getCtx(), rs,trx); 
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }
		return partner;
	}


	private int getDefaultLocator(int AD_Client_ID)
	{
		MClient client = MClient.get(getCtx(), AD_Client_ID);
		MClientProxy clientProxy = new MClientProxy(client);
		int locID = DB.getSQLValue(null, "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + MOrgInfo.get(getCtx(),this.getAD_Org_ID() , null).getM_Warehouse_ID() + " AND ISDEFAULT = 'Y' " + clientProxy.getClientCheck());
		if (locID < 1 )
		{
			throw new CompiereException("Pas de magasin/emplacement par défault pour l'organisation du ticket");
		}	
		return locID;
	}
	



	/**************************************************************************
	 * 	Set Error PosOrder outSide Main Transaction
	 * 	@param errror Message
	 * 	@return Void
	 */

	public void setError (String errorMsg)
	{
		Trx trxError = Trx.get(String.valueOf(System.currentTimeMillis()));
		Object[] params = {"E", errorMsg, getID(),getAD_Org_ID()};
		if (DB.executeUpdate("UPDATE I_POSOrder SET I_IsImported = ?, I_ErrorMsg = I_ErrorMSG || ? || ',' WHERE I_POSOrder_ID = ? AND AD_ORG_ID=?", params, trxError) < 0) throw new CompiereException("Impossible MAJ I_POSOrder ErrMSG");
		trxError.commit();
		trxError.close();
	}

}
