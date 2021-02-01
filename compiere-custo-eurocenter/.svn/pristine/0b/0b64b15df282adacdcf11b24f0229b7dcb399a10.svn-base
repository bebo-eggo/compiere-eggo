package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProductPrice;
import org.compiere.model.X_I_ProductPrice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

import com.audaxis.compiere.util.CompiereException;

public class ImportProductPrice extends SvrProcess {

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? ";
	private int m_AD_Client_ID = 0;
	private boolean m_deleteOldImported = false;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal) element.getParameter())
						.intValue();
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(element.getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String sql = null;
	int no = 0;
		if (m_deleteOldImported) {
			sql = "DELETE FROM I_ProductPrice WHERE I_IsImported='Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(),
					new Object[] { m_AD_Client_ID }, null);
			log.info("Delete Old Impored =" + no);
		}
		// Set Client, Org, IaActive, Created/Updated, ProductType
		sql = "UPDATE I_ProductPrice "
				+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ?),"
				+ " AD_Org_ID = COALESCE (AD_Org_ID, 0),"
				+ " IsActive = COALESCE (IsActive, 'Y'),"
				+ " Created = COALESCE (Created, SysDate),"
				+ " CreatedBy = COALESCE (CreatedBy, 0),"
				+ " Updated = COALESCE (Updated, SysDate),"
				+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
				+ " I_ErrorMsg = NULL," + " I_IsImported = 'N' "
				+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL and IsActive='Y'";
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Reset=" + no);
		//Import des données des données
		String sqlValidate = "Select count(*) from I_ProductPrice where AD_Client_ID = ? and Is_ZDataValidate = 'N'";
		int nox = DB.getSQLValue(get_Trx(), sqlValidate, m_AD_Client_ID);
		if(nox !=0)
		{
			throw new CompiereException(
					"Des données ne sont pas validées ! Merci de les validées.");
		}
		int noUpdate = 0;
		int noInsert = 0;
		/**
		* Changes for uptake of bulk sql update : PO.saveAll
		* Go through all records
		*/

		log.fine("start separating ... ");
		sql = "SELECT * FROM I_ProductPrice WHERE I_IsImported='N' and isactive='Y' and M_PriceList_Version_ID is not null and M_Product_ID is not null" + STD_CLIENT_CHECK;
		sql += " ORDER BY Name_M_PriceList,Name_M_Pricelist_Version, Value_M_Product";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//EC16
		try {
		// Loop through records
		pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
		pstmt.setInt(1, m_AD_Client_ID);
		rs = pstmt.executeQuery();
		int oldmplv = 0;
		ArrayList<MProductPrice> oldmppx = null;
		while(rs.next())
		{
			X_I_ProductPrice imp = new X_I_ProductPrice(getCtx(), rs, get_Trx());
			MPriceListVersion mplv = new MPriceListVersion(getCtx(), imp.getM_PriceList_Version_ID(), get_Trx());
			ArrayList<MProductPrice> mppx = oldmppx;
			if(oldmplv != mplv.getM_PriceList_Version_ID())
			{
				MProductPrice[] mpp = mplv.getProductPrice(" and IsActive='Y'");
				mppx = new ArrayList<MProductPrice>();
				boolean exist = false;
				for (int i = 0; i < mpp.length; i++) {
				mppx.add(mpp[i]);
				}
				oldmplv = imp.getM_PriceList_Version_ID();
				oldmppx = mppx;
			}
			if(mppx.contains(MProductPrice.get(getCtx(), imp.getM_PriceList_Version_ID(), imp.getM_Product_ID(), get_Trx())))
			{
				MProductPrice newmpp =MProductPrice.get(getCtx(), imp.getM_PriceList_Version_ID(), imp.getM_Product_ID(), get_Trx());
				newmpp.setAD_Org_ID(mplv.getAD_Org_ID());
				newmpp.setPrices(imp.getPriceStd(), imp.getPriceStd(), imp.getPriceStd());
				newmpp.save();
				noUpdate++;
			}
			else
			{
				MProductPrice newmpp = new MProductPrice(getCtx(), imp.getM_PriceList_Version_ID(), imp.getM_Product_ID(), get_Trx());
				newmpp.setAD_Org_ID(mplv.getAD_Org_ID());
				newmpp.setPrices(imp.getPriceStd(), imp.getPriceStd(), imp.getPriceStd());
				newmpp.save();
				noInsert++;
			}
			imp.setProcessed(true);
			imp.setI_IsImported("Y");
			imp.save();
		}
		}catch (Exception e) {
		 log.log(Level.SEVERE, "Import price list - " + sql.toString(), e);
			 }
		finally {
		 DB.closeResultSet(rs);
		 DB.closeStatement(pstmt);
		}
		 
		addLog (0, null, new BigDecimal (noInsert),
				 "@Inserted@");
				 addLog (0, null, new BigDecimal (noUpdate),
				 "@Updated@");
		return "";
	}

}
