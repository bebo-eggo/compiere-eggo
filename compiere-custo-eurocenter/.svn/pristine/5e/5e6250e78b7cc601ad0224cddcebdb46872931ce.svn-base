package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.X_I_RelatedProduct;
import org.compiere.model.X_I_Substitute;
import org.compiere.model.X_M_RelatedProduct;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;

public class ImportRelated extends SvrProcess {

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
		int noInsert = 0;
		int noExists = 0;

		// Delete Old Imported
		if (m_deleteOldImported) {
			sql = "DELETE FROM I_RelatedProduct WHERE I_IsImported='Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(),
					new Object[] { m_AD_Client_ID }, get_Trx());
			log.info("Delete Old Impored =" + no);
		}

		// Set Client, Org, IaActive, Created/Updated
		sql = "UPDATE I_RelatedProduct " 
				+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ?),"
				+ " AD_Org_ID = COALESCE (AD_Org_ID, 0),"
				+ " IsActive = COALESCE (IsActive, 'Y'),"
				+ " Created = COALESCE (Created, SysDate),"
				+ " CreatedBy = COALESCE (CreatedBy, 0),"
				+ " Updated = COALESCE (Updated, SysDate),"
				+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
				+ " I_ErrorMsg = NULL," + " I_IsImported = 'N' "
				+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL";
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID }, get_Trx());
		log.info("Reset=" + no);

		//Validations
		//Product
		sql = "UPDATE I_RelatedProduct i "
				+ "SET M_Product_ID=(SELECT M_Product_ID FROM M_Product p "
				+ "WHERE i.Value_M_Product=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE i.M_Product_ID IS NULL AND I_IsImported<>'Y' "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID }, get_Trx());
		log.info("M_Product=" + no);

		sql = "UPDATE I_RelatedProduct i " 
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg ||'ERR=Article inexistant,' "
				+ "WHERE i.Value_M_Product is NOT NULL AND i.M_Product_ID IS NULL "
				+ "AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID }, get_Trx());
		if (no != 0)
			log.warning("Invalid M_Product=" + no);
		
		
		//Related Product
		sql = "UPDATE I_RelatedProduct i "
				+ "SET RelatedProduct_ID=(SELECT p.M_Product_ID FROM M_Product p " 
				+ "WHERE i.Value_RelatedProduct=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE i.RelatedProduct_ID IS NULL AND I_IsImported<>'Y' " 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Related=" + no);

		sql = "UPDATE I_RelatedProduct i " 
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg ||'ERR=Article associé inexistant,' "
				+ "WHERE i.Value_RelatedProduct is NOT NULL AND i.RelatedProduct_ID IS NULL " 
				+ "AND i.I_IsImported<>'Y' " + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },get_Trx());
		if (no != 0)
			log.warning("Invalid RelatedProduct_ID=" + no);  
		
		
		//Related Product Type   
		String complementarySQL = "select value from  ad_ref_list where ad_reference_id = (select ad_reference_id "+
                                  "from AD_Reference where name='M_RelatedProduct Type') " ; 
		
		sql = "UPDATE I_RelatedProduct i " 
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg ||'ERR=Type Association Inconnu' " 
			+ "WHERE i.RelatedProductType NOT IN ( " + complementarySQL + " ) " 
			+ "AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;  
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },get_Trx());
		if (no != 0)
			log.warning("Invalid Related Association Type =" + no);
		
		
		//Test de double enregistrement de meme name, product, related 
		sql = "UPDATE I_RelatedProduct i " 
				+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg ||'ERR=Enregistrement existant,' "
				+ "WHERE EXISTS (SELECT 1 FROM I_RelatedProduct ii WHERE i.M_Product_ID = ii.M_Product_ID " 
				+ "AND i.RelatedProduct_ID = ii.RelatedProduct_ID AND i.Name=ii.Name AND i.I_RelatedProduct_ID <> ii.I_RelatedProduct_ID) "
				+ "AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID }, get_Trx());
		if (no != 0)
			log.warning("Double enregistrements=" + no);

		// Si enregistrement exist le mettre en Traité
		sql = "UPDATE I_RelatedProduct i " 
				+ "SET Processed='Y' "
				+ "WHERE EXISTS (SELECT 1 FROM M_RelatedProduct m WHERE i.M_Product_ID = m.M_Product_ID " 
				+ "AND i.RelatedProduct_ID = m.RelatedProduct_ID) " 
				+ "AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		noExists = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (noExists != 0)
			log.warning("Article Related Association exist=" + no);

		commit();

		//Importation
		log.fine("start Import ... ");
		sql = "SELECT * FROM I_RelatedProduct WHERE I_IsImported='N' AND Processed='N'" + STD_CLIENT_CHECK;
		sql += " ORDER BY Value_M_Product, Value_RelatedProduct"; 

		PreparedStatement pstmt = null;
		ResultSet rs = null;


		try {
			// Loop through records
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, m_AD_Client_ID);
			rs = pstmt.executeQuery();
			while(rs.next()){
				X_I_RelatedProduct imp = new X_I_RelatedProduct(getCtx(), rs, get_Trx()); 
				X_M_RelatedProduct rel = new X_M_RelatedProduct(getCtx(), 0, get_Trx());
				rel.setClientOrg(imp);
				rel.setM_Product_ID(imp.getM_Product_ID());
				rel.setRelatedProduct_ID(imp.getRelatedProduct_ID());     
				rel.setName(imp.getName());
				rel.setRelatedProductType(imp.getRelatedProductType());  
				rel.setDescription(imp.getDescription());   
				  
				if (rel.save(get_Trx())){
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
		sql = "UPDATE I_RelatedProduct " 
				+ "SET I_IsImported='N', Updated=SysDate "
				+ "WHERE I_IsImported<>'Y'"  
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		addLog (0, null, new BigDecimal (noInsert), "@RelatedProduct_ID@: @Inserted@"); 
		addLog (0, null, new BigDecimal (noExists), "@AlreadyExists@"); 

		return "";  
	}

}
