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
package org.compiere.process;

import java.math.BigDecimal;
import java.sql.*;
import java.util.logging.*;

import org.compiere.model.*;
import org.compiere.util.*;
import org.compiere.vos.DocActionConstants;

import com.ecenter.compiere.util.EggoCtx;


/**
 *	Order Batch Processing
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderBatchProcess.java,v 1.2 2006/07/30 00:51:02 jjanke Exp $
 */
public class POBatchProcess extends SvrProcess
{
	private int			p_AD_Org_ID = 0;
	private int			p_C_BPartner_ID = 0;

	/**
	 * 	Prepare
	 */
	@Override
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = element.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Process
	 *	@return msg
	 *	@throws Exception
	 */
	@Override
	protected String doIt () throws Exception
	{
		String m_processMsg;
		log.info("p_AD_Org_ID=" + p_AD_Org_ID + ", p_C_BPartner_ID=" + p_C_BPartner_ID );
//		EggoCtx.setConstants();

		//		if (p_AD_Org_ID == 0)
		//			throw new CompiereUserException("@NotFound@: @p_AD_Org_ID@");
		//		if (p_C_BPartner_ID == 0)
		//			throw new CompiereUserException("@NotFound@: @p_C_BPartner_ID@");



		log.info("p_AD_Org_ID=" + p_AD_Org_ID + ", p_C_BPartner_ID=" + p_C_BPartner_ID );
//		EggoCtx.setConstants();
		// Reset IsCreditApproved ( to enable prepare on MOrder )
		StringBuffer upd = new StringBuffer("update C_Order set isCreditApproved = 'N' "
				+ "WHERE isSoTrx = 'N' AND DocStatus in ('DR','IP','IN') " 
				+ " and 0=? and exists (Select 1 from AD_OrgInfo where AD_OrgInfo.AD_Org_ID = C_Order.AD_org_ID and AD_OrgInfo.IsPOS = 'Y' and AD_OrgInfo.IsActive='Y' ) "
		+ " AND exists (Select 1 from C_DocTypeInfo cdti where cdti.ISActive = 'Y' and cdti.C_DocType_ID = C_Order.C_DocType_ID and cdti.IsZPOBatch = 'Y' ) ");
		if (p_AD_Org_ID != 0)
			upd.append(" AND AD_Org_ID=").append(p_AD_Org_ID);
		if (p_C_BPartner_ID != 0)
			upd.append(" AND C_BPartner_ID=").append(p_C_BPartner_ID);
		
		
		int no = DB.executeUpdate(upd.toString(), 0, get_Trx());//MERGE

		
		
		
		// Select C_BPartner Concern
		StringBuffer sql = new StringBuffer("SELECT Distinct AD_Org_ID, C_BPartner_ID FROM C_Order "
				+ "WHERE isSoTrx = 'N' AND DocStatus in ('DR','IP','IN') " 
				+ " and 0=? AND exists (Select 1 from AD_OrgInfo where AD_OrgInfo.AD_Org_ID = C_Order.AD_org_ID and AD_OrgInfo.IsPOS = 'Y' and AD_OrgInfo.IsActive='Y' ) "
		+ " AND exists (Select 1 from C_DocTypeInfo cdti where cdti.ISActive = 'Y' and cdti.C_DocType_ID = C_Order.C_DocType_ID and cdti.IsZPOBatch = 'Y' ) ");
		if (p_AD_Org_ID != 0)
			sql.append(" AND AD_Org_ID=").append(p_AD_Org_ID);
		if (p_C_BPartner_ID != 0)
			sql.append(" AND C_BPartner_ID=").append(p_C_BPartner_ID);
		int counter = 0;
		int errCounter = 0;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			//pstmt.setString(1, MOrder.DOCSTATUS_Completed);
			pstmt.setInt(1, 0);//MERGE
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				// Check Supplier Franco
				// S533 - Check Franco for Purchase Order
				MBPartner bp = new MBPartner(getCtx(),rs.getInt(2),get_Trx());
				if (bp == null ) return "Fournisseur Invalide";
				if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(BigDecimal.ZERO) != 0 ){
					if ("Y".equalsIgnoreCase(bp.get_ValueAsString("IsFrancoQty"))){

						if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(getTotalQty(0, rs.getInt(1),bp.getC_BPartner_ID())) == 1){//MERGE
							m_processMsg = "La quantité franco fournisseur n'est pas respectée : " + bp.get_ValueAsBigDecimal("FrancoAmtQty");
							continue;
						}	
					}
					else {  // Franco Montant

						if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(getTotalLines(0,rs.getInt(1),bp.getC_BPartner_ID())) == 1){//MERGE
							m_processMsg = "Le montant franco fournisseur n'est pas atteind : " + bp.get_ValueAsBigDecimal("FrancoAmtQty");
							continue;
						}	
					}

				}
				// S533 - Check Franco for Purchase Order




				//
				StringBuffer sql1 = new StringBuffer("SELECT * FROM C_Order "
						+ "WHERE isSoTrx = 'N' AND DocStatus in ('DR','IP','IN') "
						+ " AND exists (Select 1 from C_DocTypeInfo cdti where cdti.ISActive = 'Y' and cdti.C_DocType_ID = C_Order.C_DocType_ID and cdti.IsZPOBatch = 'Y' ) "
						+ " AND AD_Org_ID=? "
						+ " AND C_BPartner_ID=? and exists(Select 1 from C_OrderLine where C_Order.C_Order_ID = C_OrderLine.C_Order_ID) "
						);
				
				
				StringBuffer upd1 = new StringBuffer("update C_Order set isCreditApproved = 'Y' "
						+ "WHERE isSoTrx = 'N' AND DocStatus in ('DR','IP','IN') " 
						+ " AND exists (Select 1 from C_DocTypeInfo cdti where cdti.ISActive = 'Y' and cdti.C_DocType_ID = C_Order.C_DocType_ID and cdti.IsZPOBatch = 'Y' ) "
						+ " AND AD_Org_ID=? "
						+ " AND C_BPartner_ID=? and exists(Select 1 from C_OrderLine where C_Order.C_Order_ID = C_OrderLine.C_Order_ID) "
						);
				int no1 = DB.executeUpdate(upd1.toString(), new Object[] {rs.getInt(1), rs.getInt(2)}, get_Trx()  );//MERGE

				int counter1 = 0;
				int errCounter1 = 0;
				PreparedStatement pstmt1 = null;
				try
				{
					pstmt1 = DB.prepareStatement(sql1.toString(), get_Trx());
					//pstmt1.setString(1, MOrder.DOCSTATUS_Completed);
					//pstmt1.setInt(1, 1000022);//MERGE
					pstmt1.setInt(1, rs.getInt(1));
					pstmt1.setInt(2, rs.getInt(2));
					ResultSet rs1 = pstmt1.executeQuery();
					while (rs1.next())
					{
						if (process(new MOrder(getCtx(),rs1, get_Trx())))
							counter++;
						else
							errCounter++;
					}
					rs1.close();
					pstmt1.close();
					pstmt1 = null;
				}
				catch (Exception e)
				{
					log.log(Level.SEVERE, sql.toString(), e);
				}
				try
				{
					if (pstmt1 != null)
						pstmt1.close();
					pstmt1 = null;
				}
				catch (Exception e)
				{
					pstmt1 = null;
				}

			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}


		return "@Updated@=" + counter + ", @Errors@=" + errCounter;
	}	//	doIt

	/**
	 * 	Process Order
	 *	@param order order
	 *	@return true if ok
	 */
	private boolean process (MOrder order)
	{
		log.info(order.toString());
		//
		order.setDocAction(MOrder.DOCACTION_Complete);

		if (DocumentEngine.processIt(order, MOrder.DOCACTION_Complete))
		{
			order.save();
			commit();
			addLog(0, null, null, order.getDocumentNo() + ": OK");
			return true;
		}
		else
		{
			String status = order.getDocStatus();
			rollback();
			order.load(get_Trx());
			order.setDocStatus(status);
			order.save();
			commit();
		}
		addLog (0, null, null, order.getDocumentNo() + ": Error " + order.getProcessMsg());
		return false;
	}	//	process


	private BigDecimal getTotalLines(int EC_ID, int l_org_ID, int bpID) {
		String sql = "select nvl(sum(totalLines),0) from c_order where issotrx = 'N' " 
				+ " AND exists (Select 1 from C_DocTypeInfo cdti where cdti.ISActive = 'Y' and cdti.C_DocType_ID = C_Order.C_DocType_ID and cdti.IsZPOBatch = 'Y' ) "
				+ "and exists(Select 1 from C_OrderLine where C_Order.C_Order_ID = C_OrderLine.C_Order_ID) and docstatus in ('DR','IP','IN') " +
				"and ad_org_id= " + l_org_ID + "  AND C_BPartner_ID= ? ";
		return DB.getSQLValueBD(get_Trx(), sql, bpID);
	}


	private BigDecimal getTotalQty(int EC_ID, int l_org_ID, int bpID) {
		String sql = " select nvl(sum(ol.qtyentered),0) from c_orderline ol inner join m_product p on p.m_product_id = ol.m_product_id where p.isstocked = 'Y' and c_order_id  in ( " +
				"select c_order_id from c_order where issotrx = 'N' and docstatus in ('DR','IP','IN') and ad_org_id= " + l_org_ID + "  AND C_BPartner_ID= ? + AND exists (Select 1 from C_DocTypeInfo cdti where cdti.ISActive = 'Y' and cdti.C_DocType_ID = C_Order.C_DocType_ID and cdti.IsZPOBatch = 'Y' ))  ";
		return DB.getSQLValueBD(get_Trx(), sql, bpID);
	}


}	//	OrderBatchProcess
