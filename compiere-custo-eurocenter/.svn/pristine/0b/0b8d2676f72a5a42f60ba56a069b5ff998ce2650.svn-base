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
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderStep;
import com.audaxis.compiere.model.MOrderVendorStep;
import com.audaxis.compiere.util.CompiereException;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class MajOrderVendorStatus extends SvrProcess
{
	String p_NewOrderStatus = "";
	String p_Desc = "";
	

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
			else if (name.equals("Z_OrderVendorStepStatus"))
				p_NewOrderStatus = (String)element.getParameter();
			else if (name.equals("Description"))
				p_Desc = (String)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);

			if (p_NewOrderStatus == null) throw new CompiereException("Status invalide");
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
		// Création d'une nouvelle ligne dans la table Z_OrderStep
		MOrder order = new MOrder(getCtx(),getRecord_ID(),get_Trx());
		
		if(p_NewOrderStatus== null)
			return "No changed";
		//100764
		//AD_REFERENCE_ID=1001293
		if(p_NewOrderStatus.equals(order.get_Value("Z_OrderStepStatus")) )
		{
			return Msg.getMsg(getCtx(), "EGGO_FLUX_NO_CH_ERROR");
		}
		
		if(order.get_Value("Z_OrderStepStatus").equals("36") && p_NewOrderStatus.equals("24"))
		{
			BigDecimal soldes  = DB.getSQLValueBD(get_Trx(), "select (getSoldeOrder(?)) from dual", getRecord_ID());
			order = new MOrder(getCtx(),getRecord_ID(),get_Trx());
			if(soldes.abs().doubleValue()>1 || order.getLines(" AND IsActive = 'Y' AND QTYDELIVERED <> QTYORDERED ", null).length>0)
			{
				return Msg.getMsg(getCtx(), "EGGO_CLOCOM_ERROR2");
			}
		}
		
		if(p_NewOrderStatus.equals("24") )
		{
			BigDecimal soldes  = DB.getSQLValueBD(get_Trx(), "select (getSoldeOrder(?)) from dual", getRecord_ID());
			order = new MOrder(getCtx(),getRecord_ID(),get_Trx());
			if(!soldes.equals(Env.ZERO) && order.getLines(" AND IsActive = 'Y' AND QTYDELIVERED <> QTYORDERED ", null).length>0)
			{
				return Msg.getMsg(getCtx(), "EGGO_CLOCOM_ERROR");
			}
		}
		//108014
		//14 16 20 22 24 36
		//if(p_NewOrderStatus.equals("16") || p_NewOrderStatus.equals("14")|| p_NewOrderStatus.equals("20")
		//		|| p_NewOrderStatus.equals("22")|| p_NewOrderStatus.equals("24")|| p_NewOrderStatus.equals("36"))
		if((p_NewOrderStatus.equals("16") && order.get_Value("Z_OrderStepStatus").equals("14")))
		{
			int xx = DB.getSQLValue(get_Trx(), "select 1 from Z_ORDERPAYMSCHEDULE zop "
					+ "inner join Z_TYPEECHEANCE zte on zte.Z_TYPEECHEANCE_ID = zop.Z_TYPEECHEANCE_ID "
					+ "where zte.ISPROM = 'Y' and C_Order_ID = ? and (zop.Z_COMPLET is null OR zop.Z_COMPLET = 'N' OR zop.Z_DATEENVCONT is null)", order.getC_Order_ID());
			if(xx>0)
			{
				return Msg.getMsg(getCtx(), "EGGO_FLUX_16_14_ERROR");
			}
		}
		
		if(p_NewOrderStatus.equals("38") )
		{
			MDocTypeInfo mdi = MDocTypeInfo.get(getCtx(), order.getC_DocType_ID(), get_Trx());
			if(mdi.isSAV())
			{
				int no = order.getLines("QtyEntered <> 0 and IsActive = 'Y' ", null).length;
				if(no>0)
					return Msg.getMsg(getCtx(), "EGGO_FLUX_CANCEL");
			}
			
		}
		
		
		
		MOrderVendorStep step = new MOrderVendorStep(getCtx(), 0, get_Trx());
		step.setClientOrg(order.getAD_Client_ID(), order.getAD_Org_ID());
		step.setC_Order_ID(order.get_ID());
		step.setAD_User_ID(getAD_User_ID());
		step.setDateAction(new Timestamp(System.currentTimeMillis()));
		step.setDescription(p_Desc);
		step.setZ_OrderVendorStepStatus(p_NewOrderStatus);
		step.save(get_Trx());
		order.set_Value("Z_OrderStepStatus", p_NewOrderStatus);
		order.save(get_Trx());
		
		return "Status Changed";
	
	}	//	doIt




}