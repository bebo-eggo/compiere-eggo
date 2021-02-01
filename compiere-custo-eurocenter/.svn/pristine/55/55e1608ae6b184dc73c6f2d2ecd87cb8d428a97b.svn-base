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
import java.sql.*;
import java.util.*;
import java.util.logging.*;

import org.apache.commons.httpclient.methods.GetMethod;
import org.compiere.framework.PO;
import org.compiere.model.*;
import org.compiere.util.*;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MProductPrice;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MPriceListVersion;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.model.X_AD_Org;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

/**
 *	Replenishment Report
 *	
 *  @author Jorg Janke
 *  @version $Id: ReplenishReport.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class ReplenishReportEC extends SvrProcess
{
	/** client Id */
	private int p_AD_Client_ID;
	/** organisation id */
	private int p_AD_Org_ID;
	/**price list*/
	private int p_M_PriceList_Version_ID;
	/** date requise */
	private Timestamp	p_DateRequired;
	/** Warehouse				*/
	//private int		p_M_Warehouse_ID = 0;
	/**	Optional BPartner		*/
	/** Create (POR)Requisition */
	private String	p_ReplenishmentCreate = null;
	/** Document Type			*/
	private int		p_C_DocType_ID = 0;
	/** Return Info				*/
	private String	m_info = "";
	
	
	
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
				p_AD_Client_ID = element.getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = element.getParameterAsInt();
			else if (name.equals("M_PriceList_Version_ID"))
				p_M_PriceList_Version_ID = element.getParameterAsInt();
			else if (name.equals("DateRequired"))
				p_DateRequired = (Timestamp)element.getParameter();
			//else if (name.equals("M_Warehouse_ID"))
			//	p_M_Warehouse_ID = element.getParameterAsInt();
			else if (name.equals("ReplenishmentCreate"))
				p_ReplenishmentCreate = (String)element.getParameter();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_C_DocType_ID = getTypeDocPOR();
		if (p_C_DocType_ID<=0)
			throw new IllegalArgumentException("No DocType POR");
	}	//	prepare

	/**
	 *  Perrform process.
	 *  @return Message 
	 *  @throws Exception if not successful
	 */
	@Override
	protected String doIt() throws Exception
	{
		log.info("ReplenishmentCreate=" + p_ReplenishmentCreate);
		if (p_ReplenishmentCreate != null && p_C_DocType_ID == 0)
			throw new CompiereUserException("@FillMandatory@ @C_DocType_ID@");
		
		//MWarehouse wh = MWarehouse.get(getCtx(), p_M_Warehouse_ID);
		//if (wh.get_ID() == 0)  
		//throw new CompiereSystemException("@FillMandatory@ @M_Warehouse_ID@");
		//
		prepareTable();
		fillTable();
		//
		//if (p_ReplenishmentCreate == null)
		//	return "OK";
		//
		MDocType dt = MDocType.get(getCtx(), p_C_DocType_ID);
		if (!dt.getDocBaseType().equals("POR"))
			throw new CompiereSystemException("@C_DocType_ID@=" + dt.getName() + " <> " + p_C_DocType_ID);
		
		StringBuffer sql = new StringBuffer("EXISTS (SELECT 1 FROM M_ProductPrice pp WHERE pp.M_PriceList_Version_ID = ");
		sql.append(p_M_PriceList_Version_ID);
		if(p_AD_Org_ID > 0)
			sql.append(" AND pp.AD_Org_ID = ").append(p_AD_Org_ID);
		sql.append(" AND AD_Org.AD_Org_ID = pp.AD_Org_ID)");
		//
		int countRequisition = 0;
		MPriceListVersion plv = new MPriceListVersion(getCtx(), p_M_PriceList_Version_ID, get_Trx());
		int[] orgs = null;
		if(plv.getAD_Org_ID()!= 0)
		{
			//POur une organisation
			orgs = new int[1];
			orgs[0] = plv.getAD_Org_ID();
		}else
			//Toutes les organisations
		{
			orgs = PO.getAllIDs(X_AD_Org.Table_Name, "AD_Org.IsActive='Y' and AD_Org.AD_Client_ID=" + p_AD_Client_ID , get_Trx());
		}
		if(orgs != null && orgs.length > 0)
			for (int ad_Org_ID : orgs) {
				createRequisition(ad_Org_ID);
				countRequisition++;
			}
		else
			return Msg.getMsg(getCtx(), "EUROCENTER_NOORG_PLV");
		
		return countRequisition + " @M_Requisition_ID@ @Created@";
		
	}	//	doIt

	/**
	 * 	Prepare/Check Replenishment Table
	 */
	private void prepareTable()
	{
		//	Level_Max must be >= Level_Max
		String sql = "UPDATE M_Replenish"
			+ " SET Level_Max = Level_Min "
			+ "WHERE Level_Max < Level_Min";
		int no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected Max_Level=" + no);
		
		//	Minimum Order should be 1
		sql = "UPDATE M_Product_PO"
			+ " SET Order_Min = 1 "
			+ "WHERE (Order_Min IS NULL OR Order_Min < 1) " 
			+ "AND  Discontinued = 'N'";
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected Order Min=" + no);
		
		//	Pack should be 1
		sql = "UPDATE M_Product_PO"
			+ " SET Order_Pack = 1 "
			+ "WHERE (Order_Pack IS NULL OR Order_Pack < 1) "
			+ "AND  Discontinued = 'N'";
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected Order Pack=" + no);

		//	Set Current Vendor where only one vendor
		sql = "UPDATE M_Product_PO p"
			+ " SET IsCurrentVendor='Y' "
			+ "WHERE IsCurrentVendor<>'Y'"
			//jz groupby problem + " AND EXISTS (SELECT * FROM M_Product_PO pp "
			+ " AND EXISTS (SELECT 1 FROM M_Product_PO pp "
				+ "WHERE p.M_Product_ID=pp.M_Product_ID "
				+ "GROUP BY pp.M_Product_ID "
				+ "HAVING COUNT(*) = 1) "
			+ "AND  Discontinued = 'N'";
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected CurrentVendor(Y)=" + no);

		//	More then one current vendor
		sql = "UPDATE M_Product_PO p"
			+ " SET IsCurrentVendor='N' "
			+ "WHERE IsCurrentVendor = 'Y'"
			//jz + " AND EXISTS (SELECT * FROM M_Product_PO pp "
			+ " AND EXISTS (SELECT 1 FROM M_Product_PO pp "
				+ "WHERE p.M_Product_ID=pp.M_Product_ID AND pp.IsCurrentVendor='Y' "
				+ "GROUP BY pp.M_Product_ID "
				+ "HAVING COUNT(*) > 1) "
			+ "AND  Discontinued = 'N'";
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected CurrentVendor(N)=" + no);
		
		//	Just to be sure
		sql = "DELETE FROM T_Replenish WHERE AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Delete Existing Temp=" + no);
	}	//	prepareTable

	/**
	 * 	Fill Table
	 * 	@param wh warehouse
	 */
	private void fillTable () throws Exception
	{
		String sql = "INSERT INTO T_Replenish "
			+ "(AD_PInstance_ID, M_Warehouse_ID, M_Product_ID, AD_Client_ID, AD_Org_ID,"
			+ " ReplenishType, Level_Min, Level_Max, QtyOnHand,QtyReserved,QtyOrdered,"
			+ " C_BPartner_ID, Order_Min, Order_Pack, QtyToOrder, ReplenishmentCreate) "
			+ "SELECT " + getAD_PInstance_ID() 
				+ ", r.M_Warehouse_ID, r.M_Product_ID, r.AD_Client_ID, r.AD_Org_ID,"
			+ " r.ReplenishType, r.Level_Min, r.Level_Max, 0,0,0,"
			+ " po.C_BPartner_ID, po.Order_Min, po.Order_Pack, 0, ";
		if (p_ReplenishmentCreate == null)
			sql += "null";
		else
			sql += "'" + p_ReplenishmentCreate + "'";
		sql += " FROM M_Replenish r"
			+ " INNER JOIN M_Product_PO po ON (r.M_Product_ID=po.M_Product_ID) "
			+ " INNER JOIN M_Product mp ON (r.M_Product_ID=mp.M_Product_ID) "
			+ " inner join M_ProductPrice mpp on MPP.M_PRODUCT_ID = R.M_PRODUCT_ID and MPP.M_PRICELIST_VERSION_ID = "+p_M_PriceList_Version_ID
			+ "WHERE po.IsCurrentVendor='Y'"	//	Only Current Vendor
			+ " AND r.ReplenishType<>'0'"
			+ " AND po.IsActive='Y' AND r.IsActive='Y' AND mp.IsActive='Y'"
			+ " AND  po.Discontinued = 'N'"
			+ " AND  mp.Discontinued = 'N'"
			+ " AND r.M_Warehouse_ID= (select oi.m_warehouse_id from AD_OrgInfo oi where oi.ad_org_id = r.AD_Org_ID)";
		int no = DB.executeUpdate(sql, get_TrxName());
		log.finest(sql);
		log.fine("Insert (1) #" + no);
		
		sql = "UPDATE T_Replenish t SET "
			+ "QtyOnHand = (SELECT COALESCE(SUM(Qty),0) FROM M_StorageDetail s, M_Locator l WHERE t.M_Product_ID=s.M_Product_ID"
			    + " AND s.QtyType='H' "
				+ " AND l.M_Locator_ID=s.M_Locator_ID AND l.M_Warehouse_ID=t.M_Warehouse_ID),"
			+ "QtyReserved = (SELECT COALESCE(SUM(Qty),0) FROM M_StorageDetail s, M_Locator l WHERE t.M_Product_ID=s.M_Product_ID"
				+ " AND s.QtyType='R' "
				+ " AND l.M_Locator_ID=s.M_Locator_ID AND l.M_Warehouse_ID=t.M_Warehouse_ID),"
			+ "QtyOrdered = (SELECT COALESCE(SUM(Qty),0) FROM M_StorageDetail s, M_Locator l WHERE t.M_Product_ID=s.M_Product_ID"
				+ " AND s.QtyType='O' "
				+ " AND l.M_Locator_ID=s.M_Locator_ID AND l.M_Warehouse_ID=t.M_Warehouse_ID)";
		if (p_C_DocType_ID != 0)
			sql += ", C_DocType_ID=" + p_C_DocType_ID;
		sql += " WHERE AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update #" + no);

		//	Delete inactive products and replenishments
		sql = "DELETE FROM T_Replenish r "
			+ "WHERE (EXISTS (SELECT * FROM M_Product p "
				+ "WHERE p.M_Product_ID=r.M_Product_ID AND p.IsActive='N')"
			+ " OR EXISTS (SELECT * FROM M_Replenish rr "
				+ " WHERE rr.M_Product_ID=r.M_Product_ID AND rr.M_Warehouse_ID=r.M_Warehouse_ID AND rr.IsActive='N'))"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Delete Inactive=" + no);
	 
		//	Ensure Data consistency
		sql = "UPDATE T_Replenish SET QtyOnHand = 0 WHERE QtyOnHand IS NULL";
		no = DB.executeUpdate(sql, get_TrxName());
		sql = "UPDATE T_Replenish SET QtyReserved = 0 WHERE QtyReserved IS NULL";
		no = DB.executeUpdate(sql, get_TrxName());
		sql = "UPDATE T_Replenish SET QtyOrdered = 0 WHERE QtyOrdered IS NULL";
		no = DB.executeUpdate(sql, get_TrxName());

		//	Set Minimum / Maximum Maintain Level
		//	X_M_Replenish.REPLENISHTYPE_ReorderBelowMinimumLevel
		sql = "UPDATE T_Replenish"
			+ " SET QtyToOrder = Level_Min - QtyOnHand + QtyReserved - QtyOrdered "
			+ "WHERE ReplenishType='1'" 
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update Type-1=" + no);
		//
		//	X_M_Replenish.REPLENISHTYPE_MaintainMaximumLevel
		sql = "UPDATE T_Replenish"
			+ " SET QtyToOrder = Level_Max - QtyOnHand + QtyReserved - QtyOrdered "
			+ "WHERE ReplenishType='2'" 
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update Type-2=" + no);
	
		//	Delete rows where nothing to order
		sql = "DELETE FROM T_Replenish "
			+ "WHERE QtyToOrder < 1"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Delete No QtyToOrder=" + no);

		//	Minimum Order Quantity
		sql = "UPDATE T_Replenish"
			+ " SET QtyToOrder = Order_Min "
			+ "WHERE QtyToOrder < Order_Min"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Set MinOrderQty=" + no);

		//	Even dividable by Pack
		sql = "UPDATE T_Replenish"
			//jz MOD is not a standard function + " SET QtyToOrder = QtyToOrder - MOD(QtyToOrder, Order_Pack) + Order_Pack "
			+ " SET QtyToOrder = (TRUNC(QtyToOrder/Order_Pack,0)+1)*Order_Pack "
			//+ "WHERE MOD(QtyToOrder, Order_Pack) <> 0"
			+ "WHERE (QtyToOrder-TRUNC(QtyToOrder/Order_Pack,0)*Order_Pack) <> 0"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Set OrderPackQty=" + no);
		
		//	Source from other warehouse
