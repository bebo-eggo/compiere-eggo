package org.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MOrg;
import org.compiere.model.MProduct;
import org.compiere.model.X_I_Replenish;
import org.compiere.model.X_M_Replenish;
import org.compiere.util.DB;
import org.compiere.util.Ini;

import com.audaxis.compiere.db.Util;

public class ImportReplenish extends SvrProcess {

	private int AD_Client_ID = 0;
	private String P_ReplenishType = null;
	private int noInsert = 0;
	private int noExist = 0;

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? ";

	private static final int COMMITCOUNT = Integer.parseInt(Ini.getProperty(Ini.P_IMPORT_BATCH_SIZE));

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();

			if (element.getParameter() == null)
				;
			else if (name.equals("ReplenishType"))
				P_ReplenishType = (String) (element.getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			AD_Client_ID = getCtx().getAD_Client_ID();
			noInsert = 0;
			noExist = 0;

		}
	}

	@Override
	protected String doIt() throws Exception {
		String sql = null;
		int no = 0;

		// **** verification  ****
		// I_Replenish
		// Set Client, Org, IaActive, Created/Updated //FAQ 1 "AD_Client_ID?"
		sql = "UPDATE I_Replenish "
			+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ?),"
			+ " AD_Org_ID = COALESCE (AD_Org_ID, 0),"
			+ " IsActive = COALESCE (IsActive, 'Y'),"
			+ " Created = COALESCE (Created, SysDate),"
			+ " CreatedBy = COALESCE (CreatedBy, 0),"
			+ " Updated = COALESCE (Updated, SysDate),"
			+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
			+ " I_ErrorMsg = NULL," + " I_IsImported = 'N' "
			+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL";

		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID },
				get_Trx());
		log.info("Reset=" + no);

		String ts = DB.isPostgreSQL() ? "COALESCE(I_ErrorMsg,'')"
				: "I_ErrorMsg"; // java bug, it could not be used directly

		//Set Product
		sql = "UPDATE I_Replenish i "
			+ "SET M_Product_ID=(SELECT p.M_Product_ID FROM M_Product p"
			+ " WHERE i.Value_M_Product=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
			+ "WHERE Value_M_Product IS NOT NULL AND M_Product_ID IS NULL" 
			+ " AND I_IsImported='N'"
			+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID },
				get_Trx());
		log.info("Product Existing value=" + no);

		sql = "UPDATE I_Replenish " + "SET I_IsImported='E', I_ErrorMsg=" + ts
		+ "||'ERR=Article inexistant,' "
		+ "WHERE M_Product_ID IS NULL AND Value_M_Product IS NOT NULL and Value_M_Product_Category IS NULL"
		+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;

		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID },
				get_Trx());
		log.info("Product not Existing Value=" + no);

		// Set Product Category
		sql = "UPDATE I_Replenish i "
			+ "SET M_Product_Category_ID=(SELECT M_Product_Category_ID FROM M_Product_Category pc"
			+ " WHERE i.Value_M_Product_Category=pc.value AND i.AD_Client_ID=pc.AD_Client_ID) "
			+ "WHERE Value_M_Product_Category IS NOT NULL AND M_Product_Category_ID IS NULL"
			+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID }, get_Trx());
		log.fine("Set Category ID =" + no);

		sql = "UPDATE I_Replenish " + "SET I_IsImported='E', I_ErrorMsg=" + ts
		+ "||'ERR=Famille inexistante,' "
		+ "WHERE M_Product_Category_ID IS NULL AND Value_M_Product_Category IS NOT NULL and Value_M_Product IS NULL"
		+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;

		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID },
				get_Trx());
		log.info("category not Existing Value=" + no);

		// Set Ad Org ID	
		sql = "UPDATE I_Replenish i "
			+ "SET Z_AD_Org_ID=(SELECT org.AD_Org_ID FROM AD_Org org"
			+ " WHERE i.Value_Org=org.value AND i.AD_Client_ID=org.AD_Client_ID) "
			+ "WHERE i.Value_Org IS NOT NULL AND i.Z_AD_Org_ID IS NULL"
			+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID }, get_Trx());
		log.fine("Set Z_AD_Org_ID  =" + no);
		
		// Set Ad Org ID	
		sql = "UPDATE I_Replenish i "
			+ "SET Z_AD_Org_ID=(SELECT org.AD_Org_ID FROM AD_Org org"
			+ " WHERE i.Value_Org=org.Name AND i.AD_Client_ID=org.AD_Client_ID) "
			+ "WHERE i.Value_Org IS NOT NULL AND i.Z_AD_Org_ID IS NULL"
			+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID }, get_Trx());
		log.fine("Set Z_AD_Org_ID  =" + no);

		sql = "UPDATE I_Replenish " + "SET I_IsImported='E', I_ErrorMsg=" + ts
		+ "||'ERR=Magasin inexistante,' "
		+ "WHERE Z_AD_Org_ID IS NULL AND Value_Org IS NOT NULL "
		+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;

		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID },
				get_Trx());
		log.info("Value_Org not Existing Value=" + no);

		// verifier type magasin 
		String tmp = "(select adrl.value from AD_Ref_List adrl where adrl.ad_reference_id = " +
		"(SELECT adr.ad_reference_id " +
		"FROM AD_Reference adr " +
		"WHERE adr.name = 'TypeMagasinList'))";

		sql = "UPDATE I_Replenish " + "SET I_IsImported='E', I_ErrorMsg=" + ts
		+ "||'ERR=type Magasin inexistante,' "
		+ "WHERE Value_TypeMagasin IS NOT NULL and Value_TypeMagasin NOT IN "
		+ tmp
		+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;

		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID },
				get_Trx());
		log.info("Type Magasin not Exists=" + no);

		sql = "UPDATE I_Replenish i "
			+ "SET TypeMagasin = Value_TypeMagasin "
			+ "WHERE Value_TypeMagasin IS NOT NULL AND Value_TypeMagasin IN "
			+ tmp
			+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;

		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID }, get_Trx());
		log.fine("Set Z_AD_Org_ID  =" + no);

		//
		sql = "UPDATE I_Replenish i SET I_IsImported='E', I_ErrorMsg=" + ts
		+ "||'ERR=Product and Famille is null ,' "
		+ "WHERE M_Product_Category_ID IS NULL AND M_Product_ID IS NULL"
		+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;

		no = DB.executeUpdate(sql.toString(), new Object[] { AD_Client_ID },
				get_Trx());
		log.info("Product and Famille is null=" + no);


		commit();

		//***********************************end verification***************** 

		List<X_M_Replenish> ReplenishToSave = new ArrayList<X_M_Replenish>();

		log.fine("start separating ... ");
		sql = "SELECT * FROM I_Replenish WHERE I_IsImported='N' " +
		STD_CLIENT_CHECK;


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//EC008
		try {
			// Loop through records
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, AD_Client_ID);
			rs = pstmt.executeQuery();
			while(rs.next()){
				X_I_Replenish imp = new X_I_Replenish(getCtx(), rs, get_Trx());
				createReplenishs(ReplenishToSave,imp);
				imp.setI_IsImported("Y");
				imp.setProcessed(true);
				imp.save();
			}
		}catch (Exception e) {
			log.log(Level.SEVERE, "Locator - " + sql.toString(), e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
		//

		saveReplenish(ReplenishToSave);

		// Set Error to indicator to not imported
//		sql = "UPDATE I_Replenish "
//			+ "SET I_IsImported='Y',Processed='Y' Updated=SysDate ,ISACTIVE='N'"
//			+ "WHERE I_IsImported = 'N'"
//			+ STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[]{AD_Client_ID},
//				get_Trx());
//
//		sql = "UPDATE I_Replenish "
//			+ "SET I_IsImported='N', Updated=SysDate "
//			+ "WHERE I_IsImported<>'Y'"
//			+ STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[]{AD_Client_ID},
//				get_Trx());

		addLog (0, null, new BigDecimal (no), " @Errors@");
		addLog (0, null, new BigDecimal (noInsert)," @Inserted@");
		addLog (0, null, new BigDecimal (noExist)," @exists@");

		return "";
	}

	private void createReplenishs(List<X_M_Replenish> ReplenishToSave, X_I_Replenish imp){
		String sql = null;
		if (imp.getTypeMagasin()==null && imp.getZ_AD_org_ID()!=0){
			//Select one organization
			int warhoseId = DB.getSQLValue(get_Trx(),"select M_WAREHOUSE_ID from ad_orginfo where ad_org_id = "+imp.getZ_AD_org_ID());
			createReplenishs(ReplenishToSave,imp,warhoseId,imp.getZ_AD_org_ID());
		}
		else{
			if ((imp.getTypeMagasin()==null) && (imp.getZ_AD_org_ID()==0))
				//Select all organization actif
				sql = "select * from ad_org where isactive = 'Y' and ISMAG='Y' " + STD_CLIENT_CHECK;
			else
				//Select more organization where Org.TypeMagasin = imp.typeMagasin
				sql = "select * from ad_org where  isactive = 'Y' and ISMAG='Y' and typemagasin = '"+imp.getTypeMagasin()+"'"+STD_CLIENT_CHECK;

			PreparedStatement pstmt = null;
			ResultSet rs = null;
			//EC008
			try {
				// Loop through records
				pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
				pstmt.setInt(1, AD_Client_ID);
				rs = pstmt.executeQuery();
				while(rs.next()){
					MOrg org = new MOrg(getCtx(), rs, get_Trx());
					int warhoseId = DB.getSQLValue(get_Trx(),"select M_WAREHOUSE_ID from ad_orginfo where ad_org_id = "+org.getID()+STD_CLIENT_CHECK,AD_Client_ID);
					createReplenishs(ReplenishToSave,imp,warhoseId,org.getID());
				}
			}catch (Exception e) {
				log.log(Level.SEVERE, "Locator - " + sql.toString(), e);
			}
			finally {
				Util.closeCursor(pstmt, rs);
			}

		}
	}

	private void createReplenishs(List<X_M_Replenish> ReplenishToSave, X_I_Replenish imp, int WareHouse, int AD_Org_ID)
	{
		String sql = null;
		if ((imp.getM_Product_Category_ID()==0) && (imp.getM_Product_ID()!=0))
			//Select one article
			createReplenish(ReplenishToSave,imp,imp.getM_Product_ID(),WareHouse,AD_Org_ID);
		else if (imp.getM_Product_Category_ID()!=0){
			//select all article of this category
			sql = "select * from m_product where  isactive = 'Y' and  m_product_category_id = "+ imp.getM_Product_Category_ID() +
			STD_CLIENT_CHECK;

			PreparedStatement pstmt = null;
			ResultSet rs = null;
			//EC008
			try {
				// Loop through records
				pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
				pstmt.setInt(1, AD_Client_ID);
				rs = pstmt.executeQuery();
				while(rs.next()){
					MProduct prod = new MProduct(getCtx(), rs, get_Trx());
					createReplenish(ReplenishToSave,imp,prod.getID(),WareHouse,AD_Org_ID);
				}
			}catch (Exception e) {
				log.log(Level.SEVERE, "Locator - " + sql.toString(), e);
			}
			finally {
				Util.closeCursor(pstmt, rs);
			}

		}	 
	}

	private void createReplenish(List<X_M_Replenish> ReplenishToSave, X_I_Replenish imp,int M_Product_ID,int WareHouse, int AD_Org_ID){

		String sql = "UPDATE m_replenish rep SET rep.isactive = 'N' "
			+ "WHERE rep.ad_org_id = ? AND rep.m_warehouse_id = ? AND rep.m_product_id = ? AND rep.replenishtype = ? "
			+ STD_CLIENT_CHECK;

		int no = DB.executeUpdate(sql.toString(), new Object[] {imp.getZ_AD_org_ID(),WareHouse,imp.getM_Product_ID(),P_ReplenishType,AD_Client_ID },
				get_Trx());
		log.info("Set desactive Replenish double=" + no);


		X_M_Replenish rep = new X_M_Replenish(getCtx(), 0, get_Trx());

		rep.setAD_Client_ID(AD_Client_ID);
		rep.setReplenishType(P_ReplenishType);
		rep.setLevel_Max(imp.getLevel_Max());
		rep.setLevel_Min(imp.getLevel_Min());
		rep.setM_Warehouse_ID(WareHouse);
		rep.setAD_Org_ID(AD_Org_ID);
		rep.setM_Product_ID(M_Product_ID);
		rep.set_Value("IsUseOrder_Pack", imp.get_Value("IsUseOrder_Pack")); //#78284
		if(ReplenishNotFoundInList(ReplenishToSave,rep)){
			ReplenishToSave.add(rep);
			noInsert++;
		}
		if(ReplenishToSave.size()>COMMITCOUNT) 
			saveReplenish(ReplenishToSave);

	}

	private boolean ReplenishNotFoundInList(List<X_M_Replenish> ReplenishToSave,X_M_Replenish rep){
		for(X_M_Replenish temp:ReplenishToSave){
			if  (
					(temp.getAD_Org_ID() == rep.getAD_Org_ID()) && 
					(temp.getM_Warehouse_ID() == rep.getM_Warehouse_ID()) &&
					(temp.getM_Product_ID() == rep.getM_Product_ID()) &&
					(temp.getReplenishType() == rep.getReplenishType())
			)
				return false;
		}

		return true;
	}

	private void saveReplenish(List<X_M_Replenish> ReplenishToSave) {

		if (ReplenishToSave==null || ReplenishToSave.isEmpty())
			return;

		for(X_M_Replenish temp : ReplenishToSave)
			try{
				temp.save(get_Trx());
			}
			catch(Exception e){
				log.warning(e.toString());
				noInsert--;
				noExist++;
			}
			
		ReplenishToSave.clear();
		commit();
	}

}