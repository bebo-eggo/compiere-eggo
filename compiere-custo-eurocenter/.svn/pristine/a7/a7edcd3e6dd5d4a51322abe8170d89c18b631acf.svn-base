package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.compiere.common.CompiereStateException;
import org.compiere.model.AccompteUtil;
import org.compiere.model.MDocType;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MOrderTax;
import org.compiere.model.MPeriod;
import org.compiere.process.DocumentEngine;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.Msg;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MTypeEcheance;
import com.audaxis.compiere.model.MZSubPaymentRule;
import com.audaxis.compiere.util.CompiereException;

public class InvoiceOrderPaymSch extends SvrProcess{

	private int psID = 0;
	/**	The current Invoice	*/

	@Override
	protected void prepare() {
		psID = getRecord_ID();
		MOrderPaymSchedule opms = new MOrderPaymSchedule(getCtx(),psID,get_Trx());
		MTypeEcheance te = new MTypeEcheance(getCtx(), opms.getZ_TypeEcheance_ID(), get_Trx());
		if (te.isLivraison()){
			int i = DB.getSQLValue(get_Trx(), "select count(*) from Z_OrderPaymSchedule where c_order_id = ? ", opms.getC_Order_ID());
			int j = DB.getSQLValue(get_Trx(), "select count(*) from Z_OrderPaymSchedule where c_order_id = ? AND C_Invoice_ID > 0 ", opms.getC_Order_ID());
			
			//TA SMILE-684
			//if (i - (j + 1) != 0){
			//	throw new CompiereException("Toutes les échéances doivent être facturées auparavant");
			//}
		}
		
		MOrder ord = new MOrder(getCtx(), opms.getC_Order_ID(), get_Trx());
		if (ord.getGrandTotal().compareTo(ord.getTotalEch()) != 0 ){
			throw new CompiereException(Msg.getMsg(getCtx(), "INV_TOT_ECH_TOT_CMD"));
		}
		
		//74960
		if(!opms.IsForceToInvoice())
		{
			//Verifier si il y a des factures de livraison
			int nbx = DB.getSQLValue(get_Trx(), "Select sum(mil.MOVEMENTQTY ) from M_InOutLine mil inner join M_InOut mi on mi.M_InOut_ID = mil.M_InOut_ID " +
					"inner join C_OrderLine col on col.C_ORDERLINE_ID = mil.C_ORDERLINE_ID where col.C_order_ID = ? AND col.IsActive = 'Y' and mi.DocStatus in ('CO','CL')", opms.getC_Order_ID());
		if(nbx>0)
			throw new CompiereException(Msg.getMsg(getCtx(), "INV_ECH_INOUT_EXISTS"));
		}

	}

	@Override
	protected String doIt() throws Exception {
//		EggoCtx.setConstants();
		boolean isFin = false;
		MOrderPaymSchedule opms = new MOrderPaymSchedule(getCtx(),psID,get_Trx());
		MOrder ord = new MOrder(getCtx(),opms.getC_Order_ID(), get_Trx());
		MTypeEcheance te = new MTypeEcheance(getCtx(), opms.getZ_TypeEcheance_ID(), get_Trx());
		

		AccompteUtil au =  new AccompteUtil(getCtx(), getAD_Client_ID(), get_Trx());
		int accID = au.getAccompte_Product_ID();
				
		if (accID <1) throw new CompiereException("Pas d'article ACOMPTE défini pour la société ");

		
//	1	int finID = DB.getSQLValue(get_Trx(), "select m_product_id from m_product where ad_client_id = ? and value = '" + EggoCtx.ART_FINANCEMENT  +  "' ", ord.getAD_Client_ID());
//	1	if (finID <1) throw new CompiereException("Pas d'article FINANCEMENT défini pour la société ");

//		if (!te.isLivraison()){   	// 	Création de la facture d'accompte
//	1	if (te.isFinancement()) accID = finID;
	
		MZSubPaymentRule sr = new MZSubPaymentRule(getCtx(), te.get_ValueAsInt("ZSubPaymentRule_ID"), get_Trx());
		if (sr != null && sr.get_ValueAsString("IsFinancement") != null && "Y".equalsIgnoreCase(sr.get_ValueAsString("IsFinancement"))){
			accID = sr.get_ValueAsInt("M_Product_ID");
			if (accID < 1) throw new CompiereException("Pas d'article FINANCEMENT défini pour la sous méthode de paieemnt ");
			isFin = true;
		}
		
		createAccInvoice(opms, ord, te, accID, isFin);
//		}
		return "";
	}

