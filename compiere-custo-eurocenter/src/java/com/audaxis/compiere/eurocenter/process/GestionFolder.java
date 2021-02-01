package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.model.X_AD_Org;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MProductPrice;

public class GestionFolder extends SvrProcess{

	/** client Id */
	private int p_AD_Client_ID;
	/** organisation id */
	private int p_AD_Org_ID;
	/**price list*/
	private int p_M_PriceList_Version_ID;
	/** date requise */
	private Timestamp	p_DateRequired;
	
	private int p_C_DocType_ID;
	
	private MPriceListVersion plv = null;
	
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
			else if (name.equals("M_PriceList_Version_ID"))
				p_M_PriceList_Version_ID = element.getParameterAsInt();
			else if (name.equals("DateRequired")){
				p_DateRequired = (Timestamp)element.getParameter();
			}
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_C_DocType_ID = getTypeDocPOR();
		if (p_C_DocType_ID<=0)
			throw new IllegalArgumentException("No DocType POR");
	}

	@Override
	protected String doIt() throws Exception {
		
		log.info("AD_Client_ID=" + p_AD_Client_ID 
				+ " - AD_Org_ID=" + p_AD_Org_ID 
				+ " - M_PriceList_Version_ID=" + p_M_PriceList_Version_ID
				+ " - DateRequired=" + p_DateRequired);
		//
		StringBuffer sql = new StringBuffer("EXISTS (SELECT 1 FROM M_ProductPrice pp WHERE pp.M_PriceList_Version_ID = ");
		sql.append(p_M_PriceList_Version_ID);
		if(p_AD_Org_ID > 0)
			sql.append(" AND pp.AD_Org_ID = ").append(p_AD_Org_ID);
		sql.append(" AND AD_Org.AD_Org_ID = pp.AD_Org_ID)");
		//
		int countRequisition = 0;
		plv = new MPriceListVersion(getCtx(), p_M_PriceList_Version_ID, get_Trx());
		int[] orgs = null;
		if(plv.getAD_Org_ID()!= 0)
		{
			//POur une organisation
			orgs = new int[1];
			orgs[0] = plv.getAD_Org_ID();
		}else
			//Toutes les organisations
		{
			if(p_AD_Org_ID > 0)
			{
				orgs = new int[1];
				orgs[0] = p_AD_Org_ID;
			}
			else
				orgs = PO.getAllIDs(X_AD_Org.Table_Name, "AD_Org.IsActive='Y' AND ISMAG = 'Y' and AD_Org.AD_Client_ID =" + p_AD_Client_ID , get_Trx());
		}
		if(orgs != null && orgs.length > 0)
			for (int ad_Org_ID : orgs) {
				createRequisition(ad_Org_ID);
				countRequisition++;
			}
		else
			return Msg.getMsg(getCtx(), "EUROCENTER_NOORG_PLV");
		
		return countRequisition + " @M_Requisition_ID@ @Created@";
	}
	
	private MRequisitionLine createRequisitionLine(MRequisition req , MProductPrice pp){
		MRequisitionLine reql = new MRequisitionLine(getCtx(), 0, get_TrxName());
		reql.setAD_Client_ID(req.getAD_Client_ID());
		reql.setAD_Org_ID(req.getAD_Org_ID());
		reql.setM_Product_ID(pp.getM_Product_ID());
		reql.setPriceActual(pp.getPriceStd());
		reql.set_ValueNoCheck("QtyEntered", pp.getQtyMin());
		reql.set_ValueNoCheck("Qty", Env.ZERO);
		//reql.setQty(pp.getQtyMin());
		reql.setM_Requisition_ID(req.getM_Requisition_ID());
		reql.save();
		return reql;
	}
	
	private void createRequisition(int org) {
		
		MPriceListVersion plv = new MPriceListVersion(getCtx(), p_M_PriceList_Version_ID, get_Trx());
		MRequisition req = new MRequisition(getCtx(), 0,get_TrxName());
		req.setAD_Client_ID(p_AD_Client_ID);
		req.setAD_Org_ID(org);
		req.setAD_User_ID(getCtx().getContextAsInt("#AD_User_ID"));
		req.setC_DocType_ID(p_C_DocType_ID);
		req.setDateRequired(p_DateRequired);
		req.setDescription("Folder : "+plv.getName());
		//Date début folder
		req.setDateDoc(plv.getValidFrom());
		req.setM_Warehouse_ID(getWareHouseID(org));
		req.setM_PriceList_ID(plv.getM_PriceList_ID());
		//
		if (req.save()){
			StringBuffer sql = new StringBuffer("select * from M_ProductPrice MP where mp.m_pricelist_version_id = ?");		
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try{
				pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
				pstmt.setInt(1, p_M_PriceList_Version_ID);
				rs = pstmt.executeQuery();
				MProductPrice pp = null;
				while(rs.next()){
					pp = new MProductPrice(getCtx(), rs, get_Trx());
					createRequisitionLine(req, pp);
				}
			} catch(Exception e){
				log.severe(e.getMessage());
			}
			finally 
			{
				Util.closeCursor(pstmt, rs);
			}
			
		}
	}
	
	private int getWareHouseID(int org){
		String sql = "select oi.m_warehouse_id from AD_OrgInfo oi where oi.ad_org_id = ?";
		return DB.getSQLValue(get_Trx(), sql, org);
	}

	private int getTypeDocPOR(){
		String sql = "select max(C_DocType_ID) from C_DocType where c_doctype.docbasetype = 'POR' and IsDefault='N' and AD_Client_ID = "+getAD_Client_ID();
		return DB.getSQLValue(get_Trx(), sql);
	}
}