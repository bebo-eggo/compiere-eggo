package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderLine;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;

public class CutOffAmt extends SvrProcess {

	private int p_C_Invoice_Id;
	private ArrayList<MInvoiceLine> invoices;
	private ArrayList<MOrderLine> orders;

	@Override
	protected void prepare() {
		p_C_Invoice_Id = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		MInvoice inv = new MInvoice(getCtx(), p_C_Invoice_Id, get_Trx());
		if (!inv.getDocStatus().equals(DocActionConstants.STATUS_Completed))
			return "La facture n'est pas encore achevé";

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
			addLog(count + " Line modifié");
		else
			addLog(count + " Lines modifiés");
		return count + " Lines modifiés";
	}

	private void getLines(){
		invoices = new ArrayList<MInvoiceLine>();
		orders = new ArrayList<MOrderLine>();
		StringBuffer sql = new StringBuffer("SELECT cil.c_invoiceline_ID, cil.c_orderline_id FROM c_invoiceline cil ");
		sql.append("INNER JOIN C_Invoice ci ON (cil.C_Invoice_ID=ci.C_Invoice_ID) ");
		sql.append("where cil.C_Invoice_ID=? ");
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			pst.setInt(1, p_C_Invoice_Id);
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