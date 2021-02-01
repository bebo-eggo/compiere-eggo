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
package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.framework.PO;
import org.compiere.model.AccompteUtil;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MOrderPaymScheduleLine;
import org.compiere.model.MOrderVDPayment;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderPayment;
import com.audaxis.compiere.model.MPayment;
import com.audaxis.compiere.model.MZSubPaymentRule;
import com.audaxis.compiere.util.CompiereException;
import com.ecenter.compiere.util.EggoCtx;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GenerateVDPayment extends SvrProcess
{
	int orderVDPayID = 0;
	int invID = 0;
	int allocLineID = 0;
	int bankID = 0;
	int bankacctID = 0;
	int cdocTypeID = 0;
	int ZSubPaymentID = 0;
	MOrderVDPayment op = null;
	MOrder order;
	int accID;
	int doctypeID = 0;
	boolean isFin=false;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
//		EggoCtx.setConstants();
		orderVDPayID = getRecord_ID();
		AccompteUtil au =  new AccompteUtil(getCtx(), getAD_Client_ID(), get_Trx());
		accID = au.getAccompte_Product_ID();
		if (accID <1) throw new CompiereException("Pas d'article ACOMPTE défini pour la société ");
		op = new MOrderVDPayment(getCtx(), orderVDPayID, get_Trx());
		if (op.getPayAmt().compareTo(BigDecimal.ZERO) == 0 ) 
			throw new CompiereException("Paiement à Zéro ! ");
		order = op.getParent();
		if (op.getTotalAmt().compareTo(order.getGrandTotal()) > 0 )
			throw new CompiereException("Montant paiement > montant total commande !");
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), order.getC_DocTypeTarget_ID(), get_Trx());
		doctypeID = dti.getC_DocType_Accompte_ID();//MERGE
		if (doctypeID < 1) throw new CompiereException("Pas de type de document défini pour les accomptes ! ");
		
		MZSubPaymentRule sr = new MZSubPaymentRule(getCtx(), op.getZSubPaymentRule_ID(), get_Trx());
		if (sr != null && sr.get_ValueAsString("IsFinancement") != null && "Y".equalsIgnoreCase(sr.get_ValueAsString("IsFinancement"))){
			accID = sr.get_ValueAsInt("M_Product_ID");
			if (accID < 1) throw new CompiereException("Pas d'article FINANCEMENT défini pour la sous méthode de paieemnt ");
			isFin = true;
		}

	}	//	prepare

	/**
	 *  Perrform process.
	 *  @return Message 
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		MInvoice m_invoice;
		if (op.getC_Invoice_ID() < 1){   // Create Invoice to match Payment

			m_invoice = new MInvoice (getCtx(), 0, get_Trx());
			m_invoice.setClientOrg(op.getAD_Client_ID(), op.getAD_Org_ID());
			m_invoice.setC_BPartner_ID(op.getParent().getC_BPartner_ID());
			m_invoice.setOrder(order);
			m_invoice.setC_DocTypeTarget_ID(doctypeID);
			if (isFin){
				m_invoice.set_ValueNoCheck("IsFinancement", "Y");
				m_invoice.setDescription(op.get_ValueAsString("Z_NumAccept")); 
			}
			//TA
			AccompteUtil au = new AccompteUtil(getCtx(), getAD_Client_ID(), get_Trx());
			int accPLID = au.getAccompte_PriceList_ID();
			//m_invoice.setM_PriceList_ID(accPLID);
			//m_invoice.save(get_Trx());
			//System.out.println("PL1: " + m_invoice.getM_PriceList_ID() + " " + accPLID) ;
			//TA
						if (!m_invoice.save(get_Trx()))
				throw new CompiereStateException("Could not create Invoice (o)");
			m_invoice.setM_PriceList_ID(accPLID);
			//get_Trx().commit();
			//System.out.println("PL2: " + m_invoice.getM_PriceList_ID() + " " + accPLID) ;
/* Do no do reverse			
			MInvoice m_revinvoice = new MInvoice(getCtx(),0, get_Trx());
			PO.copyValues(m_invoice, m_revinvoice);
			m_revinvoice.setClientOrg(m_invoice.getAD_Client_ID(), m_invoice.getAD_Org_ID());
			m_revinvoice.setDocumentNo(DB.getDocumentNo(m_invoice.getC_DocTypeTarget_ID(), get_Trx()));
			m_revinvoice.save(get_Trx());
*/			
			MInvoiceLine invLine = null;
			invLine = new MInvoiceLine(m_invoice);
			invLine.setM_Product_ID(accID);
			invLine.setPriceActual(op.getPayAmt());
			invLine.setPriceEntered(op.getPayAmt());
			invLine.setQtyEntered(BigDecimal.ONE);
			invLine.setTax();
			if(!invLine.save(get_Trx()))
				throw new CompiereStateException("Could not create Invoice Line");


