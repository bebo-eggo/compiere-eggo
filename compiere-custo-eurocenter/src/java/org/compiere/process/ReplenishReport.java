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

import org.compiere.common.CompiereStateException;
import org.compiere.common.QueryRestrictionVO;
import org.compiere.common.QueryVO;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.model.*;
import org.compiere.util.*;

import com.audaxis.compiere.db.Util;
//import com.edb.core.Utils;

/**
 *	Replenishment Report
 *	
 *  @author Jorg Janke
 *  @version $Id: ReplenishReport.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class ReplenishReport extends SvrProcess implements ZoomInterface
{
	/** Warehouse				*/
	private int		p_M_Warehouse_ID = 0;
	/** Client				*/
	private int		p_AD_Client_ID = 0;
	/** p_M_Product_Category_ID				*/
	private int		p_M_Product_Category_ID = 0;
	/** p_Z_S_Famille_ID				*/
	private int		p_Z_S_Famille_ID = 0;
	/** p_Z_S_S_Famille_ID				*/
	private int		p_Z_S_S_Famille_ID = 0;
	/** p_Z_S_S_S_Famille_ID				*/
	private int		p_Z_S_S_S_Famille_ID = 0;
	/**	Optional BPartner		*/
	private int		p_C_BPartner_ID = 0;
	/** Create (POO)Purchse Order or (POR)Requisition or (MMM)Movements */
	private String	p_ReplenishmentCreate = null;
	/** Document Type			*/
	private int		p_C_DocType_ID = 0;
	/** Return Info				*/
	private String	m_info = "";
	
	private String p_DocAction = null;
	
	private ArrayList<MOrder> POOs = new ArrayList<MOrder>();//Redmine 49943
	private ArrayList<MRequisition> PORs = new ArrayList<MRequisition>();//Redmine 49943
	private ArrayList<MMovement> MMMs = new ArrayList<MMovement>();//Redmine 49943
	
	private String STD_CLIENT_CHECK = " AND AD_Client_ID= " ;
	
	private int		p_SalesRep_ID = 0;
	
	String info = "";
	
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
			{
				p_AD_Client_ID = element.getParameterAsInt();
				STD_CLIENT_CHECK = STD_CLIENT_CHECK+p_AD_Client_ID;
			}
			else if (name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = element.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = element.getParameterAsInt();
			else if (name.equals("M_Product_Category_ID"))
				p_M_Product_Category_ID = element.getParameterAsInt();
			else if (name.equals("Z_S_Famille_ID"))
				p_Z_S_Famille_ID = element.getParameterAsInt();
			else if (name.equals("Z_S_S_Famille_ID"))
				p_Z_S_S_Famille_ID = element.getParameterAsInt();
			else if (name.equals("Z_S_S_S_Famille_ID"))
				p_Z_S_S_S_Famille_ID = element.getParameterAsInt();
			else if (name.equals("ReplenishmentCreate"))
				p_ReplenishmentCreate = (String)element.getParameter();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = element.getParameterAsInt();
			else if (name.equals("DocAction"))
				p_DocAction = (String)element.getParameter();
			else if (name.equals("SalesRep_ID"))
				p_SalesRep_ID = element.getParameterAsInt();
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
		log.info("M_Warehouse_ID=" + p_M_Warehouse_ID 
			+ ", C_BPartner_ID=" + p_C_BPartner_ID 
			+ " - ReplenishmentCreate=" + p_ReplenishmentCreate
			+ ", C_DocType_ID=" + p_C_DocType_ID);
		if (p_ReplenishmentCreate != null && p_C_DocType_ID == 0)
			throw new CompiereUserException("@FillMandatory@ @C_DocType_ID@");
		ArrayList<Integer> mws = new ArrayList<Integer>();
		if(p_M_Warehouse_ID==0)
		{
			//Prendre l'ensemble des magasins
			String sql = "SELECT ao.AD_ORG_ID, " +
					"  ml.M_WAREHOUSE_ID " +
					"FROM M_LOCATOR ml " +
					"INNER JOIN M_Warehouse mw " +
					"ON mw.M_WAREHOUSE_ID = ml.M_WAREHOUSE_ID " +
					"INNER JOIN AD_ORG ao " +
					"ON ml.AD_ORG_ID = ao.AD_ORG_ID " +
					"INNER JOIN Z_LOCATORTYPE zl " +
					"ON (zl.Z_LOCATORTYPE_ID = ml.Z_LOCATORTYPE_ID " +
					"AND zl.ISSTANDARDTYPE   ='Y') " +
					"WHERE ao.ISMAG          = 'Y' " +
					"AND ml.ISACTIVE         = 'Y' " +
					"AND ao.ISACTIVE         = 'Y' " +
					"AND ml.ISACTIVE         = 'Y' " +
					"AND ml.ISDEFAULT        ='Y' " +
					"AND ml.AD_Client_ID     = ? ORDER BY MW.NAME ASC ";
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try
			{
				pstmt = DB.prepareStatement (sql, get_TrxName());
				pstmt.setInt (1, p_AD_Client_ID);
				rs = pstmt.executeQuery ();
				while (rs.next ())
					mws.add(rs.getInt(2));
				rs.close ();
				pstmt.close ();
				pstmt = null;
			}
			catch (Exception e)
			{
				pstmt = null;
			}finally	
			{
				Util.closeCursor(pstmt, rs);
			}
			
		}
		else
			mws.add(p_M_Warehouse_ID) ;
		
		for (int y = 0; y < mws.size(); y++) {
			
		
		MWarehouse wh = MWarehouse.get(getCtx(), mws.get(y));
		//if (wh.get_ID() == 0)  
		//	throw new CompiereSystemException("@FillMandatory@ @M_Warehouse_ID@");
		//
		if(y==0)
			prepareTable();
		fillTable(wh);
		//
		if (p_ReplenishmentCreate == null)
			continue;
		//
		MDocType dt = MDocType.get(getCtx(), p_C_DocType_ID);
		if (!dt.getDocBaseType().equals(p_ReplenishmentCreate))
			throw new CompiereSystemException("@C_DocType_ID@=" + dt.getName() + " <> " + p_ReplenishmentCreate);
		//
		if (p_ReplenishmentCreate.equals("POO")){
			MOrder mo = createPO(mws.get(y));
		}
		else if (p_ReplenishmentCreate.equals("POR")){
			MRequisition mr = createRequisition(mws.get(y));
		}
		else if (p_ReplenishmentCreate.equals("MMM")){
			MMovement mm = createMovements(mws.get(y));
		}
		}
		if(!POOs.isEmpty())
		{
			for (int i = 0; i < POOs.size(); i++) {
				//POOs.get(i).setDescription(POOs.get(i).getDescription()+" ");
				//POOs.get(i).save();
				if(p_DocAction!=null && !DocumentEngine.processIt(POOs.get(i), p_DocAction))
				{
					// Ignore errors in processing
					log.warning("Could not process Order : " + POOs.get(i).getDocumentNo());
				}
				if(!POOs.get(i).save())
					throw new CompiereStateException("Could not save Order");
				info = " - " + POOs.get(i).getDocumentNo();
				m_info += "#" + POOs.get(i).getDocumentNo() + info+" - ";
				
				commit();
			}
		}
		if(!PORs.isEmpty())
		{
			for (int i = 0; i < PORs.size(); i++) {
				if(p_DocAction!=null && !DocumentEngine.processIt(PORs.get(i), p_DocAction))
				{
					// Ignore errors in processing
					log.warning("Could not process Requisition : " + PORs.get(i).getDocumentNo());
				}
				if(!PORs.get(i).save())
					throw new CompiereStateException("Could not save Requisition");
				info = " - " + PORs.get(i).getDocumentNo();
				m_info += "#" + PORs.get(i).getDocumentNo()+ info+" - ";
				commit();
			}
		}
		if(!MMMs.isEmpty())
		{
			for (int i = 0; i < MMMs.size(); i++) {
				if(p_DocAction!=null && !DocumentEngine.processIt(MMMs.get(i), p_DocAction))
				{
					// Ignore errors in processing
					log.warning("Could not process Movement : " + MMMs.get(i).getDocumentNo());
				}
				if(!MMMs.get(i).save())
					throw new CompiereStateException("Could not save Movement");
				info = " - " + MMMs.get(i).getDocumentNo();
				m_info += "#" + MMMs.get(i).getDocumentNo() + info+" - ";
				commit();
			}
		}
		log.info(m_info);
		return "OK";
	}	//	doIt

	/**
	 * 	Prepare/Check Replenishment Table
	 */
	private void prepareTable()
	{
		//Update discontinued
		String sql = "UPDATE M_PRODUCT_PO set DISCONTINUED = 'N' "
				+ "where exists (Select 1 from M_Product where M_Product.DISCONTINUED = 'N' and M_PRODUCT_PO.M_PRODUCT_ID = M_Product.M_PRODUCT_ID "
				+ "and M_PRODUCT_PO.AD_CLIENT_ID = M_PRODUCT.AD_CLIENT_ID ) AND DISCONTINUED = 'Y' ";
		sql = sql + STD_CLIENT_CHECK;
		int no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("update DISCONTINUED = 'N'=" + no);
		
		sql = "UPDATE M_PRODUCT_PO set DISCONTINUED = 'Y' "
				+ "where exists (Select 1 from M_Product where M_Product.DISCONTINUED = 'Y' and M_PRODUCT_PO.M_PRODUCT_ID = M_Product.M_PRODUCT_ID "
				+ "and M_PRODUCT_PO.AD_CLIENT_ID = M_PRODUCT.AD_CLIENT_ID )  AND DISCONTINUED = 'N' ";
		sql = sql + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("update DISCONTINUED = 'Y'=" + no);
		
		//	Level_Max must be >= Level_Max
		sql = "UPDATE M_Replenish"
			+ " SET Level_Max = Level_Min "
			+ "WHERE Level_Max < Level_Min";
		sql = sql + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected Max_Level=" + no);
		
		//	Minimum Order should be 1
		sql = "UPDATE M_Product_PO"
			+ " SET Order_Min = 1 "
			+ "WHERE (Order_Min IS NULL OR Order_Min < 1) " 
			+ "AND  Discontinued = 'N'";
		sql = sql + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected Order Min=" + no);
		
		//	Pack should be 1
		sql = "UPDATE M_Product_PO"
			+ " SET Order_Pack = 1 "
			+ "WHERE (Order_Pack IS NULL OR Order_Pack < 1) "
			+ "AND  Discontinued = 'N'";
		sql = sql + STD_CLIENT_CHECK;
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
			+ "AND  Discontinued = 'N' and p.AD_Client_ID = "+p_AD_Client_ID;
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
			+ "AND  Discontinued = 'N' and p.AD_Client_ID = "+p_AD_Client_ID;
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Corrected CurrentVendor(N)=" + no);
		
		//	Just to be sure
//		sql = "DELETE FROM T_Replenish WHERE AD_PInstance_ID=" + getAD_PInstance_ID();
//		no = DB.executeUpdate(sql, get_TrxName());
//		if (no != 0)
//			log.fine("Delete Existing Temp=" + no);
		//	Just to be sure
		
	}	//	prepareTable

	/**
	 * 	Fill Table
	 * 	@param wh warehouse
	 */
	private void fillTable (MWarehouse wh) throws Exception
	{
		Object [] paramsX = {getAD_PInstance_ID(), wh.getM_Warehouse_ID()};
		String sql = "DELETE FROM T_Replenish WHERE AD_PInstance_ID= ? and M_WareHouse_ID = ? ";
		int no = DB.executeUpdate(sql,paramsX,get_Trx() );
		if (no != 0)
			log.fine("Delete Existing Temp=" + no);
		sql = "INSERT INTO T_Replenish "
			+ "(AD_PInstance_ID, M_Warehouse_ID, M_Product_ID, AD_Client_ID, AD_Org_ID,"
			+ " ReplenishType, Level_Min, Level_Max, QtyOnHand,QtyReserved,QtyOrdered,"
			+ " C_BPartner_ID, Order_Min, Order_Pack, QtyToOrder, ReplenishmentCreate,DocAction,M_Product_Category_ID,Z_S_Famille_ID,Z_S_S_Famille_ID,Z_S_S_S_Famille_ID,SalesRep_ID ) "
			+ "SELECT " + getAD_PInstance_ID() 
				+ ", r.M_Warehouse_ID, r.M_Product_ID, r.AD_Client_ID, r.AD_Org_ID,"
			+ " r.ReplenishType, r.Level_Min, r.Level_Max, 0,0,0,"
			+ " po.C_BPartner_ID, po.Order_Min, po.Order_Pack, 0, ";
		if (p_ReplenishmentCreate == null)
			sql += "null";
		else
			sql += "'" + p_ReplenishmentCreate + "'";
		if(p_DocAction == null)
			sql += ", null ,"+(p_M_Product_Category_ID==0?null:p_M_Product_Category_ID)+","+(p_Z_S_Famille_ID==0?null:p_Z_S_Famille_ID)+","+(p_Z_S_S_Famille_ID==0?null:+p_Z_S_S_Famille_ID)+","+(p_Z_S_S_S_Famille_ID==0?null:p_Z_S_S_S_Famille_ID)+","+(p_SalesRep_ID==0?null:p_SalesRep_ID);
		else
			sql += ",'" + p_DocAction + "',"+(p_M_Product_Category_ID==0?null:p_M_Product_Category_ID)+","+(p_Z_S_Famille_ID==0?null:p_Z_S_Famille_ID)+","+(p_Z_S_S_Famille_ID==0?null:+p_Z_S_S_Famille_ID)+","+(p_Z_S_S_S_Famille_ID==0?null:p_Z_S_S_S_Famille_ID)+","+(p_SalesRep_ID==0?null:p_SalesRep_ID);
		sql += " FROM M_Replenish r"
			+ " INNER JOIN M_Product_PO po ON (r.M_Product_ID=po.M_Product_ID) "
			+ " INNER JOIN M_Product mp ON (r.M_Product_ID=mp.M_Product_ID) "
			+ "WHERE po.IsCurrentVendor='Y'"	//	Only Current Vendor
			+ " AND r.ReplenishType<>'0'"
			+ " AND po.IsActive='Y' AND r.IsActive='Y' AND mp.IsActive='Y'"
			+ " AND  mp.Discontinued = 'N'"
			+ " AND r.M_Warehouse_ID=" + wh.getM_Warehouse_ID();
		if (p_C_BPartner_ID != 0)
			sql += " AND po.C_BPartner_ID=" + p_C_BPartner_ID;
		if(p_M_Product_Category_ID !=0)
			sql += " AND mp.M_Product_Category_ID=" + p_M_Product_Category_ID;
		if(p_Z_S_Famille_ID !=0)
			sql += " AND mp.Z_S_Famille_ID=" + p_Z_S_Famille_ID;
		if(p_Z_S_S_Famille_ID !=0)
			sql += " AND mp.Z_S_S_Famille_ID=" + p_Z_S_S_Famille_ID;
		if(p_Z_S_S_S_Famille_ID !=0)
			sql += " AND mp.Z_S_S_S_Famille_ID=" + p_Z_S_S_S_Famille_ID;
		no = DB.executeUpdate(sql, get_TrxName());
		log.finest(sql);
		log.fine("Insert (1) #" + no);
		
		if (p_C_BPartner_ID == 0)
		{
			sql = "INSERT INTO T_Replenish "
				+ "(AD_PInstance_ID, M_Warehouse_ID, M_Product_ID, AD_Client_ID, AD_Org_ID,"
				+ " ReplenishType, Level_Min, Level_Max,"
				+ " C_BPartner_ID, Order_Min, Order_Pack, QtyToOrder, ReplenishmentCreate,DocAction,M_Product_Category_ID,Z_S_Famille_ID,Z_S_S_Famille_ID,Z_S_S_S_Famille_ID, SalesRep_ID) "
				+ "SELECT " + getAD_PInstance_ID()
				+ ", r.M_Warehouse_ID, r.M_Product_ID, r.AD_Client_ID, r.AD_Org_ID,"
				+ " r.ReplenishType, r.Level_Min, r.Level_Max,"
				//jz + " null, 1, 1, 0, ";
				+ DB.NULL("I", Types.INTEGER) 
				+ " , 1, 1, 0, ";
			if (p_ReplenishmentCreate == null)
				sql += "null";
			else
				sql += "'" + p_ReplenishmentCreate + "'";
			if(p_DocAction == null)
				sql += ", null ,"+(p_M_Product_Category_ID==0?null:p_M_Product_Category_ID)+","+(p_Z_S_Famille_ID==0?null:p_Z_S_Famille_ID)+","+(p_Z_S_S_Famille_ID==0?null:+p_Z_S_S_Famille_ID)+","+(p_Z_S_S_S_Famille_ID==0?null:p_Z_S_S_S_Famille_ID)+","+(p_SalesRep_ID==0?null:p_SalesRep_ID);
			else
				sql += ",'" + p_DocAction + "',"+(p_M_Product_Category_ID==0?null:p_M_Product_Category_ID)+","+(p_Z_S_Famille_ID==0?null:p_Z_S_Famille_ID)+","+(p_Z_S_S_Famille_ID==0?null:+p_Z_S_S_Famille_ID)+","+(p_Z_S_S_S_Famille_ID==0?null:p_Z_S_S_S_Famille_ID)+","+(p_SalesRep_ID==0?null:p_SalesRep_ID);
			sql	+= " FROM M_Replenish r INNER JOIN M_Product mp ON (r.M_Product_ID=mp.M_Product_ID) "
				+ " WHERE r.ReplenishType<>'0' AND r.IsActive='Y'"
				+ " AND r.M_Warehouse_ID=" + wh.getM_Warehouse_ID()
				+ " AND NOT EXISTS (SELECT * FROM T_Replenish t "
					+ "WHERE r.M_Product_ID=t.M_Product_ID"
					+ " AND AD_PInstance_ID=" + getAD_PInstance_ID() + " and M_WareHouse_ID = "+wh.getM_Warehouse_ID()+")"
				+ " AND "
				+ "EXISTS (SELECT * FROM M_Product_PO po, M_Product mp "
				                + " WHERE po.M_Product_ID = r.M_Product_ID "
				                + " AND   mp.M_Product_ID = r.M_Product_ID "
				                + " AND   mp.Discontinued = 'N')";
			if(p_M_Product_Category_ID !=0)
				sql += " AND mp.M_Product_Category_ID=" + p_M_Product_Category_ID;
			if(p_Z_S_Famille_ID !=0)
				sql += " AND mp.Z_S_Famille_ID=" + p_Z_S_Famille_ID;
			if(p_Z_S_S_Famille_ID !=0)
				sql += " AND mp.Z_S_S_Famille_ID=" + p_Z_S_S_Famille_ID;
			if(p_Z_S_S_S_Famille_ID !=0)
				sql += " AND mp.Z_S_S_S_Famille_ID=" + p_Z_S_S_S_Famille_ID;
			no = DB.executeUpdate(sql, get_TrxName());
			log.fine("Insert (BP) #" + no);
		}
		
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
		sql += " WHERE AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update #" + no);

		//	Delete inactive products and replenishments
		sql = "DELETE FROM T_Replenish r "
			+ "WHERE (EXISTS (SELECT * FROM M_Product p "
				+ "WHERE p.M_Product_ID=r.M_Product_ID AND p.IsActive='N')"
			+ " OR NOT EXISTS (SELECT * FROM M_Replenish rr "
				+ " WHERE rr.M_Product_ID=r.M_Product_ID AND rr.M_Warehouse_ID=r.M_Warehouse_ID AND rr.IsActive='Y' and rr.ReplenishType = r.ReplenishType ))"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
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
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update Type-1=" + no);
		//
		//	X_M_Replenish.REPLENISHTYPE_MaintainMaximumLevel
		sql = "UPDATE T_Replenish"
			+ " SET QtyToOrder = Level_Max - QtyOnHand + QtyReserved - QtyOrdered "
			+ "WHERE ReplenishType='2'" 
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update Type-2=" + no);
	
		//	Delete rows where nothing to order
		sql = "DELETE FROM T_Replenish "
			+ "WHERE QtyToOrder < 1"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Delete No QtyToOrder=" + no);

		//	Minimum Order Quantity
		sql = "UPDATE T_Replenish"
			+ " SET QtyToOrder = Order_Min "
			+ "WHERE QtyToOrder < Order_Min"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Set MinOrderQty=" + no);

		//	Even dividable by Pack
		sql = "UPDATE T_Replenish"
			//jz MOD is not a standard function + " SET QtyToOrder = QtyToOrder - MOD(QtyToOrder, Order_Pack) + Order_Pack "
			+ " SET QtyToOrder = (TRUNC(QtyToOrder/Order_Pack,0)+1)*Order_Pack "
			//+ "WHERE MOD(QtyToOrder, Order_Pack) <> 0"
			+ "WHERE (QtyToOrder-TRUNC(QtyToOrder/Order_Pack,0)*Order_Pack) <> 0"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Set OrderPackQty=" + no);
		
		//	Source from other warehouse
		if (wh.getM_WarehouseSource_ID() != 0)
		{
			Object [] params = {wh.getM_WarehouseSource_ID(),getAD_PInstance_ID() , wh.getM_Warehouse_ID()};
			sql = "UPDATE T_Replenish"
				+ " SET M_WarehouseSource_ID= ? " 
				+ " WHERE AD_PInstance_ID= ? and M_Warehouse_ID = ? "  ;
			no = DB.executeUpdate(sql, params, get_TrxName());
			if (no != 0)
				log.fine("Set Warehouse Source Warehouse=" + no);
		}
		//	Replenishment on Product level overwrites 
		Object [] params = {wh.getM_Warehouse_ID(),getAD_PInstance_ID() , wh.getM_Warehouse_ID()};
		sql = "UPDATE T_Replenish "
			+ "SET M_WarehouseSource_ID=(SELECT M_WarehouseSource_ID FROM M_Replenish r "
				+ "WHERE r.M_Product_ID=T_Replenish.M_Product_ID"
				+ " AND r.M_Warehouse_ID= ?)"
			+ "WHERE AD_PInstance_ID= ? " 
			+ " AND EXISTS (SELECT * FROM M_Replenish r "
				+ "WHERE r.M_Product_ID=T_Replenish.M_Product_ID"
				+ " AND r.M_Warehouse_ID= ? "
				+ " AND r.M_WarehouseSource_ID > 0)";
		no = DB.executeUpdate(sql,params, get_TrxName());
		if (no != 0)
			log.fine("Set Product Source Warehouse=" + no);
		
		//	Check Source Warehouse
		
		sql = "UPDATE T_Replenish"
			+ " SET M_WarehouseSource_ID = NULL " 
			+ "WHERE M_Warehouse_ID=M_WarehouseSource_ID"
			+ " AND AD_PInstance_ID=" + getAD_PInstance_ID()+ " and M_WareHouse_ID = "+wh.getM_Warehouse_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Set same Source Warehouse=" + no);
		
		//	Custom Replenishment
		String className = wh.getReplenishmentClass();
		if (className == null || className.length() == 0)
			return;
		//	Get Replenishment Class
		ReplenishInterface custom = null;
		try
		{
			Class<?> clazz = Class.forName(className);
			custom = (ReplenishInterface)clazz.newInstance();
		}
		catch (Exception e)
		{
			throw new CompiereUserException("No custom Replenishment class "
				+ className + " - " + e.toString());
		}
		
		X_T_Replenish[] replenishs = getReplenish("ReplenishType='9'", wh.getM_Warehouse_ID());
		for (X_T_Replenish replenish : replenishs) {
			if (replenish.getReplenishType().equals(X_T_Replenish.REPLENISHTYPE_Custom))
			{
				BigDecimal qto = null;
				try
				{
					qto = custom.getQtyToOrder(wh, replenish);
				}
				catch (Exception e)
				{
					log.log(Level.SEVERE, custom.toString(), e);
				}
				if (qto == null)
					qto = Env.ZERO;
				replenish.setQtyToOrder(qto);
				replenish.save();
			}
		}
	}	//	fillTable

	/**
	 * 	Create PO's
	 */
	private MOrder createPO(int M_Warehouse_ID)
	{
		int noOrders = 0;
		//
		MOrder order = null;
		MWarehouse wh = null;
		X_T_Replenish[] replenishs = getReplenish("M_WarehouseSource_ID IS NULL", M_Warehouse_ID);
		for (X_T_Replenish replenish : replenishs) {
			if (wh == null || wh.getM_Warehouse_ID() != replenish.getM_Warehouse_ID())
				wh = MWarehouse.get(getCtx(), replenish.getM_Warehouse_ID());
			//
			if (order == null 
				|| order.getC_BPartner_ID() != replenish.getC_BPartner_ID()
				|| order.getM_Warehouse_ID() != replenish.getM_Warehouse_ID())
			{
				order = new MOrder(getCtx(), 0, get_TrxName());
				order.setIsSOTrx(false);
				order.setC_DocTypeTarget_ID(p_C_DocType_ID);
				order.setC_DocType_ID(p_C_DocType_ID);
				order.setDocAction(p_DocAction==null?MOrder.DOCACTION_Complete:p_DocAction);
				MBPartner bp = new MBPartner(getCtx(), replenish.getC_BPartner_ID(), get_TrxName());
				order.setBPartner(bp);
				order.setSalesRep_ID(p_SalesRep_ID==0?getAD_User_ID():p_SalesRep_ID);
				order.setDescription(Msg.getMsg(getCtx(), "Replenishment"));
				//	Set Org/WH
				order.setAD_Org_ID(wh.getAD_Org_ID());
				order.setM_Warehouse_ID(wh.getM_Warehouse_ID());
				order.setDocStatus(MOrder.DOCSTATUS_Drafted);
				if (!order.save())
					return null;
				
				POOs.add(order);//Redmine 49943
				
				log.fine(order.toString());
				noOrders++;
			}
			MOrderLine line = new MOrderLine (order);
			line.setM_Product_ID(replenish.getM_Product_ID());
			line.setQty(replenish.getQtyToOrder());
			line.setPrice();
			line.save();
		}
		// touch order to recalculate tax and totals
		if (order != null)	{//Redmine 17389
			order.setIsActive(order.isActive());
			order.save();
		}

		
		return order;
	}	//	createPO
	
	/**
	 * 	Create Requisition
	 */
	private MRequisition createRequisition(int M_Warehouse_ID)
	{
		int noReqs = 0;
		
		//
		MRequisition requisition = null;
		MWarehouse wh = null;
		X_T_Replenish[] replenishs = getReplenish("M_WarehouseSource_ID IS NULL", M_Warehouse_ID);
		for (X_T_Replenish replenish : replenishs) {
			if (wh == null || wh.getM_Warehouse_ID() != replenish.getM_Warehouse_ID())
				wh = MWarehouse.get(getCtx(), replenish.getM_Warehouse_ID());
			//
			if (requisition == null
				|| requisition.getM_Warehouse_ID() != replenish.getM_Warehouse_ID())
			{
				requisition = new MRequisition (getCtx(), 0, get_TrxName());
				requisition.setAD_User_ID (p_SalesRep_ID==0?getAD_User_ID():p_SalesRep_ID);
				requisition.setC_DocType_ID(p_C_DocType_ID);
				requisition.setDescription(Msg.getMsg(getCtx(), "Replenishment"));
				//	Set Org/WH
				requisition.setAD_Org_ID(wh.getAD_Org_ID());
				requisition.setM_Warehouse_ID(wh.getM_Warehouse_ID());
				if (!requisition.save())
					return null;
					
				PORs.add(requisition);
				log.fine(requisition.toString());
				noReqs++;
				
			}
			//
			MRequisitionLine line = new MRequisitionLine(requisition);
			line.setM_Product_ID(replenish.getM_Product_ID());
			line.setC_BPartner_ID(replenish.getC_BPartner_ID());
			line.set_ValueNoCheck("Qty",replenish.getQtyToOrder());
			line.set_ValueNoCheck("QtyEntered",replenish.getQtyToOrder());
			line.setPrice();
			line.save();
		}
		//m_info = "#" + noReqs + info;
		//log.info(m_info);
		return requisition;
	}	//	createRequisition

	/**
	 * 	Create Inventory Movements
	 */
	private MMovement createMovements(int M_Warehouse_ID)
	{
		int noMoves = 0;
		//
		MClient client = null;
		MMovement move = null;
		int M_WarehouseSource_ID = 0;
		MWarehouse whSource = null;
		MWarehouse whTarget = null;
		X_T_Replenish[] replenishs = getReplenish("M_WarehouseSource_ID IS NOT NULL",M_Warehouse_ID);
		for (X_T_Replenish replenish : replenishs) {
			if (whSource == null || whSource.getM_WarehouseSource_ID() != replenish.getM_WarehouseSource_ID())
				whSource = MWarehouse.get(getCtx(), replenish.getM_WarehouseSource_ID());
			if (whTarget == null || whTarget.getM_Warehouse_ID() != replenish.getM_Warehouse_ID())
				whTarget = MWarehouse.get(getCtx(), replenish.getM_Warehouse_ID());
			if (client == null || client.getAD_Client_ID() != whSource.getAD_Client_ID())
				client = MClient.get(getCtx(), whSource.getAD_Client_ID());
			//
			if (move == null
				|| M_WarehouseSource_ID != replenish.getM_WarehouseSource_ID()
				|| M_Warehouse_ID != replenish.getM_Warehouse_ID())
			{
				M_WarehouseSource_ID = replenish.getM_WarehouseSource_ID();
				M_Warehouse_ID = replenish.getM_Warehouse_ID();
				
				move = new MMovement (getCtx(), 0, get_TrxName());
				move.setC_DocType_ID(p_C_DocType_ID);
				move.setDescription(Msg.getMsg(getCtx(), "Replenishment")
					+ ": " + whSource.getName() + "->" + whTarget.getName());
				//	Set Org
				move.setAD_Org_ID(whSource.getAD_Org_ID());
				if (!move.save())
					return null;
				MMMs.add(move);
				log.fine(move.toString());
				noMoves++;
			}
			MProduct product = MProduct.get(getCtx(), replenish.getM_Product_ID());
			//	To
			int M_LocatorTo_ID = getLocator_ID(product, whTarget); 
			
			//	From: Look-up Storage
			MProductCategory pc = MProductCategory.get(getCtx(), product.getM_Product_Category_ID());
			String MMPolicy = pc.getMMPolicy();
			if (MMPolicy == null || MMPolicy.length() == 0)
				MMPolicy = client.getMMPolicy();
			//
			List<Storage.VO> storages = Storage.getWarehouse(getCtx(), 
				whSource.getM_Warehouse_ID(), replenish.getM_Product_ID(), 0, 0,
				true, null, 
				X_AD_Client.MMPOLICY_FiFo.equals(MMPolicy), get_TrxName());
			if (storages == null || storages.size() == 0)
			{
				addLog ("No Inventory in " + whSource.getName() 
					+ " for " + product.getName());
				continue;
			}
			//
			BigDecimal target = replenish.getQtyToOrder();
			for (Storage.VO storage : storages) {
				BigDecimal qtyAvailable = storage.getAvailableQty();
				if(qtyAvailable.signum() <= 0)
					continue;

				BigDecimal moveQty = target;
				if (qtyAvailable.compareTo(moveQty) < 0)
					moveQty = qtyAvailable;
				//
				MMovementLine line = new MMovementLine(move);
				line.setM_Product_ID(replenish.getM_Product_ID());
				line.setMovementQty(moveQty);
				if (replenish.getQtyToOrder().compareTo(moveQty) != 0)
					line.setDescription("Total: " + replenish.getQtyToOrder());
				line.setM_Locator_ID(storage.getM_Locator_ID());		//	from
				line.setM_AttributeSetInstance_ID(storage.getM_AttributeSetInstance_ID());
				line.setM_LocatorTo_ID(M_LocatorTo_ID);					//	to
				line.setM_AttributeSetInstanceTo_ID(storage.getM_AttributeSetInstance_ID());
				line.save();
				//
				target = target.subtract(moveQty);
				if (target.signum() == 0)
					break;
			}
			if (target.signum() != 0)
				addLog ("Insufficient Inventory in " + whSource.getName() 
					+ " for " + product.getName() + " Qty=" + target);
		}
//		if (replenishs.length == 0)
//		{
//			m_info = "No Source Warehouse";
//			log.warning(m_info);
//		}
//		else
//		{
//			m_info = "#" + noMoves + info;
//			log.info(m_info);
//		}
		
		return move;
	}	//	createRequisition

	/**
	 * 	Get Locator_ID
	 *	@param product product 
	 *	@param wh warehouse
	 *	@return locator with highest priority
	 */
	private int getLocator_ID (MProduct product, MWarehouse wh)
	{
		int M_Locator_ID = MProductLocator.getFirstM_Locator_ID (product, wh.getM_Warehouse_ID());
		/**	
		MLocator[] locators = MProductLocator.getLocators (product, wh.getM_Warehouse_ID());
		for (int i = 0; i < locators.length; i++)
		{
			MLocator locator = locators[i];
			//	Storage/capacity restrictions come here
			return locator.getM_Locator_ID();
		}
		//	default
		**/
		if (M_Locator_ID == 0)
			M_Locator_ID = wh.getDefaultM_Locator_ID();
		return M_Locator_ID;
	}	//	getLocator_ID
	
	
	/**
	 * 	Get Replenish Records
	 *	@return replenish
	 */
	private X_T_Replenish[] getReplenish (String where, int M_Warehouse_ID)
	{
		String sql = "SELECT * FROM T_Replenish "
			+ "WHERE AD_PInstance_ID= ? AND C_BPartner_ID > 0 ";
		if (where != null && where.length() > 0)
			sql += " AND " + where;
		if(M_Warehouse_ID!=0)
			sql += " AND M_Warehouse_ID = ?";
		sql	+= " ORDER BY M_Warehouse_ID, M_WarehouseSource_ID, C_BPartner_ID";
		ArrayList<X_T_Replenish> list = new ArrayList<X_T_Replenish>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, getAD_PInstance_ID());
			if(M_Warehouse_ID!=0)
				pstmt.setInt (2, M_Warehouse_ID);
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

	@Override
	public void addZoomInfo() {
		int AD_Window_ID = -1;
		QueryVO Query = new QueryVO();
		if ("POO".equals(p_ReplenishmentCreate)){
			AD_Window_ID = 181;//ZOOM on only PUrchase Order
			QueryRestrictionVO rest = null;
			for (MOrder po : POOs) {
				rest = new QueryRestrictionVO();
				rest.ColumnName="DocumentNo";
				rest.Code = po.getDocumentNo();
				rest.DisplayType = DisplayTypeConstants.String;
				Query.addRestriction(rest);
			}
		}
		getProcessInfo().setQueryVO(Query);
		getProcessInfo().setZoomWindow_ID(AD_Window_ID);
		getProcessInfo().setIsDirectZoom(false);
		
	}
	
}	//	Replenish
