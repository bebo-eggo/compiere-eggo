package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MUser;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;


public class MPosOrderPartner  extends X_I_PosOrderPartner{
	
	private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPosOrderPartner.class);

	public static MPosOrderPartner get(Ctx ctx, int I_PosOrderPartner_ID,int ad_org_id, Trx trx) {
		MPosOrderPartner retValue = null;
		String sql = "SELECT * FROM I_PosOrderPartner WHERE I_PosOrderPartner_ID=? AND ad_org_id=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, I_PosOrderPartner_ID);
			pstmt.setInt (2, ad_org_id);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				retValue = new MPosOrderPartner (ctx, rs, trx);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		return retValue;
	}

	public MPosOrderPartner(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public int addModifyPartner(Trx trx){
		int bpID = 0;
		// Create NewOne
		if (getC_BPartner_ID() <= 0){
			MBPartner bp = new MBPartner(getCtx(),0, trx);
			bp.setClientOrg(getAD_Client_ID(), 0);
			bp.setName(getName());
			bp.setName2(getName2());
			bp.setC_Greeting_ID(getC_Greeting_ID());
			bp.setC_BP_Group_ID(getC_BP_Group_ID());
			bp.set_ValueNoCheck("Z_AD_org_ID", getAD_Org_ID());
			bp.setIsCustomer(true);
			bp.set_Value("Last_AD_Org_ID", get_Value("Last_AD_Org_ID"));
			bp.set_Value("I_PosOrderPartner_ID",getI_PosOrderPartner_ID());
			bp.setAD_Language("fr_FR");
			if (getTaxID() != null && !getTaxID().isEmpty()) bp.setTaxID(getTaxID());
			bp.save(trx);

			// Inv Address
			MLocation location = new MLocation(getCtx(), getInvC_country_ID(), 
					0, getInvCity(), trx);
			location.setAddress1(getInvAddress1());
			location.setAddress2(getInvAddress2());
			location.setAddress3(getInvAddress3());
			location.setAddress4(getInvAddress4());
			location.setPostal(getInvZip());
			location.setCity(getInvCity());
			location.save(trx);

			MBPartnerLocation bpLoci = new MBPartnerLocation(bp);
			bpLoci.setName(getInvCity() + "-INV#"+location.get_ID());
			bpLoci.setPhone(getPhone());
			bpLoci.setPhone2(getPhone2());
			bpLoci.setIsBillTo(true);
			bpLoci.setIsShipTo(false);
			bpLoci.setIsPayFrom(true);
			bpLoci.setIsRemitTo(true);
			bpLoci.set_ValueNoCheck("IsEggo", false);	
			bpLoci.setC_Location_ID(location.get_ID());
			bpLoci.save(trx);
			
			// Ship Address
			location = new MLocation(getCtx(), getShipC_Country_ID(), 
					0, getInvCity(), trx);
			location.setAddress1(getShipAddress1());
			location.setAddress2(getShipAddress2());
			location.setAddress3(getShipAddress3());
			location.setAddress4(getShipAddress4());
			location.setPostal(getShipZip());
			location.setCity(getShipCity());
			location.save(trx);

			MBPartnerLocation bpLoc = new MBPartnerLocation(bp);
			if(this.getShipName() != null && !this.getShipName().equals(""))
				bpLoc.setName(getShipName());
			else
				bpLoc.setName(getInvCity() + "-SHIP#"+location.get_ID());
			bpLoc.setPhone(getPhone());
			bpLoc.setPhone2(getPhone2());
			bpLoc.setIsBillTo(false);
			bpLoc.setIsShipTo(true);
			bpLoc.setIsPayFrom(false);
			bpLoc.setIsRemitTo(false);
			bpLoc.set_ValueNoCheck("IsEggo", false);
			bpLoc.setC_Location_ID(location.get_ID());
			bpLoc.save(trx);

			// DO Contact

			MUser usr = new MUser(bp);
			usr.setValue(String.valueOf(bp.get_ID()));
			usr.setC_Greeting_ID(getC_Greeting_ID());
			usr.setName(getName());
			usr.setName2(getName2());
			if ( emailNotExist(getEMail()) ) usr.setEMail(getEMail());
			usr.setC_BPartner_Location_ID(bpLoci.get_ID());
			usr.setPhone(getPhone());
			usr.setPhone2(getPhone2());
			usr.setIsFullBPAccess(get_ValueAsString("IsFullBPAccess").equalsIgnoreCase("Y")?true:false);
			usr.set_Value("Is_ZDefault",true);
			usr.set_ValueNoCheck("IsEggo", false);
			usr.save(trx);

			// Do Accounting
			String sql = " INSERT INTO C_BP_Customer_Acct (C_BPartner_ID, C_AcctSchema_ID, AD_Client_ID, "
					+ " AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,C_Prepayment_Acct, "
					+ " C_Receivable_Acct,C_Receivable_Services_Acct) " 
					+ " SELECT a.C_BPartner_ID, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,0,SysDate,0, "
					+ " p.C_Prepayment_Acct,p.C_Receivable_Acct,p.C_Receivable_Services_Acct " 
					+ " FROM C_BPartner a, " 
					+ " C_BP_Group_Acct p "
					+ " WHERE p.AD_Client_ID=? " 
					+ " AND  a.C_BP_Group_ID = p.C_BP_Group_ID "  
					+ " AND a.C_BPartner_ID = ? "
					+ " AND NOT EXISTS (SELECT 1 FROM C_BP_Customer_Acct acct " 
					+ " WHERE acct.C_AcctSchema_ID = p.C_AcctSchema_ID "
					+ " AND acct.C_BPartner_ID = a.C_BPartner_ID "
					+ " AND   acct.AD_Client_ID = p.AD_Client_ID) ";

			int no = DB.executeUpdate(sql, new Object[]{getAD_Client_ID(),bp.get_ID()},trx);
			bpID = bp.get_ID();
		}	
		// Update Mode
		else {  
			bpID=getC_BPartner_ID();
			MBPartner bp = new MBPartner(getCtx(),bpID, trx);
			bp.setName(getName());
			bp.setName2(getName2());
			bp.setC_BP_Group_ID(getC_BP_Group_ID());
			if (getC_Greeting_ID() > 1 ) bp.setC_Greeting_ID(getC_Greeting_ID());
			if (getTaxID() != null && !getTaxID().isEmpty() && !getTaxID().equals(bp.getTaxID())) bp.setTaxID(getTaxID());
			bp.set_Value("Last_AD_Org_ID", get_Value("Last_AD_Org_ID"));
			bp.save(trx);

			// Ship Adresse

			int bpLocID = 0;
			bpLocID = DB.getSQLValue(trx, "select max(C_BPartner_location_ID) from C_BPartner_location where c_bpartner_id = ? and isShipTo = 'Y' and isBillTo = 'N' ", bpID);

			// if not exist create new shipto adress
			if (bpLocID < 1){		// Create New
				MBPartnerLocation bpLoc = new MBPartnerLocation(bp);
				if(this.getShipName() != null && !this.getShipName().equals(""))
					bpLoc.setName(getShipName());
				else
					bpLoc.setName(getInvCity() + "-SHIP");
				bpLoc.setPhone(getPhone());
				bpLoc.setPhone2(getPhone2());
				bpLoc.setIsBillTo(false);
				bpLoc.setIsShipTo(true);
				bpLoc.setIsPayFrom(false);
				bpLoc.setIsRemitTo(false);

				MLocation location = new MLocation(getCtx(), getShipC_Country_ID(), 
						0, getInvCity(), trx);
				location.setAddress1(getShipAddress1());
				location.setAddress2(getShipAddress2());
				location.setAddress3(getShipAddress3());
				location.setAddress4(getShipAddress4());
				location.setPostal(getShipZip());
				location.setCity(getShipCity());
				location.save(trx);
				bpLoc.setC_Location_ID(location.get_ID());
				bpLoc.save(trx);
				int bpLocIDB = DB.getSQLValue(trx, "select C_BPartner_location_ID from C_BPartner_location where c_bpartner_id = ? and isShipTo = 'Y' and isBillTo = 'Y' ", bpID);
				if (bpLocIDB > 1 )
					DB.executeUpdate("update  C_BPartner_location set isShipTo = 'N' where C_BPartner_location_ID = ? ", bpLocIDB, trx);


			}else {					// Modify Existing


				MBPartnerLocation bpLoc = new MBPartnerLocation(getCtx(),bpLocID,trx);
				if (getShipName() != null && !getShipName().isEmpty()) bpLoc.setName(getShipName());
				if (getPhone() != null && !getPhone().isEmpty()) bpLoc.setPhone(getPhone());
				if (getPhone2() != null && !getPhone2().isEmpty()) bpLoc.setPhone2(getPhone2());
				MLocation location = new MLocation(getCtx(), bpLoc.getC_Location_ID(),trx);
				if (getShipC_Country_ID() != location.getC_Country_ID()) location.setC_Country_ID(getShipC_Country_ID());
				if (getShipAddress1() != null && ! getShipAddress1().equals(location.getAddress1())) location.setAddress1(getShipAddress1()) ;
				if (getShipAddress2() != null && ! getShipAddress2().equals(location.getAddress2())) location.setAddress2(getShipAddress2()) ;
				if (getShipAddress3() != null && ! getShipAddress3().equals(location.getAddress3())) location.setAddress3(getShipAddress3()) ;
				if (getShipAddress4() != null && ! getShipAddress4().equals(location.getAddress4())) location.setAddress4(getShipAddress4()) ;
				if (getShipZip() != null && ! getShipZip().equals(location.getPostal())) location.setPostal(getShipZip());
				if (getShipCity() != null && ! getShipCity().equals(location.getCity())) location.setCity(getShipCity());
				location.save(trx);
			}

			// Invoice Address
			bpLocID = DB.getSQLValue(trx, "select max(C_BPartner_location_ID) from C_BPartner_location where c_bpartner_id = ? and  isShipTo = 'N' and  isBillTo = 'Y' ", bpID);
			// if not exist create new shipto adress
			if (bpLocID < 1){		// Create New
				MBPartnerLocation bpLoc = new MBPartnerLocation(bp);
				bpLoc.setName(getInvCity() + "-INV");
				bpLoc.setPhone(getPhone());
				bpLoc.setPhone2(getPhone2());
				bpLoc.setIsBillTo(true);
				bpLoc.setIsShipTo(false);
				bpLoc.setIsPayFrom(true);
				bpLoc.setIsRemitTo(true);

				MLocation location = new MLocation(getCtx(), getInvC_country_ID(), 
						0, getInvCity(), trx);
				location.setAddress1(getInvAddress1());
				location.setAddress2(getInvAddress2());
				location.setAddress3(getInvAddress3());
				location.setAddress4(getInvAddress4());
				location.setPostal(getInvZip());
				location.setCity(getInvCity());
				bpLoc.setIsBillTo(true);
				bpLoc.setIsShipTo(false);
				bpLoc.setIsPayFrom(true);
				bpLoc.setIsRemitTo(true);

				location.save(trx);
				bpLoc.setC_Location_ID(location.get_ID());
				bpLoc.save(trx);
				bpLocID = bpLoc.get_ID();

			}else {					// Modify Existing
				MBPartnerLocation bpLoc = new MBPartnerLocation(getCtx(),bpLocID,trx);
				if (getPhone() != null && !getPhone().isEmpty()) bpLoc.setPhone(getPhone());
				if (getPhone2() != null && !getPhone2().isEmpty()) bpLoc.setPhone2(getPhone2());
				MLocation location = new MLocation(getCtx(), bpLoc.getC_Location_ID(),trx);
				if (getInvC_country_ID() != location.getC_Country_ID()) location.setC_Country_ID(getInvC_country_ID());
				if (getInvAddress1() != null && ! getInvAddress1().equals(location.getAddress1())) location.setAddress1(getInvAddress1()) ;
				if (getInvAddress2() != null && ! getInvAddress2().equals(location.getAddress2())) location.setAddress2(getInvAddress2()) ;
				if (getInvAddress3() != null && ! getInvAddress3().equals(location.getAddress3())) location.setAddress3(getInvAddress3()) ;
				if (getInvAddress4() != null && ! getInvAddress4().equals(location.getAddress4())) location.setAddress4(getInvAddress4()) ;
				if (getInvZip() != null && ! getInvZip().equals(location.getPostal())) location.setPostal(getInvZip());
				if (getInvCity() != null && ! getInvCity().equals(location.getCity())) location.setCity(getInvCity());
				location.save(trx);

			}
			// Contact

			int usrID = DB.getSQLValue(trx, "select max(AD_User_ID) from AD_User where C_BPartner_ID = ? ", bpID);
			if (usrID < 1){
				MUser usr = new MUser(bp);
				usr.setValue(getName()+getName2()+"-" + getPhone());
				usr.setC_Greeting_ID(getC_Greeting_ID());
				usr.setName(getName());
				usr.setName2(getName2());
				if ( emailNotExist(getEMail()) ) usr.setEMail(getEMail());
				usr.setC_BPartner_Location_ID(bpLocID);
				usr.setPhone(getPhone());
				usr.setPhone2(getPhone2());
				usr.setIsFullBPAccess(get_ValueAsString("IsFullBPAccess").equalsIgnoreCase("Y")?true:false);
				usr.save(trx);
			}	
			else {
				MUser usr = new MUser(getCtx(),usrID,trx);
				usr.setValue(getName()+getName2()+ "-" + getPhone());
				if (getC_Greeting_ID() > 1 ) usr.setC_Greeting_ID(getC_Greeting_ID());
				if (getName() != null && ! getName().equals(usr.getName())) usr.setName(getName());
				if (getName2() != null && ! getName2().equals(usr.getName2())) usr.setName2(getName2());
				if (getEMail() != null && ! getEMail().equals(usr.getEMail()) && emailNotExist(getEMail()) ) usr.setEMail(getEMail());
				if (getPhone() != null && ! getPhone().equals(usr.getPhone())) usr.setPhone(getPhone());
				if (getPhone2() != null && ! getPhone2().equals(usr.getPhone2())) usr.setPhone2(getPhone2());
				usr.setIsFullBPAccess(get_ValueAsString("IsFullBPAccess").equalsIgnoreCase("Y")?true:false);
				usr.save(trx);

			}




		}

		return bpID;
	}

	private boolean emailNotExist(String email)
	{
		int i = DB.getSQLValue(null, "select 1 from ad_user where email = ?", email);
		return i==1?false:true;
	}



}