//		if (wh.getM_WarehouseSource_ID() != 0)
//		{
//			sql = "UPDATE T_Replenish"
//				+ " SET M_WarehouseSource_ID=" + wh.getM_WarehouseSource_ID() 
//				+ " WHERE AD_PInstance_ID=" + getAD_PInstance_ID();
//			no = DB.executeUpdate(sql, get_TrxName());
//			if (no != 0)
//				log.fine("Set Warehouse Source Warehouse=" + no);
//		}
//		//	Replenishment on Product level overwrites 
		sql = "UPDATE T_Replenish "
			+ "SET M_WarehouseSource_ID=(SELECT M_WarehouseSource_ID FROM M_Replenish r "
				+ "WHERE r.M_Product_ID=T_Replenish.M_Product_ID"
				+ " AND r.M_Warehouse_ID=(select oi.m_warehouse_id from AD_OrgInfo oi where oi.ad_org_id = r.AD_Org_ID))"
			+ "WHERE AD_PInstance_ID=" + getAD_PInstance_ID()
			+ " AND EXISTS (SELECT * FROM M_Replenish r "
				+ "WHERE r.M_Product_ID=T_Replenish.M_Product_ID"
				+ " AND r.M_Warehouse_ID=(select oi.m_warehouse_id from AD_OrgInfo oi where oi.ad_org_id = r.AD_Org_ID)"
				+ " AND r.M_WarehouseSource_ID > 0)";
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Set Product Source Warehouse=" + no);
		
		//	Check Source Warehouse
		sql = "UPDATE T_Replenish"
			+ " SET M_WarehouseSource_ID = NULL " 
			+ "WHERE M_Warehouse_ID=M_WarehouseSource_ID"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Set same Source Warehouse=" + no);
		
		//	Custom Replenishment
