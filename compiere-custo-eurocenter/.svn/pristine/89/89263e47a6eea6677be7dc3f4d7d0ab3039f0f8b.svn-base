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

import java.sql.*;
import java.util.logging.*;

import org.compiere.model.*;
import org.compiere.util.*;


/**
 *	Order Batch Processing
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderBatchProcess.java,v 1.2 2006/07/30 00:51:02 jjanke Exp $
 */
public class RequisitionBatchProcess extends SvrProcess
{
	private int			p_C_DocType_ID = 0;
	private String 		p_DocStatus = null;
	private int			p_C_BPartner_ID = 0;
	private Timestamp	p_DateOrdered_From = null;
	private Timestamp	p_DateOrdered_To = null;
	private String 		p_DocAction = null;

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
			else if (name.equals("C_DocTypeTarget_ID"))
				p_C_DocType_ID = element.getParameterAsInt();
			else if (name.equals("DocStatus"))
				p_DocStatus = (String)element.getParameter();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = element.getParameterAsInt();
			else if (name.equals("DateRequired"))
			{
				p_DateOrdered_From = (Timestamp)element.getParameter();
				p_DateOrdered_To = (Timestamp)element.getParameter_To();
			}
			else if (name.equals("DocAction"))
				p_DocAction = (String)element.getParameter();
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
		log.info("C_DocType_ID=" + p_C_DocType_ID + ", DocStatus=" + p_DocStatus
			+ ", C_BPartner_ID=" + p_C_BPartner_ID
			+ ", DateOrdered=" + p_DateOrdered_From + "->" + p_DateOrdered_To
			+ ", DocAction=" + p_DocAction);
		
		if (p_C_DocType_ID == 0)
			throw new CompiereUserException("@NotFound@: @C_DocType_ID@");
		if (p_DocStatus == null || p_DocStatus.length() != 2)
			throw new CompiereUserException("@NotFound@: @DocStatus@");
		if (p_DocAction == null || p_DocAction.length() != 2)
			throw new CompiereUserException("@NotFound@: @DocAction@");
		
		//
		StringBuffer sql = new StringBuffer("SELECT * FROM M_Requisition "
			+ "WHERE C_DocType_ID=? AND DocStatus=?");
		if (p_C_BPartner_ID != 0)
			sql.append(" AND C_BPartner_ID=").append(p_C_BPartner_ID);
		if (p_DateOrdered_From != null)
			sql.append(" AND TRUNC(DateRequired,'DD') >= ").append(DB.TO_DATE(p_DateOrdered_From, true));
		if (p_DateOrdered_To != null)
			sql.append(" AND TRUNC(DateRequired,'DD') <= ").append(DB.TO_DATE(p_DateOrdered_To, true));
		
		int counter = 0;
		int errCounter = 0;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, p_C_DocType_ID);
			pstmt.setString(2, p_DocStatus);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				if (process(new MRequisition(getCtx(),rs, get_TrxName())))
					counter++;
				else
					errCounter++;
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
	private boolean process (MRequisition requisition)
	{
		log.info(requisition.toString());
		//
		requisition.setDocAction(p_DocAction);
		
		if (DocumentEngine.processIt(requisition, p_DocAction))
		{
			requisition.save();
			commit();
			addLog(0, null, null, requisition.getDocumentNo() + ": OK");
			return true;
		}
		else
		{
			String status = requisition.getDocStatus();
			rollback();
			requisition.load(get_Trx());
			requisition.setDocStatus(status);
			requisition.save();
			commit();
		}
		addLog (0, null, null, requisition.getDocumentNo() + ": Error " + requisition.getProcessMsg());
		return false;
	}	//	process
	
}	//	OrderBatchProcess
