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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.model.MDocTypeInfo;

	
/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GeneratePoFromSo extends SvrProcess
{
	private boolean toComplete = false;
	private boolean forcer = false;
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("ToComplete"))
				toComplete = "Y".equals(element.getParameter());
			else if (name.equals("Forcer"))
				forcer = "Y".equals(element.getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
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
		String roo = Msg.getMsg(getCtx(), "XX_Gest_roles++");
		if(forcer && !roo.contains(""+getCtx().getAD_Role_ID()))
		{
			return "Seul le role Gest++ peut forcer la génération des OA";
		}
		MOrder mo = new MOrder(getCtx(), getRecord_ID(), get_Trx());
		MDocTypeInfo mdi = MDocTypeInfo.get(getCtx(), mo.getC_DocType_ID(), get_Trx()); 
		// Génération DU po
		String Act_Cmd_Grp = Msg.getMsg(getCtx(), "EGGO_ACT_CMD_GRP");
		int m_Process_ID = 0;
		if(Act_Cmd_Grp.equals("1"))
			m_Process_ID = DB.getSQLValue(get_Trx(), "select max(ad_process_id) from ad_process where IsActive = 'Y' and classname like '%OrderPOCreateEggo2' "); 
		else
			m_Process_ID = DB.getSQLValue(get_Trx(), "select max(ad_process_id) from ad_process where IsActive = 'Y' and classname like '%OrderPOCreateEggo_EDI' "); 
		
		MProcess process = new MProcess(getCtx(), m_Process_ID, get_Trx());
        MPInstance instance = new MPInstance(getCtx(), m_Process_ID, -1);
        if (!instance.save()) {
            addLog("Process No Instance");
            return Msg.getMsg(getCtx(), "ProcessFailed");
        }
        ProcessInfo processInfo = new ProcessInfo("Generate PO",
                m_Process_ID);
        processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
        ProcessInfoParameter pip1 = new ProcessInfoParameter("C_Order_ID", getRecord_ID(),
                null, null, null);
        ProcessInfoParameter pip2 = new ProcessInfoParameter("ToComplete", (toComplete && mdi.isZ_CompletOA())?"Y":"N",
                null, null, null);
        ProcessInfoParameter pip3 = new ProcessInfoParameter("Forcer", forcer?"Y":"N" ,
                null, null, null);
        pipList.add(pip1);
        pipList.add(pip2);
        pipList.add(pip3);
        ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList
                .toArray(new ProcessInfoParameter[pipList.size()]);
        processInfo.setParameter(parameters);
        process.processIt(processInfo, get_Trx());
        if (processInfo.isError()) {
            addLog(processInfo.getSummary());
            get_Trx().rollback();
            return Msg.getMsg(getCtx(), "ProcessFailed");
        }

        int[] ids = processInfo.getIDs();
        if (ids == null || ids.length == 0)
            return Msg.getMsg(getCtx(), "Ordre d'achat générer");
//        for (int id : ids) {
//            MInvoice invoice = new MInvoice(getCtx(), id, get_Trx());
//            addLog(invoice.getDocumentNo());
//        }
        if(processInfo.getSummary()!=null)
        	return processInfo.getSummary();
        return Msg.getMsg(getCtx(), "ProcessOK");
	}	//	doIt




}