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

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.logging.*;

import org.compiere.common.CompiereStateException;
import org.compiere.framework.PrintInfo;
import org.compiere.framework.Query;
import org.compiere.model.*;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.print.ReportServer;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.*;

import com.audaxis.compiere.eurocenter.util.OrderUtil;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;

/**
 * 	Create PO from Requisition
 *
 *
 *  @author Jorg Janke
 *  @version $Id: RequisitionPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class GenerateOAFromDAE extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer
{
	/** Org					*/
	protected int			p_AD_Org_ID = 0;
	/** Warehouse			*/
	protected int			p_M_Warehouse_ID = 0;
	/**	Doc Date From		*/
	protected Timestamp	p_DateDoc_From;
	/**	Doc Date To			*/
	protected Timestamp	p_DateDoc_To;
	/**	Doc Date From		*/
	protected Timestamp	p_DateRequired_From;
	/**	Doc Date To			*/
	protected Timestamp	p_DateRequired_To;
	/** Priority			*/
	protected String		p_PriorityRule = null;
	/** User				*/
	protected int			p_AD_User_ID = 0;
	/** Product				*/
	protected int			p_M_Product_ID = 0;
	/** Requisition			*/
	protected int 		p_M_Requisition_ID = 0;

	/** Consolidate			*/
	protected boolean		p_ConsolidateDocument = true;

	/** Order				*/
	protected MOrder		m_order = null;
	/** Order Line			*/
	protected MOrderLine	m_orderLine = null;
	
	private String DAE_DOCTYPE = null;
	
	private int p_Client_ID = 0;
	
	private Timestamp nowFixe = null;
	
	private Timestamp now = new Timestamp(Calendar.getInstance().getTimeInMillis());
	
	private int NbDAE = 0;
	
	private int NbOA = 0;
	
	private boolean p_IsBatch = false;
	
	MOrgInfo moi = null;
	
	private ArrayList<MOrder> mos = null;
	private ArrayList<Integer> mxs = new ArrayList<Integer>();
	
	private int oldweek = 0;
	private int oldweek2 = 0;
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
			else if (name.equals("AD_Client_ID"))
				p_Client_ID = element.getParameterAsInt();
			else if (name.equals("M_Requisition_ID"))
				p_M_Requisition_ID = element.getParameterAsInt();
			else if (name.equals("IsBatch"))
				p_IsBatch = ((String)element.getParameter()).equals("Y");
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		DAE_DOCTYPE = Msg.getMsg(getCtx(), "DAE_DOCTYPE");
		MOrg mo = new MOrg(getCtx(), DB.getSQLValue(get_Trx(), "Select AD_Org_ID from AD_Org where Value = '93' and AD_Client_ID = ?", p_Client_ID), get_Trx());
		moi = new MOrgInfo(mo);
		mos = new ArrayList<MOrder>();
		System.out.println("End Prepare ");
		now = new Timestamp(getCtx().getContextAsTime("#Date"));
		nowFixe = new Timestamp(getCtx().getContextAsTime("#Date"));
	}	//	prepare

	/**
	 * 	Process
	 *	@return info
	 *	@throws Exception
	 */
	@Override
	protected void buildOutputFile() {
	{
		MClient client = MClient.get(getCtx());
		//	Specific
		if (p_M_Requisition_ID != 0)
		{
			log.info("M_Requisition_ID=" + p_M_Requisition_ID);
			MRequisition req = new MRequisition(getCtx(), p_M_Requisition_ID, get_Trx());
			if (!X_M_Requisition.DOCSTATUS_Completed.equals(req.getDocStatus()))
				try {
					throw new CompiereUserException("@DocStatus@ = " + req.getDocStatus());
				} catch (CompiereUserException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			
			MRequisitionLine[] lines = req.getLines(true);
			for (MRequisitionLine element : lines) {
				if (element.getC_OrderLine_ID() == 0)
					try {
						process (element, new Timestamp(getCtx().getContextAsTime("#Date")));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
			try {
				closeOrder();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	//	single Requisition

		StringBuffer sql = new StringBuffer("Select * from (SELECT rl.M_RequisitionLine_ID, r.M_Requisition_ID, "
				+ "getOADate(r.DatePose, r.C_BPartner_ID) as DateToOrdered "
				+ ", NVL(zssf.Z_TypeOA_ID, zt.Z_TypeOA_ID) as Z_TypeOA_ID, r.DatePose as DatePose, r.C_BPartner_ID, rl.M_Product_ID, getOADatePromised(r.DatePose, r.C_BPartner_ID) as DatePromised FROM M_RequisitionLine rl "
				+ "inner join M_Requisition r on rl.M_Requisition_ID=r.M_Requisition_ID AND r.DocStatus='CO' "
				+ "INNER JOIN M_Product p ON (p.M_Product_ID=rl.M_Product_ID) "
				+ "INNER JOIN Z_TYPEOA zt ON (zt.AD_Client_ID = rl.AD_Client_ID and zt.IsDefault = 'Y') "
			+ " LEFT JOIN Z_S_S_FAMILLE zssf ON (zssf.Z_S_S_FAMILLE_ID = p.Z_S_S_FAMILLE_ID) ")
			.append("WHERE rl.C_OrderLine_ID IS NULL ");
			sql.append(" AND r.AD_Client_ID=? and r.C_DocType_ID in (select XX_DocType_DA_ID from C_DocTypeInfo where XX_DocType_DA_ID is not null and C_DocTypeInfo.AD_Client_ID = r.AD_Client_ID)");
		sql.append(" AND Not Exists (select 1 from XX_DATOOA xx where xx.M_Requisition_ID = rl.M_Requisition_ID )) where TRUNC(DateToOrdered)<= trunc(?) ORDER BY ");
		sql.append("C_BPartner_ID, DatePromised,M_Product_ID");
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_Trx());
			int index = 1;
			pstmt.setInt (index++, p_Client_ID);
			pstmt.setTimestamp(index++, nowFixe);
			ResultSet rs = pstmt.executeQuery ();
			MRequisition mr = null;
			while (rs.next ())
			{	
				Timestamp dt = rs.getTimestamp("DateToOrdered");
				Calendar cal = Calendar.getInstance();
				if(dt.after(nowFixe))
					continue;
					
				MRequisitionLine rl = new MRequisitionLine (getCtx(), rs.getInt(1), get_Trx());
				if(mr==null || mr.getM_Requisition_ID()!=rs.getInt(2))
				{
					mr = new MRequisition(getCtx(), rs.getInt(2), get_Trx());
					if(!DAE_DOCTYPE.contains(""+mr.getC_DocType_ID()))
							continue;
					NbDAE++;
					
				}
				rl.setTypeOA_ID(rs.getInt(4));
				Timestamp datepose = rs.getTimestamp("DatePromised");
				process (rl, datepose);
			}
			//loseOrderLine();
			closeOrder();
			rs.close ();
			pstmt.close ();
			pstmt = null;
			if(mos.size()>0 )
			{
				for (int i = 0; i < mos.size(); i++) {
					mos.get(i).setDocAction(MOrder.DOCACTION_Complete);
					mos.get(i).save();
					if(!DocumentEngine.processIt(mos.get(i), MOrder.DOCACTION_Complete))
					{
						// Ignore errors in processing
						log.warning("Impossible de traiter la commande : " + mos.get(i).getDocumentNo());
					}
					
					if(!mos.get(i).save())
						throw new CompiereStateException("Impossible de sauvegarder la commande");

					// Need to commit after each order to prevent deadlocks
					commit();
				}
				
			}
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql.toString(), e);
		}
		finally{
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		}
		try {
			closeOrder();
		} catch (Exception e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		commit();
		EMail email = null;
		String sujet = null;
		//Send Email for batch Ex�cution
		if(p_IsBatch)
		{
			SimpleDateFormat dt1 = new SimpleDateFormat("dd/MM/yyyy");
			
			String DateExec = dt1.format(new Timestamp(getCtx().getContextAsTime("#Date")));
			int R_MAILTEXT_ID =  DB.getSQLValue(get_Trx(), "Select MAX(R_MAILTEXT_ID) from R_MAILTEXT where NAME = 'GEN_DAE' and AD_Client_ID in (?,0) ", p_Client_ID);
			MMailText mText = new MMailText(getCtx(), R_MAILTEXT_ID, get_Trx());
			sujet = mText.getMailHeader();
			String corps = mText.getMailText().replace("$DateExec$", DateExec);
			corps = corps.replace("$NbDAE$", ""+NbDAE);
			corps = corps.replace("$NbOA$", ""+NbOA);
			
			String EMAIL_Cs[] = Msg.getMsg(getCtx(), "DAE_MAIL_BATCH").split(";");
			if(EMAIL_Cs.length == 1 || (email==null && EMAIL_Cs.length>0))
				email  = client.createEMail(EMAIL_Cs[0], "", sujet, null);
			if(EMAIL_Cs.length>1)
				for (int i = 1; i < EMAIL_Cs.length; i++) {
					email.addTo(EMAIL_Cs[i],"");
				}
			if (email == null || !email.isValid())
			{
				addLog (" @RequestActionEMailError@ Invalid EMail: " + Msg.getMsg(getCtx(), "DAE_MAIL_BATCH"));
				
			}
			if (mText.isHtml())
				email.setMessageHTML(sujet, corps);
			else
			{
				email.setSubject (sujet);
				email.setMessageText (corps);
			}
		}
			MPrintFormat format=new MPrintFormat(getCtx(),1033730, get_Trx());
			if(format == null)
			{
				addLog ("No format for printformat ID - " +1033730 );
			}
			format.setLanguage(Language.getLanguage(getCtx().getContext(getCtx().getContext("AD_Language"))));		//	BP Language if Multi-Lingual
			format.setTranslationLanguage(Language.getLanguage(getCtx().getContext("AD_Language")));
			//Processus li� au format
			int processID = DB.getSQLValue(get_Trx(), "Select MAX(AD_Process_ID) from AD_Process where IsActive='Y' and Value = ?", "Rapport Gen OA");
			MProcess process = new MProcess(getCtx(), processID,
					get_Trx());
			MPInstance instance = new MPInstance(getCtx(), processID, -1);
			if (!instance.save()) {
				addLog("Print Stock Hebdo Process No Instance");
			}
			ProcessInfo processInfo = new ProcessInfo(
					process.getName(), processID);
			processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
			List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
			
			//Faire une bouble sur les parametres

			String p_FileFormat = "XLS";
			File temp = null;
			try {
				temp = File.createTempFile("Export"+getCtx().getAD_User_ID(), ".xlsx");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			ReportEngine re;
			
			String tableName = DB.getSQLValueString(get_Trx(), "Select TableName from AD_Table where AD_Table_ID = ?", format.getAD_Table_ID());
			Query query = new Query(tableName);
			//query.addRestriction("AD_PInstance_ID", Query.EQUAL, getAD_PInstance_ID());
			PrintInfo info = new PrintInfo("", format.getAD_Table_ID(),getAD_PInstance_ID(),0);
			info.setCopies(1);
			int seqno = 10;
			MPInstancePara mpia = null;
			HashMap<String, ValueNamePair> parametersX = new HashMap<String, ValueNamePair>();
			int idsParams[] = MProcessPara.getAllIDs(MProcessPara.Table_Name, "IsActive = 'Y' and AD_Process_ID = "+processID+ " ORder by SeqNo ASC", get_Trx());
			for (int i = 0; i < idsParams.length; i++) {
				MProcessPara mpp = new MProcessPara(getCtx(), idsParams[i], get_Trx());
				//if(mpp.getColumnName().equals("AD_Client_ID"))
				//	continue;
				if(mpp.getColumnName().equals("AD_Client_ID"))
				{
					mpia = new MPInstancePara(getCtx(), instance.getAD_PInstance_ID(), mpp.getSeqNo());
					mpia.setParameter(mpp.getColumnName(), p_Client_ID);
					mpia.save();
					continue;
				}
				}
			query.addRestriction("AD_PInstance_ID", Query.EQUAL,getAD_PInstance_ID());
			
			
			re = new ReportEngine(getCtx(), format, query, info);
			
			//re.createCSV(temp,',', re.getPrintFormat().getLanguage());
			re.createEXCEL(temp, re.getPrintFormat().getLanguage());
			File des = new File(temp.getParent()+File.separator+"U"+getAD_User_ID()+"_"+getAD_PInstance_ID()+"_"+getOutputFileNameSimple());
			try {
				copyFile(temp, des);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			if(p_IsBatch){
			if(des!=null)
				email.addAttachment(des);
			String msg = email.send();
			if (msg.equals(EMail.SENT_OK))
			{
				addLog ("@RequestActionEMailOK@ - " );
			}
			else
			{
				addLog (" @RequestActionEMailError@ " + sujet);
			}
			}
		}
	
	
	}	//	doit

	protected int 		m_M_Requisition_ID = 0;
	protected int 		m_M_Product_ID = 0;
	protected int			m_M_AttributeSetInstance_ID = 0;
	/** BPartner				*/
	protected MBPartner	m_bpartner = null;

	/**
	 * 	Process Line
	 *	@param rLine request line
	 * 	@throws Exception
	 */
	protected void process (MRequisitionLine rLine, Timestamp DatePromised) throws Exception
	{
		if ((rLine.getM_Product_ID() == 0) && (rLine.getC_Charge_ID() == 0))
		{
			log.warning("Ignored Line" + rLine.getLine()
				+ " " + rLine.getDescription()
				+ " - " + rLine.getLineNetAmt());
			return;
		}

		if (!p_ConsolidateDocument
			&& (rLine.getM_Requisition_ID() != m_M_Requisition_ID))
			closeOrder();
		Timestamp ts = new Timestamp(Calendar.getInstance().getTimeInMillis());
		Calendar cal = Calendar.getInstance();
		ts = DatePromised;
		cal.setTime(ts);
		int week1 = cal.get(Calendar.WEEK_OF_YEAR);
		if ((m_orderLine == null)
			|| (rLine.getM_Product_ID() != m_M_Product_ID)
			|| (rLine.getM_AttributeSetInstance_ID() != m_M_AttributeSetInstance_ID)
			|| (rLine.getC_Charge_ID() != 0) 
			|| week1!=oldweek2){		//	single line per charge
			newLine(rLine, DatePromised);
			oldweek2=week1;
		}

		//	Update Order Line
		m_orderLine.setQty(m_orderLine.getQtyOrdered().add(rLine.getQty()));
		m_orderLine.save();
		//	Update Requisition Line
		rLine.setC_OrderLine_ID(m_orderLine.getC_OrderLine_ID());
		if (!rLine.save())
			throw new CompiereSystemException("Cannot update Request Line");
	}	//	process

	/**
	 * 	Create new Order
	 *	@param rLine request line
	 *	@param C_BPartner_ID b.partner
	 * 	@throws Exception
	 */
	protected void newOrder(MRequisitionLine rLine, int C_BPartner_ID, Timestamp DatePromised) throws Exception
	{
		if (m_order != null)
			closeOrder();
		MRequisition mr = new MRequisition(getCtx(), rLine.getM_Requisition_ID(), get_Trx());
		//	BPartner
		if ((m_bpartner == null) || (C_BPartner_ID != m_bpartner.getC_BPartner_ID()))
			m_bpartner = new MBPartner (getCtx(), C_BPartner_ID, null);
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), mr.getC_DocType_ID(), get_Trx());
		//	Order
		m_order = new MOrder(getCtx(), 0, get_Trx());
		m_order.setIsSOTrx(false);
		m_order.setC_DocType_ID(dti.getC_DocType_Achat_ID());
		m_order.setBPartner(m_bpartner);
		m_order.setC_DocType_ID(dti.getC_DocType_Achat_ID());
		m_order.setC_DocTypeTarget_ID(dti.getC_DocType_Achat_ID());
		m_order.setM_PriceList_ID(mr.getM_PriceList_ID());
		m_order.setAD_Org_ID(moi.getAD_Org_ID());
		m_order.setM_Warehouse_ID(moi.getM_Warehouse_ID());
		m_order.set_Value("Z_TypeOA_ID",rLine.getTypeOA_ID());
		Timestamp ta = DatePromised;
		m_order.setDateOrdered (new Timestamp(getCtx().getContextAsTime("#Date")));
		now = new Timestamp(getCtx().getContextAsTime("#Date"));
		Timestamp ts =now;
		//int deliveryTimeGa = m_bpartner.get_ValueAsInt("DeliveryTime");
		//deliveryTimeGa = deliveryTimeGa *-1;
		//if (deliveryTimeGa != 0 && ta != null )
		//{	
				Calendar cal = Calendar.getInstance();
				cal.setTime(ta);
				ts.setTime(cal.getTime().getTime()); // or
				ts = new Timestamp(cal.getTime().getTime());
				String ss = QueryUtil.getSQLValueString(get_Trx(), "Select week from xx_cal_week where dates = ? ", ts);
				int week = 0;
				if(ss!=null)
				{
					try {
						week = Integer.parseInt(ss);
					}
					catch (Exception e) {
						week = cal.get(Calendar.WEEK_OF_YEAR);
					}
				}
				else
					week = cal.get(Calendar.WEEK_OF_YEAR);
				m_order.set_Value("XX_SemRec", week<10?"0"+week:""+week);
				
		//}
		
		m_order.setDatePromised(ts);
		m_order.setSalesRep_ID(getAD_User_ID());
		//	default po document type
		if (!p_ConsolidateDocument)
			m_order.setDescription(Msg.getElement(getCtx(), "M_Requisition_ID")
				+ ": " + rLine.getParent().getDocumentNo());

		//	Prepare Save
		m_M_Requisition_ID = rLine.getM_Requisition_ID();
		m_order.setDocAction(MOrder.DOCACTION_Complete);
		m_order.set_Value("XX_RefOAInterne",OrderUtil.getRefOAInterne(getCtx(),m_order,get_Trx()));
		if (!m_order.save())
			throw new CompiereSystemException("Cannot save Order");
		mos.add(m_order);
		/*
		DB.executeUpdate(get_Trx(), "INSERT INTO XX_DATOOA (AD_CLIENT_ID,AD_ORG_ID,AD_PINSTANCE_ID,C_ORDER_ID,CREATED,CREATEDBY,ISACTIVE,M_REQUISITION_ID,UPDATED,UPDATEDBY,XX_DATOOA_ID) "
				+ "VALUES (?,0,?,?,sysdate,?,'Y',?,Sysdate,?,AD_Sequence_NextNo2('XX_DATOOA',0)) "
				, p_Client_ID,getAD_PInstance_ID(), m_order.getC_Order_ID(), getAD_User_ID(),rLine.getM_Requisition_ID(), getAD_User_ID());
		*/
	}	//	newOrder

	/**
	 * 	Close Order
	 * 	@throws Exception
	 */
	protected void closeOrder() throws Exception
	{
		closeOrderLine();
		if (m_order != null)
		{
			m_order.load(get_Trx());
			addLog(0, null, m_order.getGrandTotal(), m_order.getDocumentNo());
		}
		m_order = null;
	}	//	closeOrder


	private void closeOrderLine() throws CompiereSystemException {
		if (m_orderLine != null)
		{
			if (!m_orderLine.save() || !m_orderLine.updateHeaderTax())
				throw new CompiereSystemException("Cannot update Order Line");
		}
		m_orderLine = null;
	}

	/**
	 * 	New Order Line (different Product)
	 *	@param rLine request line
	 * 	@throws Exception
	 */
	private void newLine(MRequisitionLine rLine, Timestamp DatePromised) throws Exception
	{
		closeOrderLine();
		MProduct product = null;
		
		//	Get Business Partner
		int C_BPartner_ID = rLine.getC_BPartner_ID();
		if (C_BPartner_ID != 0)
			;
		else if (rLine.getC_Charge_ID() != 0)
		{
			MCharge charge = MCharge.get(getCtx(), rLine.getC_Charge_ID());
			C_BPartner_ID = charge.getC_BPartner_ID();
			if (C_BPartner_ID == 0)
				throw new CompiereUserException("No Vendor for Charge " + charge.getName());
		}
		else
		{
			//	Find Vendor from Produt
			product = MProduct.get(getCtx(), rLine.getM_Product_ID());
			MProductPO[] ppos = MProductPO.getOfProduct(getCtx(), product.getM_Product_ID(), null);
			for (MProductPO element : ppos) {
				if (element.isCurrentVendor() && (element.getC_BPartner_ID() != 0))
				{
					C_BPartner_ID = element.getC_BPartner_ID();
					break;
				}
			}
			if ((C_BPartner_ID == 0) && (ppos.length > 0))
				C_BPartner_ID = ppos[0].getC_BPartner_ID();
			if (C_BPartner_ID == 0)
				throw new CompiereUserException("No Vendor for " + product.getName());
		}
		
		//Calcul Week DateOrdered
		Timestamp ts = new Timestamp(Calendar.getInstance().getTimeInMillis());
		Calendar cal = Calendar.getInstance();
		cal.setTime(DatePromised);
		ts = DatePromised;
		int week = cal.get(Calendar.WEEK_OF_YEAR);
		

		//	New Order - Different Vendor
		if ((m_order == null)
			|| (m_order.getC_BPartner_ID() != C_BPartner_ID)
			|| week != oldweek)
		{
			newOrder(rLine, C_BPartner_ID, DatePromised);
			NbOA++;
			oldweek = week;
		}

		//	No Order Line
		m_orderLine = new MOrderLine(m_order);
		MOrderLine mol = new MOrderLine(getCtx(), rLine.getRef_OrderLine_ID(), get_Trx());
		m_orderLine.setAD_Org_ID(m_order.getAD_Org_ID());
		if (product != null)
		{
			m_orderLine.setProduct(product);
			m_orderLine.setM_AttributeSetInstance_ID(rLine.getM_AttributeSetInstance_ID());
			m_orderLine.setPriceActual(rLine.getPriceActual());
		}
		else
		{
			m_orderLine.setC_Charge_ID(rLine.getC_Charge_ID());
			m_orderLine.setPriceActual(rLine.getPriceActual());
		}
		//	Prepare Save
		m_M_Product_ID = rLine.getM_Product_ID();
		m_M_AttributeSetInstance_ID = rLine.getM_AttributeSetInstance_ID();
		m_orderLine.setRef_OrderLine_ID(rLine.getRef_OrderLine_ID());
		//1266
		MBPartner mb = new MBPartner(getCtx(), C_BPartner_ID, get_Trx());
		m_orderLine.set_Value("IsCocontractant", mb.get_Value("IsCocontractant"));
		m_orderLine.setDatePromised(m_order.getDatePromised());
		if (!m_orderLine.save() || !m_orderLine.updateHeaderTax())
			throw new CompiereSystemException("Cannot save Order Line");
		
		if(!mxs.contains(rLine.getM_Requisition_ID()))
		{
			mxs.add(rLine.getM_Requisition_ID());
			DB.executeUpdate(get_Trx(), "INSERT INTO XX_DATOOA (AD_CLIENT_ID,AD_ORG_ID,AD_PINSTANCE_ID,C_ORDER_ID,CREATED,CREATEDBY,ISACTIVE,M_REQUISITION_ID,UPDATED,UPDATEDBY,XX_DATOOA_ID) "
				+ "VALUES (?,0,?,?,sysdate,?,'Y',?,Sysdate,?,AD_Sequence_NextNo2('XX_DATOOA',0))  "
				, p_Client_ID,getAD_PInstance_ID(), m_order.getC_Order_ID(), getAD_User_ID(),rLine.getM_Requisition_ID(), getAD_User_ID());
		}
	}	//	newLine
	
	
	private void copyFile(File src, File dest) throws IOException
	{  
		FileInputStream fis = new FileInputStream(src);
	     FileOutputStream fos = new FileOutputStream(dest);

	     java.nio.channels.FileChannel channelSrc   = fis.getChannel();
	     java.nio.channels.FileChannel channelDest = fos.getChannel();

	     channelSrc.transferTo(0, channelSrc.size() , channelDest);

	     fis.close();
	     fos.close();
	}
	
	private boolean startProcess (String ProcedureName, MPInstance pInstance)
	{
		int AD_PInstance_ID = pInstance.getAD_PInstance_ID();
		//  execute on this thread/connection
		log.info(ProcedureName + "(" + AD_PInstance_ID + ")");
		String sql = "{call " + ProcedureName + "(?)}";
		try
		{
			DB.executeCall(sql, AD_PInstance_ID);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
			pInstance.setResult(MPInstance.RESULT_ERROR);
			pInstance.setErrorMsg(e.getLocalizedMessage());
			return false;
		}
		pInstance.setResult(MPInstance.RESULT_OK);
		return true;
	}  
	@Override
	protected String getOutputFileNameSimple() {
		// TODO Auto-generated method stub
		return "_GenOA.xlsx";
	}


}	//	RequisitionPOCreate
