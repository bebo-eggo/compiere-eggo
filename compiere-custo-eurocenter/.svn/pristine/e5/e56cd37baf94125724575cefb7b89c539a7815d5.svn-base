package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;

import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.audaxis.compiere.process.SvrProcessExtended;

public class AddLineInv extends SvrProcessExtended {

	private int invoice_ID = 0;
	private int order_ID = 0;
	private int product_ID = 0;
	private BigDecimal qty = Env.ZERO;
	private BigDecimal price =  Env.ZERO;
	private String desc = "";
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		invoice_ID = getRecord_ID();
		order_ID = getParameterAsInt("C_Order_ID");
		product_ID = getParameterAsInt("M_Product_ID");
		qty = getParameterAsBD("Quantity");
		price = getParameterAsBD("Price");
		desc = getParameterAsString("Description");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		MInvoice mi = new MInvoice(getCtx(), invoice_ID, get_Trx());
		MOrder mo = new MOrder(getCtx(), order_ID, get_Trx());
		String DocStatus = "CO;IP";
		if(!DocStatus.contains(mo.getDocStatus()))
		{
			return "Commande d'achat dans un statut incorrect !";
		}
		int OrderLine_ID = mo.addPartFromInv(product_ID, Env.ZERO, price,desc);
		
		MInvoiceLine line = new MInvoiceLine (mi);
		if (desc != null)
			line.setDescription(desc);
		//line.setLine(lineNo);
		line.setAD_Org_ID(mo.getAD_Org_ID());
		line.setM_Product_ID(product_ID, true);
		line.setQty(qty);
		line.setPrice(price);
		line.setTax();
		line.set_ValueNoCheck("POReference",mo.getPOReference());
		line.setC_OrderLine_ID(OrderLine_ID);
		line.save();
		mi.calculateTaxTotal();
		mi.save();
		
		DB.executeUpdate("Update C_OrderLine set QtyOrdered = 0 where C_OrderLine_ID ? ",OrderLine_ID, get_Trx());
		//AddLine INV
		
		return "Article ajouté !";
	}

}
