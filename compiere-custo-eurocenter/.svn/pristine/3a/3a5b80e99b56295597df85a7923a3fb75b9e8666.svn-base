
package com.audaxis.compiere.model;

import java.math.BigDecimal;
import java.sql.ResultSet;

import org.compiere.model.MAcctSchema;
import org.compiere.model.MCost;
import org.compiere.model.MCostElement;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.proxy.MCostElementProxy;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;

public class MOrderMargin extends X_Z_OrderMargin {

	public MOrderMargin(Ctx ctx, int Z_OrderMargin_ID, Trx trx) {
		super(ctx, Z_OrderMargin_ID, trx);
	}

	public MOrderMargin(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}

	public static BigDecimal getMarginLastTotalLineAmt(int orderID)
	{
		String sql = "select LINETOTALAMT from Z_OrderMargin where z_ordermargin_id in " +
				" (select max(Z_OrderMargin_ID) from Z_OrderMargin where c_order_id = ?) ";
		BigDecimal totAmt = DB.getSQLValueBD(null, sql, orderID);
		if (totAmt == null || totAmt.compareTo(BigDecimal.ONE.negate()) == 0) totAmt = BigDecimal.ZERO;
		return totAmt;
	}
	
	public static MOrderMargin getLastMargin(Ctx ctx, int orderID, Trx trx)
	{
		String sql = "(select max(Z_OrderMargin_ID) from Z_OrderMargin where c_order_id = ?) ";
		int totAmt = DB.getSQLValue(trx, sql, orderID);
		if (totAmt == 0) return null;
		return new MOrderMargin(ctx, totAmt, trx);
	}