	private String createAccInvoice(MOrderPaymSchedule opms, MOrder ord,
			MTypeEcheance te, int accID, boolean isFin) {
		// Creation de la facture d'accompte
		//Depuis de le type d'échéance, aller rechercher le C_Doctype pour la création de la facture ! Si null, prendre le type par défaut
		MInvoice inv = new MInvoice(ord, te.get_ValueAsInt("C_DocType_ID"), new Timestamp(System.currentTimeMillis())); 
		//Vérification que la période est ouverte !
		ArrayList<Integer> orgs = new ArrayList<Integer>();
		orgs.add(ord.getAD_Org_ID());
		MDocType dt = MDocType.get(getCtx(), inv.getC_DocTypeTarget_ID());
		String ret = MPeriod.isOpen(getCtx(), getAD_Client_ID(), orgs, new Timestamp(System.currentTimeMillis()), dt.getDocBaseType());		
		if(ret!=null)
		{
			throw new CompiereStateException(ret);
		}
		if (te != null)
			if (te.get_ValueAsInt("ZSubPaymentRule_ID") > 0) inv.set_ValueNoCheck("ZSubPaymentRule_ID",te.get_ValueAsInt("ZSubPaymentRule_ID"));
		
		if (isFin) {
			inv.set_ValueNoCheck("IsFinancement", "Y");
			inv.setDescription(opms.getZ_NumAccept());
		}
		

		AccompteUtil au = new AccompteUtil(getCtx(), getAD_Client_ID(), get_Trx());
		int accPLID = au.getAccompte_PriceList_ID();
		inv.setM_PriceList_ID(accPLID);
		
		if (!inv.save(get_Trx()))
			throw new CompiereStateException("Could not create Invoice (o)");
		BigDecimal amt = opms.getTotalAmt();
		String lbl = (new MTypeEcheance(getCtx(),opms.getZ_TypeEcheance_ID(),get_Trx())).getName();
		if (!isFin) {
			createLineFctTax(ord, accID, inv, amt,null, lbl);
		}
		else
			{
				MInvoiceLine invLine = new MInvoiceLine(inv);
				invLine.setM_Product_ID(accID);
				invLine.setQty(BigDecimal.ONE);
				invLine.setPrice(amt);
				invLine.setPriceList(amt);
				if (lbl != null)
					invLine.setDescription(lbl);
				invLine.save(get_Trx());
				invLine.updateHeaderTax();
			}
		boolean successInv = DocumentEngine.processIt(inv, DocActionConstants.ACTION_Complete);
		inv.save(get_Trx());
		opms.setC_Invoice_ID(inv.getC_Invoice_ID());
		opms.save(get_Trx());
		ord.setTotalInvSched();
		ord.save(get_Trx());

		return "";
	}


	
	private void createLineFctTax(MOrder ord,int accID, MInvoice inv, BigDecimal accAmt, BigDecimal sign, String lbl) {
		int nbrLine = DB.getSQLValue(get_Trx(), "select count(*) from C_OrderTax where C_Order_ID = ? and taxbaseamt <> 0 ", ord.get_ID());

		MOrderTax[] ordertaxs = ord.getTaxes(" AND taxbaseamt <> 0 ", " ORDER BY TaxBaseAmt DESC ");
		BigDecimal lineAmt = BigDecimal.ZERO;
		BigDecimal totAcct = BigDecimal.ZERO;
		if (sign == null) sign = BigDecimal.ONE;

		BigDecimal cdeTotAcc = DB.getSQLValueBD(get_Trx(),"select sum(LineNetAmt) from c_orderline where c_order_id = ? and m_product_id = " + accID, ord.get_ID());
		if (cdeTotAcc == null) cdeTotAcc = BigDecimal.ZERO;
		BigDecimal totOrdAmtWOAcc = ord.getGrandTotal().subtract(cdeTotAcc);

		int i = 0;
		for(MOrderTax tax : ordertaxs){
			i++;
			if (tax.getTaxBaseAmt().compareTo(BigDecimal.ZERO) == 0) continue;
			if (i < nbrLine) { 
				lineAmt = ((tax.getTaxAmt().add(tax.getTaxBaseAmt())).divide(totOrdAmtWOAcc,2, BigDecimal.ROUND_HALF_UP)).setScale(2, BigDecimal.ROUND_HALF_UP).multiply(accAmt).setScale(2, BigDecimal.ROUND_HALF_UP);
			}
			else {
				lineAmt = accAmt.subtract(totAcct);
			}
			totAcct = totAcct.add(lineAmt);

			if (lineAmt.compareTo(BigDecimal.ZERO) != 0) {
				MInvoiceLine invLine = new MInvoiceLine(inv);
				invLine.setM_Product_ID(accID);
				invLine.setQty(BigDecimal.ONE.multiply(sign));
				invLine.setPrice(lineAmt);
				invLine.setPriceList(lineAmt);
				invLine.setC_Tax_ID(tax.getC_Tax_ID());
				if (lbl != null)invLine.setDescription(lbl);
				invLine.save(get_Trx());
				invLine.updateHeaderTax();
			}

		}
	}
	
	
	
	


	
	protected MInOutLine[] getShipmentLinesCompleted(MOrder order)
	{
		ArrayList<MInOutLine> list = new ArrayList<MInOutLine>();
		//ZCOM207 String sql = "SELECT * FROM M_InOut WHERE C_Order_ID=? ORDER BY Created DESC";
		// ZCOM207
		String sql =  "SELECT * FROM M_InOutLine l WHERE l.M_Inout_ID in " 
			+ " (select iol.m_inout_id from m_inoutline iol inner join m_inout io on io.m_inout_id = iol.m_inout_id where iol.c_orderline_id in " 
			+ "  (select ol.c_orderline_id from c_orderline ol where ol.C_Order_ID=? ) "
			+ " and (io.docstatus = 'CO' or io.docstatus = 'CL' or io.docstatus = 'VO' or io.docstatus = 'RE') )"
			+ " and l.AD_Client_ID=? "
			+ " ORDER BY l.Created ASC ";	
		//ZCOM207

		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_TrxName());
			pstmt.setInt(1, order.getC_Order_ID());
			pstmt.setInt(2, getAD_Client_ID());
			ResultSet rs = pstmt.executeQuery();
			try {
				while (rs.next())
					list.add(new MInOutLine(getCtx(), rs, get_TrxName()));
				rs.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally 
			{
				Util.closeCursor(pstmt, rs);
			}
		}
		catch (Exception e)
		{
			log.severe("getShipments"+ e);
			throw new DBException(e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MInOutLine[] retValue = new MInOutLine[list.size()];
		list.toArray(retValue);
		return retValue;
	}
	

}
