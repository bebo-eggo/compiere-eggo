package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MProduct;
import org.compiere.model.MTax;
import org.compiere.model.MUser;
import org.compiere.model.X_I_Order;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Ini;
import org.compiere.util.NullParameter;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.ecenter.compiere.util.EggoCtx;

public class ImportPOSOrderMass extends SvrProcess {

	private boolean			p_deleteOldImported = false;
	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? " ;
	/** Commit every 100 entities	*/
	private static final boolean TESTMODE = false;
	private static final int	COMMITCOUNT = TESTMODE?100:Integer.parseInt(Ini.getProperty(Ini.P_IMPORT_BATCH_SIZE));
	private int				p_AD_Client_ID = 0;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("DeleteOldImported"))
				p_deleteOldImported = "Y".equals(element.getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		String sql = null;
		int no = 0;
		p_AD_Client_ID = getAD_Client_ID();
//		Delete Old Imported
		if (p_deleteOldImported)
		{
			sql = "DELETE FROM I_POS_Mass_Import "
				+ "WHERE I_IsImported='Y'" 
				+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			log.fine("Delete Old Impored =" + no);
		}
		
		//Update C_BPartner FROM OLDVALUE
		sql =  "UPDATE I_POS_MASS_IMPORT o "
				  + "SET C_BPartner_ID = (Select MAX(C_BPartner_ID) from C_BPartner where C_BPartner.OLDVALUE = o.OLDVALUE) "
				  + "WHERE C_BPartner_ID IS NULL "
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			log.fine("Set C_BPartner_ID=" + no);	
			
			//Update C_BPartner FROM OLDVALUE
			sql =  "UPDATE I_POS_MASS_IMPORT o "
					  + "SET C_BPartner_ID = (Select MAX(C_BPartner_ID) from C_BPartner where C_BPartner.Value = 'REPRISEGI') "
					  + "WHERE C_BPartner_ID IS NULL "
					  + " AND I_IsImported<>'Y'" 
					  + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
				log.fine("Set C_BPartner_ID=" + no);	
			
				
				//Update M_Product_ID FROM OLDVALUE
				sql =  "UPDATE I_POS_MASS_IMPORT o "
						  + "SET M_Product_ID = (Select MAX(M_Product_ID) from M_Product where M_Product.Value = 'REPRISETEMP') "
						  + "WHERE M_Product_ID IS NULL "
						  + " AND I_IsImported<>'Y'" 
						  + STD_CLIENT_CHECK;
					no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
					log.fine("Set M_Product_ID=" + no);	
				
			//UPDATE C_BPARTNBER_LOCATION
			sql =  "UPDATE I_POS_MASS_IMPORT o "
					  + "SET Z_IMEI = (Select Z_IMEI from M_Product where M_Product.M_Product_ID = o.M_Product_ID) "
					  + "WHERE M_Product_ID IS NOT NULL "
					  + " AND I_IsImported<>'Y'" 
					  + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
				log.fine("Set BP Location from BP=" + no);
			//update I_POS_MASS_IMPORT set Qtyentered = 1, PRICEENTERED = Qtyentered*PRICEENTERED where M_PRODUCT_ID is not null and INSTR(TO_CHAR(Qtyentered),',')>0;
				sql =  "update I_POS_MASS_IMPORT set Qtyentered = 1, PRICEENTERED = Qtyentered*PRICEENTERED where M_PRODUCT_ID is not null and INSTR(TO_CHAR(Qtyentered),',')>0 AND I_IsImported<>'Y'" 
						  + STD_CLIENT_CHECK;
					no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
					log.fine("Qtyentered=" + no);
				
			//update I_POS_MASS_IMPORT set QtyDelivered = Qtyentered where M_PRODUCT_ID is not null and INSTR(TO_CHAR(QtyDelivered),',')>0;	
			sql =  "update I_POS_MASS_IMPORT set QtyDelivered = Qtyentered where M_PRODUCT_ID is not null and INSTR(TO_CHAR(QtyDelivered),',')>0 AND I_IsImported<>'Y'" 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			log.fine("QtyDelivered=" + no);
			sql =  "update I_POS_MASS_IMPORT set LINEDESCRIPTION = SUBSTR(DESCRIPTION || ' -- '|| LINEDESCRIPTION,0,2000) where C_DOCTYPE_ID in (1000846,1000845,1000745) AND I_IsImported<>'Y'" 
						  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			sql =  "update I_POS_MASS_IMPORT set DESCRIPTION = null, LINEDESCRIPTION = null where C_DOCTYPE_ID in (1000846,1000845,1000745) "
					+ "and exists (Select 1 from M_Product where M_Product.M_Product_ID = I_POS_MASS_IMPORT.M_Product_ID and ProductType = 'S') AND I_IsImported<>'Y' " 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			log.fine("QtyDelivered=" + no);
			
			//UPDATE I_POS_MASS_IMPORT SET QTYENTERED = 0  where DocumentNo='GI-01-13-00661-2' and Z_PAYGI >0 and exists (Select 1 from M_PRODUCT where M_PRODUCT.M_PRODUCT_ID = I_POS_MASS_IMPORT.M_PRODUCT_ID and value='REPA CHARGE') and I_POS_MASS_IMPORT.QTYENTERED<0;
			sql =  "UPDATE I_POS_MASS_IMPORT SET QTYENTERED = 0  where Z_PAYGI >0 "
					+ "and exists (Select 1 from M_PRODUCT where M_PRODUCT.M_PRODUCT_ID = I_POS_MASS_IMPORT.M_PRODUCT_ID and value='REPA CHARGE') and I_POS_MASS_IMPORT.QTYENTERED<0 AND I_IsImported<>'Y' " 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			
			//MAJ GRANTOTAL pour REPA
			sql =  "UPDATE I_POS_MASS_IMPORT SET GRANDTOTAL = 0  where Z_PAYGI >0 "
					+ "and exists (Select 1 from M_PRODUCT where M_PRODUCT.M_PRODUCT_ID = I_POS_MASS_IMPORT.M_PRODUCT_ID and value='REPA CHARGE') and I_POS_MASS_IMPORT.QTYENTERED<0 AND I_IsImported<>'Y' " 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			
			sql =  "update I_POS_Mass_Import set GRandTotal = (SELECT sum((ip2.QTYENTERED*ip2.PRICEENTERED)*(1+ct.rate/100)) as t from I_POS_Mass_Import ip2 "
					+ "inner join C_Tax ct on ct.C_TAX_ID = ip2.C_TAX_ID where ip2.DOCUMENTNO = I_POS_Mass_Import.DOCUMENTNO) where I_IsImported<>'Y' " 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());

			sql =  "update I_POS_Mass_Import set GRandTotal = round(GRandTotal - Z_PAYGI,2) where I_IsImported<>'Y' " 
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
			
			
			Map <String, MBPartner> bpartnerMap = new HashMap <String, MBPartner>();		
			Map <String, List<MLocation>> bpLocationMap= new HashMap <String, List<MLocation>>();
			Map <String, List<MUser>> bpUserMap= new HashMap <String, List<MUser>>();
			ArrayList<X_I_Order> listImp = new ArrayList<X_I_Order>();
			List <MBPartnerLocation> bpLocationsToSave = new ArrayList<MBPartnerLocation> ();
			List <MLocation> LocationsToSave = new ArrayList<MLocation> ();
			//	Création de l'adresse de livraison
			sql =  	"SELECT C_BPartner_ID,Address1,Address4,City,Postal,C_Country_ID,I_POS_MASS_IMPORT_ID,DocumentNo FROM I_POS_MASS_IMPORT "
				  + "WHERE I_IsImported='N' "
				  + "AND C_BPartner_ID IS not NULL "
				  + "and Address1 is not null " 
				  + STD_CLIENT_CHECK
				  + " ORDER by DocumentNo,C_BPartner_ID ";
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try
			{
				pstmt = DB.prepareStatement (sql.toString(), get_Trx());
				pstmt.setInt(1, p_AD_Client_ID);
				rs = pstmt.executeQuery ();
				int C_BPartner_ID = 0;
				String DocNo = "";
				MLocation location = null;
				MBPartnerLocation bpl = null;
				int I_POS_MASS_IMPORT;
				while (rs.next ())
				{
					if(rs.getString("Address1")==null)
						continue;
					I_POS_MASS_IMPORT = rs.getInt("I_POS_MASS_IMPORT_ID");
					//X_I_Order imp = new X_I_Order (getCtx(), rs, get_Trx());
					//imp.setC_BPartner_Location_ID(0);
					//imp.save();
					MBPartner bp = bpartnerMap.get(""+rs.getInt("C_BPartner_ID"));

					if(bp == null) {
						bp = new MBPartner (getCtx(), rs.getInt("C_BPartner_ID"), get_Trx());
						//bp.setClientOrg (imp.getAD_Client_ID (), imp.getAD_Org_ID ());
						//bp.setValue (imp.getBPartnerValue());
						//bp.setName (imp.getName());
						bpartnerMap.put(""+rs.getInt("C_BPartner_ID"), bp);
					}
					if(C_BPartner_ID==rs.getInt("C_BPartner_ID") && DocNo.equals(rs.getString("DocumentNo")))
					{
						ArrayList<Object> params = new ArrayList<Object>();
						params.add(bpl.getC_BPartner_Location_ID());
						params.add(I_POS_MASS_IMPORT);
						DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set C_BPartner_Location_ID = ? where I_POS_MASS_IMPORT_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
						continue;
					}
					
					location = null;
					
					if(location == null) {
						location = new MLocation (getCtx(), 0, get_Trx());
						location.setAddress1 (rs.getString("Address1"));
						location.setAddress4 (rs.getString("Address4"));
						location.setCity (rs.getString("City"));
						location.setPostal (rs.getString("Postal"));
						location.setC_Country_ID(rs.getInt("C_Country_ID"));
						location.save();
					}
					if(location != null) {	
						bpl = new MBPartnerLocation (bp);
						bpl.setIsBillTo(false);
						bpl.setIsPayFrom(false);
						bpl.setIsRemitTo(false);
						bpl.setIsShipTo(true);
						//bpl.setC_BPartner_Location_ID(DB.getNextID(getAD_Client_ID(), MBPartnerLocation.Table_Name, get_TrxName()));
						bpl.setC_Location_ID (location.getC_Location_ID());
						bpl.save();
						ArrayList<Object> params = new ArrayList<Object>();
						params.add(bpl.getC_BPartner_Location_ID());
						params.add(I_POS_MASS_IMPORT);
						DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set C_BPartner_Location_ID = ? where I_POS_MASS_IMPORT_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
						
					}
					
//					List<MUser> bpUsers = bpUserMap.get(imp.getBPartnerValue());
//					if(bpUsers == null) {
//						bpUsers = new ArrayList <MUser>();
//						bpUserMap.put(imp.getBPartnerValue(), bpUsers);
//					}
//					
//					MUser contact = null;
//					for(MUser user : bpUsers) {
//						if(user.getName().equals(imp.getContactName()) ||
//								user.getName().equals(imp.getName())) {
//						contact = user;
//						break;
//						}
//					}
//					
//					if(contact == null) {
//						contact = new MUser (getCtx(), 0, get_Trx());
//						if (imp.getContactName () == null)
//							contact.setName (imp.getName ());
//						else
//							contact.setName (imp.getContactName ());
//						contact.setEMail (imp.getEMail ());
//						contact.setPhone (imp.getPhone ());
//						bpUsers.add(contact);
//					}
					DocNo = rs.getString("DocumentNo");
					C_BPartner_ID = rs.getInt("C_BPartner_ID");
				}
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, "BP - " + sql.toString(), e);
			}
			finally {
				DB.closeResultSet(rs);
				DB.closeStatement(pstmt);
			}
			
			//UPDATE C_BPARTNBER_LOCATION
			sql =  "UPDATE I_POS_MASS_IMPORT o "
					  + "SET C_BPartner_Location_ID=(SELECT MAX(C_BPartner_Location_ID) FROM C_BPartner_Location l"
					  + " WHERE l.C_BPartner_ID=o.C_BPartner_ID AND o.AD_Client_ID=l.AD_Client_ID"
					  + " AND ((l.IsShipTo='Y'))"
					  + ") "
					  + "WHERE C_BPartner_ID IS NOT NULL AND C_BPartner_Location_ID IS NULL"
					  + " AND I_IsImported<>'Y'" 
					  
					  + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql, new Object[] {p_AD_Client_ID}, get_Trx());
				log.fine("Set BP Location from BP=" + no);
			//if(!PO.saveAll(get_Trx(), LocationsToSave)) 
			//	throw new CompiereStateException("Could not save Locations");
			//if(!PO.saveAll(get_Trx(), bpLocationsToSave)) 
			//	throw new CompiereStateException("Could not save BP Locations");
			//saveBPartners(bpartnerMap, bpLocationMap, bpUserMap);
			sql =  "UPDATE I_POS_MASS_IMPORT "
				  + "SET I_IsImported='E', I_ErrorMsg='ERR=No BPartner, ' "
				  + "WHERE C_BPartner_ID IS NULL"
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(), new Object[]{p_AD_Client_ID}, get_Trx());
			if (no != 0)
				log.warning ("No BPartner=" + no);	
			commit();
			
		pstmt = null;
		rs = null;	
		//Concaténer les commentaires actions
		String sql22 = "Select AD_Org_ID, DocumentNo, Z_POSWFACTION_ID, Qty,Comments,I_POS_MASS_IMPORT_ID,Z_IMEI  from I_POS_MASS_IMPORT where I_IsImported='N' and C_DocType_ID not in (1000846,1000845,1000745) and Z_POSWFACTION_ID is not null "+STD_CLIENT_CHECK+" "
				+ "order by AD_Org_ID,DocumentNo,C_BPartner_ID,Z_PosWfAction_ID,I_POS_MASS_IMPORT_ID";
		String DocNo =null;
		int Z_PosWfAction_ID = 0;
		int I_POS_MASS_IMPORT = 0;
		String Comments = null;
		int AD_org = 0;
		try
		{
			pstmt = DB.prepareStatement(sql22.toString(), get_Trx());
			pstmt.setInt(1, p_AD_Client_ID);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				if((DocNo!= null && !DocNo.equals(rs.getString(2)) || Z_PosWfAction_ID!=rs.getInt(3)))
				{
					if(Comments!=null)
					{
						ArrayList<Object> params = new ArrayList<Object>();
						params.add(Comments);
						params.add(I_POS_MASS_IMPORT);
						DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = ? where I_POS_MASS_IMPORT_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
						params = new ArrayList<Object>();
						params.add(I_POS_MASS_IMPORT);
						params.add(Z_PosWfAction_ID);
						params.add(DocNo);
						params.add(AD_org);
						DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = null where I_POS_MASS_IMPORT_ID <> ? and Z_PosWfAction_ID = ?  and C_DocType_ID not in (1000846,1000845,1000745) and DocumentNo = ? and AD_Org_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
					}
					DocNo = rs.getString(2);
					Z_PosWfAction_ID=rs.getInt(3);
					Comments = rs.getString(5);
					AD_org = rs.getInt(1);
				}
				else
				{
					if(Comments==null)
						Comments = rs.getString(5);
					else
						Comments = Comments +" -- "+ rs.getString(5);
				}
				I_POS_MASS_IMPORT = rs.getInt(6);
			}
		}catch (Exception e)	
		{
			log.log(Level.SEVERE, "IMPORT I_POSORDER MASSE - " + sql.toString(), e);
		}
		finally 
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		
		if(Comments!=null)
		{
			ArrayList<Object> params = new ArrayList<Object>();
			params.add(Comments);
			params.add(I_POS_MASS_IMPORT);
			DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = ? where I_POS_MASS_IMPORT_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
			params = new ArrayList<Object>();
			params.add(I_POS_MASS_IMPORT);
			params.add(Z_PosWfAction_ID);
			params.add(DocNo);
			params.add(AD_org);
			DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = null where I_POS_MASS_IMPORT_ID <> ?  and C_DocType_ID not in (1000846,1000845,1000745) and Z_PosWfAction_ID = ? and DocumentNo = ? and AD_Org_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
		}
		
		//Concaténer les commentaires 
				sql22 = "Select AD_Org_ID, DocumentNo, Z_POSWFACTION_ID, Qty,Comments,I_POS_MASS_IMPORT_ID,Z_IMEI  from I_POS_MASS_IMPORT where I_IsImported='N' and Z_POSWFACTION_ID is null  and COMMENTS is not null and M_product_ID is null "+STD_CLIENT_CHECK+" "
						+ "order by AD_Org_ID,DocumentNo,C_BPartner_ID,I_POS_MASS_IMPORT_ID";
				DocNo =null;
				I_POS_MASS_IMPORT = 0;
				Comments = null;
				AD_org = 0;
				try
				{
					pstmt = DB.prepareStatement(sql22.toString(), get_Trx());
					pstmt.setInt(1, p_AD_Client_ID);
					rs = pstmt.executeQuery();
					
					while(rs.next())
					{
						if((DocNo!= null && !DocNo.equals(rs.getString(2))))
						{
							if(Comments!=null)
							{
								ArrayList<Object> params = new ArrayList<Object>();
								params.add(Comments);
								params.add(I_POS_MASS_IMPORT);
								DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = ? where I_POS_MASS_IMPORT_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
								params = new ArrayList<Object>();
								params.add(I_POS_MASS_IMPORT);
								params.add(DocNo);
								params.add(AD_org);
								DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = null where I_POS_MASS_IMPORT_ID <> ? and  DocumentNo = ? and AD_Org_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
							}
							DocNo = rs.getString(2);
							Z_PosWfAction_ID=rs.getInt(3);
							Comments = rs.getString(5);
							AD_org = rs.getInt(1);
						}
						else
						{
							if(Comments==null)
								Comments = rs.getString(5);
							else
								Comments = Comments +" -- "+ rs.getString(5);
							DocNo = rs.getString(2);
							AD_org = rs.getInt(1);
						}
						I_POS_MASS_IMPORT = rs.getInt(6);
					}
				}catch (Exception e)	
				{
					log.log(Level.SEVERE, "IMPORT I_POSORDER MASSE - " + sql.toString(), e);
				}
				finally 
				{
					DB.closeResultSet(rs);
					DB.closeStatement(pstmt);
				}
		
		//MAJ le dernier record Traité!
		if(Comments!=null)
		{
			ArrayList<Object> params = new ArrayList<Object>();
			params.add(Comments);
			params.add(I_POS_MASS_IMPORT);
			int nox = DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = ? where I_POS_MASS_IMPORT_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
			params = new ArrayList<Object>();
			params.add(I_POS_MASS_IMPORT);
			params.add(DocNo);
			params.add(AD_org);
			nox = DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set Comments = null where I_POS_MASS_IMPORT_ID <> ? and DocumentNo = ? and AD_Org_ID = ?", params.toArray(new Object[params.size()]), get_Trx());
		}
		commit();
		
		String sqlx = "Select * from I_POS_Mass_Import where  I_IsImported <> 'Y' "+STD_CLIENT_CHECK+" Order By AD_Org_ID,C_DocType_ID,DocumentNo,C_BPartner_ID,Type,M_Product_ID,Z_PosWfAction_ID,AD_Message_ID  ";

		PreparedStatement stmt2 = null;
		ResultSet rs2 = null;
