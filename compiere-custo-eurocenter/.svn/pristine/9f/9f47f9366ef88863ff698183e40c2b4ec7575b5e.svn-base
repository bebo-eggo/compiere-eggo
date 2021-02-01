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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.MWarehouse;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.DocActionConstants;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ProcessInfoVO;

import com.audaxis.compiere.model.MOrderShip;

/**
 *	Generate Payment from Sales Order Vente directe Eggo ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GenerateShipInvoice extends SvrProcess
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
		int ok = 0;
		MOrder ord = new MOrder(getCtx(),getRecord_ID(),get_Trx());
		String NotAbleToRec = Msg.getMsg(getCtx(), "XX_ROLE_NOT_01_RECP");
		if(NotAbleToRec.contains(""+getCtx().getAD_Role_ID()) )
		{
			//Check si les lignes contiennent un article qui ne peut etre expédié par le role
			String sql = "Select able_exped from ( " + 
					"Select COALESCE(mp.xx_role_able_exped, mpc.xx_role_able_exped,zsf.xx_role_able_exped,'N'  ) as able_exped, "
					+ "mil.C_Order_ID from C_OrderLine mil  " + 
					"inner join M_Product mp on mp.M_Product_ID = mil.M_Product_ID " + 
					"inner join m_product_category mpc on mpc.m_product_category_id = mp.m_product_category_id " + 
					"left join z_s_famille zsf on zsf.z_s_famille_id = mp.z_s_famille_id ) " + 
					"where C_Order_ID = ? " + 
					"group by able_exped, C_Order_ID " + 
					"order by able_exped ASC ";
			String m_processMsg = null;
			String notProcess = org.compiere.util.QueryUtil.getSQLValueString(get_Trx(), sql, ord.getC_Order_ID());
			if(notProcess!=null && notProcess.equals("Y"))
			{
				MOrderLine mols[] = ord.getLines();
				for (int i = 0; i < mols.length; i++) {
					MOrderLine mOrderLine = mols[i];
					MWarehouse mw = new MWarehouse(getCtx(), mOrderLine.getM_Warehouse_ID(), get_Trx());
					if(mw!=null && mw.getValue().contains("-01") )
					{
						String msg = Msg.getMsg(getCtx(), "XX_ROLE_NOT_01_EXP_M");
						m_processMsg  = msg;
						break;
					}
				}
				if(m_processMsg!=null) {
					addLog(m_processMsg);  
					return "KO";
				}
			}
			
		}
		
		
		ArrayList<MOrderShip>ships= ord.getPreparedShipLines(" AND QTYTODELIVER <> 0 ",null);
		if (ships.size() == 0 ){
			addLog("Pas d'expédition à générer");  
			return null;
		}
		
		MInOut io = new MInOut(ord,0,new java.sql.Timestamp(System.currentTimeMillis()));
		io.save(get_Trx());
		for (int i = 0; i < ships.size(); i++) {
			 generateShip(io,ships.get(i));
			 ok = ok + 1;
		}
		if (ok > 0 ){
			boolean successShip = DocumentEngine.processIt(io, DocActionConstants.ACTION_Complete);
			io.save(get_Trx());
			// Générate Invoice
			if(!successShip)
				log.warning("Gen Exped not complete "+io.getDocumentNo()+" -> No Invoice");
			if (successShip) {
/*  On génére la facture automatiquement*/
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
				
				return "Expedition : " + io.getDocumentNo() + " contenant " + ok + "Lignes - " ; 
			}
		}
 
		return "" ;
	}	//	doIt



	public void generateShip(MInOut io, MOrderShip sh) {


		MInOutLine iol = new MInOutLine(io);
		iol.setM_Product_ID(sh.getM_Product_ID());
		iol.setQty(sh.getQtyToDeliver());
		iol.setC_OrderLine_ID(sh.getC_OrderLine_ID());
		sh.setQtyToDeliver(BigDecimal.ZERO);
		iol.save(get_Trx());
		sh.save(get_Trx());
	}


}