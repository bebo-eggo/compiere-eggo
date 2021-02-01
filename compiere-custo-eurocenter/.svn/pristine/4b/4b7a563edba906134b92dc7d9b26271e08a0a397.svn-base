/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 3600 Bridge Parkway #102, Redwood City, CA 94065, USA      *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package com.audaxis.compiere.process;

import java.math.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.logging.*;

import org.compiere.common.CompiereStateException;
import org.compiere.common.constants.*;
import org.compiere.model.*;
import org.compiere.process.*;
import org.compiere.util.*;
import org.compiere.vos.*;

import com.audaxis.compiere.db.Util;

/**
 *	Generate Invoices
 *	
 *  @author Jorg Janke
 *  @version $Id: InvoiceGenerate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class InvoiceGenerate extends SvrProcess
{
	/**	Manual Selection		*/
	private boolean 	p_Selection = false;
	/**	Date Invoiced			*/
	private Timestamp	p_DateInvoiced = null;
	/**	Org						*/
	private int			p_AD_Org_ID = 0;
	/** BPartner				*/
	private int			p_C_BPartner_ID = 0;
	/** user				    */
	private int			p_AD_User_ID = 0;
	/** Order					*/
	private int			p_C_Order_ID = 0;
	/** Consolidate				*/
	private boolean		p_ConsolidateDocument = true;
	/** Invoice Document Action	*/
	private String		p_docAction = DocActionConstants.ACTION_Complete;
	
	public ArrayList<MOrder> m_lockedOrders = new ArrayList<MOrder>();
	
	/**	The current Invoice	*/
	private MInvoice 	m_invoice = null;
	/**	The current Shipment	*/
	private MInOut	 	m_ship = null;
	/** Numner of Invoices		*/
	private int			m_created = 0;
	/**	Line Number				*/
	private int			m_line = 0;
	/**	Business Partner		*/
	private MBPartner	m_bp = null;
	/** Date Ordered From **/
	private Timestamp	p_DateOrdered_From = null;
	/** Date Ordered To **/
	private Timestamp	p_DateOrdered_To = null;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		
		//ZCOM201
		String msg = Msg.getMsg("en_US","Z_INVOICE_CONSOLIDATE_SHIPMENT");
		if (msg == null || msg.equals("")) msg = "Y";
		p_ConsolidateDocument = msg.equals("Y");
		//ZCOM201

		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("Selection"))
				p_Selection = "Y".equals(element.getParameter());
			else if (name.equals("DateInvoiced"))
				p_DateInvoiced = (Timestamp)element.getParameter();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = element.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = element.getParameterAsInt();
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = element.getParameterAsInt();
			else if (name.equals("ConsolidateDocument"))
				p_ConsolidateDocument = "Y".equals(element.getParameter());
			else if (name.equals("DocAction"))
				p_docAction = (String)element.getParameter();
			else if (name.equals("DateOrdered"))
			{
				p_DateOrdered_From = (Timestamp)element.getParameter();
				p_DateOrdered_To = (Timestamp)element.getParameter_To();
			}
            else if (name.equals("AD_User_ID"))
			{
				p_AD_User_ID = element.getParameterAsInt();
            }    
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			
		}

		//	Login Date
		if (p_DateInvoiced == null)
			p_DateInvoiced = new Timestamp(getCtx().getContextAsTime("#Date"));

		//	DocAction check
		if (!DocActionConstants.ACTION_Complete.equals(p_docAction))
			p_docAction = DocActionConstants.ACTION_Prepare;
	}	//	prepare

	/**
	 * 	Generate Invoices
	 *	@return info
	 *	@throws Exception
	 */
	@Override
	protected String doIt () throws Exception
	{
		log.info("Selection=" + p_Selection + ", DateInvoiced=" + p_DateInvoiced
			+ ", AD_Org_ID=" + p_AD_Org_ID + ", C_BPartner_ID=" + p_C_BPartner_ID
			+ ", C_Order_ID=" + p_C_Order_ID + ", DocAction=" + p_docAction 
			+ ", Consolidate=" + p_ConsolidateDocument+", AD_User_ID=" + p_AD_User_ID
			+ ", DateOrdered=" + p_DateOrdered_From + "->" + p_DateOrdered_To);

		//
		String sql = null;
		if (p_Selection)	//	VInvoiceGen
		{
			sql = "SELECT * FROM C_Order "
				//ZCOM208 + "WHERE IsSelected='Y' AND DocStatus IN('CO','CL') AND IsSOTrx='Y' "
				+ "WHERE IsSelected='Y' AND DocStatus IN('CO','CL','RE','VO') AND IsSOTrx='Y' " //ZCOM208
				//ZCOM420 + "ORDER BY M_Warehouse_ID, PriorityRule, C_BPartner_ID, Bill_Location_ID, C_PaymentTerm_ID, C_Order_ID";
				;
			
				sql += " and C_Order.c_doctypetarget_id in (select dt.c_doctype_id from c_doctype dt where dt.c_doctype_id = C_order.c_doctypetarget_id and  dt.IsNotAutoInvoiced = 'N' ) ";
				
				sql += "ORDER BY M_Warehouse_ID, PriorityRule, C_BPartner_ID, Z_INCOTERMS_ID, C_Order_ID, C_PaymentTerm_ID"	;  //ZCOM420
		}
		else
		{
			sql = "SELECT * FROM C_Order o "
				+ "WHERE DocStatus IN('CO','CL') AND IsSOTrx='Y'";
			if (p_AD_Org_ID != 0)
				sql += " AND AD_Org_ID=?";
			if (p_C_BPartner_ID != 0)
				sql += " AND C_BPartner_ID=?";
			if (p_C_Order_ID != 0)
				sql += " AND C_Order_ID=?";
			if (p_DateOrdered_From != null)
				sql+=" AND TRUNC(DateOrdered,'DD') >= ?";
			if (p_DateOrdered_To != null)
				sql+=" AND TRUNC(DateOrdered,'DD') <= ?";
            if (p_AD_User_ID != 0)
				sql += " AND AD_User_ID=?";
            
            //ZCOM649
			sql += " and o.ad_client_id = ";
			sql += getCtx().getAD_Client_ID();
			//ZCOM649
			
			sql += " and o.c_doctypetarget_id in (select dt.c_doctype_id from c_doctype dt where dt.c_doctype_id = o.c_doctypetarget_id and dt.IsNotAutoInvoiced = 'N' ) ";
			
			//
			sql += " AND EXISTS (SELECT * FROM C_OrderLine ol "
					+ "WHERE o.C_Order_ID=ol.C_Order_ID AND ol.QtyOrdered<>ol.QtyInvoiced) "
				//ZCOM420 + "ORDER BY M_Warehouse_ID, PriorityRule, C_BPartner_ID, Bill_Location_ID, C_PaymentTerm_ID, C_Order_ID";
				+ "ORDER BY M_Warehouse_ID, PriorityRule, C_BPartner_ID, Z_INCOTERMS_ID, C_Order_ID, C_PaymentTerm_ID"	;  //ZCOM420
		}
	//	sql += " FOR UPDATE";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			int index = 1;
			if (!p_Selection && p_AD_Org_ID != 0)
				pstmt.setInt(index++, p_AD_Org_ID);
			if (!p_Selection && p_C_BPartner_ID != 0)
				pstmt.setInt(index++, p_C_BPartner_ID);
			if (!p_Selection && p_C_Order_ID != 0)
				pstmt.setInt(index++, p_C_Order_ID);
			if (!p_Selection && p_DateOrdered_From != null)
				pstmt.setTimestamp(index++, p_DateOrdered_From);
			if (!p_Selection && p_DateOrdered_To != null)
				pstmt.setTimestamp(index++, p_DateOrdered_To);
			if (!p_Selection && p_AD_User_ID != 0)
				pstmt.setInt(index++, p_AD_User_ID);	
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		return generate(pstmt);
	}	//	doIt
	
	
	/**
	 * 	Generate Shipments
	 * 	@param pstmt order query 
	 *	@return info
	 */
	private String generate (PreparedStatement pstmt)
	{
		ResultSet rs = null;
		try
		{
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MOrder order = new MOrder (getCtx(), rs, get_TrxName());
				
				log.warning("=== ORDER "+order.getDocumentNo()+ " TIERS "+order.getC_BPartner_ID());
				
				/* Lock Orders so it does not get processed twice */
				if(!order.lockForInvoicing())
					continue;
				
				m_lockedOrders.add(order);
				
				//	New Invoice Location
				if (!p_ConsolidateDocument 
						|| (m_invoice != null 
							&& (m_invoice.getC_BPartner_Location_ID() != order.getBill_Location_ID()
							|| m_invoice.getC_PaymentTerm_ID() != order.getC_PaymentTerm_ID() 
							|| m_invoice.getC_DocTypeTarget_ID() != MDocType.get(getCtx(), order.getC_DocType_ID()).getC_DocTypeInvoice_ID()
							|| verifyIncoterm(order))) //ZCOM939		
					)
					completeInvoice();
				boolean completeOrder = X_C_Order.INVOICERULE_AfterOrderDelivered.equals(order.getInvoiceRule());
				
				//	Schedule After Delivery
				boolean doInvoice= false;
				if (X_C_Order.INVOICERULE_CustomerScheduleAfterDelivery.equals(order.getInvoiceRule()))
				{
					m_bp = new MBPartner (getCtx(), order.getBill_BPartner_ID(), null);
					if (m_bp.getC_InvoiceSchedule_ID() == 0)
					{
						log.warning("BPartner has no Schedule - set to After Delivery");
						order.setInvoiceRule(X_C_Order.INVOICERULE_AfterDelivery);
						order.save();
					}
					else
					{
						MInvoiceSchedule is = MInvoiceSchedule.get(getCtx(), m_bp.getC_InvoiceSchedule_ID());
						if (is.canInvoice(order.getDateOrdered(), order.getGrandTotal()))
							doInvoice = true;
						else
							continue;
					}
				}	//	Schedule

				MOrderLine[] oLines = order.getLines();
				
				//	After Delivery
				if (doInvoice || X_C_Order.INVOICERULE_AfterDelivery.equals(order.getInvoiceRule()))
				{
					MInOut shipment = null;
					//ZCOM209 MInOutLine[] shipmentLines = order.getShipmentLines();
					MInOutLine[] shipmentLines = getShipmentLinesCompleted(order); /*ZCOM209*/
					
					// sraval: 10017443- Sort Shipment lines by Line Number 
					Arrays.sort(shipmentLines, new Comparator<MInOutLine>(){
						public int compare(MInOutLine o1, MInOutLine o2) {
							return o1.getLine()-o2.getLine();
					}});
					// end 10017443
					for (MInOutLine shipLine : shipmentLines) {
						if (shipLine.isInvoiced())
							continue;
						if (shipment == null 
							|| shipment.getM_InOut_ID() != shipLine.getM_InOut_ID())
							shipment = new MInOut(getCtx(), shipLine.getM_InOut_ID(), get_TrxName());
						
						if (! shipment.getMovementDate().after(new Timestamp(getCtx().getContextAsTime("#Date")))){ //ZCOM284
							
						if (!shipment.isComplete()		//	ignore incomplete or reversals 
							|| shipment.getDocStatus().equals(X_M_InOut.DOCSTATUS_Reversed))
							continue;
						//
						createLine (order, shipment, shipLine);
						
						} //ZCOM284
						
					}	//	shipment lines
					m_line += 1000;
				}
				//	After Order Delivered, Immediate
				else
				{
					for (MOrderLine oLine : oLines) {
						BigDecimal toInvoice = oLine.getQtyOrdered().subtract(oLine.getQtyInvoiced());
						if (toInvoice.compareTo(Env.ZERO) == 0 && oLine.getM_Product_ID() != 0)
							continue;
					//	BigDecimal notInvoicedShipment = oLine.getQtyDelivered().subtract(oLine.getQtyInvoiced());
						//
						boolean fullyDelivered = oLine.getQtyOrdered().compareTo(oLine.getQtyDelivered()) == 0;
					
						//	Complete Order
						if (completeOrder && !fullyDelivered)
						{
							log.fine("Failed CompleteOrder - " + oLine);
							completeOrder = false;
							break;
						}
						//	Immediate
						else if (X_C_Order.INVOICERULE_Immediate.equals(order.getInvoiceRule()))
						{
							log.fine("Immediate - ToInvoice=" + toInvoice + " - " + oLine);
							BigDecimal qtyEntered = toInvoice;
							//	Correct UOM for QtyEntered
							if (oLine.getQtyEntered().compareTo(oLine.getQtyOrdered()) != 0)
								qtyEntered = toInvoice
									.multiply(oLine.getQtyEntered())
									.divide(oLine.getQtyOrdered(), 12, BigDecimal.ROUND_HALF_UP);
							createLine (order, oLine, toInvoice, qtyEntered);
							log.info("ID "+oLine.get_ID() + "Qty Ordered " + oLine.getQtyOrdered() + " Qty Invoiced "+oLine.getQtyInvoiced());
						}
						else
						{
							log.fine("Failed: " + order.getInvoiceRule() 
								+ " - ToInvoice=" + toInvoice + " - " + oLine);
						}
					}	//	for all order lines
					if (X_C_Order.INVOICERULE_Immediate.equals(order.getInvoiceRule()))
						m_line += 1000;
				}
				
				//	Complete Order successful
				if (completeOrder && X_C_Order.INVOICERULE_AfterOrderDelivered.equals(order.getInvoiceRule()))
				{
					MInOut[] shipments = order.getShipments(true);
					for (MInOut ship : shipments) {
						if (!ship.isComplete()		//	ignore incomplete or reversals 
							|| ship.getDocStatus().equals(X_M_InOut.DOCSTATUS_Reversed))
							continue;
						MInOutLine[] shipLines = ship.getLines(false);
						for (MInOutLine shipLine : shipLines) {
							boolean isOrderLine = false;
							for (MOrderLine oLine : oLines) {
								if (oLine.getC_OrderLine_ID() == shipLine.getC_OrderLine_ID()) {
									isOrderLine = true;
									break;
								}
							}
							if (!isOrderLine)
								continue;
							if (!shipLine.isInvoiced())
								createLine (order, ship, shipLine);
						}	//	lines
						m_line += 1000;
					}	//	all shipments
					
					
					/* Remove this part not use in new process
					
					// create line for accompte already percu
					MOrderPaymSchedule[] paymScheduleLines = order.getPaymScheduleLines(null, null);
					BigDecimal alReadyInv = BigDecimal.ZERO;
					for (int i = 0; i < paymScheduleLines.length; i++) {
						MOrderPaymSchedule paysch = paymScheduleLines[i];
						if (paysch.getC_Invoice_ID() != 0 )
							alReadyInv = alReadyInv.add(paysch.getTotalAmt());
						else {
							paysch.setC_Invoice_ID(m_invoice.getC_Invoice_ID());
							paysch.save();
						}
					}
					if (alReadyInv.compareTo(BigDecimal.ZERO) != 0 ){
						// Create Accompte Line
						int accID = DB.getSQLValue(get_Trx(), "select m_product_id from m_product where ad_client_id = ? and value = '" + EggoCtx.ART_ACOMPTE  +  "' ", order.getAD_Client_ID());
						if (accID <1) throw new CompiereException("Pas d'article ACOMPTE défini pour la société ");
						
						int taxID = DB.getSQLValue(get_Trx(), "select c_tax_id from c_tax where ad_client_id = ? and name = '" + EggoCtx.TVA_VENTE_ZERO + "' ", order.getAD_Client_ID());
						if (taxID <1) throw new CompiereException("Taxe " + EggoCtx.TVA_VENTE_ZERO + " non définie pour la société");
						MInvoiceLine line = new MInvoiceLine (m_invoice);
						//
						line.setClientOrg(m_invoice.getAD_Client_ID(), m_invoice.getAD_Org_ID());
						line.setLine(m_line);
						line.setM_Product_ID(accID);
						line.setQtyEntered(BigDecimal.ONE.negate());
						line.setQtyInvoiced(BigDecimal.ONE.negate());
						line.setPriceEntered(alReadyInv);
						line.setPriceActual(alReadyInv);
						line.setPriceLimit(alReadyInv);
						line.setPriceList(alReadyInv);
						line.setC_Tax_ID(taxID);
						line.setLineNetAmt(alReadyInv.multiply(BigDecimal.ONE.negate()));
						if (!line.save())
							throw new CompiereStateException("Could not create Invoice Line (s)");
					}
					
					*/
					
				}	//	complete Order
				
			}	//	for all orders
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}finally{
  			Util.closeCursor(pstmt, rs);
  		}
		completeInvoice();
		
		//	unlock all order that are still locked
		if(m_lockedOrders != null && m_lockedOrders.size()>0)
			for(MOrder order:m_lockedOrders)
				order.unlockForInvoicing(get_Trx());
		
		return "@Created@ = " + m_created;
	}	//	generate
	
	
	
	/**************************************************************************
	 * 	Create Invoice Line from Order Line
	 *	@param order order
	 *	@param orderLine line
	 *	@param qtyInvoiced qty
	 *	@param qtyEntered qty
	 */
	private void createLine (MOrder order, MOrderLine orderLine, 
		BigDecimal qtyInvoiced, BigDecimal qtyEntered)
	{
		if (m_invoice == null)
		{
			m_invoice = new MInvoice (order, 0, p_DateInvoiced);
			if (!m_invoice.save())
				throw new CompiereStateException("Could not create Invoice (o)");
		}
		//	
		MInvoiceLine line = new MInvoiceLine (m_invoice);
		line.setOrderLine(orderLine);
		line.setQtyInvoiced(qtyInvoiced);
		
		log.info("Qty Invoiced"+line.getQtyInvoiced());
		line.setQtyEntered(qtyEntered);
		line.setLine(m_line + orderLine.getLine());

		// 3 SUISSES GROS CALCUL
		int nombreFactures = DB.getSQLValue(get_Trx(), "select count(*) from C_Invoice i where i.C_BPartner_ID = ?", m_invoice.getC_BPartner_ID());
		line.setDescription(nombreFactures + " factures sur ce client");
		// 3 SUISSES GROS CALCUL

		if (!line.save())
			throw new CompiereStateException("Could not create Invoice Line (o)");
		log.fine(line.toString());
	}	//	createLine

	/**
	 * 	Create Invoice Line from Shipment
	 *	@param order order
	 *	@param ship shipment header
	 *	@param sLine shipment line
	 */
	private void createLine (MOrder order, MInOut ship, MInOutLine sLine)
	{
		if (m_invoice == null)
		{
			m_invoice = new MInvoice (order, 0, p_DateInvoiced);
			if (!m_invoice.save())
				throw new CompiereStateException("Could not create Invoice (s)");
		}
		//	Create Shipment Comment Line
		if (m_ship == null 
			|| m_ship.getM_InOut_ID() != ship.getM_InOut_ID())
		{
			MDocType dt = MDocType.get(getCtx(), ship.getC_DocType_ID());
			if (m_bp == null || m_bp.getC_BPartner_ID() != ship.getC_BPartner_ID())
				m_bp = new MBPartner (getCtx(), ship.getC_BPartner_ID(), get_TrxName());
			
			//	Reference: Delivery: 12345 - 12.12.12
			MClient client = MClient.get(getCtx(), order.getAD_Client_ID ());
			String AD_Language = client.getAD_Language();
			if (client.isMultiLingualDocument() && m_bp.getAD_Language() != null)
				AD_Language = m_bp.getAD_Language();
			if (AD_Language == null)
				AD_Language = Language.getBaseAD_Language();
			java.text.SimpleDateFormat format = DisplayType.getDateFormat 
				(DisplayTypeConstants.Date, Language.getLanguage(AD_Language));
			String reference = dt.getPrintName(m_bp.getAD_Language())
				+ ": " + ship.getDocumentNo() 
				+ " - " + format.format(ship.getMovementDate());
			m_ship = ship;
			//
			MInvoiceLine line = new MInvoiceLine (m_invoice);
			line.setIsDescription(true);
			line.setDescription(reference);
			line.setLine(m_line + sLine.getLine() - 2);
			if (!line.save())
				throw new CompiereStateException("Could not create Invoice Comment Line (sh)");
			
			//ZCOM447
			if (sLine.getC_OrderLine_ID() != 0)
			{
				MOrderLine ol = new MOrderLine(getCtx(),sLine.getC_OrderLine_ID(),get_TrxName());
				line.setUser2_ID(ol.getUser2_ID());
			}
			else
				line.setUser2_ID(ship.getUser2_ID());
			//ZCOM447	

			//	Optional Ship Address if not Bill Address
			if (order.getBill_Location_ID() != ship.getC_BPartner_Location_ID())
			{
				MLocation addr = MLocation.getBPLocation(getCtx(), ship.getC_BPartner_Location_ID(), null);
				line = new MInvoiceLine (m_invoice);
				line.setIsDescription(true);
				line.setDescription(addr.toString());
				line.setLine(m_line + sLine.getLine() - 1);
				if (!line.save())
					throw new CompiereStateException("Could not create Invoice Comment Line 2 (sh)");
			}
		}
		//	
		MInvoiceLine line = new MInvoiceLine (m_invoice);
		line.setShipLine(sLine);
		line.setQtyEntered(sLine.getQtyEntered());
		line.setQtyInvoiced(sLine.getMovementQty());
		line.setLine(m_line + sLine.getLine());
		line.setM_AttributeSetInstance_ID(sLine.getM_AttributeSetInstance_ID());
		
		if (!line.save())
			throw new CompiereStateException("Could not create Invoice Line (s)");
		//	Link
		sLine.setIsInvoiced(true);
		if (!sLine.save())
			throw new CompiereStateException("Could not update Shipment Line");
		
		log.fine(line.toString());
	}	//	createLine

	
	/**
	 * 	Complete Invoice
	 */
	private void completeInvoice()
	{
		if (m_invoice != null)
		{
			boolean processOK = DocumentEngine.processIt(m_invoice, p_docAction);
			m_invoice.save();
			
			for(MOrder order:m_lockedOrders)
				order.unlockForInvoicing(get_Trx());
			
			m_lockedOrders.clear();
			
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
		
		// 3 SUISSES 
		get_Trx().commit();
		// 3 SUISSES
		
		m_invoice = null;
		m_ship = null;
		m_line = 0;
	}	//	completeInvoice

	/**
	 * ZCOM939 DEBUT
	 */
	private boolean verifyIncoterm(MOrder currentorder)
	{
		MOrder oldorder = new MOrder (getCtx(), m_invoice.getC_Order_ID(), get_TrxName());
		log.info("OLD ORDER INCOTERM:"+oldorder.get_Value("Z_INCOTERMS_ID"));
		log.info("CURRENT ORDER INCOTERM:"+currentorder.get_Value("Z_INCOTERMS_ID"));
		if(oldorder.get_Value("Z_INCOTERMS_ID")!=currentorder.get_Value("Z_INCOTERMS_ID"))
			return true;
		else
			return false;
	}

	/**
	 * ZCOM209
	 * 	Get COMPLETED Shipments of Order
	 * 	@return shipments
	 */
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
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				Util.closeCursor(pstmt, rs);
			}
		}
		catch (Exception e)
		{
			log.severe("getShipments"+ e);
			throw new DBException(e);
		}
		//
		MInOutLine[] retValue = new MInOutLine[list.size()];
		list.toArray(retValue);
		return retValue;
	}
	
}	//	InvoiceGenerate
