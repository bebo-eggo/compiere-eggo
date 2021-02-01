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
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.logging.*;

import org.apache.commons.io.FileUtils;
import org.compiere.common.CompiereStateException;
import org.compiere.model.*;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.*;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.model.MPInstanceProxy;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.util.CompiereException;
import com.ecenter.compiere.util.EggoCtx;

import ru.compiere.report.RusReportStarter;

/**
 *	Generate PO from Sales Order
 *	
 *  @author Jorg Janke
 *  @version $Id: OrderPOCreate.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class OrderPOCreateEggo_EDI extends SvrProcess
{
	/**	Order Date From		*/
	private Timestamp	p_DateOrdered_From;
	/**	Order Date To		*/
	private Timestamp	p_DateOrdered_To;
	/**	Customer			*/
	private int			p_C_BPartner_ID;
	/**	Vendor				*/
	private int			p_Vendor_ID;
	/**	Sales Order			*/
	private int			p_C_Order_ID;
	/** Drop Ship			*/
	private String		p_IsDropShip;
	
	private boolean p_ToComplete = false;
	private boolean p_forcer = false;
	
	private ArrayList<MOrder> mos = null;
	
	private ArrayList<Integer> OrderLines = null;
	
	private int locator_ID = 0;
	
	private int warehouse_ID = 0;
	private HashMap<Integer, String> typesOA = null;
	
	private int nbAttachFiles = 0;
	
	private String errFiles="";
	
	private String BPFileMand = null;
	
	private ArrayList<String> BPErrorList = null;
	
	private boolean isGest = false;
	
	private boolean isGestpp = false;
	
	private boolean isDelPO = false;
	
	private String msgErr = null;
	
	private String p_File = null;
	private String p_File2 = null;
	private File ret = null;

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
			else if (name.equals("DateOrdered"))
			{
				p_DateOrdered_From = (Timestamp)element.getParameter();
				p_DateOrdered_To = (Timestamp)element.getParameter_To();
			}
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = ((Integer)element.getParameter()).intValue();
			else if (name.equals("Vendor_ID"))
				p_Vendor_ID = ((Integer)element.getParameter()).intValue();
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = ((Integer)element.getParameter()).intValue();
			else if (name.equals("IsDropShip"))
				p_IsDropShip = (String)element.getParameter();
			else if (name.equals("ToComplete"))
				p_ToComplete = "Y".equals((String)element.getParameter());
			else if (name.equals("Forcer"))
				p_forcer = "Y".equals((String)element.getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		typesOA = new HashMap<Integer, String>();
		String sql = "Select Z_TYPEOA_ID, Value from Z_TYPEOA where AD_Client_ID = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int counter = 0;
		try
		{	
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setInt(1, getAD_Client_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				typesOA.put(rs.getInt(1), rs.getString(2));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new CompiereException(e.toString());
		}finally 
		{
			Util.closeCursor(pstmt, rs);
		}
		
				
		//Controle poids
		
			
	}	//	prepare

	/**
	 *  Perrform process.
	 *  @return Message 
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		String msg = Msg.getMsg(getCtx(), "XX_OA_FILES_ERR_ROLE");
		if(msg.contains(""+getCtx().getAD_Role_ID()))
			isGest = true;
		String roo = Msg.getMsg(getCtx(), "XX_Gest_roles++");
		if(roo.contains(""+getCtx().getAD_Role_ID()))
			isGestpp = true;
		
		OrderLines = new ArrayList<Integer>();
		
		BPFileMand = Msg.getMsg(getCtx(), "XX_BP_FILES_MAND2");
		BPErrorList = new ArrayList<String>();
		mos = new ArrayList<MOrder>();
		log.info("DateOrdered=" + p_DateOrdered_From + " - " + p_DateOrdered_To 
				+ " - C_BPartner_ID=" + p_C_BPartner_ID + " - Vendor_ID=" + p_Vendor_ID
				+ " - IsDropShip=" + p_IsDropShip + " - C_Order_ID=" + p_C_Order_ID);
		if (p_C_Order_ID == 0 && p_IsDropShip == null
				&& p_DateOrdered_From == null && p_DateOrdered_To == null
				&& p_C_BPartner_ID == 0 && p_Vendor_ID == 0)
			throw new IllegalPathStateException("You need to restrict selection");
		//
		String sql = "SELECT * FROM C_Order o "
			+ "WHERE o.IsSOTrx='Y'"
			; 
		if (p_C_Order_ID != 0)
			sql += " AND o.C_Order_ID=?";
		else
		{
			if (p_C_BPartner_ID != 0)
				sql += " AND o.C_BPartner_ID=?";
			if (p_IsDropShip != null)
				sql += " AND o.IsDropShip=?";
			if (p_Vendor_ID != 0)
				sql += " AND EXISTS (SELECT * FROM C_OrderLine ol"
					+ " INNER JOIN M_Product_PO po ON (ol.M_Product_ID=po.M_Product_ID and po.IsActive='Y') "
					+ "WHERE o.C_Order_ID=ol.C_Order_ID AND po.C_BPartner_ID=? and ol.IsActive='Y')"; 
			if (p_DateOrdered_From != null && p_DateOrdered_To != null)
				sql += "AND TRUNC(o.DateOrdered,'DD') BETWEEN ? AND ?";
			else if (p_DateOrdered_From != null && p_DateOrdered_To == null)
				sql += "AND TRUNC(o.DateOrdered,'DD') >= ?";
			else if (p_DateOrdered_From == null && p_DateOrdered_To != null)
				sql += "AND TRUNC(o.DateOrdered,'DD') <= ?";
		}
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int counter = 0;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			if (p_C_Order_ID != 0)
				pstmt.setInt (1, p_C_Order_ID);
			else
			{
				int index = 1;
				if (p_C_BPartner_ID != 0)
					pstmt.setInt (index++, p_C_BPartner_ID);
				if (p_IsDropShip != null)
					pstmt.setString(index++, p_IsDropShip);
				if (p_Vendor_ID != 0)
					pstmt.setInt (index++, p_Vendor_ID);
				if (p_DateOrdered_From != null && p_DateOrdered_To != null)
				{
					pstmt.setTimestamp(index++, p_DateOrdered_From);
					pstmt.setTimestamp(index++, p_DateOrdered_To);
				}
				else if (p_DateOrdered_From != null && p_DateOrdered_To == null)
					pstmt.setTimestamp(index++, p_DateOrdered_From);
				else if (p_DateOrdered_From == null && p_DateOrdered_To != null)
					pstmt.setTimestamp(index++, p_DateOrdered_To);
			}
			
			try {
				rs = pstmt.executeQuery ();
				while (rs.next ())
				{
					counter += createPOFromSO (new MOrder (getCtx(), rs, get_Trx()));
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw e;
			}finally 
			{
				Util.closeCursor(pstmt, rs);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		if(mos.size()>0 && isDelPO && !p_forcer)
		{
			for (int i = 0; i < mos.size(); i++) {
				if(mos.get(i)==null)
					continue;
				mos.get(i).delete(true);
				}
			mos = new ArrayList<MOrder>();
			counter = 0;
		}else
		{
			for (int i = 0; i < OrderLines.size(); i++) {
			int no = DB.executeUpdate("UPDATE C_OrderLine SET isSelectedPO='N' WHERE C_OrderLine_ID=?",OrderLines.get(i),get_Trx());
			if(no <=0)
				throw new CompiereException("Impossible de mettre � jour isSelectedPO (Completed)");
			}
		}
		
		if(mos.size()>0 && p_ToComplete)
		{
			for (int i = 0; i < mos.size(); i++) {
				if(mos.get(i)==null)
					continue;
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
		if((isGest || isGestpp) && isDelPO)
			return msgErr;
		return "@Created@ " + counter;
	}	//	doIt

	/**
	 * 	Create PO From SO
	 *	@param so sales order
	 *	@return number of POs created
	 * @throws Exception 
	 */
	private int createPOFromSO (MOrder so) throws Exception
	{
		log.info(so.toString());
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(),  so.getC_DocTypeTarget_ID(), get_Trx());//DOCTYPE SAV
		MDocTypeInfo dtiParent = MDocTypeInfo.get(getCtx(),  dti.getC_DocType_Parent_ID(), get_Trx()); //DOCTYPE PARENT NON SAV
		MOrderLine[] soLines = so.getLines(" AND C_OrderLine.IsActive='Y' and C_OrderLine.isSelectedPO='Y' "
				+ "and NOT EXISTS (SELECT 1 FROM C_Orderline pol INNER JOIN C_Order po ON (po.C_Order_ID = pol.C_Order_ID) "
				+ "WHERE po.IsSoTrx = 'N' AND pol.Ref_OrderLine_ID = C_OrderLine.C_OrderLine_ID)" ,null);
		if (soLines == null || soLines.length == 0)
		{
			log.warning("No Lines - " + so);
			return 0;
		}
		//
		int counter = 0;

		//Modified the below query for request no:10020594. (added po.IsActive='Y')

		//	Order Lines with a Product which has a current vendor 
		String sql = "SELECT DISTINCT case when (p.SAVType = 'PO' and ? > 0) then ? else po.C_BPartner_ID end as C_BPartner_ID, "
				+ "NVL(zssf.Z_TypeOA_ID, zt.Z_TypeOA_ID) as Z_TypeOA_ID, po.M_Product_ID, ol.C_OrderLine_ID "
			+ "FROM M_Product_PO po" 
			+ " INNER JOIN C_OrderLine ol ON (po.M_Product_ID=ol.M_Product_ID ) "
			+ " INNER JOIN M_Product p ON (p.M_Product_ID=ol.M_Product_ID) "
			+ " INNER JOIN Z_TYPEOA zt ON (zt.AD_Client_ID = po.AD_Client_ID and zt.IsDefault = 'Y') "
			+ " LEFT JOIN Z_S_S_FAMILLE zssf ON (zssf.Z_S_S_FAMILLE_ID = p.Z_S_S_FAMILLE_ID) "
			+ "WHERE ol.C_Order_ID=? AND ol.isSelectedPO='Y' AND  ( ol.qtyEntered - ol.qtydelivered > 0 )   AND po.IsCurrentVendor='Y' and po.IsActive='Y'";
		if(p_Vendor_ID != 0)
			sql = sql.concat(" AND po.C_BPartner_ID=? ");
		sql = sql.concat(" AND p.isPurchasedToOrder = 'Y' ");
		sql = sql.concat("AND NOT EXISTS (SELECT null FROM C_Orderline pol INNER JOIN C_Order po ON (po.C_Order_ID = pol.C_Order_ID) WHERE po.IsSoTrx = 'N' AND pol.Ref_OrderLine_ID = ol.C_OrderLine_ID) ");			
		sql = sql.concat("ORDER BY 1,2");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MOrder po = null;
		ArrayList<Integer> bps = new ArrayList<Integer>();
		int x = 1;
		boolean OAMont = false;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setInt (x++, so.get_ValueAsInt("Monteur_ID"));
			pstmt.setInt (x++, so.get_ValueAsInt("Monteur_ID"));
			pstmt.setInt (x++, so.getC_Order_ID());
			if(p_Vendor_ID != 0)
				pstmt.setInt(x++, p_Vendor_ID);
			rs = pstmt.executeQuery ();
			while (rs.next () && !isDelPO)
			{
				//	New Order
				int C_BPartner_ID = rs.getInt(1);
				int TypeOA_ID = rs.getInt(2);
				MBPartner mb = new MBPartner(getCtx(), C_BPartner_ID, get_Trx());
				if (po == null || po.getBill_BPartner_ID() != C_BPartner_ID || po.get_ValueAsInt("Z_TypeOA_ID")!=TypeOA_ID)
				{
					if(so.get_ValueAsInt("Monteur_ID") == rs.getInt(1))
					{
						int nbdetails = DB.getSQLValue(get_Trx(), "SELect count(1) from XX_OrderLineDetails where C_Order_ID = ? ", so.getC_Order_ID()); 
						if(nbdetails>0)
							OAMont = true;
						else
							OAMont = false;
					}
					po = createPOForVendor(rs.getInt(1), so,rs.getInt(2) );
					addLog(0, null, null, po.getDocumentNo());
					po.setDocAction(MOrder.DOCACTION_Complete);
					counter++;
					
					// Copy download document 
					String lst = MOrderDownload.getListFile(po, C_BPartner_ID, get_Trx(), getCtx(), mb.getC_BP_Group_ID());
					int nbFile = lst == null ? 0:lst.split(",").length;
//					EggoCtx.setConstants();
					if (dti.isSAV() && dtiParent.isStore() //MERGE
							&& !bps.contains(C_BPartner_ID) && dti.isCuisine())
					{	
						Object[] params = {so.getPOReference(),dtiParent.getC_DocType_ID()}; //MERGE
						int soprincID = DB.getSQLValue(so.get_Trx(), "select max(c_order_id) from c_order where poReference = ? and C_DocTypeTarget_ID = ? ", params);
						if (soprincID > 0) {
							MOrder soprinc = new MOrder(getCtx(), soprincID, get_Trx());
							nbAttachFiles = MOrderDownload.copyFromSOToPO(soprinc, po.get_ID(),C_BPartner_ID,mb.getC_BP_Group_ID(),get_Trx(), getCtx());
							
						}
								
					}
					else if (dti.isSAV() && dtiParent.isPlacard()   //MERGE
							&& !bps.contains(C_BPartner_ID) && dti.isCuisine())
					{	
						Object[] params = {so.getPOReference(),dtiParent.getC_DocType_ID()}; //MERGE
						int soprincID = DB.getSQLValue(so.get_Trx(), "select max(c_order_id) from c_order where poReference = ? and C_DocTypeTarget_ID = ? ", params);
						if (soprincID > 0) {
							MOrder soprinc = new MOrder(getCtx(), soprincID, get_Trx());
							nbAttachFiles = MOrderDownload.copyFromSOToPO(soprinc, po.get_ID(),C_BPartner_ID,mb.getC_BP_Group_ID(),get_Trx(), getCtx());
							
						}		
					}
					else {
						nbAttachFiles = MOrderDownload.copyFromSOToPO(so, po.get_ID(),C_BPartner_ID,mb.getC_BP_Group_ID(),get_Trx(), getCtx());
					}
					
					if(nbFile>0 && ((nbAttachFiles==0 && isGestpp && !p_forcer) || (nbAttachFiles==0 && isGest)) && BPFileMand!=null && BPFileMand.contains(mb.getValue()) 
							&& (dti.isStore() || dti.isPlacard()) && !dti.isSAV() && !dti.isDevis()  )
					{
						//Delete PO
						isDelPO = true;
						msgErr = dti.isPlacard()?Msg.getMsg(getCtx(), "XX_OA_FILES_ERR_PLA"):Msg.getMsg(getCtx(), "XX_OA_FILES_ERR_CUI");
						counter--;
						continue;
					}
				}
				//V55 pdf monteur
				if(OAMont)
				{
					OAMont = false;
					//Gen PDF
					//ADD PDF to OA File
					File ff = genPDFMonteur(so.getC_Order_ID(),po.getDocumentNo(),mb);
					if(ff!=null)
					{
						 File f = new File(ff.getAbsolutePath()); 
				            try {
				    			File n = new File(getOutputFileNameSimple());
				    			FileUtils.copyFile(f, n);
				    			 
				    			String orig =f.getAbsolutePath();
				    			String dest = n.getAbsolutePath();
				    			InputStream in = new FileInputStream(orig);
				    			OutputStream out = new FileOutputStream(dest);
				    			byte[] buf = new byte[1024];
				    			int len;
				    			while ((len = in.read(buf)) > 0) {
				    			   out.write(buf, 0, len);
				    			}
				    			in.close();
				    			out.close(); 
				    			
				    			String URL = Msg.getMsg(getCtx(), "EGGO_UPLOADFILE");
				    			String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
				    			//String p_File = xxx+File.separator+"U"+AD_User_ID+"_"+PInstance_ID+"_JasperReport.pdf";
				    			String vals[] = po.getDocumentNo().split("-");
				    			String URL_Linux = Msg.getMsg(getCtx(), "SHARE_FOLDER");
				    			if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
				    			{
				    				
				    				URL = URL+File.separator+vals[0]+File.separator+po.getPOReference()+File.separator+"CommandeClient"+File.separator+po.getDocumentNo()+File.separator+"CommandReferences"+File.separator+"CR_"+po.getDocumentNo()+".pdf";

				    			}
				    			else
				    			{
				    				URL = URL+File.separator+vals[0]+File.separator+po.getPOReference()+File.separator+"CommandeClient"+File.separator+po.getDocumentNo()+File.separator+"CommandReferences"+File.separator+"CR_"+po.getDocumentNo()+".pdf";
				    				URL_Linux = URL_Linux+File.separator+vals[0]+File.separator+po.getPOReference()+File.separator+"CommandeClient"+File.separator+po.getDocumentNo()+File.separator+"CommandReferences"+File.separator+"CR_"+po.getDocumentNo()+".pdf";
				    			}
				    			
				    			InputStream inx = null;
				    			OutputStream outx = null;
				    			try {
				                	File nx = null;
				                	if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs()))
				            			nx = new File(URL);
				            		else
				            			nx = new File(URL_Linux);
				        			FileUtils.copyFile(f, nx);
				        			nx.canRead();
				        			File fxx = new File(nx.getAbsolutePath()); 
				        			fxx.exists();
				        			 
				        			String origx =f.getAbsolutePath();
				        			String destx = nx.getAbsolutePath();
				        			inx = new FileInputStream(origx);
				        			outx = new FileOutputStream(destx);
				        			byte[] bufx = new byte[1024];
				        			int lenx;
				        			while ((lenx = inx.read(bufx)) > 0) {
				        			   outx.write(bufx, 0, lenx);
				        			}
				        			
				        			Timestamp t = new Timestamp(GregorianCalendar.getInstance().getTimeInMillis());
				        			MOrderDownload odx =  new MOrderDownload(getCtx(), 0, get_Trx());
				        			//od.set("DateCreated", new GregorianCalendar());
				        			odx.set_Value("DateCreated", t);
				        			odx.setC_Order_ID(po.getC_Order_ID());
				        			odx.setZ_FileType("Command References");
				        			odx.setName("CR_"+po.getDocumentNo()+".pdf");
				        			odx.setDownloadURL(URL.replace("\\", "/"));
				        			odx.setAD_Org_ID(po.getAD_Org_ID());
				        			odx.set_ValueNoCheck("IsArControled", false);
				        			odx.setIsToNotify(true);
				        			odx.save();
				        			
				        			MOrderDownload odx1 =  new MOrderDownload(getCtx(), 0, get_Trx());
				        			//od.set("DateCreated", new GregorianCalendar());
				        			odx1.set_Value("DateCreated", t);
				        			odx1.setC_Order_ID(so.getC_Order_ID());
				        			odx1.setZ_FileType("Command References");
				        			odx1.setName("CR_"+po.getDocumentNo()+".pdf");
				        			odx1.setDownloadURL(URL.replace("\\", "/"));
				        			odx1.setAD_Org_ID(po.getAD_Org_ID());
				        			odx1.set_ValueNoCheck("IsArControled", false);
				        			odx1.setIsToNotify(true);
				        			odx1.save();
				        		
				        		} catch (IOException e) {
				        			// TODO Auto-generated catch block
				        			e.printStackTrace();
				        		}finally {
				        			inx.close();
				        			outx.close(); 
								}
				    			
				    		} catch (IOException e) {
				    			// TODO Auto-generated catch block
				    			e.printStackTrace();
				    		}
					}
				}
				
				
				MDocTypeInfo dtiPo = MDocTypeInfo.get(getCtx(),  po.getC_DocTypeTarget_ID(), get_Trx());//DOCTYPE SAV
				//	Line
				int M_Product_ID = rs.getInt(3);
				for (MOrderLine element : soLines) {
					if (element.getM_Product_ID() == M_Product_ID  && element.getC_OrderLine_ID() == rs.getInt(4))
					{
						MOrderLine poLine = new MOrderLine (po);
						
							poLine.setM_Warehouse_ID(po.getM_Warehouse_ID());
						poLine.setRef_OrderLine_ID(element.getC_OrderLine_ID());
						//1266
						poLine.set_Value("IsCocontractant", mb.get_Value("IsCocontractant"));
						//getCtx().setContext("IsCocontractant", mb.get_ValueAsBoolean("IsCocontractant")?"Y":"N");
						//if(mb.get_ValueAsBoolean("IsCocontractant"))
						//{
						//	int C_Tax_ID = Tax.getTaxWithCocontractant(getCtx(),po.getC_BPartner_Location_ID(),0, po.getAD_Org_ID(), element.getM_Product_ID(), 0, po.getDateOrdered(),null,po.getC_DocTypeTarget_ID(), 
						//			po.isSOTrx(),mb.get_ValueAsBoolean("IsCocontractant"));
						//	if(C_Tax_ID!=0)
						//		poLine.setC_Tax_ID(C_Tax_ID);
						////
						//}
						//1266
						poLine.setM_Product_ID(element.getM_Product_ID());
						poLine.setM_AttributeSetInstance_ID(element.getM_AttributeSetInstance_ID());
						poLine.setC_UOM_ID(element.getC_UOM_ID());
						poLine.setQtyEntered(element.getQtyEntered().subtract(element.getQtyDelivered()));
						poLine.setQtyOrdered(element.getQtyEntered().subtract(element.getQtyDelivered()));
						poLine.setDescription(element.getDescription());
						poLine.setDatePromised(element.getDatePromised());
						
						//1266
						//poLine.set_ValueNoCheck("IsCocontractant", mb.get_Value("IsCocontractant"));
						//1266
					//	BigDecimal storePrice = element.get_ValueAsBigDecimal("storePoPrice");
					//	if (storePrice == null || storePrice.equals(BigDecimal.ZERO))
						String msgEclPricePO = Msg.getMsg(getCtx(), "EGGO_EXCL_POPRICE");
						if(msgEclPricePO.contains(""+element.getM_Product_ID()))
							poLine.setPrice(element.get_ValueAsBigDecimal("storePoPrice"));
						else
							poLine.setPrice();
					//	else
					//		poLine.setPrice(storePrice);
						poLine.setTax();
						poLine.save(get_Trx());
						poLine.updateHeaderTax();
						OrderLines.add(element.getC_OrderLine_ID());
						
					}
				}
				bps.add(C_BPartner_ID);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
			throw e;
		}finally 
		{
			Util.closeCursor(pstmt, rs);
		}
		//	Set Reference to PO
		/*if (counter == 1 && po != null)
		{
			so.set_ValueNoCheck("Ref_Order_ID",po.getC_Order_ID());
			so.save();
		}*/
		return counter;
	}	//	createPOFromSO

	/**
	 *	Create PO for Vendor
	 *	@param C_BPartner_ID vendor
	 *	@param so sales order
	 */
	public MOrder createPOForVendor(int C_BPartner_ID, MOrder so, int TypeOA_ID)
	{
		//EggoCtx.setConstants();
		MBPartner vendor = new MBPartner (getCtx(), C_BPartner_ID, get_Trx());
		
		
		MOrder po = new MOrder (getCtx(), 0, get_Trx());
		po.setClientOrg(so.getAD_Client_ID(), so.getAD_Org_ID());
		po.set_ValueNoCheck("Ref_Order_ID",so.getC_Order_ID());
		po.setIsSOTrx(false);
		
		po.set_Value("Z_TypeOA_ID", TypeOA_ID);
		
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), so.getC_DocTypeTarget_ID(), get_Trx());
		
		Timestamp ta = null;
		ta = new  Timestamp(System.currentTimeMillis());
		po.setDateOrdered (ta);  //TAM
		if (dti != null && dti.isSAV() && dti.isCuisine())  //MERGE
		{
				po.setC_DocTypeTarget_ID(dti.getC_DocType_AchatSAV_ID()); //MERGE
				po.setC_DocType_ID(dti.getC_DocType_AchatSAV_ID()); //MERGE
		}
		else { 
			if (dti.isDirect() && dti.isCuisine() ) //MERGE
			{
				po.setC_DocTypeTarget_ID(dti.getC_DocType_AchatDirect_ID());   //MERGE
				po.setC_DocType_ID(dti.getC_DocType_AchatDirect_ID()); //MERGE
			}
			else
				if ((dti.isStore() || dti.isPlacard()) && dti.isCuisine() ) //MERGE
				{
					po.setC_DocTypeTarget_ID(dti.getC_DocType_Achat_ID());   //MERGE
					po.setC_DocType_ID(dti.getC_DocType_Achat_ID()); //MERGE
				}
				else
					po.setC_DocTypeTarget_ID();  
		
		}
		//70902
		//po.setBPartner(vendor);
		po.setBPartner(vendor,po.getC_DocType_ID());
		MDocTypeInfo dtiPo = MDocTypeInfo.get(getCtx(),  po.getC_DocTypeTarget_ID(), get_Trx());//DOCTYPE SAV
		Timestamp ts = null;
		
		Timestamp dateOrdered = po.getDateOrdered();
		Timestamp datePose = so.get_ValueAsTimestamp("DatePose");

		if (so.get_ValueAsTimestamp("DatePose") != null) 
			ts = new Timestamp(so.get_ValueAsTimestamp("DatePose").getTime()) ;
		else 
			if (so.getDatePromised() != null )
				ts = new Timestamp(so.getDatePromised().getTime()) ;
			else
				ts = new Timestamp(System.currentTimeMillis());
		
		int deliveryTime = vendor.get_ValueAsInt("DeliveryTime");
		deliveryTime = deliveryTime * -1;
		if(dti.isSAV())
		{
			ts = new Timestamp(System.currentTimeMillis());
			deliveryTime = 21;
		}
		if (deliveryTime != 0 && ts != null )
		{	
				Calendar cal = Calendar.getInstance();
				cal.setTime(ts);
				cal.add(Calendar.DAY_OF_MONTH, deliveryTime);
				ts.setTime(cal.getTime().getTime()); // or
				ts = new Timestamp(cal.getTime().getTime());
		}
		
		if(so.get_ValueAsTimestamp("DatePose")==null)
		{
			Calendar cal = Calendar.getInstance();
			cal.setTime(dateOrdered);
			cal.add(Calendar.DAY_OF_MONTH, 1);
			ts.setTime(cal.getTime().getTime()); // or
			ts = new Timestamp(cal.getTime().getTime());
			
		}
		
		po.setDatePromised(ts);
		
		if(datePose!=null && dateOrdered.after(datePose))
		{
			Calendar cal = Calendar.getInstance();
			cal.setTime(dateOrdered);
			cal.add(Calendar.DAY_OF_MONTH, 1);
			ts.setTime(cal.getTime().getTime()); 
			ts = new Timestamp(cal.getTime().getTime());
			po.setDatePromised(ts);
		}
		
		if (deliveryTime != 0 && datePose!=null)
		{
			Calendar cal = Calendar.getInstance();
			cal.setTime(datePose);
			cal.add(Calendar.DAY_OF_MONTH, deliveryTime*-1);
			Timestamp ts3 = new Timestamp(System.currentTimeMillis());
			ts3.setTime(cal.getTime().getTime()); 
			ts3 = new Timestamp(cal.getTime().getTime());
			if(ts3.before(dateOrdered))
			{
				Calendar cal2 = Calendar.getInstance();
				cal2.setTime(dateOrdered);
				cal2.add(Calendar.DAY_OF_MONTH, 1);
				Timestamp ts2 = new Timestamp(System.currentTimeMillis());
				ts2.setTime(cal2.getTime().getTime()); 
				ts2 = new Timestamp(cal2.getTime().getTime());
				po.setDatePromised(ts2);
			}
		}
		//
		po.setDescription(so.getDescription());
		po.setPOReference(so.getPOReference());
		po.setPriorityRule(so.getPriorityRule());
		po.setSalesRep_ID(so.getSalesRep_ID());
		
		//Si EggoLux et Tiers Avec ADR LUX et Monteur, WARHOUSE SUR LE MAGASIN
		int warehouse = DB.getSQLValue(get_Trx(), "Select max(mw.M_WAREHOUSE_ID) from C_BPartner cb " +
				"inner join C_BPartner_Location cbl on cbl.C_BPartner_ID = cb.C_BPartner_ID  " +
				"inner join C_LOCATION co on co.C_LOCATION_ID = cbl.C_LOCATION_ID " +
				"inner join AD_ORGINFO aoi on aoi.AD_ORG_ID = ?  " +
				"inner join M_WAREHOUSE mw on mw.M_WAREHOUSE_ID = aoi.M_WAREHOUSE_ID " +
				"inner join C_LOCATION co2 on co2.C_LOCATION_ID = mw.C_LOCATION_ID where cbl.C_BPARTNER_LOCATION_ID = ? " +
				"and cb.ISMONTEUR = 'Y' and co.C_COUNTRY_ID = co2.C_COUNTRY_ID", po.getAD_Org_ID(), po.getC_BPartner_Location_ID());
		//Si direct => 01
		if(dtiPo.isDirect())
		{
			if(warehouse>0)
			{
				po.setM_Warehouse_ID(warehouse);
			}
			else{
				po.setM_Warehouse_ID(so.getM_Warehouse_ID());
				warehouse = so.getM_Warehouse_ID();
			}
		}
		else
		{
			boolean ok = false;
			if(typesOA.get(po.get_ValueAsInt("Z_TypeOA_ID")).equals("MARCH"))
			{
				MWarehouse mws [] = MWarehouse.getForOrg(getCtx(), po.getAD_Org_ID());
				for (int i = 0; i < mws.length; i++) {
					MWarehouse mw = mws[i];
					MLocator[] mls  = MLocator.getWithWhereClause(getCtx(), mw.getM_Warehouse_ID(), 
							" AND Z_LocatorType_ID = (Select MAX(Z_LocatorType_ID) from Z_LocatorType "
							+ "where Z_LocatorType.AD_Client_ID = M_Locator.AD_Client_ID and upper(Z_LocatorType.Description) = upper('Stock Central'))") ;
					if(mls == null)
						continue;
					for (int j = 0; j < mls.length; j++) {
						po.setM_Warehouse_ID(mw.getM_Warehouse_ID());
						ok = true;
						break;
					}
					if(ok)
						break;
				
				}
			}
			else
				if(warehouse>0)
				{
					po.setM_Warehouse_ID(warehouse);
				}
				else{
					po.setM_Warehouse_ID(so.getM_Warehouse_ID());
					warehouse = so.getM_Warehouse_ID();
				}
		}		
		if(po.getM_Warehouse_ID()==0)
			po.setM_Warehouse_ID(so.getM_Warehouse_ID());
		//	Drop Ship
		po.setIsDropShip(so.isDropShip());
		if (so.isDropShip())
		{
			po.setShip_BPartner_ID(so.getC_BPartner_ID());
			po.setShip_Location_ID(so.getC_BPartner_Location_ID());
			po.setShip_User_ID(so.getAD_User_ID());
		}
		//	References
		po.setC_Activity_ID(so.getC_Activity_ID());
		po.setC_Campaign_ID(so.getC_Campaign_ID());
		po.setC_Project_ID(so.getC_Project_ID());
		po.setUser1_ID(so.getUser1_ID());
		po.setUser2_ID(so.getUser2_ID());
		//
		po.save();
		mos.add(po);
		return po;
	}	//	createPOForVendor

	private File genPDFMonteur (int record_ID, String NoOA, MBPartner mb)
	{
		
		p_File = "/tmp/U"+getAD_User_ID()+"_"+this.getAD_PInstance_ID()+"_JasperReport.pdf";
		if(System.getProperty("os.name").indexOf("win") >= 0)
		{
			String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
			p_File = xxx+p_File.replace("/", "\\");
			p_File = p_File.replace("\\tmp","");
		
		}
        p_File2 = NoOA+".pdf";
		getCtx().setContext(1,"C_BPartner_ID", mb.getC_BPartner_ID());
		int AD_Process_ID = DB.getSQLValue(get_Trx(),"select ad_process_id from ad_process where value ='GenPDFMonteur' ");
		ProcessInfo pi2 = new ProcessInfo("Monteur pdf Print", AD_Process_ID);
        pi2.setRecord_ID(record_ID  );
        pi2.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(getCtx(),
                    pi2.getAD_Process_ID(), pi2.getRecord_ID()));
        pi2.setTable_ID(mb.get_Table_ID());
        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
        ProcessInfoParameter pip1 = new ProcessInfoParameter("C_BPartner_ID",mb.getC_BPartner_ID(),
                null, null, null);
        pipList.add(pip1);
        ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList
                .toArray(new ProcessInfoParameter[pipList.size()]);
        pi2.setParameter(parameters);
            //#18759
            boolean success = true;
            //#18759
            RusReportStarter jrl = new RusReportStarter();
            //#18759
            MProcess process2 = new MProcess(getCtx(), AD_Process_ID, get_Trx());
            if (!process2.isReport()){
            	ProcessStarter pstart = new ProcessStarter(getCtx(), AD_Process_ID, get_Trx());
            	pstart.setRecord_ID(record_ID);
            	pstart.addParameter("FileName", p_File, null);
            	try {
					pstart.start();
					String outFile = pstart.getOutput();
					int spacePos = outFile.indexOf(" ");
					if (spacePos > 0) {
					   outFile= outFile.substring(0, spacePos);
					}
					
					ret = new File(outFile);
				} catch (Exception e) {
					throw new CompiereException("Le processus d'export est en echec");
				}
            }
            else
            {
            //#18759
            	ret = new File(p_File);
            	
            	ret = jrl.startReport(getCtx(), pi2, false); // ZCOM999
            }
            if (ret == null)
            {
                throw new CompiereException("Le processus d'export est en echec");
            }
            
            
           return ret;
	}
	
	private String getOutputFileNameSimple() {
		//Nom du fichier : InvoiceNo.pdf
		
		if(p_File==null)
			return "NoFile";
		return p_File2 ;
	}
}	//	doIt
