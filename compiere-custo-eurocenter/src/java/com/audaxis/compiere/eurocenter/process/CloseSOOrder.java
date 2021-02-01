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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MOrderPaymScheduleLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class CloseSOOrder extends SvrProcess
{
	private int			p_C_DocTypeTarget_ID = 0;

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
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = element.getParameterAsInt();
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
		
		String seuil = DB.getSQLValueString(get_Trx(),"SELECT nvl(MsgText,0) from ad_message where value='EggoClAmount' and 1=?",1);
		BigDecimal ss = Env.ZERO;
		if(seuil!=null)
			ss = new BigDecimal(seuil.replace(",", "."));
		if(seuil == null || ss.doubleValue()<=0 )
			throw new CompiereException("Pas de seuil défini dans le message EggoClAmount ou <= à 0");
		String sql = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int nbrCL= 0;
		int notCL = 0;
		int notCO = 0;

		sql = 
		 "select distinct c_order_id from " +
		"( select o.c_order_id ,ol.C_OrderLine_ID, sum(ol.qtyentered) as ord , sum(ol.qtydelivered) as del , sum(ol.qtyinvoiced) as inv from c_order o " + 
		"  inner join c_orderline ol on ol.c_order_id = o.c_order_id " +
		"  where ( ABS(o.totalpaysched - o.grandtotal) <= ? or  " +
	   "   abs((NVL((SELECT SUM(i.payamt) FROM c_payment i WHERE i.c_order_id = o.c_order_id ),0)-NVL(o.Z_SOLDEGI,0)-NVL(o.Z_PayGI,0) " +
	    " -NVL((select sum(z.payamt) from Z_OrderVDPayment z WHERE z.C_Payment_ID = 0 and  z.C_Order_ID = o.c_order_id ),0)- o.grandtotal)) <= ? ) " +
		"  and o.C_DocType_ID = ? " + 
		"  and o.docstatus in ('IP','CO') " +
		"  group by o.c_order_id, M_Product_ID,ol.C_OrderLine_ID ) " +
     " where (ord = del OR ord = inv) and c_order_id not in  ( " +
      " select c_order_id from " +
		" ( select o.c_order_id ,ol.C_OrderLine_ID, sum(ol.qtyentered) as ord , sum(ol.qtydelivered) as del , sum(ol.qtyinvoiced) as inv from c_order o " + 
		"  inner join c_orderline ol on ol.c_order_id = o.c_order_id " +
		"  where ( ABS(o.totalpaysched - o.grandtotal) <= ? or  " +
	    "  abs((NVL((SELECT SUM(i.payamt) FROM c_payment i WHERE i.c_order_id = o.c_order_id ),0)-NVL(o.Z_SOLDEGI,0)-NVL(o.Z_PayGI,0) " +
	    "-NVL((select sum(z.payamt) from Z_OrderVDPayment z WHERE z.C_Payment_ID = 0 and  z.C_Order_ID = o.c_order_id ),0)- o.grandtotal)) <= ? ) " +
		"  and o.C_DocType_ID= ? " +   
		"  and o.docstatus in ('IP','CO')  " + 
		"  group by o.c_order_id, M_Product_ID,ol.C_OrderLine_ID )  " + 
		" where (ord <> del OR ord <> inv))" ; 


		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			int index = 1;
			pstmt.setBigDecimal(index++, ss);
			pstmt.setBigDecimal(index++, ss);
			if (p_C_DocTypeTarget_ID != 0)
				pstmt.setInt(index++, p_C_DocTypeTarget_ID);
			pstmt.setBigDecimal(index++, ss);
			pstmt.setBigDecimal(index++, ss);
			if (p_C_DocTypeTarget_ID != 0)
				pstmt.setInt(index++, p_C_DocTypeTarget_ID);
			rs = pstmt.executeQuery ();

			while (rs.next ())
			{
				try{
					MOrder order = new MOrder(getCtx(),rs.getInt(1),get_Trx());

					if (DocActionConstants.STATUS_InProgress.equalsIgnoreCase(order.getDocStatus())){// IP
						order.setDocAction(MOrder.DOCACTION_Complete);
						if (! DocumentEngine.processIt(order, DocActionConstants.ACTION_Complete) ) {

							notCO = notCO + 1;
						}
						else order.save(get_Trx());
					}

					if (DocActionConstants.STATUS_Completed.equalsIgnoreCase(order.getDocStatus())){// CO -> CL

						if ( DocumentEngine.processIt(order, DocActionConstants.ACTION_Close) ) {
							order.save(get_Trx());
							get_Trx().commit();
							nbrCL = nbrCL + 1;
						}	
						else
						{
							notCL = notCL + 1;
						}
					}

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

		return "Commande Cloturée : " + nbrCL + " Non Traitée : " + notCO + " Non Cloturée : " + notCL;
	}	//	doIt

}