//		EggoCtx.setConstants();
		ArrayList<POSLINE> listIPosOrderLines = new ArrayList<POSLINE>();
		ArrayList<String> listIPosOrderMass = new ArrayList<String>();
		int Product_PAYEGI = MProduct.getAllIDs(MProduct.Table_Name, "Value = 'PAYEGI'", get_Trx())[0];
		int Product_PAYEREPAGI = MProduct.getAllIDs(MProduct.Table_Name, "Value = 'PAYEREPAGI'", get_Trx())[0];
		try
		{
			pstmt = DB.prepareStatement(sqlx.toString(), get_Trx());
			pstmt.setInt(1, p_AD_Client_ID);
			rs = pstmt.executeQuery();
			StringBuffer sql2 = new StringBuffer();
			sql2.append("Insert into I_POSORDER (AD_CLIENT_ID,AD_ORG_ID,C_BPARTNER_ID,C_DOCTYPETARGET_ID,C_ORDER_ID,CREATEdbY,")
				.append("DATEORDERED,DOCUMENTNO,GRANDTOTAL,I_ERRORMSG,I_ISIMPORTED,I_POSORDER_ID,ISACTIVE,PROCESSED,PROCESSING,SALESREP_ID,")
				.append("UPDATEdbY,Z_POSNBR,PRIORITY,C_BPARTNER_LOCATION_ID,SAV_STATUS,isExported,dateExported,I_ISPARTNERMODIFIED,VENDOR_ID,Z_Warranty,I_PosOrderPartner_ID,Z_ORIGORDER,Z_TotPayment,Z_GrandTotal,Z_AD_Org_ID) ")
				.append("values ")
				.append("(?,?,?,?,?,?,?,?,?,?,?,ad_sequence_nextno('I_PosOrder2'),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			int AD_Org_ID = 0;
			String documentNo = null;
			int I_POSORDER_ID = 0;
			int I_POSORDERLINE_ID = 0;
			int AD_Client_ID = 0;
			String CommentXs ="";	
			Timestamp dateO = null;
			ArrayList<Object> params = new ArrayList<Object>();
			int NbIn = 0;
			int line = 10;
			int C_Doctype_ID = 0;
			MOrg mo = null;
			MDocType mdt= null;
			while (rs.next())
			{
				if(C_Doctype_ID==0 || C_Doctype_ID!=rs.getInt("C_Doctype_ID"))
					mdt = new MDocType(getCtx(), rs.getInt("C_Doctype_ID"), get_Trx());C_Doctype_ID = rs.getInt("C_Doctype_ID");
				if(AD_Org_ID==0 || AD_Org_ID!=rs.getInt("AD_Org_ID"))
					mo = new MOrg(getCtx(), rs.getInt("AD_Org_ID"), get_Trx());AD_Org_ID = rs.getInt("AD_Org_ID");
				//Import de I_PosOrder
				if(documentNo == null || !documentNo.equals(rs.getString("DocumentNo")))
				{
					line = 10;
					if(listIPosOrderLines.size()>0)
					{int Action = 0;
					//Si dans BDV, vérifier les QtyOrdered et QTY Delivered pour les actions 
					//Si qtrOrder<qtyDel => 1000001 et qtyDel<>0
					//Si qtyDel!=0 => 1000000
					boolean act1,act2 = false;
					int round;
					int nbround = 0;
					if(mdt.getName().equals("Ordre de vente standard"))
						round = 2;
					else
						if(mdt.getName().equals("Consignation"))
							round =3;
						else
							if(mdt.get_ValueAsBoolean("IsPosSav"))
								round=4;
							else
								round=1;
					for (int i = 0; i < listIPosOrderLines.size(); i++) {
						act1 = false;
						act2 = false;
						if(listIPosOrderLines.get(i).getQty()!=0 
								&& listIPosOrderLines.get(i).getQty()>listIPosOrderLines.get(i).getQtyDelivered() 
								&& !act1 && round == 2)
						{
							//Livrer
							act1 = true;
							Action=1000001;
							params = new ArrayList<Object>();
							params.add(rs.getInt("AD_Client_ID"));
							params.add(rs.getInt("AD_Org_ID"));
							params.add(getParam(rs.getString("Comments")));
							params.add(getAD_User_ID());
							params.add(rs.getTimestamp("DateOrdered"));
							params.add(listIPosOrderLines.get(i).getPOSOrderLine());
							params.add("Y");
							params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()-listIPosOrderLines.get(i).getQtyDelivered()));
							params.add(getAD_User_ID());
							params.add(rs.getInt("AD_Org_ID"));
							params.add(Action);
							setI_PosOrderLineAction(params,get_Trx());
							
						}
						if(listIPosOrderLines.get(i).getQty()!=0 
								&& listIPosOrderLines.get(i).getQty()>=listIPosOrderLines.get(i).getQtyDelivered() 
								&& listIPosOrderLines.get(i).getQtyDelivered()!=0 && !act2 && round == 2)
						{
							//Emporter
							Action=1000000;
							act2=true;
							params = new ArrayList<Object>();
							params.add(rs.getInt("AD_Client_ID"));
							params.add(rs.getInt("AD_Org_ID"));
							params.add(getParam(rs.getString("Comments")));
							params.add(getAD_User_ID());
							params.add(rs.getTimestamp("DateOrdered"));
							params.add(listIPosOrderLines.get(i).getPOSOrderLine());
							params.add("Y");
							params.add(new BigDecimal(listIPosOrderLines.get(i).getQtyDelivered()));
							params.add(getAD_User_ID());
							params.add(rs.getInt("AD_Org_ID"));
							params.add(Action);
							setI_PosOrderLineAction(params,get_Trx());
							
							//Ajouter I_TrxMSG
							params = new ArrayList<Object>();
							params.add(getParam(rs.getInt("AD_Client_ID")));
							params.add(getParam(rs.getInt("AD_Org_ID")));
							params.add(getParam(getAD_User_ID()));
							params.add(getParam(getAD_User_ID()));
							params.add(getParam("Y"));
							//params.add(getParam(rs.getInt("I_TRXMSG_ID"),false));
							params.add(getParam(0));
							params.add(getParam(listIPosOrderLines.get(i).getPOSOrderLine()));
							params.add(getParam(Action));
							params.add(getParam(0));
							params.add(getParam(new BigDecimal(listIPosOrderLines.get(i).getQtyDelivered())));
							params.add(getParam("Y"));
							params.add(getParam("Y"));
							params.add(getParam(1));
							params.add(getParam(null));
							params.add(getParam(null));
							no = setI_Trx(params, get_Trx());
//									
//							StringBuffer sql4 = new StringBuffer("select max(i_TrxMsg_ID) as i_TrxMsg_ID FROM i_TrxMsg");
//							stmt2 = DB.prepareStatement(sql4.toString(),get_Trx());
//							rs2 = stmt2.executeQuery();
//							if(rs2.next()){
//								i_trxMsg_ID = rs2.getInt("i_TrxMsg_ID");
//							}
//							DB.executeUpdate(sql3.toString(),i_trxMsg_ID,get_Trx());
						}
						if(round==3)
						{
							int nblgCons = DB.getSQLValue(get_Trx(), "Select Count(*) from I_POS_Mass_Import where I_IsImported <> 'Y'  AND "
									+ "AD_Client_ID="+getAD_Client_ID()+" and exists (Select 1 from I_POS_Mass_Import ipmi where ipmi.DOCUMENTNO = I_POS_Mass_Import.DOCUMENTNO and ipmi.Z_POSWFACTION_ID = 1000009 ) "
											+ "and I_POS_Mass_Import.documentNo = ?", rs.getString("DocumentNo"));
						if(nblgCons==0)
						{
							params = new ArrayList<Object>();
							params.add(rs.getInt("AD_Client_ID"));
							params.add(rs.getInt("AD_Org_ID"));
							params.add(getParam(rs.getString("Comments")));
							params.add(getAD_User_ID());
							params.add(rs.getTimestamp("DateOrdered"));
							params.add(listIPosOrderLines.get(i).getPOSOrderLine());
							params.add("Y");
							params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()));
							params.add(getAD_User_ID());
							params.add(rs.getInt("AD_Org_ID"));
							params.add(1000009);
							setI_PosOrderLineAction(params,get_Trx());
							}
						}
					}
					listIPosOrderLines = new ArrayList<ImportPOSOrderMass.POSLINE>();
					}
					listIPosOrderMass.add(rs.getString("DocumentNo"));
					C_Doctype_ID = rs.getInt("C_DocType_ID");
					if(NbIn==COMMITCOUNT)
						commit();
					params = new ArrayList<Object>();
					AD_Client_ID = rs.getInt("AD_Client_ID");
					params.add(rs.getInt("AD_Client_ID"));
					AD_Org_ID=rs.getInt("AD_Org_ID");
					params.add(AD_Org_ID);
					params.add(rs.getInt("C_BPartner_ID"));
					params.add(rs.getInt("C_DocType_ID"));
					//params.add(rs.getInt("C_ORDER_ID"));
					CommentXs = "";
					params.add(0);
					params.add(getAD_User_ID());
					dateO = rs.getTimestamp("DateOrdered");
					params.add(rs.getTimestamp("DateOrdered"));
					documentNo=rs.getString("DocumentNo");
					params.add(documentNo);
					params.add(rs.getBigDecimal("GrandTotal"));
					params.add(getParam(null));
					params.add("Y");
					params.add("Y");
					params.add("N");
					params.add("N");
					params.add(rs.getInt("SalesRep_ID"));
					params.add(getAD_User_ID());
					params.add(mo.getValue()+"01");
					params.add(0);
					params.add(getParam(rs.getInt("C_BPartner_Location_ID")));
					params.add(getParam(rs.getString("SAV_STATUS")));
					params.add("N");
					params.add(getParam(null));
					params.add("N");
					params.add(getParam(null));
					params.add(rs.getString("Z_Warranty"));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(AD_Org_ID);
					DB.executeUpdate(sql2.toString(), params.toArray(new Object[params.size()]), get_Trx());
					StringBuffer sql4 = new StringBuffer("select max(I_POSORDER_ID) as I_POSORDER_ID FROM i_PosOrder WHERE DOCUMENTNO = ?");
					try {
						stmt2 = DB.prepareStatement(sql4.toString(),get_Trx());
						stmt2.setString(1,documentNo);
						rs2 = stmt2.executeQuery();
						if(rs2.next()){
							I_POSORDER_ID = rs2.getInt("I_POSORDER_ID");
						}
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				finally{
					Util.closeCursor(stmt2, rs2);
				}
					NbIn++;
					listIPosOrderLines = new ArrayList<ImportPOSOrderMass.POSLINE>();
					
					if(rs.getDouble("Z_PayGI")>0)
					{
						//Ajouter d'une ligne en négatif
						
						StringBuffer sql222 = new StringBuffer();
						sql222.append(
								"Insert into I_POSORDERLINE (AD_CLIENT_ID,AD_ORG_ID,C_ORDERLINE_ID,CREATEdbY,I_POSORDER_ID,I_POSORDERLINE_ID,ISACTIVE,M_PRODUCT_ID,PRICEENTERED,PRICELIST,")
								.append("QTYENTERED,UPDATEdbY,Z_POSNBR,Z_SERNO,LINE,DESCRIPTION,Z_REFERENCEART,Z_PRODDESCRIPTION,M_PRODUCT_CATEGORY_ID,Z_S_FAMILLE_ID,Z_S_S_FAMILLE_ID,Z_S_S_S_FAMILLE_ID,")
								.append("FOURNISSEUR,Y_MARQUE_ID,PRODUCT_PRICE,DISCOUNT,MARQUETXT,M_PRODUCTSTATE,ACCESSORIES,PURCHASEDATE,C_TAX_ID,IEMI) ")
								.append("values ")
								.append("(?,?,?,?,?,ad_sequence_nextno('I_PosOrderLine2'),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						StringBuffer sql3 = new StringBuffer();
						sql3.append("select max(I_POSORDERLINE_ID) as I_POSORDERLINE_ID from I_POSORDERLINE WHERE I_POSORDER_ID = ? ");
						params = new ArrayList<Object>();
						params.add(rs.getInt("AD_Client_ID"));
						params.add(rs.getInt("AD_Org_ID"));
						params.add(0);
						params.add(getAD_User_ID());

						params.add(I_POSORDER_ID);
						params.add("Y");
						if(mdt.get_ValueAsBoolean("IsPosSav"))
							params.add(Product_PAYEREPAGI);
						else
							params.add(Product_PAYEGI);
						//BigDecimal AMT = new BigDecimal((rs.getDouble("Z_PayGI")/(1+(mt.getRate().doubleValue()/100))));
						//AMT = AMT.setScale(5,RoundingMode.HALF_UP);
						params.add(new BigDecimal(rs.getDouble("Z_PayGI")));
						params.add(0);

						params.add(new BigDecimal(-1));
						params.add(getAD_User_ID());
						params.add(mo.getValue()+"01");
						params.add(getParam(null));
						params.add(5);
						
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(getParam(null));// 01-02
						params.add(getParam(null));
						params.add(getParam(null));
						params.add(1000288);
						params.add(rs.getString("Z_IMEI").equals("Y")?"Voir BackOffice":getParam(null));
						DB.executeUpdate(sql222.toString(),
								params.toArray(new Object[params.size()]),
								get_Trx());
					
						try {
							stmt2 = DB.prepareStatement(sql3.toString(), get_Trx());
							stmt2.setInt(1, I_POSORDER_ID);
							rs2 = stmt2.executeQuery();
							if (rs2.next()) {
								I_POSORDERLINE_ID = rs2.getInt("I_POSORDERLINE_ID");
								
							}
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally{
							Util.closeCursor(stmt2, rs2);
						}
						//Ajouter un I_TrxMSG pour les services
						if(mdt.get_ValueAsBoolean("IsPosSav"))
						{
								//Ajouter I_TrxMSG
								params = new ArrayList<Object>();
								params.add(getParam(AD_Client_ID));
								params.add(getParam(AD_Org_ID));
								params.add(getParam(getAD_Client_ID()));
								params.add(getParam(getAD_User_ID()));
								params.add(getParam("Y"));
								//params.add(getParam(rs.getInt("I_TRXMSG_ID"),false));
								params.add(getParam(0));
								params.add(getParam(I_POSORDERLINE_ID));
								params.add(getParam(1000000));
								params.add(getParam(0));
								params.add(getParam(new BigDecimal(-1)));
								params.add(getParam("Y"));
								params.add(getParam("Y"));
								params.add(getParam(1));
								params.add(getParam(null));
								params.add(getParam(null));
								no = setI_Trx(params, get_Trx());
								
								params = new ArrayList<Object>();
								params.add(rs.getInt("AD_Client_ID"));
								params.add(rs.getInt("AD_Org_ID"));
								params.add(getParam(null));
								params.add(getAD_User_ID());
								params.add(rs.getTimestamp("DateOrdered"));
								params.add(I_POSORDERLINE_ID);
								params.add("Y");
								params.add(new BigDecimal(-1));
								params.add(getAD_User_ID());
								params.add(rs.getInt("AD_Org_ID"));
								params.add(1000000);
								setI_PosOrderLineAction(params,get_Trx());
								

						}
						
						listIPosOrderLines.add(new POSLINE(I_POSORDERLINE_ID, new Double(-1),new Double(-1)));
					}
				}
				if(rs.getInt("M_Product_ID")>0 && rs.getInt("AD_Message_ID")==0 && rs.getBigDecimal("QtyEntered").doubleValue()>0)
				{
					// Import de I_PosOrderLine
					StringBuffer sql222 = new StringBuffer();
					sql222.append(
							"Insert into I_POSORDERLINE (AD_CLIENT_ID,AD_ORG_ID,C_ORDERLINE_ID,CREATEdbY,I_POSORDER_ID,I_POSORDERLINE_ID,ISACTIVE,M_PRODUCT_ID,PRICEENTERED,PRICELIST,")
							.append("QTYENTERED,UPDATEdbY,Z_POSNBR,Z_SERNO,LINE,DESCRIPTION,Z_REFERENCEART,Z_PRODDESCRIPTION,M_PRODUCT_CATEGORY_ID,Z_S_FAMILLE_ID,Z_S_S_FAMILLE_ID,Z_S_S_S_FAMILLE_ID,")
							.append("FOURNISSEUR,Y_MARQUE_ID,PRODUCT_PRICE,DISCOUNT,MARQUETXT,M_PRODUCTSTATE,ACCESSORIES,PURCHASEDATE,C_TAX_ID,IEMI) ")
							.append("values ")
							.append("(?,?,?,?,?,ad_sequence_nextno('I_PosOrderLine2'),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					StringBuffer sql3 = new StringBuffer();
					sql3.append("select max(I_POSORDERLINE_ID) as I_POSORDERLINE_ID from I_POSORDERLINE WHERE I_POSORDER_ID = ? ");
					params = new ArrayList<Object>();
					params.add(rs.getInt("AD_Client_ID"));
					params.add(rs.getInt("AD_Org_ID"));
					params.add(0);
					params.add(getAD_User_ID());

					params.add(I_POSORDER_ID);
					params.add("Y");
					params.add(rs.getInt("M_Product_ID"));
					MTax mt=new MTax(getCtx(), rs.getInt("C_Tax_ID"), get_Trx());
					BigDecimal AMT = new BigDecimal((rs.getBigDecimal("PriceEntered").doubleValue()*(1+(mt.getRate().doubleValue()/100))));
					AMT = AMT.setScale(2,RoundingMode.HALF_UP);
					params.add(AMT);
					params.add(0);
					//Si le montant à des décimales, faire rs.getBigDecimal("QtyEntered") * AMT
					//Et mettre comme quantité 1 !
					Double qtyE = rs.getBigDecimal("QtyEntered").doubleValue();
					if(mdt.get_ValueAsBoolean("IsPosSav") && rs.getString("Type").equals("A"))
						params.add(new BigDecimal(qtyE*-1));
					else
						params.add(new BigDecimal(qtyE));
					
					params.add(getAD_User_ID());
					params.add(mo.getValue()+"01");
					params.add(getParam(rs.getString("Z_SerNo")));
					params.add(line+=10);
					if(mdt.get_ValueAsBoolean("IsPosSav") && rs.getString("Type").equals("A"))
						params.add(rs.getString("LineDescription"));
					else
						params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					params.add(getParam(null));
					if(mdt.get_ValueAsBoolean("IsPosSav") && rs.getString("Type").equals("A"))
						params.add(getParam(rs.getString("M_ProductState")));
					else
						params.add(getParam(null));
						// 01-02
					params.add(getParam(null));
					if(mdt.get_ValueAsBoolean("IsPosSav") && rs.getString("Type").equals("A"))
						params.add(getParam(rs.getTimestamp("PurchaseDate")));
					else
						params.add(getParam(null));
					
					params.add(rs.getInt("C_Tax_ID"));
					params.add(rs.getString("Z_IMEI").equals("Y")?"Voir BackOffice":getParam(null));
					DB.executeUpdate(sql222.toString(),
							params.toArray(new Object[params.size()]),
							get_Trx());
				
					try {
						stmt2 = DB.prepareStatement(sql3.toString(), get_Trx());
						stmt2.setInt(1, I_POSORDER_ID);
						rs2 = stmt2.executeQuery();
						if (rs2.next()) {
							I_POSORDERLINE_ID = rs2.getInt("I_POSORDERLINE_ID");
							
						}
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}finally{
						Util.closeCursor(stmt2, rs2);
					}
					if(mdt.get_ValueAsBoolean("IsPosSav"))
					{
						//String ProductType = (new MProduct(getCtx(), rs.getInt("M_Product_ID"), get_Trx())).getProductType();
						//Si article A => Action du statut !
						//Si S => Action A Emporter
						params = new ArrayList<Object>();
						params.add(rs.getInt("AD_Client_ID"));
						params.add(rs.getInt("AD_Org_ID"));
						params.add(getParam(null));
						params.add(getAD_User_ID());
						params.add(rs.getTimestamp("DateOrdered"));
						params.add(I_POSORDERLINE_ID);
						params.add("Y");
						qtyE = rs.getBigDecimal("QtyEntered").doubleValue();
						if(rs.getString("Type").equals("A"))
							params.add(new BigDecimal(qtyE*-1));
						else
							params.add(new BigDecimal(qtyE));
						params.add(getAD_User_ID());
						params.add(rs.getInt("AD_Org_ID"));
						if(rs.getString("Type").equals("A"))
							params.add(rs.getInt("Z_PosWfAction_ID"));
						else//A emlporter
							params.add(1000000);
						setI_PosOrderLineAction(params,get_Trx());
						
						//Ajouter un I_TrxMSG pour les services
						if(rs.getString("Type").equals("S"))
						{
							//Ajouter I_TrxMSG
							params = new ArrayList<Object>();
							params.add(getParam(AD_Client_ID));
							params.add(getParam(AD_Org_ID));
							params.add(getParam(getAD_Client_ID()));
							params.add(getParam(getAD_User_ID()));
							params.add(getParam("Y"));
							//params.add(getParam(rs.getInt("I_TRXMSG_ID"),false));
							params.add(getParam(0));
							params.add(getParam(I_POSORDERLINE_ID));
							params.add(getParam(1000000));
							params.add(getParam(0));
							params.add(getParam(rs.getBigDecimal("QtyDelivered")));
							params.add(getParam("Y"));
							params.add(getParam("Y"));
							params.add(getParam(1));
							params.add(getParam(null));
							params.add(getParam(null));
							no = setI_Trx(params, get_Trx());

						}
					}
					listIPosOrderLines.add(new POSLINE(I_POSORDERLINE_ID, rs.getBigDecimal("QtyEntered").doubleValue(),rs.getBigDecimal("QtyDelivered").doubleValue()));
				}
				// Import de I_PosOrderLineAction
				if(!mdt.get_ValueAsBoolean("IsPosSav") && rs.getInt("Z_PosWfAction_ID")>0 && rs.getString("Comments")!=null)
				{
					for (int i = 0; i < listIPosOrderLines.size(); i++) {
						
						params = new ArrayList<Object>();
						params.add(rs.getInt("AD_Client_ID"));
						params.add(rs.getInt("AD_Org_ID"));
						params.add(getParam(rs.getString("Comments")));
						params.add(getAD_User_ID());
						params.add(rs.getTimestamp("DateOrdered"));
						params.add(listIPosOrderLines.get(i).getPOSOrderLine());
						params.add("Y");
						params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()));
						params.add(getAD_User_ID());
						params.add(rs.getInt("AD_Org_ID"));
						params.add(rs.getInt("Z_PosWfAction_ID"));
						setI_PosOrderLineAction(params,get_Trx());
					}
					CommentXs = "";
					listIPosOrderLines = new ArrayList<ImportPOSOrderMass.POSLINE>();
				}
				// Import de I_PosOrderLineAction
				if(rs.getInt("M_Product_ID") == 0 && rs.getInt("Z_PosWfAction_ID")==0 && rs.getString("Comments")!=null)
				{
					int Action = 0;
					//Si dans BDV, vérifier les QtyOrdered et QTY Delivered pour les actions 
					//Si qtrOrder<qtyDel => 1000001 et qtyDel<>0
					//Si qtyDel!=0 => 1000000
					boolean act1,act2 = false;
					int round;
					int nbround = 0;
					if(mdt.getName().equals("Ordre de vente standard"))
						round = 2;
					else
						if(mdt.getName().equals("Consignation"))
							round =3;
						else
							if(mdt.get_ValueAsBoolean("IsPosSav"))
								round=4;
							else
								round=1;
					for (int i = 0; i < listIPosOrderLines.size(); i++) {
						act1 = false;
						act2 = false;
						if(listIPosOrderLines.get(i).getQty()!=0 
								&& listIPosOrderLines.get(i).getQty()>listIPosOrderLines.get(i).getQtyDelivered() 
								&& !act1 && round == 2)
						{
							//Livrer
							act1 = true;
							Action=1000001;
							params = new ArrayList<Object>();
							params.add(rs.getInt("AD_Client_ID"));
							params.add(rs.getInt("AD_Org_ID"));
							params.add(getParam(rs.getString("Comments")));
							params.add(getAD_User_ID());
							params.add(rs.getTimestamp("DateOrdered"));
							params.add(listIPosOrderLines.get(i).getPOSOrderLine());
							params.add("Y");
							params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()-listIPosOrderLines.get(i).getQtyDelivered()));
							params.add(getAD_User_ID());
							params.add(rs.getInt("AD_Org_ID"));
							params.add(Action);
							setI_PosOrderLineAction(params,get_Trx());
							
						}
						if(listIPosOrderLines.get(i).getQty()!=0 
								&& listIPosOrderLines.get(i).getQty()>=listIPosOrderLines.get(i).getQtyDelivered() 
								&& listIPosOrderLines.get(i).getQtyDelivered()!=0 && !act2 && round == 2)
						{
							//Emporter
							Action=1000000;
							act2=true;
							params = new ArrayList<Object>();
							params.add(rs.getInt("AD_Client_ID"));
							params.add(rs.getInt("AD_Org_ID"));
							params.add(getParam(rs.getString("Comments")));
							params.add(getAD_User_ID());
							params.add(rs.getTimestamp("DateOrdered"));
							params.add(listIPosOrderLines.get(i).getPOSOrderLine());
							params.add("Y");
							params.add(new BigDecimal(listIPosOrderLines.get(i).getQtyDelivered()));
							params.add(getAD_User_ID());
							params.add(rs.getInt("AD_Org_ID"));
							params.add(Action);
							setI_PosOrderLineAction(params,get_Trx());
							
							//Ajouter I_TrxMSG
							params = new ArrayList<Object>();
							params.add(getParam(rs.getInt("AD_Client_ID")));
							params.add(getParam(rs.getInt("AD_Org_ID")));
							params.add(getParam(getAD_Client_ID()));
							params.add(getParam(getAD_User_ID()));
							params.add(getParam("Y"));
							//params.add(getParam(rs.getInt("I_TRXMSG_ID"),false));
							params.add(getParam(0));
							params.add(getParam(listIPosOrderLines.get(i).getPOSOrderLine()));
							params.add(getParam(Action));
							params.add(getParam(0));
							params.add(getParam(new BigDecimal(listIPosOrderLines.get(i).getQtyDelivered())));
							params.add(getParam("Y"));
							params.add(getParam("Y"));
							params.add(getParam(1));
							params.add(getParam(null));
							params.add(getParam(null));
							no = setI_Trx(params, get_Trx());
//									
//							StringBuffer sql4 = new StringBuffer("select max(i_TrxMsg_ID) as i_TrxMsg_ID FROM i_TrxMsg");
//							stmt2 = DB.prepareStatement(sql4.toString(),get_Trx());
//							rs2 = stmt2.executeQuery();
//							if(rs2.next()){
//								i_trxMsg_ID = rs2.getInt("i_TrxMsg_ID");
//							}
//							DB.executeUpdate(sql3.toString(),i_trxMsg_ID,get_Trx());
						}
						
						if(round==1)
						{
						params = new ArrayList<Object>();
						params.add(rs.getInt("AD_Client_ID"));
						params.add(rs.getInt("AD_Org_ID"));
						params.add(getParam(rs.getString("Comments")));
						params.add(getAD_User_ID());
						params.add(rs.getTimestamp("DateOrdered"));
						params.add(listIPosOrderLines.get(i).getPOSOrderLine());
						params.add("Y");
						params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()));
						params.add(getAD_User_ID());
						params.add(rs.getInt("AD_Org_ID"));
						params.add(Action);
						setI_PosOrderLineAction(params,get_Trx());
						}
						if(round==3)
						{
							int nblgCons = DB.getSQLValue(get_Trx(), "Select Count(*) from I_POS_Mass_Import where I_IsImported <> 'Y'  AND "
									+ "AD_Client_ID="+getAD_Client_ID()+" and exists (Select 1 from I_POS_Mass_Import ipmi where ipmi.DOCUMENTNO = I_POS_Mass_Import.DOCUMENTNO and ipmi.Z_POSWFACTION_ID = 1000009 ) "
											+ "and I_POS_Mass_Import.documentNo = ?", rs.getString("DocumentNo"));
						if(nblgCons==0)
						{
							params = new ArrayList<Object>();
							params.add(rs.getInt("AD_Client_ID"));
							params.add(rs.getInt("AD_Org_ID"));
							params.add(getParam(rs.getString("Comments")));
							params.add(getAD_User_ID());
							params.add(rs.getTimestamp("DateOrdered"));
							params.add(listIPosOrderLines.get(i).getPOSOrderLine());
							params.add("Y");
							params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()));
							params.add(getAD_User_ID());
							params.add(rs.getInt("AD_Org_ID"));
							params.add(1000009);
							setI_PosOrderLineAction(params,get_Trx());
							}
						}
					}
					listIPosOrderLines = new ArrayList<ImportPOSOrderMass.POSLINE>();
				}
				//Import de I_PosOrderMSG
				if(rs.getInt("M_Product_ID")==0 && rs.getInt("AD_Message_ID")>0)
				{
					params = new ArrayList<Object>();
					params.add(rs.getInt("AD_Client_ID"));
					params.add(rs.getInt("AD_Org_ID"));
					params.add(getAD_User_ID());
					params.add(getAD_User_ID());
					params.add(rs.getInt("AD_Message_ID"));
					params.add(I_POSORDER_ID);
					setI_POSORDERMSG(params,get_Trx());
				}
			}
			line = 10;
			if(listIPosOrderLines.size()>0 )//&& NbIn>1)
			{
				
				int Action = 0;
			//Si dans BDV, vérifier les QtyOrdered et QTY Delivered pour les actions 
			//Si qtrOrder<qtyDel => 1000001 et qtyDel<>0
			//Si qtyDel!=0 => 1000000
			boolean act1,act2 = false;
			int round;
			int nbround = 0;
			if(mdt.getName().equals("Ordre de vente standard"))
				round = 2;
			else
				if(mdt.getName().equals("Consignation"))
					round =3;
				else	
					if(mdt.get_ValueAsBoolean("IsPosSav"))
						round=4;
					else
						round=1;
			for (int i = 0; i < listIPosOrderLines.size(); i++) {
				act1 = false;
				act2 = false;
				if(listIPosOrderLines.get(i).getQty()!=0 
						&& listIPosOrderLines.get(i).getQty()>listIPosOrderLines.get(i).getQtyDelivered() 
						&& !act1 && round == 2)
				{
					//Livrer
					act1 = true;
					Action=1000001;
					params = new ArrayList<Object>();
					params.add(AD_Client_ID);
					params.add(AD_Org_ID);
					params.add(CommentXs);
					params.add(getAD_User_ID());
					params.add(dateO);
					params.add(listIPosOrderLines.get(i).getPOSOrderLine());
					params.add("Y");
					params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()-listIPosOrderLines.get(i).getQtyDelivered()));
					params.add(getAD_User_ID());
					params.add(AD_Org_ID);
					params.add(Action);
					setI_PosOrderLineAction(params,get_Trx());
					
				}
				if(listIPosOrderLines.get(i).getQty()!=0 
						&& listIPosOrderLines.get(i).getQty()>=listIPosOrderLines.get(i).getQtyDelivered() 
						&& listIPosOrderLines.get(i).getQtyDelivered()!=0 && !act2 && round == 2)
				{
					//Emporter
					Action=1000000;
					act2=true;
					params = new ArrayList<Object>();
					params.add(AD_Client_ID);
					params.add(AD_Org_ID);
					params.add(CommentXs);
					params.add(getAD_User_ID());
					params.add(dateO);
					params.add(listIPosOrderLines.get(i).getPOSOrderLine());
					params.add("Y");
					params.add(new BigDecimal(listIPosOrderLines.get(i).getQtyDelivered()));
					params.add(getAD_User_ID());
					params.add(AD_Org_ID);
					params.add(Action);
					setI_PosOrderLineAction(params,get_Trx());
					
					//Ajouter I_TrxMSG
					params = new ArrayList<Object>();
					params.add(getParam(AD_Client_ID));
					params.add(getParam(AD_Org_ID));
					params.add(getParam(getAD_Client_ID()));
					params.add(getParam(getAD_User_ID()));
					params.add(getParam("Y"));
					//params.add(getParam(rs.getInt("I_TRXMSG_ID"),false));
					params.add(getParam(0));
					params.add(getParam(listIPosOrderLines.get(i).getPOSOrderLine()));
					params.add(getParam(Action));
					params.add(getParam(0));
					params.add(getParam(new BigDecimal(listIPosOrderLines.get(i).getQtyDelivered())));
					params.add(getParam("Y"));
					params.add(getParam("Y"));
					params.add(getParam(1));
					params.add(getParam(null));
					params.add(getParam(null));
					no = setI_Trx(params, get_Trx());
							
//					StringBuffer sql4 = new StringBuffer("select max(i_TrxMsg_ID) as i_TrxMsg_ID FROM i_TrxMsg");
//					stmt2 = DB.prepareStatement(sql4.toString(),get_Trx());
//					rs2 = stmt2.executeQuery();
//					if(rs2.next()){
//						i_trxMsg_ID = rs2.getInt("i_TrxMsg_ID");
//					}
//					DB.executeUpdate(sql3.toString(),i_trxMsg_ID,get_Trx());
					
				}
				if(round==4)
				{
					
				}
				
				if(round==1)
				{
				params = new ArrayList<Object>();
				params.add(AD_Client_ID);
				params.add(AD_Org_ID);
				params.add(CommentXs);
				params.add(getAD_User_ID());
				params.add(dateO);
				params.add(listIPosOrderLines.get(i).getPOSOrderLine());
				params.add("Y");
				params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()));
				params.add(getAD_User_ID());
				params.add(AD_Org_ID);
				params.add(Action);
				setI_PosOrderLineAction(params,get_Trx());
				}
				if(round==3)
				{
					int nblgCons = DB.getSQLValue(get_Trx(), "Select Count(*) from I_POS_Mass_Import where I_IsImported <> 'Y'  AND "
							+ "AD_Client_ID="+getAD_Client_ID()+" and exists (Select 1 from I_POS_Mass_Import ipmi where ipmi.DOCUMENTNO = I_POS_Mass_Import.DOCUMENTNO and ipmi.Z_POSWFACTION_ID = 1000009 ) "
									+ "and I_POS_Mass_Import.documentNo = ?", documentNo);
				if(nblgCons==0)
				{
					params = new ArrayList<Object>();
					params.add(getAD_Client_ID());
					params.add(AD_Org_ID);
					params.add(getParam(CommentXs));
					params.add(getAD_User_ID());
					params.add(dateO);
					params.add(listIPosOrderLines.get(i).getPOSOrderLine());
					params.add("Y");
					params.add(new BigDecimal(listIPosOrderLines.get(i).getQty()));
					params.add(getAD_User_ID());
					params.add(AD_Org_ID);
					params.add(1000009);
					setI_PosOrderLineAction(params,get_Trx());
					}
				}
			}
			listIPosOrderLines = new ArrayList<ImportPOSOrderMass.POSLINE>();
			}
		}
		catch (Exception e)	
		{
			log.log(Level.SEVERE, "IMPORT I_POSORDER MASSE - " + sql.toString(), e);
		}
		finally 
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		for (int j = 0; j < listIPosOrderMass.size(); j++) {
			DB.executeUpdate("UPDATE I_POS_MASS_IMPORT set I_IsImported = 'Y',  Processed = 'Y' where DocumentNo= '"+listIPosOrderMass.get(j).toString()+"'", get_Trx());
		}
		return null;
	}
	
	private Object getParam(Object o){
		int sqlType = Types.VARCHAR;
		if(o instanceof BigDecimal)
			sqlType = Types.NUMERIC;
		else if(o instanceof Timestamp )
			sqlType = Types.TIMESTAMP;
		if(o == null){
			return new NullParameter(sqlType);
		}else{
			return o;
		}
	}
	
	private int setI_Trx(ArrayList<Object> params, Trx trx)
	{
		StringBuffer sql33 = new StringBuffer();
		sql33	.append("Insert into i_TrxMsg (AD_CLIENT_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,ISACTIVE,I_TRXMSG_ID,C_ORDERLINE_ID,I_POSORDERLINE_ID,"
				+ "Z_POSWFACTION_ID,Z_POSWFACTIVITY_ID,QTYDELIVERED,ISEXPORTED,I_ISIMPORTED,INVOICEINDX,Z_COM,Z_COMID) ")
		.append("values ")
		.append("(?,?,sysdate,?,sysdate,?,?,AD_Sequence_NextNo('I_TrxMsg2'),?,?,?,?,?,?,?,?,?,?)");
		return DB.executeUpdate(sql33.toString(),params.toArray(new Object[params.size()]),trx);
	}
	
	private int setI_PosOrderLineAction(ArrayList<Object> params, Trx trx)
	{
		StringBuffer sql222 = new StringBuffer();
		sql222.append(
			"Insert into i_PosOrderLineAction (AD_CLIENT_ID,AD_ORG_ID,COMMENTS,CREATEdbY,DATEACTION,I_POSORDERLINEACTION_ID,I_POSORDERLINE_ID,ISACTIVE,")
			.append("QTYENTERED,UPDATEdbY,AD_OrgTo_ID,Z_PosWfAction_ID) ")
			.append("values ")
			.append("(?,?,?,?,?,ad_sequence_nextno('I_PosOrderLineAction2'),?,?,?,?,?,?)");
		return DB.executeUpdate(sql222.toString(),params,trx);
	}
	
	private int setI_POSORDERMSG(ArrayList<Object> params, Trx trx)
	{
		StringBuffer sql222 = new StringBuffer("INSERT INTO I_POSORDERMSG (AD_CLIENT_ID,AD_ORG_ID,CREATED,CREATEdbY,UPDATED,UPDATEdbY,I_POSORDERMSG_ID,AD_MESSAGE_ID,I_POSORDER_ID) ")
		.append("VALUES (?,?,sysdate,?,sysdate,?,ad_sequence_nextno('I_POSORDERMSG2'),?,?)");

		return DB.executeUpdate(sql222.toString(),params,trx);
	}
	
	
	
	class POSLINE {
        public int getPOSOrderLine() {
			return POSOrderLine;
		}
		public void setPOSOrderLine(int pOSOrderLine) {
			POSOrderLine = pOSOrderLine;
		}
		public Double getQty() {
			return qty;
		}
		public void setQty(Double qty) {
			this.qty = qty;
		}
		public Double getQtyDelivered() {
			return qtyDelivered;
		}
		public void setqtyDelivered(Double qtyDelivered) {
			this.qtyDelivered = qtyDelivered;
		}
		int POSOrderLine;
        private POSLINE(int pOSOrderLine, Double qty,Double qtyDelivered) {
			super();
			POSOrderLine = pOSOrderLine;
			this.qty = qty;
			this.qtyDelivered = qtyDelivered;
		}
		Double qty;
		Double qtyDelivered;
             
    }

}