	public static BigDecimal[] getMargin(MOrder order)  // return comOrderMargin,realOrderMargin
	{
		MOrderLine[] lines = order.getLines(" AND IsActive = 'Y' and M_Product_ID is not null",null);
		//BigDecimal comMargin = BigDecimal.ZERO;
		BigDecimal comOrderMargin = BigDecimal.ZERO;
		//BigDecimal realMargin = BigDecimal.ZERO;
		BigDecimal realOrderMargin = BigDecimal.ZERO;
		MOrderLine poLine = null;
		MInvoiceLine invLine = null;
		BigDecimal totpocom = BigDecimal.ZERO;
		BigDecimal totporeal = BigDecimal.ZERO;
		BigDecimal pocom = BigDecimal.ZERO;
		BigDecimal poreal = BigDecimal.ZERO;

		boolean findInv;
		
		//MERGE int standCostElem_ID = 1000001;
		int standCostElem_ID = -999;
		//MERGE
		MCostElement mce = MCostElementProxy.getDefaultCostElement(order.getCtx(), order.getAD_Client_ID(), order.get_Trx());
		if(mce !=null)
			standCostElem_ID = mce.getM_CostElement_ID();
		else
			return new BigDecimal[] {comOrderMargin,realOrderMargin}; 
				/** TODO aller chercher directement en table M_CostElement
		if (order.getCtx().getContextAsInt("#STANDARDELEMENT_ID") > 0 ) 
			standCostElem_ID = order.getCtx().getContextAsInt("#STANDARDELEMENT_ID");
		*/
		
		for (int i = 0; i < lines.length; i++) {
			//comMargin = BigDecimal.ZERO;
			//realMargin = BigDecimal.ZERO;
			pocom = BigDecimal.ZERO;
			poreal = BigDecimal.ZERO;

			MOrderLine line = lines[i];

			/*
			try {
				// Commercial Margin
				////////////////////
				// Get poPrice from order line ( po price from interface )

				comMargin = line.getLineNetAmt();
				if (line.get_ValueAsBD("storePoPrice") != null ) 
					comMargin =  ( line.getPriceEntered().subtract(line.get_ValueAsBD("storePoPrice") ).multiply(line.getQtyEntered())) ;
				else {
					// Compute Margin from existing POLine if Exist 
					int poLineID = DB.getSQLValue(order.get_Trx(), "Select c_orderline_id from c_orderline where  ref_orderline_id = ? ", line.get_ID());
					if (poLineID > 0){
						poLine = new MOrderLine(order.getCtx(), poLineID, order.get_Trx());
						if (poLine != null) comMargin =  ( line.getPriceEntered().subtract(poLine.getPriceEntered() ).multiply(line.getQtyEntered())) ; 
					}
					// Else Compute Margin from existing Purchase PriceList
					else{
						String sql = "select  GetlastPurchasePriceProduct(?, " + line.getAD_Client_ID() + " ) from dual ";
						BigDecimal lastPurchasePriceList = DB.getSQLValueBD(order.get_Trx(), sql, line.getM_Product_ID());
						if (lastPurchasePriceList != null) comMargin =  ( line.getPriceEntered().subtract(lastPurchasePriceList ).multiply(line.getQtyEntered())) ; 
					}


				}

				// Real Margin
				////////////////////

				// Compute Margin from existing Invoice Line if Exist 
				findInv = false;
				realMargin = line.getLineNetAmt();

				int poLineID = DB.getSQLValue(order.get_Trx(), "Select c_orderline_id from c_orderline where  ref_orderline_id = ? ", line.get_ID());
				if (poLineID > 0){
					// Recherche de la Facture
					int invLineID = DB.getSQLValue(order.get_Trx(), "Select C_InvoiceLine_ID from C_invoiceline Where c_orderline_id = ? ", poLineID);
					if (invLineID > 0 ){
						invLine = new MInvoiceLine(order.getCtx(), invLineID, order.get_Trx());
						if (invLine != null) {
							realMargin =  ( line.getPriceEntered().subtract(invLine.getPriceEntered() ).multiply(line.getQtyEntered())) ;
							findInv = true;
						}
					}	
				}
				// Take MCost if Invoice not found
				if (!findInv){
					int acctSchemaID = DB.getSQLValue(order.get_Trx(), "Select min(C_AcctSchema_ID) from C_AcctSchema Where ad_client_id = ? ", order.getAD_Client_ID());
					MAcctSchema acctSch = new MAcctSchema(order.getCtx(), acctSchemaID, order.get_Trx());
					MProduct prod = new MProduct(order.getCtx(),line.getM_Product_ID(),order.get_Trx());
					if (acctSch != null && prod != null){
						MCost prodCost = MCost.get(prod, line.getM_AttributeSetInstance_ID(), acctSch, line.getAD_Org_ID(), standCostElem_ID);
						if (prodCost != null){
							realMargin =  ( line.getPriceEntered().subtract(prodCost.getCurrentCostPrice()).multiply(line.getQtyEntered()));
						}
					}
				}
				// Else Compute Margin from existing Purchase PriceList
			}
			catch (Exception e)
			{
				throw new CompiereException("Error on OrderMargin getMargin" , e.getCause());
			}


			comOrderMargin = comOrderMargin.add(comMargin);
			realOrderMargin = realOrderMargin.add(realMargin);

			 */			
			boolean f = false;
			//String docType = DB.getSQLValueString(order.get_Trx(), "select name from c_doctype where c_doctype_id = ?", order.getC_DocTypeTarget_ID());
			MDocTypeInfo dti = MDocTypeInfo.get(order.getCtx(), order.getC_DocTypeTarget_ID(), order.get_Trx());
			// if (order.getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")){
			if (dti != null && dti.isCuisine()) { // MERGE
				// Margin Calulation
				//if (dti.isDevis()) // MERGE
				//	f=true;
			}
			if (line.get_ValueAsBD("storePoPrice") != null && !f)
				pocom =  ( line.get_ValueAsBD("storePoPrice") .multiply(line.getQtyEntered())) ;
				else {
					// Compute Margin from existing POLine if Exist 
					int poLineID = DB.getSQLValue(order.get_Trx(), "Select c_orderline_id from c_orderline where  ref_orderline_id = ? ", line.get_ID());
					if (poLineID > 0){
						poLine = new MOrderLine(order.getCtx(), poLineID, order.get_Trx());
						if (poLine != null) pocom =  ( poLine.getPriceEntered() ).multiply(line.getQtyEntered()) ; 
					}
					// Else Compute Margin from existing Purchase PriceList
					else{
						String sql = "select  GetlastPurchasePriceProduct(?, " + line.getAD_Client_ID() + " ) from dual ";
						BigDecimal lastPurchasePriceList = DB.getSQLValueBD(order.get_Trx(), sql, line.getM_Product_ID());
						if (lastPurchasePriceList != null) pocom =  (lastPurchasePriceList.multiply(line.getQtyEntered())) ; 
					}
				}

			// Compute Margin from existing Invoice Line if Exist 
			findInv = false;

			int poLineID = DB.getSQLValue(order.get_Trx(), "Select c_orderline_id from c_orderline where  ref_orderline_id = ? ", line.get_ID());
			if (poLineID > 0){
				// Recherche de la Facture
				int invLineID = DB.getSQLValue(order.get_Trx(), "Select C_InvoiceLine_ID from C_invoiceline Where c_orderline_id = ? ", poLineID);
				if (invLineID > 0 ){
					invLine = new MInvoiceLine(order.getCtx(), invLineID, order.get_Trx());
					if (invLine != null) {
						poreal =  ( invLine.getPriceEntered() .multiply(line.getQtyEntered())) ;
						findInv = true;
					}
				}	
			}
			// Take MCost if Invoice not found
			if (!findInv){
				int acctSchemaID = DB.getSQLValue(order.get_Trx(), "Select min(C_AcctSchema_ID) from C_AcctSchema Where ad_client_id = ? ", order.getAD_Client_ID());
				MAcctSchema acctSch = new MAcctSchema(order.getCtx(), acctSchemaID, order.get_Trx());					
				MProduct prod = new MProduct(order.getCtx(),line.getM_Product_ID(),order.get_Trx());
				if (acctSch != null && prod != null){
					MCost prodCost = MCost.get(prod, line.getM_AttributeSetInstance_ID(), acctSch, line.getAD_Org_ID(), standCostElem_ID);
					if (prodCost != null){
						poreal =  ( (prodCost.getCurrentCostPrice()).multiply(line.getQtyEntered()));
					}
				}
			}
			
			totpocom = totpocom.add(pocom);
			totporeal = totporeal.add(poreal);
		}
		
		comOrderMargin = order.getTotalLines().subtract(totpocom);
		realOrderMargin = order.getTotalLines().subtract(totporeal);
		
		
		return new BigDecimal[] {comOrderMargin,realOrderMargin};
	}



}
