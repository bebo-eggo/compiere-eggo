package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.X_I_Substitute;
import org.compiere.model.X_M_Substitute;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;

public class ImportSubstitute extends SvrProcess {

	/** Client to be imported to */
	private int m_AD_Client_ID = 0;
	/** Delete old Imported */
	private boolean m_deleteOldImported = false;

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? ";

	@Override
	protected void prepare() {
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
		String sql = null;
		int no = 0;
		int noInsert = 0;int noExists = 0;

		// Delete Old Imported
		if (m_deleteOldImported) {
			sql = "DELETE FROM I_Substitute WHERE I_IsImported='Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(),
					new Object[] { m_AD_Client_ID }, get_Trx());
			log.info("Delete Old Impored =" + no);
		}

		// Set Client, Org, IaActive, Created/Updated, ProductType
		sql = "UPDATE I_Substitute "
				+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ?),"
				+ " AD_Org_ID = COALESCE (AD_Org_ID, 0),"
				+ " IsActive = COALESCE (IsActive, 'Y'),"
				+ " Created = COALESCE (Created, SysDate),"
				+ " CreatedBy = COALESCE (CreatedBy, 0),"
				+ " Updated = COALESCE (Updated, SysDate),"
				+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
				+ " I_ErrorMsg = NULL," + " I_IsImported = 'N' "
				+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL";
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Reset=" + no);

		//Validations
		//Product
		sql = "UPDATE I_Substitute i "
				+ "SET M_Product_ID=(SELECT M_Product_ID FROM M_Product p"
				+ " WHERE i.Value_M_Product=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE i.M_Product_ID IS NULL AND I_IsImported<>'Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("M_Product=" + no);

		sql = "UPDATE I_Substitute i "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg ||'ERR=Article inexistant,' "
				+ "WHERE i.Value_M_Product is NOT NULL AND i.M_Product_ID IS NULL"
				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid M_Product=" + no);

		//Product Substitute
		sql = "UPDATE I_Substitute i "
				+ "SET Substitute_ID=(SELECT M_Product_ID FROM M_Product p"
				+ " WHERE i.Value_Substitute=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE i.Substitute_ID IS NULL AND I_IsImported<>'Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Substitute =" + no);

		sql = "UPDATE I_Substitute i "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg ||'ERR=Article de ramplaçmant inexistant,' "
				+ "WHERE i.Value_Substitute is NOT NULL AND i.Substitute_ID IS NULL"
				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid Substitute_ID=" + no);

		//Test de double enregistrement de meme name, product, substitut
		sql = "UPDATE I_Substitute i "
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg ||'ERR=Enregistrement existant,' "
				+ "WHERE EXISTS (SELECT 1 FROM I_Substitute ii WHERE i.M_Product_ID = ii.M_Product_ID " 
				+ "AND i.Substitute_ID = ii.Substitute_ID AND i.Name=ii.Name AND i.I_Substitute_ID <> ii.I_Substitute_ID) "
				+ "AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Double enregistrements=" + no);

		//si enregistrement exist le mettre en Traité
		sql = "UPDATE I_Substitute i "
				+ "SET Processed='Y' "
				+ "WHERE EXISTS (SELECT 1 FROM M_Substitute m WHERE i.M_Product_ID = m.M_Product_ID " 
				+ "AND i.Substitute_ID = m.Substitute_ID) "
				+ "AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		noExists = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (noExists != 0)
			log.warning("Article Ramplaçant exist=" + no);

		commit();

		//Importation
		log.fine("start Import ... ");
		sql = "SELECT * FROM I_Substitute WHERE I_IsImported='N' AND Processed='N'" 
				+ STD_CLIENT_CHECK;
		sql += " ORDER BY Value_M_Product, Value_Substitute";

		PreparedStatement pstmt = null;
		ResultSet rs = null;


		try {
			// Loop through records
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, m_AD_Client_ID);
			rs = pstmt.executeQuery();
			while(rs.next()){
				X_I_Substitute imp = new X_I_Substitute(getCtx(), rs, get_Trx());
				X_M_Substitute sub = new X_M_Substitute(getCtx(), 0, get_Trx());
				sub.setClientOrg(imp);
				sub.setM_Product_ID(imp.getM_Product_ID());
				sub.setSubstitute_ID(imp.getSubstitute_ID());
				sub.setName(imp.getName());
				if (sub.save(get_Trx())){
					imp.setI_IsImported(X_I_Substitute.I_ISIMPORTED_Yes);
					imp.setProcessed(true);
					imp.save(get_Trx());
					noInsert++;
				}
			}
		}catch (Exception e) {
			log.log(Level.SEVERE, "Locator - " + sql.toString(), e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}

		// Set Error to indicator to not imported
		sql = "UPDATE I_Product "
				+ "SET I_IsImported='N', Updated=SysDate "
				+ "WHERE I_IsImported<>'Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		addLog (0, null, new BigDecimal (noInsert), "@Substitute_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noExists), "@AlreadyExists@");

		return "";
	}

}
