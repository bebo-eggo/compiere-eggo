package com.audaxis.compiere.process;

import java.io.File;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MPInstance;
import org.compiere.model.MPInstancePara;
import org.compiere.model.MProcessPara;
import org.compiere.model.MProductCost;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.ProcessInfoUtil;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import ru.compiere.report.RusReportStarter;

import com.audaxis.compiere.db.Util;

/**
 * ce processus permet de copier les coûts de  M_ProductPrice  vres la table centrale des coûts Z_ProductCost
 *
 */

public class ZcopyPriceList extends RusReportStarter implements ReportBatchModeInterface, ReportServer{

	private int p_AD_Client_ID = 0;
	private int p_AD_Org_ID = 0;
	private int p_M_PriceList_ID = 0;
	private int p_M_PriceList_Version_ID = 0;
	private int p_M_Cost_Element_ID = 0;
	private Timestamp p_Date;
	private int ad_Process_ID;
	private Ctx ctx;


	protected void prepare(ProcessInfo pi) {
		ProcessInfoParameter[] para = pi.getParameter();
		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();
			if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = para[i].getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID =  para[i].getParameterAsInt();
			else if (name.equals("M_PriceList_ID"))
				p_M_PriceList_ID = para[i].getParameterAsInt();
			else if (name.equals("M_PriceList_Version_ID"))
				p_M_PriceList_Version_ID = para[i].getParameterAsInt();
			else if (name.equals("M_Cost_Element_ID"))
				p_M_Cost_Element_ID = para[i].getParameterAsInt();
			else if (name.equals("Date"))
				p_Date = (Timestamp) para[i].getParameter();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);

		}
	}
	
	@Override
	public File startReport(Ctx ctx, ProcessInfo pi, boolean IsDirectPrint){
		
		ProcessInfoUtil.setParameterFromDB(pi);
		prepare(pi);
		//String Msg = "";
		this.ctx=ctx;
		Trx trx = Trx.get("Insert"+pi.getAD_PInstance_ID());
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		int noUpadteNull = DB.executeUpdate("DELETE Z_PRODUCTCOST where AD_CLIENT_ID = ? ",p_AD_Client_ID,get_Trx() );
		//Il faut travailler en 2 temps, 1 insert not exists, 2 update exists.
		//INSERT
		Object [] params = {pi.getAD_User_ID(),pi.getAD_User_ID(),pi.getAD_PInstance_ID(),p_M_PriceList_Version_ID,p_AD_Client_ID};
		int noInsert = DB.executeUpdate("INSERT INTO Z_PRODUCTCOST "
				+ "select pp.AD_CLIENT_ID, pp.AD_ORG_ID, SYSDATE, ?, pp.pricelist,'Y',pp.m_product_id,SYSDATE,? ,'N' ,AD_SEQUENCE_NEXTNO('Z_ProductCost'),? AS AD_PInstance_ID from m_pricelist pl "
				+ "inner join m_pricelist_version plv ON (plv.m_pricelist_id = pl.m_pricelist_id) "
				+ "inner join m_productprice pp on plv.m_pricelist_version_id = pp.m_pricelist_version_id "
				+ "where  plv.m_pricelist_version_ID= ? AND plv.isactive = 'Y' "
				+ "AND plv.ad_client_id = ? "
				+ "and not exists (Select 1 from Z_ProductCost where Z_ProductCost.AD_CLIENT_ID = pp.AD_CLIENT_ID and Z_ProductCost.M_PRODUCT_ID = pp.M_PRODUCT_ID and Z_ProductCost.AD_ORG_ID = pp.AD_ORG_ID)", params, get_Trx());
		//Ajouter les new insert à la table t_zproductcost
		DB.executeUpdate("DELETE FROM t_zproductcost where AD_PInstance_ID!= ? ",pi.getAD_PInstance_ID(),get_Trx());
		int noInsertT = DB.executeUpdate("insert into t_zproductcost SELECT AD_PInstance_ID,Z_ProductCost_ID from Z_ProductCost where AD_PInstance_ID = ? and CurrentCostPrice is not null",pi.getAD_PInstance_ID(),get_Trx());
		commit();
		//Update les existants suivant M_PRODUCT et AD_ORG
//		
//		Object [] paramsX = {pi.getAD_User_ID(),pi.getAD_PInstance_ID(),p_M_PriceList_Version_ID,p_AD_Client_ID,pi.getAD_PInstance_ID()};
//		int noUpdate = DB.executeUpdate("Update Z_PRODUCTCOST set updated = sysdate, updatedby = ?,AD_PInstance_ID=?, CurrentCostPrice = "
//				+ "(select pp.pricelist from m_pricelist pl "
//				+ "inner join m_pricelist_version plv ON (plv.m_pricelist_id = pl.m_pricelist_id) "
//				+ "inner join m_productprice pp on plv.m_pricelist_version_id = pp.m_pricelist_version_id "
//				+ "where  plv.m_pricelist_version_ID= ? AND plv.isactive = 'Y' "
//				+ "AND plv.ad_client_id = ? and Z_ProductCost.AD_CLIENT_ID = pp.AD_CLIENT_ID and Z_ProductCost.M_PRODUCT_ID = pp.M_PRODUCT_ID  "
//				+ "and exists (Select 1 from Z_ProductCost "
//				+ "where Z_ProductCost.AD_CLIENT_ID = pp.AD_CLIENT_ID and Z_ProductCost.M_PRODUCT_ID = pp.M_PRODUCT_ID and Z_ProductCost.AD_PInstance_ID !=?))", paramsX, get_Trx());
//		
		int deleteNull = DB.executeUpdate("DELETE FROM Z_PRODUCTCOST where AD_PInstance_ID= ? and CurrentCostPrice is null ",pi.getAD_PInstance_ID(),get_Trx());
		//DB.executeUpdate("DELETE FROM t_zproductcost where AD_PInstance_ID!= ? ",pi.getAD_PInstance_ID(),get_Trx());
		//noInsertT = DB.executeUpdate("insert into t_zproductcost SELECT AD_PInstance_ID,Z_ProductCost_ID from Z_ProductCost where AD_PInstance_ID = ? ",pi.getAD_PInstance_ID(),get_Trx());
		//Update M_COST
		Object [] params2 = {pi.getAD_User_ID(),pi.getAD_PInstance_ID(),p_M_Cost_Element_ID,p_AD_Client_ID,pi.getAD_PInstance_ID()};
		DB.executeUpdate("UPDATE M_Cost set updated = sysdate, updatedby = ?, CurrentCostPrice = "
				+ "(Select CurrentCostPrice from Z_PRODUCTCOST where AD_PInstance_ID = ? and Z_PRODUCTCOST.M_Product_ID = M_COST.M_Product_ID "
				+ "AND Z_PRODUCTCOST.AD_Client_ID = M_Cost.AD_Client_ID and CurrentCostPrice is not null) where M_Cost.M_CostElement_ID = ? and M_Cost.AD_Client_ID = ? "
				+ "and exists (SELECT 1 from Z_PRODUCTCOST ZT where ZT.M_PRODUCT_ID = M_Cost.M_PRODUCT_ID "
				+ "AND ZT.AD_CLIENT_ID =M_Cost.AD_CLIENT_ID and ZT.AD_PINSTANCE_ID = ?)",params2, get_Trx());
				
//		String sql = " select pp.m_product_id, pp.pricelist, pp.ad_org_id, plv.ValidFrom from m_pricelist pl " +
//		" inner join m_pricelist_version plv ON (plv.m_pricelist_id = pl.m_pricelist_id)" +
//		" inner join m_productprice pp on plv.m_pricelist_version_id = pp.m_pricelist_version_id " +              
//		" where pl.m_pricelist_id = ? AND plv.m_pricelist_version_ID= ? AND plv.isactive = 'Y'" +
//		" AND plv.ad_client_id = ? ";
//		//ZCOM
//		//+ "AND pp.ad_org_id <> 0"; // ne pas ramener les articles qui ont un prix sur l'org *
//		
//		if(p_AD_Org_ID != 0)
//			sql += " AND plv.ad_org_id = ?";
//		
//		sql+=" order by 1,4 asc";
//		try
//		{
//			ps = DB.prepareStatement(sql, get_TrxName());
//			ps.setInt(1, p_M_PriceList_ID);
//			ps.setInt(2, p_M_PriceList_Version_ID);
//			//ps.setDate(2,new Date(p_Date.getTime()));
//			ps.setInt(3,p_AD_Client_ID );
//			if(p_AD_Org_ID != 0)
//				ps.setInt(4, p_AD_Org_ID);
//			//ps.setInt(1, 101);
//			rs = ps.executeQuery();
//
//			int m_product_id = 0;
//			int ad_org_id = 0;
//			BigDecimal cost = BigDecimal.ZERO;
//
//			while (rs.next())
//			{
//				//debut redmine 6234
//				m_product_id = rs.getInt(1);
//				cost = rs.getBigDecimal(2);
//				ad_org_id = rs.getInt(3);
//				//params = new Object[]{cost,m_product_id,ad_org_id};
//				//if (updateExistingProduct(trx, cost,m_product_id,ad_org_id,pi)>0)
//				//	continue;
//				if (updateExistingProductMCost(trx, cost,m_product_id,ad_org_id,pi,p_M_Cost_Element_ID)>0)
//					continue;
//				MProductCost pc = new MProductCost(ctx, 0 , trx);
//				pc.setM_Product_ID(m_product_id);
//				pc.setCurrentCostPrice(cost);
//				pc.setAD_Org_ID(ad_org_id);
//				pc.save(trx); 
//				Object[] params2 = new Object[]{cost,getAD_User_ID(),m_product_id,getAD_Client_ID(),p_M_Cost_Element_ID };  
//				int nox = DB.executeUpdate(get_Trx(), "UPDATE M_Cost SET CurrentCostPrice = ?, updated = sysdate, updatedBy = ? "
//						+ "WHERE M_Product_ID = ? AND AD_Client_ID = ? and M_CostElement_ID = ? ", params2);
//				DB.executeUpdate(trx, "insert into t_zproductcost values (" + pi.getAD_PInstance_ID() + "," + pc.getZ_ProductCost_ID() + ")");
//			}
//
//			//Msg = "Copie terminée";
//		}
//		catch (SQLException e)
//		{
//			CLogger.get().severe(e.getMessage());
//		}
//		finally	
//		{
//			Util.closeCursor(ps, rs);
//		}
//
//		if(!trx.commit())
//		{
//			trx.rollback();
//			trx.close();
//			log.warning("Trx non comitée.");
//		}
		ad_Process_ID = DB.getSQLValue(get_TrxName(), "SELECT AD_PROCESS_ID FROM AD_PROCESS WHERE NAME = ? ", "Copied products");
		MPInstance pinstance = new MPInstance(ctx, ad_Process_ID, 0);
		pinstance.save();

		ProcessInfo pinfo=new ProcessInfo("Rapport Article Copiés", ad_Process_ID);
		pinfo.setRecord_ID(pi.getAD_PInstance_ID());
		pinfo.setAD_PInstance_ID(pinstance.getAD_PInstance_ID());

		return super.startReport(ctx, pinfo, false);
	}
	

		private int updateExistingProductMCost(Trx trx, BigDecimal cost, int m_product_id, int ad_org_id, ProcessInfo pi, int M_Cost_Element_ID){
			int no = DB.executeUpdate(get_Trx(), "UPDATE Z_ProductCost SET CurrentCostPrice = ? WHERE M_Product_ID = ? AND ad_org_id = ?", cost,m_product_id,ad_org_id);
			if (no >0){
				String sql = "SELECT Z_ProductCost_ID FROM Z_ProductCost WHERE M_Product_ID = ? AND ad_org_id = ?";
				PreparedStatement pstm = null;
				ResultSet rs = null;
				try {
					pstm = DB.prepareStatement(sql, trx);
					pstm.setBigDecimal(1, cost);
					pstm.setInt(2, m_product_id);
					rs = pstm.executeQuery();
					while (rs.next()) {
						MProductCost pcost = new MProductCost(ctx, rs.getInt(1), trx);
						DB.executeUpdate(get_Trx(), "insert into t_zproductcost values (" + pi.getAD_PInstance_ID() + "," + pcost.getZ_ProductCost_ID() + ")");
					}
				} catch (Exception e) {
					log.log(Level.SEVERE, e.getMessage());
				}
				finally{
					Util.closeCursor(pstm,rs);
				}
			}
			
			//MAJ du cout via Element de cout
			Object[] params = new Object[]{cost,getAD_User_ID(),m_product_id,getAD_Client_ID(),M_Cost_Element_ID };  
			int nox = DB.executeUpdate(get_Trx(), "UPDATE M_Cost SET CurrentCostPrice = ?, updated = sysdate, updatedBy = ? "
					+ "WHERE M_Product_ID = ? AND AD_Client_ID = ? and M_CostElement_ID = ? ", params);

			return no;
		}

	//redmine 6234
	private int updateExistingProduct(Trx trx, BigDecimal cost, int m_product_id, int ad_org_id, ProcessInfo pi){
		int no = DB.executeUpdate(get_Trx(), "UPDATE Z_ProductCost SET CurrentCostPrice = ? WHERE M_Product_ID = ? AND ad_org_id = ?", cost,m_product_id,ad_org_id);
		if (no >0){
			String sql = "SELECT Z_ProductCost_ID FROM Z_ProductCost WHERE M_Product_ID = ? AND ad_org_id = ?";
			PreparedStatement pstm = null;
			ResultSet rs = null;
			try {
				pstm = DB.prepareStatement(sql, trx);
				pstm.setBigDecimal(1, cost);
				pstm.setInt(2, m_product_id);
				rs = pstm.executeQuery();
				while (rs.next()) {
					MProductCost pcost = new MProductCost(ctx, rs.getInt(1), trx);
					DB.executeUpdate(get_Trx(), "insert into t_zproductcost values (" + pi.getAD_PInstance_ID() + "," + pcost.getZ_ProductCost_ID() + ")");
				}
			} catch (Exception e) {
				log.log(Level.SEVERE, e.getMessage());
			}
			finally{
				Util.closeCursor(pstm,rs);
			}
		}

		return no;
	}

}