/* Do no do reverse			
			MInvoiceLine revinvLine = null;
			revinvLine = new MInvoiceLine(m_revinvoice);
			revinvLine.setM_Product_ID(accID);
			revinvLine.setPriceActual(op.getPayAmt());
			revinvLine.setPriceEntered(op.getPayAmt());
			revinvLine.setQtyEntered(BigDecimal.ONE.negate());
			revinvLine.setTax();
			if(!revinvLine.save(get_Trx()))
				throw new CompiereStateException("Could not create Invoice Line");
*/

			
			
			boolean processOK = true;
			if ( ! DocumentEngine.processIt(m_invoice, MInvoice.DOCACTION_Complete) )
				throw new CompiereStateException("Could not process Invoice");
			if (m_invoice.save(get_Trx()))
			{	
				op.setC_Invoice_ID(m_invoice.getC_Invoice_ID());
				op.save(get_Trx());
			}

			
/* Do no do reverse			
			if ( ! DocumentEngine.processIt(m_revinvoice, MInvoice.DOCACTION_Complete) )
				throw new CompiereStateException("Could not process Rev Invoice");
			if ( ! m_revinvoice.save(get_Trx())) throw new CompiereStateException("Could not process Rev Invoice");
*/
			
		}
		if (!isFin) generatePayment(op);

		return "Paiement Effectué";
	}	//	doIt



	public String generatePayment(MOrderVDPayment op) {

		int docTypeID = DB.getSQLValue(get_Trx(), "select C_DocType_ID from C_BankAccountDoc WHERE C_BankAccount_ID = ? AND ZSubPaymentRule_ID = ? ", op.getC_BankAccount_ID(), op.getZSubPaymentRule_ID());
		if (docTypeID <= 0) return null;
		
		MInvoice inv = new MInvoice(getCtx(),op.getC_Invoice_ID(),get_Trx());
		MPayment paym = new MPayment(getCtx(), 0, get_Trx());
		paym.setClientOrg(inv.getAD_Client_ID(), inv.getAD_Org_ID());
		paym.setC_DocType_ID(docTypeID);
		paym.setC_BankAccount_ID(op.getC_BankAccount_ID());
		paym.set_Value("ZSubPaymentRule_ID", op.getZSubPaymentRule_ID());
		paym.setPayAmt(op.getPayAmt());

		paym.setC_BPartner_ID(inv.getC_BPartner_ID());
		paym.setC_Invoice_ID(inv.getC_Invoice_ID());
		paym.setC_Currency_ID(inv.getC_Currency_ID());
		paym.set_Value("ZCreateFromOpenInvoice", "N");
		paym.set_Value("DueDate", inv.getDateInvoiced());
		paym.setC_ConversionType_ID(inv.getC_ConversionType_ID());
		paym.setChargeAmt(BigDecimal.ZERO);
		paym.setOProcessing("N");
		paym.setDocAction(MOrder.DOCACTION_Complete);
		paym.setC_Order_ID(inv.getC_Order_ID());
		paym.save(get_Trx());
		if (paym.save(get_Trx())) {
			op.setC_Payment_ID(paym.get_ID());
			op.save(get_Trx());
		}
		boolean successPay = DocumentEngine.processIt(paym, DocActionConstants.ACTION_Complete);
		paym.save(get_Trx());
		if (!successPay) throw new CompiereException(paym.getProcessMsg());

		if (paym.save(get_Trx())) {
//			completeOrder(inv);
			return paym.getDocumentNo();
		}
		else return null;
	}
	
	private void completeOrder(MInvoice inv){
		BigDecimal openAmt = DB.getSQLValueBD(null,"select invoiceOpen(?,0) from dual",inv.getC_Invoice_ID());
		MOrder order = new MOrder(getCtx(), inv.getC_Order_ID(),get_Trx());
		if(openAmt!= null && openAmt.compareTo(BigDecimal.ZERO) == 0 && order.getC_DocTypeTarget_ID() != 1000028 
				&& MOrder.isCompleteShip(order.getC_Order_ID())){
			order.setDocAction(MOrder.DOCACTION_Complete);
			if(order.save(get_Trx())){
				order.setDocStatus(MOrder.DOCSTATUS_InProgress);
				order.save(get_Trx());
			}
				
		}
	}


}