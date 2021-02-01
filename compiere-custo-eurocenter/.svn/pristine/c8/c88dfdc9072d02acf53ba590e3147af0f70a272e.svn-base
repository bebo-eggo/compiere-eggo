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
import java.math.RoundingMode;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.eurocenter.util.PaymentUtil;
import com.audaxis.compiere.model.MOrderPayment;
import org.compiere.model.MPayment;
import com.audaxis.compiere.model.MZSubPaymentRule;
import com.audaxis.compiere.util.CompiereException;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GenerateSOPayment2 extends SvrProcess
{
	int ordSchedID = 0;
	int ordPayID = 0;
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
	}	//	prepare

	/**
	 *  Perrform process.
	 *  @return Message 
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		
		//88345
		String msg = "";
		int err = 0;
		int ok = 0;
		ordPayID = getRecord_ID();
		MOrderPayment orderPayms = new MOrderPayment(getCtx(), ordPayID, get_Trx());
		ordSchedID = orderPayms.getZ_OrderPaymSchedule_ID();
		MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), ordSchedID, get_Trx());
		invID = ops.getC_Invoice_ID();
		if(ops.getC_Invoice_ID() <= 0)
			throw new CompiereException("Facture non générée dans l'échéancier !");
		BigDecimal totPaymt = BigDecimal.ZERO;		
		
		msg = generatePayment(orderPayms, get_Trx());
		if (msg == null) 
			err = err + 1;
		else 
			ok = ok + 1;
		
		MOrder ord = new MOrder(getCtx(),ops.getC_Order_ID(),get_Trx());
		ord.setTotalPaySched();
		ord.save();
		
		return "Nbr. de paiements effectués : " + ok + " Nbr. de paiements échoués : " + err;
	}	//	doIt



	public String generatePayment(MOrderPayment op, Trx trx) {

		int docTypeID = DB.getSQLValue(trx, "select C_DocType_ID from C_BankAccountDoc WHERE C_BankAccount_ID = ? AND ZSubPaymentRule_ID = ? ", op.getC_BankAccount_ID(), op.getZSubPaymentRule_ID());
		if (docTypeID <= 0) return null;
		
		MInvoice inv = new MInvoice(getCtx(),invID,trx);
		MPayment paym = new MPayment(getCtx(), 0, trx);
		paym.setClientOrg(inv.getAD_Client_ID(), inv.getAD_Org_ID());
		paym.setC_DocType_ID(docTypeID);
		paym.setC_BankAccount_ID(op.getC_BankAccount_ID());
		paym.set_Value("ZSubPaymentRule_ID", op.getZSubPaymentRule_ID());
		paym.setisFromEch(true);
		
		boolean payAmtChange = false;
		//MZSubPaymentRule msz = new MZSubPaymentRule(getCtx(), op.getZSubPaymentRule_ID(), get_Trx());
		//if(msz.IsRounded() && !op.getPayAmt().equals(Env.ZERO))
		//{
		//	BigDecimal PriceRounded = PaymentUtil.roundAmt(op.getPayAmt());
		//    log.warning("120, AMT : "+PriceRounded);   
	    //    if(paym.getPayAmt().doubleValue()!=(PriceRounded.doubleValue()))
	    //    	payAmtChange = true;
	    //    paym.setPayAmt(PriceRounded);
	    //    log.warning("124, AMT : "+PriceRounded);   
		//}
		//else
		//log.warning("127, AMT : "+op.getPayAmt()); 
			paym.setPayAmt(op.getPayAmt());
		paym.setIsSelfService(true);
		//log.warning("129, AMT : "+paym.getPayAmt());   
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
		//log.warning("141, AMT : "+paym.getPayAmt()); 
		//paym.save(get_Trx());
		if (!paym.save(trx)) {
			throw new CompiereException("Unable to save payment !");
		}else
		{
			op.setC_Payment_ID(paym.getC_Payment_ID());
			op.save(trx);
			completeOrder(inv);
			boolean successPay = DocumentEngine.processIt(paym, DocActionConstants.ACTION_Complete);
			paym.save(trx);
			if (!successPay) throw new CompiereException(paym.getProcessMsg());
		}
		if(paym!=null)
			return paym.getDocumentNo();
		else 
			return null;
	}
	
	private void completeOrder(MInvoice inv){
		BigDecimal openAmt = DB.getSQLValueBD(null,"select invoiceOpen(?,0) from dual",inv.getC_Invoice_ID());
		MOrder order = new MOrder(getCtx(), inv.getC_Order_ID(),get_Trx());
		if(openAmt!= null && openAmt.compareTo(BigDecimal.ZERO) == 0 && order.getC_DocTypeTarget_ID() != 1000028 
				&& MOrder.isCompleteShip(order.getC_Order_ID())){
			order.setDocAction(MOrder.DOCACTION_Complete);
			if(order.save()){
				DocumentEngine.processIt(order, DocActionConstants.ACTION_Complete);
				order.save();
			}
				
		}
	}


}