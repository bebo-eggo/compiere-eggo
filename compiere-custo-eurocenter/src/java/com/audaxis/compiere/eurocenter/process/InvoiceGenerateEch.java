package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MOrderPaymScheduleLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;

/**
 *	InvoiceGenerateEch
 *	
 */

public class InvoiceGenerateEch extends SvrProcess
{

	private Timestamp	p_DateInvoiced = null;
	private int			p_C_BPartner_ID = 0;
	private int			p_C_Order_ID = 0;
	private boolean		p_ConsolidateDocument = true;
	private String		p_docAction = DocActionConstants.ACTION_Complete;

	private MInvoice 	m_invoice = null;
	private int			m_created = 0;
	private int			p_Z_OrderPaymSchedule_ID = 0;



	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{

		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("DateInvoiced"))
				p_DateInvoiced = (Timestamp)element.getParameter();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = element.getParameterAsInt();
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = element.getParameterAsInt();
			else if (name.equals("ConsolidateDocument"))
				p_ConsolidateDocument = "Y".equals(element.getParameter());
			else if (name.equals("DocAction"))
				p_docAction = (String)element.getParameter();
			else if (name.equals("Z_OrderPaymSchedule_ID"))
				p_Z_OrderPaymSchedule_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);

		}

		if (p_DateInvoiced == null)
			p_DateInvoiced = new Timestamp(getCtx().getContextAsTime("#Date"));
	}

	/**
	 * 	Generate Invoices
	 *	@return info
	 *	@throws Exception
	 */
	@Override
	protected String doIt () throws Exception
	{
		log.info("DateInvoiced=" + p_DateInvoiced
				+ ", C_BPartner_ID=" + p_C_BPartner_ID
				+ ", C_Order_ID=" + p_C_Order_ID + ", DocAction=" + p_docAction 
				+ ", Consolidate=" + p_ConsolidateDocument);

		//
		String sql = null;

		sql = "select sch.* from Z_OrderPaymSchedule sch " +
		"inner join c_order o on (o.c_order_id = sch.c_order_id) " +
		"where (sch.C_Invoice_ID=0 OR sch.C_Invoice_ID is null) " +
		//"and o.DocStatus IN('CO','CL') " +
		"AND o.IsSOTrx='Y' and o.IsSchedValid='Y'";

		if (p_C_BPartner_ID != 0)
			sql += " AND o.C_BPartner_ID=?";
		if (p_C_Order_ID != 0)
			sql += " AND o.C_Order_ID=?";
		if(p_DateInvoiced != null)
			sql += " AND trunc(sch.DueDate) <= trunc(?)";
		if(p_Z_OrderPaymSchedule_ID != 0)
			sql += " AND sch.Z_OrderPaymSchedule_ID = ?";

		sql += " and o.ad_client_id = "+getCtx().getAD_Client_ID();

		if(getCtx().getAD_Org_ID() != 0)
			sql += " and o.ad_org_id = "+getCtx().getAD_Org_ID();

		sql += " ORDER BY o.M_Warehouse_ID, o.PriorityRule, o.C_BPartner_ID, o.Z_INCOTERMS_ID, o.C_Order_ID, o.C_PaymentTerm_ID"	; 

		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			int index = 1;
			if (p_C_BPartner_ID != 0)
				pstmt.setInt(index++, p_C_BPartner_ID);
			if (p_C_Order_ID != 0)
				pstmt.setInt(index++, p_C_Order_ID);
			if(p_DateInvoiced != null)
				pstmt.setTimestamp(index++, p_DateInvoiced);
			if(p_Z_OrderPaymSchedule_ID != 0)
				pstmt.setInt(index++, p_Z_OrderPaymSchedule_ID);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}finally{
			Util.closeCursor(pstmt, null);
		}
		return generate(pstmt);
	}


	/**
	 * 	Generate Shipments
	 * 	@param pstmt order query 
	 *	@return info
	 */
	private String generate (PreparedStatement pstmt) throws Exception
	{

		ResultSet rs = null;
		try
		{
			rs = pstmt.executeQuery ();

			while (rs.next ())
			{
				MOrderPaymSchedule opaymSchedule = new MOrderPaymSchedule(getCtx(), rs, null);
				MOrder order = opaymSchedule.getParent();

				//	New Invoice Location
				if (!p_ConsolidateDocument 
						|| (m_invoice != null 
								&& (m_invoice.getC_BPartner_Location_ID() != order.getBill_Location_ID()
										|| m_invoice.getC_PaymentTerm_ID() != order.getC_PaymentTerm_ID() 
										|| m_invoice.getC_DocTypeTarget_ID() != MDocType.get(getCtx(), order.getC_DocType_ID()).getC_DocTypeInvoice_ID()))	
				)
					completeInvoice();

				MOrderPaymScheduleLine[] opsLines = opaymSchedule.getLines("AND M_Product_ID <>0 ", "order by SeqNo asc");
				if(opsLines != null && opsLines.length > 0)
					createInvLines(order, opaymSchedule, opsLines);	

			}	//	for all orders
		}
		catch (Exception e)
		{
			throw e;
		}finally{
			Util.closeCursor(pstmt, rs);
			pstmt = null;
		}

		completeInvoice();

		return "@Created@ = " + m_created;
	}	//	generate



	private void createInvLines(MOrder order, MOrderPaymSchedule opaymSchedule, MOrderPaymScheduleLine[] opsLines) throws Exception {

		if (m_invoice == null)
		{
			m_invoice = new MInvoice (order, 0, p_DateInvoiced);
			if (!m_invoice.save(get_Trx()))
				throw new CompiereStateException("Could not create Invoice (o)");
		}
		MInvoiceLine invLine = null;
		boolean create = false;

		for(MOrderPaymScheduleLine opsLine : opsLines){
			invLine = new MInvoiceLine(m_invoice);
			invLine.setM_Product_ID(opsLine.getM_Product_ID());
			invLine.setPriceActual(opsLine.getDueAmt());
			invLine.setQtyEntered(BigDecimal.ONE);
			invLine.setPriceEntered(opsLine.getDueAmt());
			if(opsLine.getC_Tax_ID() != 0)
				invLine.setC_Tax_ID(opsLine.getC_Tax_ID());
			else
				invLine.setTax();
			if(!invLine.save(get_Trx()))
				throw new CompiereStateException("Could not create Invoice Line");
			create = true;
		}

		if(create){
			opaymSchedule.setC_Invoice_ID(m_invoice.getC_Invoice_ID());
			opaymSchedule.save(get_Trx());
		}


	}

	/**
	 * 	Complete Invoice
	 */
	private void completeInvoice() throws Exception
	{
		if (m_invoice != null)
		{
			boolean processOK = true;
			if(!p_docAction.equals("--")){
				processOK = DocumentEngine.processIt(m_invoice, p_docAction);
				m_invoice.save(get_Trx());
			}

			if (processOK)
				addLog(m_invoice.getC_Invoice_ID(), m_invoice.getDateInvoiced(), null, m_invoice.getDocumentNo());
			else
			{
				log.warning("Failed: " + m_invoice);
				String msg = Msg.getMsg(getCtx(), "Error") + " " + m_invoice.getDocumentNo();
				addLog(m_invoice.getC_Invoice_ID(), m_invoice.getDateInvoiced(), null, msg);
			}
			m_created++;
		}

		m_invoice = null;

	}	//	completeInvoice

}	//	InvoiceGenerate
