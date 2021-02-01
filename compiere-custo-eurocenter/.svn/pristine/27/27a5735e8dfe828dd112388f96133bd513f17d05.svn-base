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

import java.awt.geom.*;
import java.math.*;
import java.sql.*;
import java.util.logging.*;

import org.compiere.model.*;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.*;

import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.util.CompiereException;

/**
 *	Generate PO from Sales Order
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class ComputeSOPOMargin extends SvrProcess
{
	/**	Sales Order			*/
	private int			p_C_Order_ID;

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
		BigDecimal totpo = BigDecimal.ZERO;
		BigDecimal totso = BigDecimal.ZERO;
		BigDecimal totsoTax = BigDecimal.ZERO;

		BigDecimal margin = BigDecimal.ZERO;
		BigDecimal marginpl = BigDecimal.ZERO;
		
		
		StringBuffer sql = new StringBuffer( "SELECT nvl(sum(pol.linenetamt),0) " 
		.concat("from c_orderline pol ")
		.concat("inner join c_order po on po.c_order_id = pol.c_order_id ")
		.concat("inner join c_orderline sol on sol.c_orderline_id = pol.ref_orderline_id ")
		.concat("inner join c_order so on so.c_order_id = sol.c_order_id ")
		.concat("where pol.ref_orderline_id > 0  ")
		.concat("and so.c_order_id = ? ") ); 
		totpo = DB.getSQLValueBD(get_Trx(), sql.toString(), getRecord_ID());
		
		sql = new StringBuffer( "SELECT nvl(grandTotal,0) " 
		.concat("from c_order  ")
		.concat("where c_order_id = ? ") ); 
		totso = DB.getSQLValueBD(get_Trx(), sql.toString(), getRecord_ID());
		

		sql = new StringBuffer( "SELECT nvl(sum(taxamt),0) " 
		.concat("from c_ordertax  ")
		.concat("where c_order_id = ? ") ); 
		totsoTax = DB.getSQLValueBD(get_Trx(), sql.toString(), getRecord_ID());
		
		
		
		sql = new StringBuffer(
		" SELECT nvl(pricelist,0) from M_ProductPrice where "
		.concat(" M_PriceList_Version_ID = getPriceListLastVersionPrice(1000013,?, ?) ")
		.concat(" and m_product_id = ? " ) ) ;
		
		
		BigDecimal totl = BigDecimal.ZERO;
		BigDecimal val = BigDecimal.ZERO;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		MOrder ord = new MOrder(getCtx(),getRecord_ID(),get_Trx());
		MOrderLine[] lines = ord.getLines();
		for (int i = 0; i < lines.length; i++) {
			if (lines[i].getM_Product_ID() > 0){
				try
				{
					pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
					pstmt.setInt (1, lines[i].getM_Product_ID());
					pstmt.setTimestamp(2, ord.getDateOrdered());
					pstmt.setInt (3, lines[i].getM_Product_ID());
					rs = pstmt.executeQuery();
					if (rs.next()){
						val = rs.getBigDecimal(1).multiply(lines[i].getQtyEntered());
						totl = totl.add(val);
					} 
				}
		
				catch (SQLException e)
				{
					log.log(Level.SEVERE, sql.toString(), e);
				}	
				finally{
					DB.closeResultSet(rs);
					DB.closeStatement(pstmt);
					pstmt = null;
				}
			}
		}
		
		margin = totso.subtract(totsoTax.add(totpo));
		
		marginpl = totso.subtract(totsoTax.add(totl));
		
		Object[] params = {margin, marginpl, getRecord_ID()};
		int upd = DB.executeUpdate("update c_order set marginamt = ? , marginamtpl = ? where C_Order_ID = ? ", params, get_Trx());
		

		
		return "SO : " + totso.subtract(totsoTax) +  " PO : " + totpo + " Marge réelle : " + margin + " Marge théorique : " + marginpl ;
	}	//	doIt

}	
