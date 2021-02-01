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

import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;
import com.audaxis.compiere.pos.process.TransactionMessageProcessor;
import com.audaxis.compiere.util.CompiereException;
import com.ecenter.compiere.util.EggoCtx;

/**
 *	Generate Payment from Sales Order ( If Invoiced & no Payment Exist)
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GenerateConsignRet extends SvrProcess
{

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
		String docGen = "";
		MOrder ord = new MOrder(getCtx(),getRecord_ID(),get_Trx());
		//  Ordre de consignation 
		if (ord.isSOTrx()){
			MDocType doctype = new MDocType(getCtx(), ord.getC_DocTypeTarget_ID(),get_Trx());
			MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), ord.getC_DocTypeTarget_ID() , get_Trx());
			if (dti != null && "Y".equalsIgnoreCase(doctype.get_ValueAsString("IsConsignation")) 
				//&& (getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")))
				&& (dti.isCuisine())) // MERGE
			{
				 docGen = ord.generateConsignMvt(ord, true);
				 //TA
				 ord.setDocAction(MOrder.DOCACTION_Complete);
				 boolean success = DocumentEngine.processIt(ord, DocActionConstants.ACTION_Complete);
				 ord.save(get_Trx());
				 if (!success) throw new CompiereException(ord.getProcessMsg());
				 //TA
			}
		}
		if (docGen != null && ! docGen.isEmpty())
			return "Documents généré : " + docGen;
		else
			return "Plus d'articles en attente de retour";
	}	//	doIt




}