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

import java.math.BigDecimal;
import java.util.logging.Level;

import org.compiere.model.MDefaultWarehouse;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgPOS;
import org.compiere.model.MProject;
import org.compiere.model.MProjectLine;
import org.compiere.model.X_C_Project;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Ctx;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.pos.process.PosCtx;
import com.ecenter.compiere.util.EggoCtx;

/**
 *  Generate Sales Order from Project.
 *
 *	@author Jorg Janke
 *	@version $Id: ProjectGenOrder.java,v 1.3 2006/07/30 00:51:01 jjanke Exp $
 */
public class SavGenQuotation extends SvrProcess
{
	/**	Project ID from project directly		*/
	private int		m_C_Order_ID = 0;

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
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		m_C_Order_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perrform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		log.info("C_Order_ID=" + m_C_Order_ID);
		if (m_C_Order_ID == 0)
			throw new IllegalArgumentException("C_Order_ID == 0");
		MOrder fromOrder = getOrder(getCtx(), m_C_Order_ID, get_TrxName());
//		MProject fromProject = getProject (getCtx(), m_C_Order_ID, get_TrxName());
		getCtx().setIsSOTrx(true);	//	Set SO context
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), fromOrder.getAD_Org_ID(), get_Trx());
		/** @todo duplicate invoice prevention *///MERGE
		//PosCtx.getAD_Client_ID() = getCtx().getAD_Client_ID();
//		PosCtx.setConstants(getCtx(),get_Trx());
		MOrder order = new MOrder (getCtx(),0,get_TrxName());
		order.setAD_Client_ID(fromOrder.getAD_Client_ID());
		order.setAD_Org_ID(fromOrder.getAD_Org_ID());
		order.setC_BPartner_ID(fromOrder.getC_BPartner_ID());
		order.setC_DocType_ID(orgPOS.getDocType_Devis_ID());
		order.setC_DocTypeTarget_ID(orgPOS.getDocType_Devis_ID());
		order.setSalesRep_ID(fromOrder.getSalesRep_ID());
		order.setPOReference(fromOrder.getDocumentNo());
		int M_Warehouse_ID = MDefaultWarehouse.getM_Warehouse_ID(get_Trx(), orgPOS.getDocType_Devis_ID(), fromOrder.getAD_Org_ID(), fromOrder.getAD_Client_ID());
		if(M_Warehouse_ID!=0 && order.isSOTrx())
			order.setM_Warehouse_ID(M_Warehouse_ID!=0 && order.isSOTrx()?M_Warehouse_ID:fromOrder.getM_Warehouse_ID());
		if(order.save()){
			MOrderLine line = new MOrderLine(order);
			line.setLine(10);
			line.setM_Product_ID(orgPOS.getDefaultRepaProduct_ID());
			line.setQtyEntered(BigDecimal.ONE);
			if(!line.save())
				throw new Exception("Could not create OrderLine");
		}else{
			throw new Exception("Could not create Order");
		}
//		//	***	Lines ***
//		int count = 0;
//		
		//	Service Project	
//		if (X_C_Project.PROJECTCATEGORY_ServiceChargeProject.equals(fromProject.getProjectCategory()))
//		{
//			/** @todo service project invoicing */
//			throw new Exception("Service Charge Projects are on the TODO List");
//		}	//	Service Lines
		
		
//
//		MProjectLine[] lines = fromProject.getLines ();
//		for (MProjectLine element : lines) {
//			MOrderLine ol = new MOrderLine(order);
//			ol.setLine(element.getLine());
//			ol.setDescription(element.getDescription());
//			//
//			ol.setM_Product_ID(element.getM_Product_ID(), true);
//			ol.setQty(element.getPlannedQty().subtract(element.getInvoicedQty()));
//			ol.setPrice();
//			if (element.getPlannedPrice() != null && element.getPlannedPrice().compareTo(Env.ZERO) != 0)
//				ol.setPrice(element.getPlannedPrice());
//			ol.setDiscount();
//			ol.setTax();
//			if (ol.save())
//				count++;
//		}	//	for all lines
//		if (lines.length != count)
//			log.log(Level.SEVERE, "Lines difference - ProjectLines=" + lines.length + " <> Saved=" + count);
//		}	//	Order Lines

		// touch order to recalculate tax and totals
		order.save();
		fromOrder.set_Value("isQuotGenerated",Boolean.TRUE);
		
		//76101
		fromOrder.set_ValueNoCheck("Z_Devis_ID", order.getC_Order_ID());
		
		fromOrder.save();

		return "Devis : "+order.getDocumentNo();
	}	//	doIt

	/**
	 * 	Get and validate Project
	 * 	@param ctx context
	 * 	@param C_Order_ID id
	 * 	@return valid project
	 * 	@param trx transaction
	 */
	static protected MOrder getOrder (Ctx ctx, int C_Order_ID, Trx trx)
	{
		MOrder fromOrder= new MOrder(ctx, C_Order_ID, trx);
		if (fromOrder.getC_Order_ID() == 0)
			throw new IllegalArgumentException("Order not found C_Order_ID=" + C_Order_ID);
		if (fromOrder.getM_Warehouse_ID() == 0)
			throw new IllegalArgumentException("Order has no Warehouse");
		if (fromOrder.getC_BPartner_ID() == 0 || fromOrder.getC_BPartner_Location_ID() == 0)
			throw new IllegalArgumentException("Order has no Business Partner/Location");
		return fromOrder;
	}	//	getOrder

}	//	ProjectGenOrder
