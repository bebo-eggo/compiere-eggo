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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.codehaus.groovy.ast.stmt.ThrowStatement;
import org.compiere.common.CompiereStateException;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.model.MWarehouse;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.Ini;
import org.compiere.util.TimeUtil;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class ReplenishReportKM  extends SvrProcess{

	private int p_AD_Client_ID;
	private int p_AD_Org_ID = 0;
	private String p_ReportOnly = "";
	private String p_RestrictBPartner = "";
	private String p_docAction = null;

	private static final boolean TESTMODE = false;
	/** Commit every 100 entities	*/
	private static final int	COMMITCOUNT = TESTMODE?100:Integer.parseInt(Ini.getProperty(Ini.P_IMPORT_BATCH_SIZE));

	@Override
	protected void prepare() {

		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = element.getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = element.getParameterAsInt();
			else if  (name.equals("ReportOnly"))
				p_ReportOnly = (String) element.getParameter();
			else if  (name.equals("RestrictBPartner"))
				p_RestrictBPartner = (String) element.getParameter();
			else if  (name.equals("DocAction"))
				p_docAction = (String) element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

	}
	@Override
	protected String doIt() throws Exception {

		int countRequisition = 0;
		String sql = "DELETE FROM Z_Replenish WHERE TRUNC(CREATED)<=TRUNC(SYSDATE-1)";
		int no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Delete old Temp=" + no);
		
		sql = "DELETE FROM Z_Replenish WHERE AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Delete Existing Temp=" + no);

		fillTable();

		if("N".equals(p_ReportOnly))
		{
			StringBuffer sql1 = new StringBuffer("select * from Z_Replenish where AD_PInstance_ID = ? order by M_Warehouse_ID, M_Product_ID ");

			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try
			{
				pstmt = DB.prepareStatement(sql1.toString(), get_TrxName());
				pstmt.setInt(1,getAD_PInstance_ID());
				rs = pstmt.executeQuery();

				int oldM_Warehouse_ID = 0;
				MRequisition req = null;
				MRequisitionLine reqLine = null;
				int countcreated = 0;
				int m_PriceList_ID = 0;
				int c_Doctype_req = 0;
				MWarehouse wh = null;
				int line = 0 ;
				
				m_PriceList_ID = getDefaultPriceListeAchat(p_AD_Client_ID);
				if (m_PriceList_ID < 0)
					throw new CompiereException("liste de prix achat par défaut introuvable ");	

				while (rs.next())
				{ 		

					if (oldM_Warehouse_ID != rs.getInt("M_Warehouse_ID"))
					{
						if(req != null)
						{// process requisition précedente
							if(DocumentEngine.processIt(req, p_docAction))
							{
								req.save();
							}
						}

						if(countcreated >= COMMITCOUNT) {
							commit();
							countcreated = 0;
						}
						req = new MRequisition(getCtx(), 0, get_Trx());

						wh = MWarehouse.get(getCtx(), rs.getInt("M_Warehouse_ID"));
						c_Doctype_req = getC_DocTypeReq(wh.getAD_Org_ID());

						
						if (c_Doctype_req < 0)
							 throw new CompiereException("type doc Requistion introuvable pour Org_id = "+wh.getAD_Org_ID());
						//						req.set
						req.setClientOrg(p_AD_Client_ID, wh.getAD_Org_ID());
						req.setAD_User_ID(getCtx().getAD_User_ID());
						req.setM_Warehouse_ID(wh.getM_Warehouse_ID());
						req.setM_PriceList_ID(m_PriceList_ID);
						req.setPriorityRule("4");
						req.setDateRequired(TimeUtil.getDay(Long.parseLong(getCtx().getDefaultDate())));
						req.setDocStatus("DR");
						req.setDocAction("CO");
						req.setDescription("Réappro auto");
						req.setDateDoc(TimeUtil.getDay(Long.parseLong(getCtx().getDefaultDate())));
						req.setC_DocType_ID(c_Doctype_req);
						if(!req.save())
							throw new CompiereStateException("Erreur sauvegarde Requisition");
						oldM_Warehouse_ID = rs.getInt("M_Warehouse_ID");
						countRequisition ++;
						countcreated++;
						line = 10;
					}
					//					req line add new & setter les données
					//					line  save
					reqLine = new MRequisitionLine(req);
					reqLine.setM_Product_ID(rs.getInt("M_Product_ID"));
					reqLine.setC_BPartner_ID(rs.getInt("C_BPartner_ID"));
					reqLine.setQty(rs.getBigDecimal("QtyToOrder"));
					reqLine.set_Value("QtyEntered", rs.getBigDecimal("QtyToOrder"));
					reqLine.setPrice(req.getM_PriceList_ID());
					reqLine.setLineNetAmt();
					reqLine.setM_AttributeSetInstance_ID(0);
					reqLine.setLine(line);
					if(!reqLine.save())
						throw new CompiereStateException("Erreur sauvegarde Linge Requisition");
					line += 10 ;
				}
				// derniére ligne
				if(req != null)
				{
					if(DocumentEngine.processIt(req, p_docAction))
						req.save();
				}	

			}
			catch (Exception e)
			{  
				log.log(Level.SEVERE, sql.toString(), e);
				throw new DBException(e);

			}
			finally
			{
				Util.closeCursor(pstmt, rs);						
			}

		}

		return countRequisition + " @M_Requisition_ID@ @Created@";
	}

	private void fillTable () throws Exception
	{
		String sql = " INSERT INTO Z_Replenish "
				+ " (AD_PInstance_ID, M_Warehouse_ID, M_Product_ID, AD_Client_ID, AD_Org_ID, "
				+ " Level_Min, Level_Max, QtyAvailable,QtyOrdered, QtyTrft, "
				+ " C_BPartner_ID, Order_Pack,IsUseOrder_Pack, QtyToOrder, DocAction, RestrictBPartner, ReportOnly ) "
				+ " SELECT " + getAD_PInstance_ID() 
				+ " , r.M_Warehouse_ID, r.M_Product_ID, r.AD_Client_ID," + p_AD_Org_ID+", "
				+ " r.Level_Min, r.Level_Max, 0,0,0, "
				+ " po.C_BPartner_ID, po.Order_Pack, r.IsUseOrder_Pack , 0, "
				+"'"+p_docAction+"', '"+p_RestrictBPartner+"', '"+p_ReportOnly+"'";

		sql += " FROM M_Replenish r "
				+  " INNER JOIN M_Product_PO po ON (r.M_Product_ID=po.M_Product_ID) "
				+  " INNER JOIN M_Product mp ON (r.M_Product_ID=mp.M_Product_ID) "
				+  " INNER JOIN Z_BPartner_Replenish bpr ON (bpr.C_BPartner_ID = po.C_BPartner_ID) "
				+  " WHERE r.ReplenishType = '3' and po.IsCurrentVendor='Y' "
				+  " AND po.IsActive='Y' AND r.IsActive='Y' AND bpr.IsActive = 'Y' "
				+  " AND r.AD_Client_ID = "+p_AD_Client_ID
				+  " AND po.IsCurrentVendor= 'Y' " 
				+ " AND  po.Discontinued = 'N' "
				+ " AND  mp.Discontinued = 'N' ";

		if (p_AD_Org_ID > 0)
			sql += " AND r.AD_Org_ID = "+p_AD_Org_ID;

		if ("N".equals(p_RestrictBPartner))
			sql += " AND  (( (SELECT TO_CHAR(sysdate, 'D') FROM dual) = '1' AND bpr.OnMonday = 'Y' ) " 
              +" OR ( (SELECT TO_CHAR(sysdate, 'D') FROM dual ) = '2' AND bpr.OnTuesday   = 'Y' ) "
              +" OR ( (SELECT TO_CHAR(sysdate, 'D') FROM dual ) = '3' AND bpr.OnWednesday = 'Y' ) "
              +" OR ( (SELECT TO_CHAR(sysdate, 'D') FROM dual ) = '4' AND bpr.OnThursday  = 'Y' ) "
              +" OR ( (SELECT TO_CHAR(sysdate, 'D') FROM dual ) = '5' AND bpr.OnFriday   = 'Y' )  "
              +" OR ( (SELECT TO_CHAR(sysdate, 'D') FROM dual ) = '6' AND bpr.OnSaturday   = 'Y') "
              +" OR ( (SELECT TO_CHAR(sysdate, 'D') FROM dual ) = '7' AND bpr.OnSunday   = 'Y' )) ";



		int no = DB.executeUpdate(sql, get_TrxName());
		log.finest(sql);
		log.fine("Insert (1) #" + no);

		sql = " UPDATE Z_Replenish zr SET "
				+ " QtyAvailable =   NVL((select bomQtyAvailableByLocator( zr.m_Product_ID , zr.m_Warehouse_ID, COALESCE ( ( select  MAX(m_locator_id) from m_locator l  "
				+ " inner join  z_locatortype t on t.z_locatortype_id = l.z_locatortype_id "
				+ " where l.m_warehouse_id = zr.m_warehouse_id and isdefault='Y' and t.isstandardtype = 'Y') , 0 ) ) from dual ),0) "

			+ " , QtyOrdered = NVL((select bomQtyOrderedByLocator( zr.m_Product_ID , zr.m_Warehouse_ID, COALESCE ( ( select  MAX(m_locator_id) from m_locator l  "
			+ " inner join  z_locatortype t on t.z_locatortype_id = l.z_locatortype_id "
			+ " where l.m_warehouse_id = zr.m_warehouse_id and isdefault='Y' and t.isstandardtype = 'Y') , 0 ) ) from dual ),0) "

			+ " , QtyTrft = NVL((select getTRFTINOUTBYLOCATOR( COALESCE ( ( select MAX(m_locator_id) from m_locator l  "
			+ " inner join  z_locatortype t on t.z_locatortype_id = l.z_locatortype_id "
			+ " where l.m_warehouse_id = zr.m_warehouse_id and isdefault='Y' and t.isstandardtype = 'Y') , 0 ) ,zr.m_Product_ID , 0  ) from dual ),0) ";

		sql += " WHERE AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update #" + no);



		//	Ensure Data consistency
		sql = "UPDATE Z_Replenish SET QtyAvailable = 0 WHERE QtyAvailable IS NULL";
		no = DB.executeUpdate(sql, get_TrxName());
		sql = "UPDATE Z_Replenish SET QtyTrft = 0 WHERE QtyTrft IS NULL";
		no = DB.executeUpdate(sql, get_TrxName());
		sql = "UPDATE Z_Replenish SET QtyOrdered = 0 WHERE QtyOrdered IS NULL";
		no = DB.executeUpdate(sql, get_TrxName());

		// SI QtéDispo < RéapproMin
		sql = "UPDATE Z_Replenish"
				+ " SET QtyToOrder = Level_Max - QtyAvailable - QtyOrdered - QtyTrft "
				+ " WHERE AD_PInstance_ID=" + getAD_PInstance_ID()
				+ " AND QtyAvailable < Level_Min ";
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update QtyToOrder formule =" + no);
		//
		//	Si QtyToOrder   <= 0, mettre QtyToOrder  = 0
		sql = "UPDATE Z_Replenish"
				+ " SET QtyToOrder = 0 "
				+ " WHERE QtyToOrder <= 0" 
				+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update QtyToOrder negative =" + no);

		// Utiliser Colisage 
		sql = " update Z_Replenish zr " 
				+ " set qtytoorder = ( select GETQTYTOERDERED (zr.qtytoorder , zr.ORDER_PACK) from dual ) "
				+ " WHERE qtytoorder > 0 "
				+ " AND zr.IsUseOrder_Pack = 'Y' "
				+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update QtyToOrder Colisage = " + no);
		// Si « Utiliser Colisage » = N
		sql = " update Z_Replenish zr " 
				+ " set qtytoorder = ( select GETQTYTOERDERED (zr.qtytoorder , 1) from dual ) " 
				+ " WHERE qtytoorder > 0 "
				+ " AND zr.IsUseOrder_Pack = 'N' "
				+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Update qtytoorder sans Colisage =" + no);

		//	Delete rows where nothing to order
		sql = "DELETE FROM Z_Replenish "
				+ " WHERE QtyToOrder < 1"
				+ " AND AD_PInstance_ID=" + getAD_PInstance_ID();
		no = DB.executeUpdate(sql, get_TrxName());
		if (no != 0)
			log.fine("Delete No QtyToOrder=" + no);


	}	//	fillTable

	private int getDefaultPriceListeAchat(int ad_client_id){
		String sql = "select * from m_pricelist where isdefault = 'Y' and issopricelist = 'N'  and ad_client_id = ?";
		return DB.getSQLValue(get_Trx(), sql, ad_client_id);
	}

	private int getC_DocTypeReq(int ad_org_id){
		String sql = "select DOCTYPE_Requisition_ID from Z_OrgPOS where AD_Org_ID = ?";
		return DB.getSQLValue(get_Trx(), sql, ad_org_id);
	}

}
