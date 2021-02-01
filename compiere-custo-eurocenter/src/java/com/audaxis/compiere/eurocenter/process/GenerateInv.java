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

import java.util.ArrayList;
import java.util.List;

import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GenerateInv extends SvrProcess
{
	int ordSchedID = 0;
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
			// Générate Invoice
			
				String facG = "";
				int m_Process_ID = DB.getSQLValue(get_Trx(), "select max(ad_process_id) from ad_process where classname like '%InvoiceOrderShipment%' "); 
		        MProcess process = new MProcess(getCtx(), m_Process_ID, get_Trx());
		        MPInstance instance = new MPInstance(getCtx(), m_Process_ID, -1);
		        if (!instance.save()) {
		            addLog("InvoiceOrderShipment Process No Instance");
		            return Msg.getMsg(getCtx(), "ProcessFailed");
		        }
		        ProcessInfo processInfo = new ProcessInfo("Generate Invoice from Shipment",
		                m_Process_ID);
		        processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
		        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
		        ProcessInfoParameter pip1 = new ProcessInfoParameter("C_Order_ID", getRecord_ID(),
		                null, null, null);
		        pipList.add(pip1);
		        ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList
		                .toArray(new ProcessInfoParameter[pipList.size()]);
		        processInfo.setParameter(parameters);
		        process.processIt(processInfo, get_Trx());
		        if (processInfo.isError()) {
		            addLog(processInfo.getSummary());
		            return Msg.getMsg(getCtx(), "ProcessFailed");
		        }

		        int[] ids = processInfo.getIDs();
		        if (ids == null || ids.length == 0)
		        	facG = "Facture générée";
				
				return facG; 
 
	}	//	doIt





}