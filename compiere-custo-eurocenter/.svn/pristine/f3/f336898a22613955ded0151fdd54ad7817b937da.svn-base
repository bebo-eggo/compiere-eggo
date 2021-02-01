package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

public class ValidateData extends SvrProcess {

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? ";
	private int m_AD_Client_ID = 0;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				ProcessInfoParameter[] para = getParameter();
				for (ProcessInfoParameter element : para) {
					String name = element.getParameterName();
					if (element.getParameter() == null)
						;
					else if (name.equals("AD_Client_ID"))
						m_AD_Client_ID = ((BigDecimal) element.getParameter())
								.intValue();
					else
						log.log(Level.SEVERE, "Unknown Parameter: " + name);
				}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String sql = null;
		int no = 0;
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
		
		sql = "UPDATE I_ProductPrice i "
				+ "SET M_Product_ID=(SELECT M_Product_ID FROM M_Product p"
				+ " WHERE i.Value_M_Product=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Product_ID IS NULL AND I_IsImported='N' and i.IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Product =" + no);
		
		String ts = DB.isPostgreSQL() ? "COALESCE(I_ErrorMsg,'')"
				: "I_ErrorMsg"; // java bug, it could not be used directly
		sql = "UPDATE I_ProductPrice i "
				+ "SET I_IsImported='E', I_ErrorMsg="
				+ ts
				+ "||'ERR=Invalid Product,' "
				+ "WHERE i.Value_M_Product is NOT NULL AND i.M_Product_ID IS NULL and i.IsActive='Y'"
				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid Product=" + no);
		
		sql = "UPDATE I_ProductPrice i "
				+ "SET M_Pricelist_ID=(SELECT M_Pricelist_ID FROM M_Pricelist p"
				+ " WHERE i.Name_M_PriceList=p.Name AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Pricelist_ID IS NULL AND I_IsImported='N' and i.IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Pricelist =" + no);
		
		ts=DB.isPostgreSQL() ? "COALESCE(I_ErrorMsg,'')"
				: "I_ErrorMsg"; // java bug, it could not be used directly
		sql = "UPDATE I_ProductPrice i "
				+ "SET I_IsImported='E', I_ErrorMsg="
				+ ts
				+ "||'ERR=Invalid Pricelist,' "
				+ "WHERE i.Name_M_PriceList is NOT NULL AND i.M_Pricelist_ID IS NULL and i.IsActive='Y'"
				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid Pricelist=" + no);
		
		sql = "UPDATE I_ProductPrice i "
				+ "SET M_Pricelist_Version_ID=(SELECT M_Pricelist_Version_ID FROM M_Pricelist_Version p"
				+ " WHERE i.Name_M_Pricelist_Version=p.Name AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Pricelist_Version_ID IS NULL AND I_IsImported='N' and i.IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Pricelist_Version =" + no);
		
		ts=DB.isPostgreSQL() ? "COALESCE(I_ErrorMsg,'')"
				: "I_ErrorMsg"; // java bug, it could not be used directly
		sql = "UPDATE I_ProductPrice i "
				+ "SET I_IsImported='E', I_ErrorMsg="
				+ ts
				+ "||'ERR=Invalid Pricelist_Version,' "
				+ "WHERE i.Name_M_Pricelist_Version is NOT NULL AND i.M_Pricelist_Version_ID IS NULL and i.IsActive='Y'"
				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid Pricelist_Version=" + no);
		
//		sql = "UPDATE I_ProductPrice i "
//				+ "SET ValidFrom=trunc(Sysdate) "
//				+ "WHERE ValidFrom IS NULL AND I_IsImported='N' and i.IsActive='Y'"
//				+ STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//				get_Trx());
//		log.info("ValidFrom =" + no);
//		
//		sql = "UPDATE I_ProductPrice i "
//				+ "SET I_IsImported='E', I_ErrorMsg="
//				+ ts
//				+ "||'ERR=ValidTo non défini,' "
//				+ "WHERE i.ValidTo is NULL AND i.Is_ZFolder = 'Y' i.IsActive='Y'"
//				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//				get_Trx());
//		if (no != 0)
//			log.warning("Invalid Pricelist_Version=" + no);
		sql = "update I_ProductPrice i set i.VALUE_M_PRODUCT = replace(i.VALUE_M_PRODUCT,'\\\\','\\') where i.IsActive='Y' AND i.I_IsImported<>'Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Product Existing UPC=" + no);
		sql = "UPDATE I_ProductPrice i "
				+ "SET Is_ZDataValidate='Y' "
				+ "WHERE i.IsActive='Y'"
				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Data Validate=" + no);
		return no+" données validées !";
	}

}
