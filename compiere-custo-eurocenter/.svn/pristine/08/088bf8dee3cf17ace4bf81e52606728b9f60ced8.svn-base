package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MOrderLine;
import org.compiere.model.MPriceList;
import org.compiere.model.MProductPricing;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MOrder;

public class UpdateOAPrice extends SvrProcess {
	
	private int p_C_BPartner_ID;
	private int p_C_Order_ID;
	private Timestamp p_ValidFrom;
	private Timestamp p_ValidTo;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = ((BigDecimal)element.getParameter()).intValue();
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = ((BigDecimal)element.getParameter()).intValue();
			else if (name.equals("ValidFrom"))
				p_ValidFrom = (Timestamp)element.getParameter();
			else if (name.equals("ValidTo"))
				p_ValidTo = (Timestamp)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

	}

	@Override
	protected String doIt() throws Exception {
		
		getCtx().setContext("IsSOTrx", "N");//Setting Context for returned msg
		//
		if (p_ValidFrom != null && p_ValidTo != null 
				&& p_ValidTo.before(p_ValidFrom))
			return Msg.getMsg(getCtx(), "EUROCENTER_VALID_DATE");
		
		StringBuffer sql = new StringBuffer("SELECT C_OrderLine_ID FROM C_OrderLine  ");
		sql.append("INNER JOIN C_Order o ON (C_OrderLine.C_Order_ID = o.C_Order_ID) ");
		sql.append("WHERE o.IsSOTrx='N' AND o.DocStatus IN ('DR','RE')");
		
		if (p_C_BPartner_ID > 0)
			sql.append("AND o.C_BPartner_ID=? ");
		if (p_C_Order_ID > 0)
			sql.append("AND o.C_Order_ID=? ");
		if (p_ValidFrom != null)
			sql.append("AND TRUNC(o.DateOrdered) >= TRUNC(?) ");
		if (p_ValidTo != null)
			sql.append("AND TRUNC(o.DateOrdered) <= TRUNC(?) ");
		
		PreparedStatement pst = null;
		ResultSet rs = null;
		int index= 1; int count = 0;
		
		try{
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			if (p_C_BPartner_ID > 0) pst.setInt(index++, p_C_BPartner_ID);
			if (p_C_Order_ID > 0) pst.setInt(index++, p_C_Order_ID);
			if (p_ValidFrom != null) pst.setTimestamp(index++, p_ValidFrom);
			if (p_ValidTo != null) pst.setTimestamp(index++, p_ValidTo);
			
			rs = pst.executeQuery();
			MOrderLine ol = null;
			MPriceList pl = null;
			MProductPricing pp = null;
			int c_order_id = 0;
			
			while (rs.next()) {
				ol = new MOrderLine(getCtx(), rs.getInt("C_OrderLine_ID"),get_Trx());
				MOrder o = new MOrder(getCtx(), ol.getC_Order_ID(), get_Trx());
				pl = MPriceList.get(getCtx(), o.getM_PriceList_ID(), null);
				pp = new MProductPricing (o.getAD_Client_ID(), o.getAD_Org_ID(),ol.getM_Product_ID(), o.getC_BPartner_ID(), ol.getQtyOrdered(), false);
				if(pp.getM_PriceList_Version_ID()==0)
					pp = new MProductPricing (o.getAD_Client_ID(),0,ol.getM_Product_ID(), o.getC_BPartner_ID(), ol.getQtyOrdered(), false);
				//int M_PriceList_Version_ID = pl.getPriceListVersion(o.getDateOrdered()).getM_PriceList_Version_ID();
				int M_PriceList_Version_ID = pl.getPriceListVersion(o.getDocumentDate()).getM_PriceList_Version_ID();
				//pp.setPriceDate(o.getDateOrdered());
				pp.setPriceDate(o.getDocumentDate());
				pp.setM_PriceList_ID(o.getM_PriceList_ID());
				pp.setM_PriceList_Version_ID(M_PriceList_Version_ID);
				pp.calculatePrice();
				if (!pp.isCalculated())
					log.warning("No Pricing FOR Line: "+ ol.getC_OrderLine_ID());
				else{
					ol.setPriceList(pp.getPriceList());
					ol.setPriceLimit(pp.getPriceLimit());
					ol.setPriceActual(pp.getPriceStd());
					ol.setPriceEntered(pp.getPriceStd());
					if (ol.save(get_Trx()) && c_order_id != o.getC_Order_ID()){
						count++;
						c_order_id = o.getC_Order_ID();
						ol.updateHeaderTax();
					}
				}
				
			}
		}catch (Exception e) {
			log.severe(e.getMessage());
		}finally{
			Util.closeCursor(pst, rs);
		}
		
		return count + " @C_Order_ID@ @Updated@";
	}

}