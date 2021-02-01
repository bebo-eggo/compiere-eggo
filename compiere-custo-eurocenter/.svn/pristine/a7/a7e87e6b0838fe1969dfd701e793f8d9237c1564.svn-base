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

import java.math.*;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.*;

import org.compiere.db.QueryUtil;
import org.compiere.framework.PO;
import org.compiere.model.*;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;
import com.ecenter.compiere.util.EggoCtx;

/**
 *  Copy Order Lines
 *
 *	@author Jorg Janke
 *	@version $Id: CopyFromOrder.java,v 1.2 2006/07/30 00:51:02 jjanke Exp $
 */
public class CopyToSavOrder extends SvrProcess
{
	/**	The Order				*/
	private int	p_C_Order_ID = 0;
	
	private int p_Doctype_ID = 0;

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
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = ((BigDecimal)element.getParameter()).intValue();
			
			else if (name.equals("C_DocType2_ID"))
				p_Doctype_ID = ((BigDecimal)element.getParameter()).intValue();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
//		EggoCtx.setConstants();
		int from_C_Order_ID = getRecord_ID();
		MOrder from = new MOrder(getCtx(),getRecord_ID(),get_Trx());
		//MERGE
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), from.getC_DocTypeTarget_ID(), get_Trx());
		if(p_Doctype_ID<=0)
			p_Doctype_ID = dti.getC_DocType_SAV_ID();
		MDocTypeInfo dtiSav = MDocTypeInfo.get(getCtx(), p_Doctype_ID, get_Trx());
		MOrder to = null;
		MUser us = new MUser(getCtx(), getAD_User_ID(), get_Trx());
		if (from != null)
		{
			to = new MOrder(getCtx(),0,get_Trx());
			PO.copyValues(from, to);
			to.setClientOrg(from.getAD_Client_ID(),from.getAD_Org_ID());
			to.setDateOrdered(new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
			to.setDatePromised(new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));

			to.setC_DocTypeTarget_ID(p_Doctype_ID);//MERGE
			to.setC_DocType_ID(p_Doctype_ID);//MERGE
			to.setDocumentNo(DB.getDocumentNo(to.getC_DocTypeTarget_ID(), get_Trx()));
			to.setTotalLines(BigDecimal.ZERO);
			to.setGrandTotal(BigDecimal.ZERO);
			to.set_ValueNoCheck("TotalPaySched", Env.ZERO);
			to.set_Value("Z_SoldeGI", BigDecimal.ZERO);
			to.set_Value("Z_PayGI", BigDecimal.ZERO);
			
			if(us!=null && us.getC_BPartner_ID()>0)
				to.set_ValueNoCheck("Expert_ID", us.getC_BPartner_ID());
			//to.set_Value("Z_OrderStepStatus", null);
			//Si sur docuement SAV
			MDocType dt = new MDocType(getCtx(), to.getC_DocTypeTarget_ID(), get_Trx());
			MDocTypeProxy dtp = new MDocTypeProxy(dt);
			MDocTypeInfo dti2 = MDocTypeInfo.get(getCtx(), to.getC_DocTypeTarget_ID(), get_Trx());
			String step  =dtp.getStatusFromDoctype();
			//if((getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")) && step!=null)
			if (dti2.isCuisine() && step != null) // MERGE
			{
				to.set_Value("Z_OrderStepStatus",step);
			}
			
			int M_Warehouse_ID = MDefaultWarehouse.getM_Warehouse_ID(get_Trx(), to.getC_DocTypeTarget_ID(), from.getAD_Org_ID(), from.getAD_Client_ID());
			if(M_Warehouse_ID!=0 && to.isSOTrx())
				to.setM_Warehouse_ID(M_Warehouse_ID!=0 && to.isSOTrx()?M_Warehouse_ID:from.getM_Warehouse_ID());
			to.setDocStatus(DocActionConstants.STATUS_Drafted);
			to.setDocAction(DocActionConstants.ACTION_Complete);
			to.set_ValueNoCheck("Ref_Order_ID",from.getC_Order_ID());
			//to.setDocumentNo("");
			to.set_ValueNoCheck("DatePose", null);
			to.set_ValueNoCheck("DateTo", null);
			//if(from.get_ValueAsInt("Monteur_ID")>0)
			//	to.set_ValueNoCheck("Monteur_ID",from.get_ValueAsInt("Monteur_ID"));
			//else
				to.set_ValueNoCheck("Monteur_ID", null);
			to.setDescription2(null);
			to.set_ValueNoCheck("XX_SemRec",null);
			to.set_ValueNoCheck("XX_SemAR",null);
			
			if(from.get_Value("PROMBPartner_ID")!=null)
				to.setPROMBPartner_ID(from.get_ValueAsInt("PROMBPartner_ID"));
			if(from.get_Value("Z_Vendor_ID")!=null)
				to.set_Value("Z_Vendor_ID", from.get_ValueAsInt("Z_Vendor_ID"));
			if(from.get_Value("PROM_ExtCode")!=null)
				to.set_Value("PROM_ExtCode", from.get_ValueAsInt("PROM_ExtCode"));
			if(from.get_Value("Z_RefChantier")!=null)
				to.set_Value("Z_RefChantier", from.get_ValueAsInt("Z_RefChantier"));
			to.setXX_IsSAV(null);
			to.set_ValueNoCheck("XX_SAV_Date", null);
			to.set_ValueNoCheck("XX_BonusDate", null);
			to.set_ValueNoCheck("XX_IsBonus", null);
			to.setSalesRep_ID(getAD_User_ID());
			to.save(get_Trx());
			
			// Copy download document 
			int nbAttachFiles = MOrderDownload.copyFromSOToPO(from, to.get_ID(),null,null,get_Trx(), getCtx());
				
			//Copy TaskType S vers SAV
			//103420 
			if(from.get_ValueAsInt("Monteur_ID")>0){
				MInterventions mTo = new MInterventions(getCtx(), 0, get_Trx());
				mTo.setAD_Org_ID(from.getAD_Org_ID());
				mTo.setC_Order_ID(to.getC_Order_ID());
				mTo.setVendor_ID(from.get_ValueAsInt("Monteur_ID"));
				//mTo.setDescription(mFrom.getDescription());
				mTo.setTaskType("S");
				DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
				Date date = dateFormat.parse("01/01/2035");
				long time = date.getTime();
				mTo.setDateFrom(new Timestamp(time)); 
				mTo.setDateTo(new Timestamp(time)); 
				//mTo.set_ValueNoCheck("XX_Hours", mFrom.get_Value("XX_Hours"));
				//mTo.set_ValueNoCheck("XX_Ressource", mFrom.get_Value("XX_Ressource"));
				//mTo.set_ValueNoCheck("XX_AM", mFrom.get_Value("XX_AM"));
				//mTo.set_ValueNoCheck("XX_PM", mFrom.get_Value("XX_PM"));
				mTo.save();
			}
			if(dtiSav.getM_Product_ID()>0)
			{
				MOrderLine mol = new MOrderLine(to);
				mol.setQty(Env.ONE);
				mol.setProduct(new MProduct(getCtx(), dtiSav.getM_Product_ID(), get_Trx()));
				mol.setPrice(Env.ZERO);
				mol.setTax();
				mol.save();
			}
			}
		//http://smiletest.eurocenter.be:8080/apps/Compiere.html#Node?nodeID=1008526&Record_ID=6249947&mode=single
		return "SAV : "+to==null?"":to.getDocumentNo() ;
	}	//	doIt

}	//	CopyFromOrder
