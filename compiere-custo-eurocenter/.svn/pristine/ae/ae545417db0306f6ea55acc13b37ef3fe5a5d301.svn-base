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
import java.sql.*;
import java.util.logging.*;

import org.compiere.model.*;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.*;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.proxy.MOrgInfoProxy;
import com.ecenter.compiere.util.EggoCtx;


/**
 *	Order Batch Processing
 *	
 *  @author JBR
 *  @version $Id: OrderBatchProcess.java,v 1.2 2006/07/30 00:51:02 jjanke Exp $
 */
public class POFrancoInErr extends SvrProcess
{
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
			//			else if (name.equals("AD_Org_ID"))
			//				p_AD_Org_ID = element.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			DB.executeUpdate("delete from T_POInFranco ", get_Trx());
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
		//		log.info("p_AD_Org_ID=" + p_AD_Org_ID + ", p_C_BPartner_ID=" + p_C_BPartner_ID );
//		EggoCtx.setConstants();
		String sqld = "delete FROM T_POINFRANCO";
		DB.executeUpdate(sqld, get_Trx());


		// Bcl sur les Org	
		PreparedStatement pstmto = null;
		ResultSet rso = null;
		int counter = 0;
		int errCounter = 0;

		MOrgInfoProxy oip =null;
		StringBuffer sqlo = new StringBuffer("SELECT ad_org_id FROM ad_org o where IsActive  = 'Y' ");
		try{
			pstmto = DB.prepareStatement(sqlo.toString(), get_TrxName());
			rso = pstmto.executeQuery();
			while (rso.next())
			{
				oip = new MOrgInfoProxy(MOrgInfo.get(getCtx(), rso.getInt(1), (Trx) null));
				if(!oip.isPOS())
					continue;
				// Select C_BPartner Concern
				//Ne prendre que les types de doc achat flagué pour le POS ! //MERGE
				StringBuffer sql = new StringBuffer("SELECT Distinct o.AD_Org_ID, o.C_BPartner_ID FROM C_Order o "
						+ " INNER JOIN C_DOCTYPEINFO on (C_DOCTYPEINFO.C_DOCTYPE_ID = o.C_DOCTYPE_ID and C_DOCTYPEINFO.IsPOS = 'Y') "
						+ " INNER JOIN C_BPartner bp on bp.c_bpartner_id = o.c_bpartner_id "
						+ " WHERE o.isSoTrx = 'N' AND bp.FrancoAmtQty <> 0  AND o.DocStatus in ('DR','IP','IN') ");
				sql.append(" AND o.AD_Org_ID= ? ");
				if (p_C_BPartner_ID != 0)
					sql.append(" AND o.C_BPartner_ID=").append(p_C_BPartner_ID);
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				try
				{
					pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
					pstmt.setInt(1, rso.getInt(1));//MERGE
					rs = pstmt.executeQuery();
					while (rs.next())
					{
						// Check Supplier Franco
						// S533 - Check Franco for Purchase Order
						MBPartner bp = new MBPartner(getCtx(),rs.getInt("C_BPartner_ID"),get_Trx());
						if (bp.get_ValueAsBigDecimal("FrancoAmtQty") == null ) continue;
						if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(BigDecimal.ZERO) != 0 ){
							if ("Y".equalsIgnoreCase(bp.get_ValueAsString("IsFrancoQty"))){
								BigDecimal totQty = getTotalQty(0, rs.getInt(1), rs.getInt(2)); //MERGE
								if (totQty != null) {
								if ( bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(totQty) == 1){
									putSupplierInErrFranco("Y",0, rs.getInt(1), rs.getInt(2),bp.get_ValueAsBigDecimal("FrancoAmtQty"),totQty,BigDecimal.ZERO);//MERGE

								}	
								}
							}
							else {  // Franco Montant
								BigDecimal totamt = getTotalLines(0,rs.getInt(1), rs.getInt(2));//MERGE
								if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(totamt) == 1){
									putSupplierInErrFranco("N",0, rs.getInt(1), rs.getInt(2),bp.get_ValueAsBigDecimal("FrancoAmtQty"),BigDecimal.ZERO,totamt);//MERGE
								}	
							}
						}
						// S533 - Check Franco for Purchase Order
					}	// While
				}
				catch (Exception e)
				{
					log.log(Level.SEVERE, sql.toString(), e);
				}
                finally{
        			Util.closeCursor(pstmt, rs);
        		}
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sqlo.toString(), e);
		}
        finally{
			Util.closeCursor(pstmto, rso);
		}


	get_Trx().commit();
	return "@Updated@=" + counter + ", @Errors@=" + errCounter;
}	//	doIt




private BigDecimal getTotalLines(int EC_ID, int OrgID, int BPartner_ID) {
	String sql = "select sum(totalLines) from c_order where issotrx = 'N' and docstatus in ('DR','IP','IN') and ad_org_id= " + OrgID + "  AND C_BPartner_ID= ? ";
	return DB.getSQLValueBD(get_Trx(), sql, BPartner_ID);
}


private BigDecimal getTotalQty(int EC_ID, int OrgID, int BPartner_ID) {
	String sql = " select sum(ol.qtyordered) from c_orderline ol inner join m_product p on p.m_product_id = ol.m_product_id where p.isstocked = 'Y' " +
			"and c_order_id  in ( " +
			"select c_order_id from c_order where issotrx = 'N' and docstatus in ('DR','IP','IN') and ad_org_id= " + OrgID + "  AND C_BPartner_ID= ? ) ";
	return DB.getSQLValueBD(get_Trx(), sql, BPartner_ID);
}





private void putSupplierInErrFranco(String IsFrancoQty, int EC_ID, int OrgID, int BPartner_ID, BigDecimal FRANCOAMTQTY,BigDecimal QTYENTERED,BigDecimal TOTALLINES) {
	String sql = "select * from c_order where issotrx = 'N' and docstatus in ('DR','IP','IN') and ad_org_id= " + OrgID  + " AND C_BPartner_ID= ? ";
	String sqli = "";
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try
	{
		pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
		pstmt.setInt(1, BPartner_ID);
		rs = pstmt.executeQuery();
		while (rs.next())
		{
			// INSERT IN ERROR TABLE
			sqli = "Insert into T_POINFRANCO (AD_CLIENT_ID,AD_ORG_ID,AD_ORGTRX_ID,C_BPARTNER_ID,C_ORDER_ID,CREATED,CREATEDBY,FRANCOAMTQTY, " +
					"ISACTIVE,ISFRANCOQTY,QTYENTERED,TOTALLINES,UPDATED,UPDATEDBY) " +
					" values ( " +
					rs.getInt("AD_Client_ID") + ", 0,"  + rs.getInt("AD_Org_ID") + "," + rs.getInt("C_BPartner_ID") + "," + rs.getInt("C_Order_ID") + ",SYSDATE," + rs.getInt("CREATEDBY") + "," + FRANCOAMTQTY +  
					",'Y','" + IsFrancoQty + "'," + QTYENTERED + "," + TOTALLINES + ",SYSDATE," + rs.getInt("CREATEDBY") + 
					") ";
			DB.executeUpdate(sqli, get_Trx());
		}
	}
	catch (Exception e)
	{
		log.log(Level.SEVERE, sql.toString(), e);
	}
    finally{
		Util.closeCursor(pstmt, rs);
	}
}

}	//	OrderBatchProcess
