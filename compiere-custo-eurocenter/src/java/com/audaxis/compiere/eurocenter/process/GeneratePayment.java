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

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MPayment;
import com.audaxis.compiere.util.CompiereException;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GeneratePayment extends SvrProcess
{
	int ordID = 0;
	int invID = 0;
	int allocLineID = 0;
	int bankID = 0;
	int bankacctID = 0;
	int cdocTypeID = 0;
	int ZSubPaymentID = 0;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ordID = getRecord_ID();

		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("ZSubPaymentRule_ID"))
				ZSubPaymentID = ((BigDecimal)element.getParameter()).intValue();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}	
		invID = DB.getSQLValue(get_Trx(), "Select c_invoice_id from c_invoice where c_order_id = ? ", ordID);
		allocLineID = DB.getSQLValue(get_Trx(), "select max(C_AllocationLine_ID) from C_AllocationLine where C_Invoice_ID = ?", invID);
		MInvoice inv = new MInvoice(getCtx(), invID, get_Trx());
		String orgValue = DB.getSQLValueString(get_Trx(), "Select value from ad_org where ad_org_id = ?", inv.getAD_Org_ID());
		bankacctID = DB.getSQLValue(get_Trx(),"SELECT max(ba.C_BankAccount_ID) from C_BankAccount ba INNER JOIN C_Bank b on (b.c_bank_id = ba.c_bank_id) WHERE ba.ad_client_id=? and UPPER(b.NAME) = UPPER(?) ", inv.getAD_Client_ID(), "CAISSE" + orgValue);
		cdocTypeID = DB.getSQLValue(get_Trx(), "SELECT max(C_DocType_ID) from C_DocType WHERE C_DocType.ad_client_id=? AND C_DocType.DocBaseType = 'ARR' and  C_DocType.c_doctype_id IN (select doc.c_doctype_id from C_BankAccountDoc doc where doc.C_BankAccount_ID = ?)",inv.getAD_Client_ID(),bankacctID);
	}	//	prepare

	/**
	 *  Perrform process.
	 *  @return Message 
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		if (invID < 1){
			addLog("Pas de facture créée pour ce document");  
			return null;
		}	

		if (allocLineID > 0){ 
			addLog("La facture de cette commande est déja payée");  
			return null;  
		}

		if (bankacctID < 1){ 
			addLog("Pas de compte bancaire CAISSE définie pour le magasin");  
			return null;  
		}

		if (cdocTypeID < 1){ 
			addLog("Pas de type de document trouvé pour la caisse du magasin");  
			return null;  
		}

		String msg = generatePayment();
		return msg;
	}	//	doIt



	public String generatePayment() {
		MInvoice inv = new MInvoice(getCtx(),invID,get_Trx());
		MPayment paym = new MPayment(getCtx(), 0, get_Trx());

		paym.setClientOrg(inv.getAD_Client_ID(), inv.getAD_Org_ID());
		paym.setC_DocType_ID(cdocTypeID);
		paym.setC_BankAccount_ID(bankacctID);
		paym.set_Value("ZSubPaymentRule_ID", ZSubPaymentID);
		paym.setPayAmt(inv.getGrandTotal());

		paym.setC_BPartner_ID(inv.getC_BPartner_ID());
		paym.setC_Invoice_ID(invID);
		paym.setC_Currency_ID(inv.getC_Currency_ID());
		paym.set_Value("ZCreateFromOpenInvoice", "N");
		paym.set_Value("DueDate", inv.getDateInvoiced());
		paym.setC_ConversionType_ID(inv.getC_ConversionType_ID());
		paym.setChargeAmt(BigDecimal.ZERO);
		paym.setOProcessing("N");
		paym.setDocAction(MOrder.DOCACTION_Complete);
		paym.setC_Order_ID(inv.getC_Order_ID());
		paym.save(get_Trx());
		boolean successPay = DocumentEngine.processIt(paym, DocActionConstants.ACTION_Complete);
		paym.save(get_Trx());
		if (!successPay) throw new CompiereException(paym.getProcessMsg());

		if (paym.save(get_Trx())) return paym.getDocumentNo();
		else return null;
	}


}