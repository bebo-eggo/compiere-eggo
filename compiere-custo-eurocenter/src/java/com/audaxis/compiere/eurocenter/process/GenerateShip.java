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

import com.audaxis.compiere.eurocenter.util.OrderUtil;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderShip;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.util.CompiereException;
import com.ecenter.compiere.util.EggoCtx;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GenerateShip extends SvrProcess
{
	int ordSchedID = 0;
	int invID = 0;
	int allocLineID = 0;
	int bankID = 0;
	int bankacctID = 0;
	int cdocTypeID = 0;
	int ZSubPaymentID = 0;
	int Role_ID = 0;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		Role_ID = getCtx().getAD_Role_ID();
	}	//	prepare

	/**
	 *  Perrform process.
	 *  @return Message 
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		String m_processMsg = null;
		//79670
		String Role_Exped_93 = Msg.getMsg(getCtx(), "Z_ROLE_EXPED_93");
		if(Role_Exped_93.contains(""+Role_ID))
		{
			//
			int nbOrderLine = DB.getSQLValue(get_Trx(), "Select count(*) from C_OrderLine col where col.C_ORDER_ID = ? and IsActive ='Y' and col.QTYTODELIVER <> 0 and exists (Select 1 from M_LOCATOR ml inner join Z_LOCATORTYPE zlt on zlt.Z_LOCATORTYPE_ID = ml.Z_LOCATORTYPE_ID where ml.M_LOCATOR_ID = col.M_LOCATOR_ID and UPPER(zlt.Description) = UPPER('Stock Central'))", getRecord_ID());
			if(nbOrderLine>0)
				throw new CompiereException(Msg.getMsg(getCtx(), "Z_BAD_LOCATOR"));
		}
		
		MOrder ord = new MOrder(getCtx(),getRecord_ID(),get_Trx());
		
		String NotAbleToRec = Msg.getMsg(getCtx(), "XX_ROLE_NOT_01_EXP");
		if(NotAbleToRec.contains(""+getCtx().getAD_Role_ID()) )
		{
			//Check si les lignes contiennent un article qui ne peut etre expédié par le role
			String sql = "Select able_exped from ( " + 
					"Select (case when mp.xx_role_able_exped='Y' then 'Y' " + 
					"                    when zsf.xx_role_able_exped ='Y' then 'Y' " + 
					"                     when mpc.xx_role_able_exped='Y' then 'Y' else 'N' end) as able_exped, "
					+ "mil.C_Order_ID from C_OrderLine mil  " + 
					"inner join M_Product mp on mp.M_Product_ID = mil.M_Product_ID " + 
					"inner join m_product_category mpc on mpc.m_product_category_id = mp.m_product_category_id " + 
					"left join z_s_famille zsf on zsf.z_s_famille_id = mp.z_s_famille_id where mil.QTYTODELIVER <> 0 "+
					"and exists (select 1 from M_Warehouse where M_Warehouse.Value like '%-01%' " + 
					"and M_Warehouse.M_Warehouse_ID = mil.M_Warehouse_ID)) " + 
					"where C_Order_ID = ? " + 
					"group by able_exped, C_Order_ID " + 
					"order by able_exped ASC ";
			
			String notProcess = org.compiere.util.QueryUtil.getSQLValueString(get_Trx(), sql, ord.getC_Order_ID());
			if(notProcess!=null && notProcess.equals("N"))
			{
				String msg = Msg.getMsg(getCtx(), "XX_ROLE_NOT_01_EXP_M");
				m_processMsg  = msg;
			}
			
		}
		
		int ok = 0;
		
		if (ord.IsShipByEBsoft()) {

			StringBuffer prepSql = new StringBuffer("update c_orderline set qtyToDeliver = qtyEntered where c_orderline_id in  ")
			.append("(select ol.c_orderline_ID from c_orderline ol ")
			.append("inner join c_order o on o.c_order_id = ol.c_order_id ")
			.append("inner join m_product p on p.m_product_id = ol.m_product_id ")
			.append("where o.c_order_id = ? and   p.ProductType = 'S' ) ");

			DB.executeUpdate(prepSql.toString(), getRecord_ID(), get_Trx());
		}
		
		String wClause = " AND QTYTODELIVER <> 0 ";
		
		
		ArrayList<MOrderShip> ships= ord.getPreparedShipLines(wClause," ol.M_Warehouse_ID ");
		if (ships.size() == 0 ){
			addLog("Pas d'expédition à générer");  
			return null;
		}
		ArrayList<MInOut> mis = new ArrayList<MInOut>();
		int warehouse_ID = 0;
		MInOut io = null;
		MOrderShip mos = null;
		for (int i = 0; i < ships.size(); i++) {
			mos = ships.get(i);
			if(notAbleToExp(mos.getC_OrderLine_ID()) && NotAbleToRec.contains(""+getCtx().getAD_Role_ID()))
				continue;
			if(warehouse_ID!=mos.getM_Warehouse_ID())
			{
				io= new MInOut(ord,0,new java.sql.Timestamp(System.currentTimeMillis()));
				io.setM_Warehouse_ID(mos.getM_Warehouse_ID());
				io.save(get_Trx());
				warehouse_ID=mos.getM_Warehouse_ID();
				ok = ok + 1;
				mis.add(io);
			}
		
		generateShip(io,mos);
		}
		
		for (int i = 0; i < mis.size(); i++) {
			
			boolean successShip = DocumentEngine.processIt(mis.get(i), DocActionConstants.ACTION_Complete);
			mis.get(i).save(get_Trx());
		
		}
			OrderUtil.genInvOderShip(getCtx(), ord, get_Trx()) ; 
		
			
			/*
			// Générate Invoice
			MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), ord.getC_DocTypeTarget_ID(), get_Trx());
//			EggoCtx.setConstants();
			if (dti != null && successShip && dti.isCuisine() &&  (dti.isDirect() //MERGE
					|| dti.isExpo() //MERGE
					|| dti.isStore() //MERGE
					|| dti.isSAV() //MERGE
					//|| ord.getC_DocTypeTarget_ID() == getCtx().getContextAsInt("#TYPEDOC_VENTESAV_P_ID") //MERGE
					//|| ord.getC_DocTypeTarget_ID() == getCtx().getContextAsInt("#TYPEDOC_VENTEOLDSAV_ID") //MERGE
					|| dti.isPlacard())) //MERGE
			{
				
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

			}
			//Appel Processus GenerateInvProm
			int AD_Process_ID = DB.getSQLValue(get_Trx(),"select ad_process_id from ad_process where value ='GenerateInvoiceProm' ");
			ProcessStarter pstart = new ProcessStarter(getCtx(), AD_Process_ID, get_Trx());
	    	pstart.addParameter("C_Order_ID", getRecord_ID(), null);
	    	try {
				pstart.start();
	    	}
		 catch (Exception e) {
			throw new CompiereException("Le processus Creation Facture Prom/NC est en echec");
		}
			
			
	        
		}
			 */
		if(m_processMsg==null)
			m_processMsg= ok+" exped Create";
		else
			m_processMsg=m_processMsg+", "+ok+" exped Create";
		return m_processMsg ;
	}	//	doIt



	public void generateShip(MInOut io, MOrderShip sh) {


		MInOutLine iol = new MInOutLine(io);
		iol.setM_Product_ID(sh.getM_Product_ID());
		iol.setQty(sh.getQtyToDeliver());
		iol.setC_OrderLine_ID(sh.getC_OrderLine_ID());
		iol.setM_Locator_ID(sh.getM_Locator_ID());
		sh.setQtyToDeliver(BigDecimal.ZERO);
		iol.save(get_Trx());
		sh.save(get_Trx());
	}

	private boolean notAbleToExp (int orderLine_ID)
	{
		String sql = "Select able_exped from ( " + 
				"Select (case when mp.xx_role_able_exped='Y' then 'Y' " + 
				"                    when zsf.xx_role_able_exped ='Y' then 'Y' " + 
				"                     when mpc.xx_role_able_exped='Y' then 'Y' else 'N' end) as able_exped, "
				+ "mil.C_OrderLine_ID from C_OrderLine mil  " + 
				"inner join M_Product mp on mp.M_Product_ID = mil.M_Product_ID " + 
				"inner join m_product_category mpc on mpc.m_product_category_id = mp.m_product_category_id " + 
				"left join z_s_famille zsf on zsf.z_s_famille_id = mp.z_s_famille_id WHERE  "
				+ " exists (select 1 from M_Warehouse where M_Warehouse.Value like '%-01%' " + 
				"and M_Warehouse.M_Warehouse_ID = mil.M_Warehouse_ID)) " + 
				"where C_OrderLine_ID = ?  " + 
				"group by able_exped, C_OrderLine_ID " + 
				"order by able_exped ASC ";
		
		String notProcess = org.compiere.util.QueryUtil.getSQLValueString(get_Trx(), sql, orderLine_ID);
		if(notProcess==null)
			return false;
		return notProcess.equals("N")?true:false;
	}

}