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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.ws.WSUtil;
import com.audaxis.compiere.model.MOrderStep;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class AutoStep36To24 extends SvrProcess
{
	private int			p_client_id = 0;
	private int			p_order_id = 0;

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
			else if (name.equals("AD_Client_ID"))
				p_client_id = element.getParameterAsInt();
			else if (name.equals("C_Order_ID"))
				p_order_id = element.getParameterAsInt();
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
		String sql = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int nbrCL= 0;
		int notCL = 0;
		int notCO = 0;

		sql = 
		 "Select co.C_order_ID from c_order co where co.issotrx = 'Y' and co.z_orderstepstatus = '36' " + 
		 "and not exists (select 1 from C_Orderline col where col.C_Order_ID = co.C_Order_ID and (col.QtyOrdered <> col.QtyDelivered OR col.QtyOrdered <> col.QtyInvoiced ) AND col.IsActive = 'Y')" + 
		 "and getSoldeOrder(co.c_order_id) between -1 and 1 and co.AD_Client_ID = ? " ;
		if(p_order_id>0)
			sql = sql+" and co.C_Order_ID = ? "; 

		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			int index = 1;
			pstmt.setInt(index++, p_client_id);
			if(p_order_id>0)
				pstmt.setInt(index++, p_order_id);
			rs = pstmt.executeQuery ();

			while (rs.next ())
			{
				try{
					MOrder order = new MOrder(getCtx(),rs.getInt(1),get_Trx());
					MOrderStep step = new MOrderStep(getCtx(), 0, get_Trx());
					step.setClientOrg(order.getAD_Client_ID(), order.getAD_Org_ID());
					step.setC_Order_ID(order.get_ID());
					step.setAD_User_ID(getAD_User_ID());
					step.setDateAction(new Timestamp(System.currentTimeMillis()));
					step.setDescription("Auto update step ");
					step.setZ_OrderStepStatus(""+24);
					step.set_ValueNoCheck("Z_AD_org_ID", order.get_Value("Z_AD_org_ID"));
					step.save(get_Trx());
					order.set_Value("Z_OrderStepStatus", ""+24);
					order.save(get_Trx());
					nbrCL++;
					
					WSUtil.majStepStatus(getCtx(), order, ""+36, ""+24, get_Trx());

				}catch (Exception e)
				{
					log.info(e.getMessage());
				}
			}	//	for all orders
			
		}
		catch (Exception e)
		{
			
			throw e;
		}finally{
			Util.closeCursor(pstmt, rs);
		}

		return "Nb "+nbrCL;
	}	//	doIt

}