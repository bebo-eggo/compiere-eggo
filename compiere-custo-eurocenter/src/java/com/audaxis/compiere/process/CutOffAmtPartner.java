package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderLine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;

public class CutOffAmtPartner extends SvrProcess {

	private int p_AD_Client_ID;
	private int p_AD_Org_ID;
	private int p_C_BPartner_ID;
	private int p_C_Invoice_ID;
	private ArrayList<MInvoiceLine> invoices;
	private ArrayList<MOrderLine> orders;
	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para){
			String name = element.getParameterName();
			if (element.getParameter() == null);
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = element.getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = element.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = element.getParameterAsInt();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = element.getParameterAsInt();
		}
	}

	@Override
	protected String doIt() throws Exception {
		getLines();
		BigDecimal cutOff;
		BigDecimal qteMissed;
		int count=0;
		if(invoices != null){
			for (MInvoiceLine mil : invoices) {
				cutOff = BigDecimal.ZERO;
				qteMissed = BigDecimal.ZERO;
				MOrderLine mol = orders.get(count);
				if (mil.getC_OrderLine_ID()==mol.getC_OrderLine_ID()){
					qteMissed = mil.getQtyEntered().subtract(mol.getQtyDelivered());
					cutOff = mil.getPriceEntered().multiply(qteMissed);
					count++;
				}
				mil.set_Value("Z_CutOffAmt", cutOff);
				mil.save();
			}
		}
		if (count<=1)
			return count + " Line modifié";
		else
			return count + " Lines modifiés";
	}
	private void getLines(){
		invoices = new ArrayList<MInvoiceLine>();
		orders = new ArrayList<MOrderLine>();
		StringBuffer sql = new StringBuffer("SELECT cil.c_invoiceline_ID, cil.c_orderline_id FROM c_invoiceline cil ");
		sql.append("INNER JOIN C_Invoice ci ON (cil.C_Invoice_ID=ci.C_Invoice_ID) ");
		sql.append("where ci.docstatus  ='CO' and ci.ad_client_id=? and  ci.ad_org_id=? and ci.c_bpartner_id = ? ");
		if (p_C_Invoice_ID != 0)
			sql.append("AND ci.C_Invoice_ID =? ");
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			int index = 0;
			pst.setInt(++index, p_AD_Client_ID);
			pst.setInt(++index, p_AD_Org_ID);
			pst.setInt(++index, p_C_BPartner_ID);
			if (p_C_Invoice_ID != 0)
				pst.setInt(++index, p_C_Invoice_ID);	
			rs = pst.executeQuery();
			while (rs.next()) {
				invoices.add(new MInvoiceLine(getCtx(), rs.getInt(1), get_Trx()));
				orders.add(new MOrderLine(getCtx(), rs.getInt(2), get_Trx()));
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, e.getMessage());
		}
		finally{
			Util.closeCursor(pst, rs);
		}
	}
}