//		String className = wh.getReplenishmentClass();
//		if (className == null || className.length() == 0)
//			return;
//		//	Get Replenishment Class
//		ReplenishInterface custom = null;
//		try
//		{
//			Class<?> clazz = Class.forName(className);
//			custom = (ReplenishInterface)clazz.newInstance();
//		}
//		catch (Exception e)
//		{
//			throw new CompiereUserException("No custom Replenishment class "
//				+ className + " - " + e.toString());
//		}
//		
//		X_T_Replenish[] replenishs = getReplenish("ReplenishType='9'");
//		for (X_T_Replenish replenish : replenishs) {
//			if (replenish.getReplenishType().equals(X_T_Replenish.REPLENISHTYPE_Custom))
//			{
//				BigDecimal qto = null;
//				try
//				{
//					qto = custom.getQtyToOrder(wh, replenish);
//				}
//				catch (Exception e)
//				{
//					log.log(Level.SEVERE, custom.toString(), e);
//				}
//				if (qto == null)
//					qto = Env.ZERO;
//				replenish.setQtyToOrder(qto);
//				replenish.save();
//			}
//		}
	}	//	fillTable
		
	/**
	 * 	Create Requisition
	 */
	private MRequisitionLine createRequisitionLine(MRequisition req , MProductPrice pp){
		MRequisitionLine reql = new MRequisitionLine(getCtx(), 0, get_TrxName());
		reql.setAD_Client_ID(req.getAD_Client_ID());
		reql.setAD_Org_ID(req.getAD_Org_ID());
		reql.setM_Product_ID(pp.getM_Product_ID());
		reql.setPriceActual(pp.getPriceStd());
		reql.setQty(pp.getQtyMin());
		reql.setM_Requisition_ID(req.getM_Requisition_ID());
		reql.save();
		return reql;
	}
	
	private void createRequisition(int org) {
		
		int noReqs = 0;
		String info = "";
		//
		MRequisition requisition = null;
		MWarehouse wh = null;
		X_T_Replenish[] replenishs = getReplenish("M_WarehouseSource_ID IS NULL and AD_org_ID = "+org);
		for (X_T_Replenish replenish : replenishs) {
			
			if (wh == null || wh.getM_Warehouse_ID() != replenish.getM_Warehouse_ID())
				wh = MWarehouse.get(getCtx(), replenish.getM_Warehouse_ID());
			//
			if (requisition == null
				|| requisition.getM_Warehouse_ID() != replenish.getM_Warehouse_ID())
			{
				MPriceListVersion plv = new MPriceListVersion(getCtx(), p_M_PriceList_Version_ID, get_Trx());
				requisition = new MRequisition (getCtx(), 0, get_TrxName());
				requisition.setAD_Client_ID(p_AD_Client_ID);
				requisition.setAD_User_ID (getAD_User_ID());
				requisition.setC_DocType_ID(p_C_DocType_ID);
				requisition.setDescription(Msg.getMsg(getCtx(), "Folder + Min/Max"));
				//	Set Org/WH
				requisition.setAD_Org_ID(wh.getAD_Org_ID());
				requisition.setM_Warehouse_ID(wh.getM_Warehouse_ID());
				
				
				requisition.setDateRequired(p_DateRequired);
				//Date début folder
				requisition.setDateDoc(plv.getValidFrom());
				requisition.setM_Warehouse_ID(getWareHouseID(org));
				requisition.setM_PriceList_ID(plv.getM_PriceList_ID());
				
//				if (requisition.save()){
//					StringBuffer sql = new StringBuffer("select * from M_ProductPrice MP where mp.m_pricelist_version_id = ?");		
//					PreparedStatement pstmt = null;
//					ResultSet rs = null;
//					try{
//						pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
//						pstmt.setInt(1, p_M_PriceList_Version_ID);
//						rs = pstmt.executeQuery();
//						MProductPrice pp = null;
//						while(rs.next()){
//							pp = new MProductPrice(getCtx(), rs, get_Trx());
//							if(pp.getM_Product_ID() == replenish.getM_Product_ID())
//								createRequisitionLine(requisition, pp);
//						}
//					} catch(Exception e){
//						log.severe(e.getMessage());
//					}
//					
//					Util.closeCursor(pstmt, rs);
//				}
				
				if (!requisition.save())
					return;
				log.fine(requisition.toString());
				noReqs++;
				info += " - " + requisition.getDocumentNo();
			}
			//
			MRequisitionLine line = new MRequisitionLine(requisition);
			line.setM_Product_ID(replenish.getM_Product_ID());
			line.setC_BPartner_ID(replenish.getC_BPartner_ID());
			line.setQty(replenish.getQtyToOrder());
			line.setPrice();
			line.save();
		}
		m_info = "#" + noReqs + info;
		log.info(m_info);
	}	//	createRequisition
		
	/**
	 * 	Get Replenish Records
	 *	@return replenish
	 */
	private X_T_Replenish[] getReplenish (String where)
	{
		String sql = "SELECT * FROM T_Replenish "
			+ "WHERE AD_PInstance_ID=? AND C_BPartner_ID > 0 ";
		if (where != null && where.length() > 0)
			sql += " AND " + where;
		sql	+= " ORDER BY M_Warehouse_ID, M_WarehouseSource_ID, C_BPartner_ID";
		ArrayList<X_T_Replenish> list = new ArrayList<X_T_Replenish>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, getAD_PInstance_ID());
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
				list.add (new X_T_Replenish (getCtx(), rs, get_TrxName()));
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
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
		X_T_Replenish[] retValue = new X_T_Replenish[list.size ()];
		list.toArray (retValue);
		return retValue;
	}	//	getReplenish
	
	private int getWareHouseID(int org){
		String sql = "select oi.m_warehouse_id from AD_OrgInfo oi where oi.ad_org_id = ?";
		return DB.getSQLValue(get_Trx(), sql, org);
	}
	private int getTypeDocPOR(){
		String sql = "select max(C_DocType_ID) from C_DocType where c_doctype.docbasetype = 'POR'";
		return DB.getSQLValue(get_Trx(), sql);
	}
	
}	//	Replenish
