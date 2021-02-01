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
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.logging.*;

import org.compiere.model.*;
import org.compiere.util.*;

/**
 *	Import Physical Inventory fom I_Inventory
 *
 * 	@author 	Jorg Janke
 * 	@version 	$Id: ImportInventory.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class ImportMovement extends SvrProcess
{
	/**	Client to be imported to		*/
	private int				p_AD_Client_ID = 0;
	/**	Default Date					*/
	private Timestamp		p_MovementDate = null;
	/**	Delete old Imported				*/
	private boolean			p_DeleteOldImported = false;
	
	private String docAction = null;
	
	private ArrayList<MMovement> imps = null;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = ((BigDecimal)element.getParameter()).intValue();
			else if (name.equals("MovementDate"))
				p_MovementDate = (Timestamp)element.getParameter();
			else if (name.equals("DeleteOldImported"))
				p_DeleteOldImported = "Y".equals(element.getParameter());
			else if (name.equals("DocAction"))
				docAction = element.getParameter().toString();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare


	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception
	 */
	@Override
	protected String doIt() throws java.lang.Exception
	{
		//
		StringBuffer sql = null;
		int no = 0;
		String clientCheck = " AND AD_Client_ID=" + p_AD_Client_ID;
		imps = new ArrayList<MMovement>();
		//	****	Prepare	****

		//	Delete Old Imported
		if (p_DeleteOldImported)
		{
			sql = new StringBuffer ("DELETE FROM I_Movement "
				  + "WHERE I_IsImported='Y'").append (clientCheck);
			no = DB.executeUpdate (sql.toString (), get_TrxName());
			log.fine("Delete Old Impored =" + no);
		}
		
		sql = new StringBuffer("Update I_Movement i set AD_Org_ID =(SELECT MAX(AD_Org_ID) FROM AD_Org w"
				+ " WHERE i.Org_Value=w.Value AND i.AD_Client_ID=w.AD_Client_ID) where i.Org_Value is not null and (i.AD_Org_ID = 0 or i.AD_Org_ID is null)");
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.info ("Set Org=" + no);
		//	Set Client, Org, Location, IsActive, Created/Updated
		sql = new StringBuffer ("UPDATE I_Movement "
			  + "SET AD_Client_ID = COALESCE (AD_Client_ID,").append (p_AD_Client_ID).append ("),");
		if (p_MovementDate != null)
			sql.append(" MovementDate = COALESCE (MovementDate,").append (DB.TO_DATE(p_MovementDate)).append ("),");
		sql.append(" IsActive = COALESCE (IsActive, 'Y'),"
			  + " Created = COALESCE (Created, SysDate),"
			  + " CreatedBy = COALESCE (CreatedBy, 0),"
			  + " Updated = COALESCE (Updated, SysDate),"
			  + " UpdatedBy = COALESCE (UpdatedBy, 0),"
			  + " I_ErrorMsg = NULL,"
			  + " M_Warehouse_ID = NULL,"	//	reset
			  + " M_WarehouseTo_ID = NULL,"	//	reset
			  + " I_IsImported = 'N' "
			  + "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL");
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.info ("Reset=" + no);

		String ts = DB.isPostgreSQL()?"COALESCE(I_ErrorMsg,'')":"I_ErrorMsg";  //java bug, it could not be used directly
		sql = new StringBuffer ("UPDATE I_Movement o "
			+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Org, '"
			+ "WHERE (AD_Org_ID IS NULL OR AD_Org_ID=0"
			+ " OR EXISTS (SELECT * FROM AD_Org oo WHERE o.AD_Org_ID=oo.AD_Org_ID AND (oo.IsSummary='Y' OR oo.IsActive='N')))"
			+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		if (no != 0)
			log.warning ("Invalid Org=" + no);
		
		if(Msg.getMsg(getCtx(), "EC_OKMODIF").equals("1"))
		{
			// SI M_WareHouse FROM et M_locator FROM null => set Value
			sql = new StringBuffer(
					"UPDATE I_Movement i "
							+ "	SET (i.WarehouseValue,i.M_Warehouse_ID,i.LOCATORVALUE,i.M_Locator_ID)="
							+ " (SELECT MAX(w.Value),max(w.M_Warehouse_ID),max(ml.value),max(ml.M_Locator_ID) FROM M_Warehouse w"
							+ " inner join AD_OrgInfo ao on w.AD_Org_ID = ao.AD_Org_ID and ao.M_Warehouse_ID = w.M_Warehouse_ID "
							+ " inner join AD_Org aoi on aoi.AD_Org_ID = w.AD_Org_ID"
							+ "  inner join M_Locator ml on ml.M_Warehouse_ID = w.M_Warehouse_ID and ml.ISDEFAULT = 'Y' where w.AD_CLIENT_ID = i.AD_CLIENT_ID and w.AD_Org_ID = i.AD_ORG_ID and aoi.AD_Org_ID = i.AD_Org_ID)"
							+ "		WHERE I_IsImported<>'Y'").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.fine("Set Warehouse from Value =" + no);

			sql = new StringBuffer(
					"UPDATE I_Movement i "
							+ "	SET (i.M_WareHouseTO_ID,i.LOCATORTOVALUE,i.M_LOCATORTO_ID)="
							+ "(SELECT max(w.M_WAREHOUSE_ID),max(ml.value),max(ml.M_LOCATOR_ID) FROM M_Warehouse w"
							+ " inner join M_Locator ml on ml.M_Warehouse_ID = w.M_Warehouse_ID and ml.ISDEFAULT = 'Y' where w.AD_CLIENT_ID = i.AD_CLIENT_ID and w.VALUE = i.WAREHOUSETOVALUE )"
							+ "	WHERE I_IsImported<>'Y' ").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.fine("Set Warehouse from Value =" + no);
		}
		// gwu: bug 1703137
		// if Warehouse key provided, get Warehouse ID
		sql = new StringBuffer ("UPDATE I_Movement i "
				+ "SET M_Warehouse_ID=(SELECT MAX(M_Warehouse_ID) FROM M_Warehouse w"
				+ " WHERE i.WarehouseValue=w.Value AND i.AD_Client_ID=w.AD_Client_ID and w.AD_org_ID =i.AD_Org_ID)"
				+ "WHERE M_Warehouse_ID IS NULL AND WarehouseValue IS NOT NULL"
				+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.fine("Set Warehouse from Value =" + no);
		
		sql = new StringBuffer ("UPDATE I_Movement i "
				+ "SET M_WarehouseTo_ID=(SELECT MAX(M_Warehouse_ID) FROM M_Warehouse w"
				+ " WHERE i.WarehouseToValue=w.Value AND i.AD_Client_ID=w.AD_Client_ID )"
				+ "WHERE M_WarehouseTo_ID IS NULL AND WarehouseToValue IS NOT NULL"
				+ " AND I_IsImported<>'Y' ").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.fine("Set WarehouseTo from ValueTo =" + no);
		
		//	Locator
		sql = new StringBuffer ("UPDATE I_Movement i "
			+ "SET M_Locator_ID=(SELECT MAX(M_Locator_ID) FROM M_Locator l"
			+ " WHERE i.LocatorValue=l.Value AND COALESCE (i.M_Warehouse_ID, l.M_Warehouse_ID)=l.M_Warehouse_ID AND i.AD_Client_ID=l.AD_Client_ID) "
			+ "WHERE M_Locator_ID IS NULL AND LocatorValue IS NOT NULL"
			+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.fine("Set Locator from Value =" + no);
		
		sql = new StringBuffer ("UPDATE I_Movement i "
				+ "SET M_LocatorTo_ID=(SELECT MAX(M_Locator_ID) FROM M_Locator l"
				+ " WHERE i.LocatorToValue=l.Value AND COALESCE (i.M_WarehouseTo_ID, l.M_Warehouse_ID)=l.M_Warehouse_ID AND i.AD_Client_ID=l.AD_Client_ID) "
				+ "WHERE M_LocatorTo_ID IS NULL AND LocatorToValue IS NOT NULL"
				+ " AND I_IsImported<>'Y'").append (clientCheck);
			no = DB.executeUpdate (sql.toString (), get_TrxName());
			log.fine("Set LocatorTo from ValueTo =" + no);
			
		sql = new StringBuffer ("UPDATE I_Movement "
			+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No Location, ' "
			+ "WHERE M_Locator_ID IS NULL"
			+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		if (no != 0)
			log.warning ("No Location=" + no);

		sql = new StringBuffer ( "UPDATE I_Movement I " +
				" SET M_Locator_ID = NULL, " +
				" I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Locator, '" + 
				" WHERE M_Locator_ID IS NOT NULL " +
				" AND NOT EXISTS ( SELECT 1 FROM M_Locator lc" +
				" WHERE lc.M_Locator_ID = I.M_Locator_ID " +
				" AND lc.M_Warehouse_ID = I.M_Warehouse_ID)");
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.fine("Invalid Locators =" + no);
			
		sql = new StringBuffer ("UPDATE I_Movement "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No Location To, ' "
				+ "WHERE M_LocatorTo_ID IS NULL"
				+ " AND I_IsImported<>'Y'").append (clientCheck);
			no = DB.executeUpdate (sql.toString (), get_TrxName());
			if (no != 0)
				log.warning ("No LocationTo=" + no);

			sql = new StringBuffer ( "UPDATE I_Movement I " +
					" SET M_Locator_ID = NULL, " +
					" I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Locator, '" + 
					" WHERE M_LocatorTo_ID IS NOT NULL " +
					" AND NOT EXISTS ( SELECT 1 FROM M_Locator lc" +
					" WHERE lc.M_Locator_ID = I.M_LocatorTo_ID " +
					" AND lc.M_Warehouse_ID = I.M_WarehouseTo_ID)");
			no = DB.executeUpdate (sql.toString (), get_TrxName());
			log.fine("Invalid Locators =" + no);
				
		//
		
		
		//	Set M_Warehouse_ID 
		sql = new StringBuffer ("UPDATE I_Movement i "
			+ "SET M_Warehouse_ID=(SELECT M_Warehouse_ID FROM M_Locator l WHERE i.M_Locator_ID=l.M_Locator_ID) "
			+ "WHERE M_Locator_ID IS NOT NULL and M_Warehouse_ID is null"
			+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.fine("Set Warehouse from Locator =" + no);
		sql = new StringBuffer ("UPDATE I_Movement "
			+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No Warehouse, ' "
			+ "WHERE M_Warehouse_ID IS NULL"
			+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		if (no != 0)
			log.warning ("No Warehouse=" + no);

		//	Set M_WarehouseTo_ID 
			sql = new StringBuffer ("UPDATE I_Movement i "
				+ "SET M_WarehouseTo_ID=(SELECT M_Warehouse_ID FROM M_Locator l WHERE i.M_LocatorTo_ID=l.M_Locator_ID) "
				+ "WHERE M_LocatorTo_ID IS NOT NULL and M_WarehouseTo_ID is null"
				+ " AND I_IsImported<>'Y'").append (clientCheck);
			no = DB.executeUpdate (sql.toString (), get_TrxName());
			log.fine("Set Warehouse to Locator =" + no);
			sql = new StringBuffer ("UPDATE I_Movement "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No Warehouse, ' "
				+ "WHERE M_WarehouseTo_ID IS NULL"
				+ " AND I_IsImported<>'Y'").append (clientCheck);
			no = DB.executeUpdate (sql.toString (), get_TrxName());
			if (no != 0)
				log.warning ("No Warehouse=" + no);

		
		
		sql = new StringBuffer ("update I_Movement i set i.ProductValue = replace(i.ProductValue,'\\\\','\\') where i.IsActive='Y' AND i.I_IsImported<>'Y' ").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.info("Product Existing UPC=" + no);

		//	Product
		sql = new StringBuffer ("UPDATE I_Movement i "
			  + "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
			  + " WHERE i.productValue=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_Product_ID IS NULL AND productValue IS NOT NULL"
			  + " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		log.fine("Set Product from Value=" + no);
		sql = new StringBuffer ("UPDATE I_Movement "
			+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No Product, ' "
			+ "WHERE M_Product_ID IS NULL"
			+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		if (no != 0)
			log.warning ("No Product=" + no);

		//	No QtyCount
		sql = new StringBuffer ("UPDATE I_Movement "
			+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No Movement Qty, ' "
			+ "WHERE MovementQty IS NULL"
			+ " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());
		if (no != 0)
			log.warning ("No MovementQty=" + no);
		
		//3065
		//Si lineDescription not null vérifié sur = DocNo Order
		sql = new StringBuffer ("Update I_Movement set Ref_Order_ID = (Select Max(C_Order_ID) from C_Order "
				+ "where C_Order.DOCUMENTNO = trim(I_Movement.LineDescription) and I_Movement.AD_Client_ID = C_Order.AD_Client_ID) " +
				"where I_Movement.Ref_Order_ID is null AND I_Movement.LineDescription is not Null AND I_Movement.I_IsImported<>'Y' ").append (clientCheck);
		no = DB.executeUpdate (sql.toString (), get_TrxName());

		commit();
		//return ts;
		
		/*********************************************************************/
		
		String sqlx = "SELECT * from I_MOVEMENT where I_IsImported ='N' and m_product_id is not null and AD_Client_ID = ? ORDER BY TRUNC(MovementDate,'DD'),M_Warehouse_ID,M_WarehouseTo_ID,  M_Product_ID, I_Movement_ID";
		int noInsert = 0;
		int noInsertLine = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sqlx.toString (), get_TrxName());
			pstmt.setInt(1, getAD_Client_ID());
			rs = pstmt.executeQuery ();
			//
			int x_M_Warehouse_ID = -1;
			int x_M_WarehouseTo_ID = -1;
			int x_M_Product_ID = -1;
			Timestamp x_MovementDate = null;
			MMovement movement = null;
			int linex = 0;
			while (rs.next())
			{
				X_I_Movement imp = new X_I_Movement(getCtx(),rs,get_TrxName());
				Timestamp MovementDate = TimeUtil.getDay(rs.getTimestamp("MovementDate"));
				int M_Warehouse_ID = rs.getInt("M_Warehouse_ID");
				int M_WarehouseTo_ID = rs.getInt("M_WarehouseTo_ID");
				int AD_Org_ID = rs.getInt("AD_Org_ID");
				int M_Product_ID = rs.getInt("M_Product_ID");

				if (movement == null
						|| M_Warehouse_ID != x_M_Warehouse_ID
						|| M_WarehouseTo_ID != x_M_WarehouseTo_ID
						|| !MovementDate.equals(x_MovementDate)
						//|| M_Product_ID != x_M_Product_ID
						)
					{
						if(movement!=null)
						// Need to commit after each order to prevent deadlocks
						commit();
						movement = new MMovement (getCtx(), 0, get_TrxName());
						movement.setC_DocType_ID(rs.getInt("C_DocType_ID"));
						//movement.setClientOrg(getAD_Client_ID(), AD_Org_ID);
						movement.setClientOrg(imp.getAD_Client_ID(), imp.getAD_Org_ID());
						movement.setDescription("I " + imp.getM_Warehouse_ID() + " " + imp.getMovementDate());
						movement.setMovementDate(imp.getMovementDate()==null?p_MovementDate:imp.getMovementDate());
						movement.setDocAction(docAction);
						//
						if (!movement.save())
						{
							log.log(Level.SEVERE, "Movement not saved");
							break;
						}
						imps.add(movement);
						x_M_Warehouse_ID = M_Warehouse_ID;
						x_M_WarehouseTo_ID = M_WarehouseTo_ID;
						x_MovementDate = MovementDate;
						x_M_Product_ID = M_Product_ID;
						linex = 10;
						noInsert++;
					}
				MMovementLine line = new MMovementLine(movement);
				line.set_ValueNoCheck("M_Warehouse_ID", M_Warehouse_ID);
				line.setM_Locator_ID(rs.getInt("M_Locator_ID"));
				line.set_ValueNoCheck("M_WarehouseTo_ID", M_WarehouseTo_ID);
				line.setM_LocatorTo_ID(rs.getInt("M_LocatorTo_ID"));
				line.setMovementQty(rs.getBigDecimal("MovementQty"));
				line.setM_Product_ID(rs.getInt("M_Product_ID"));
				line.setLine(linex);
				//3065
				if(rs.getInt("Ref_Order_ID")!=0)
					line.set_ValueNoCheck("Ref_Order_ID",rs.getInt("Ref_Order_ID"));
				linex+=10;
				if (line.save())
				{
					imp.setI_IsImported(X_I_Movement.I_ISIMPORTED_Yes);
					imp.setM_Movement_ID(line.getM_Movement_ID());
					//imp.setM_InventoryLine_ID(line.getM_InventoryLine_ID());
					imp.setProcessed(true);
					if (imp.save())
						noInsertLine++;
				}
			}
		}catch (Exception e)
		{
			log.log(Level.SEVERE, sqlx.toString(), e);
		}finally{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		if(docAction.equals(MMovement.DOCACTION_Complete))
			for (int i = 0; i < imps.size(); i++) {
				if(!DocumentEngine.processIt(imps.get(i), docAction))
				{
					// Ignore errors in processing
					log.warning("Could not process inventory : " + imps.get(i).getDocumentNo());
				}
				imps.get(i).save();
				
			}
/*
		//	Set Error to indicator to not imported
		sql = new StringBuffer ("UPDATE I_Movement "
			+ "SET I_IsImported='N', Updated=SysDate "
			+ "WHERE I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		//
		addLog (0, null, new BigDecimal (noInsert), "@M_Movement_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noInsertLine), "@M_MovementLine_ID@: @Inserted@");
		return "";
		*/
		return "Ok";
	}	//	doIt

}	//	ImportMovement
