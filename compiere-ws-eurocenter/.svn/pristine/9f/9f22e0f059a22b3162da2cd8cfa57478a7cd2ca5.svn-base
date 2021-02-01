package com.audaxis.erp.service;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.Set;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MUser;
import org.compiere.util.DB;
import org.compiere.util.Trx;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.api.CompiereSessionAbstract;
import com.audaxis.compiere.db.Util;
import com.audaxis.erp.json.BPartner;
import com.audaxis.erp.json.BPartnerAddress;
import com.audaxis.erp.json.BPartnerContact;
import com.audaxis.erp.json.CreateBPResult;
import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.compiere.service.CompiereSessionLessService;
import com.audaxis.compiere.util.VATValidator;


@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class CreateBPartnerService extends CompiereSessionFullService implements ICreateBPartnerService {
	
	
	private Set<BPartnerContact> contacts = new LinkedHashSet<>();
	@Override
	public CreateBPResult createBPartner(BPartner bpartner) {
		CreateBPResult ret = new CreateBPResult();
		ret.error = CreateBPResult.E000;
		//validate IDsession
		//ret = validateSession(bpartner);
		if(ret.error != CreateBPResult.E000){
			return ret;
		}
		//validate name bpartner
		if(bpartner.name == null || bpartner.name.length() == 0){
			ret.error = CreateBPResult.E010;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E010);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E010), "", ret.errordesc));
			return ret;
		}
		//validate greeting
		int greeting_id = getGreeting_ID(bpartner.greeting);
		if(bpartner.greeting == null || bpartner.greeting.length() == 0 || greeting_id <=0){
			ret.error = CreateBPResult.E011;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E011);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E011), "", ret.errordesc));
			return ret;
		}
		if(bpartner.isSociete == null || bpartner.isSociete.length() == 0 || (!bpartner.isSociete.equals("Y") && !bpartner.isSociete.equals("N")) ){
			ret.error = CreateBPResult.E012;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E012);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E012), "", ret.errordesc));
			return ret;
		}
		//validate IDTVA
		boolean validTva = VATValidator.validateVAT(bpartner.IDTVA);
		if(bpartner.IDTVA != null && bpartner.IDTVA.trim().length()>0 && !validTva){
			ret.error = CreateBPResult.E013;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E013);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E013), "", ret.errordesc));
			return ret;
		}
		if(bpartner.isSociete.equals("Y") && (bpartner.IDTVA == null || bpartner.IDTVA.trim().length()==0 || !validTva ))
		{
			ret.error = CreateBPResult.E013;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E013);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E013), "", ret.errordesc));
			return ret;
		}
		if(bpartner.IDTVA != null && bpartner.IDTVA.trim().length()==0){
			bpartner.IDTVA = null;
		}

		//validate AD_Language
		if(bpartner.AD_Language == null || bpartner.AD_Language.length() == 0 || (!bpartner.AD_Language.equals("fr_FR") && !bpartner.AD_Language.equals("nl_NL")) ){
			ret.error = CreateBPResult.E014;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E014);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E014), "", ret.errordesc));
			return ret;
		}
		//validate addresses
		if(bpartner.address_set == null){
			ret.error = CreateBPResult.E021;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E021);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E021), "", ret.errordesc));
			return ret;
		}
		ret = validateAddresses(bpartner.address_set);
		
		if(ret.error != CreateBPResult.E000){
			return ret;
		}
		ret = validateContacts(bpartner.contact_set);
		if(ret.error != CreateBPResult.E000){
			return ret;
		}
		//end Validations

		//begin persistance

		ret = addBPartner(bpartner);
		
		if(ret.error != CreateBPResult.E000){
			return ret;
		}

		return ret;
	}

	private CreateBPResult addBPartner(BPartner bpartner) {
		CreateBPResult ret= new CreateBPResult();
		int client_id=DB.getSQLValue(null, "SELECT AD_CLIENT_ID FROM AD_CLIENT WHERE VALUE='EGGO'");
		int bp_group_id= DB.getSQLValue(null, "select * from c_bp_group where value='PARTICULIERS' and ad_client_id="+client_id);
		MBPartner bp = new MBPartner(getCompiereConnection().getCtxGlobal(), 0, null);
		bp.setAD_Client_ID(client_id);
		bp.setAD_Org_ID(0);
		bp.setName(bpartner.name);
		bp.setName2(bpartner.name2);
		bp.set_Value("IsSoc", bpartner.isSociete);
		bp.setTaxID(bpartner.IDTVA);
		bp.setAD_Language(bpartner.AD_Language);
		bp.setC_BP_Group_ID(bp_group_id);
		bp.setC_Greeting_ID(getGreeting_ID(bpartner.greeting));
		int pricelist_id= DB.getSQLValue(null, "SELECT M_PRICELIST_ID FROM M_PRICELIST WHERE AD_CLIENT_ID="+ client_id +" AND ISSOPRICELIST='Y' AND ISDEFAULT='Y'");
		if(pricelist_id>0){
			bp.setM_PriceList_ID(pricelist_id);
		}
		else{
			ret.error = CreateBPResult.E051;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E051);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E051), "", ret.errordesc));
			return ret;
		}
		
			if(!bp.save()){
				ret.error = CreateBPResult.E051;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E051);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E051), "", ret.errordesc));
				return ret;
			}
		
		
		ret = addAddresses(bp,bpartner);
		if(ret.error != CreateBPResult.E000){
			return ret;
		}
		ret = addUsers(bp,bpartner);
		if(ret.error != CreateBPResult.E000){
			return ret;
		}
		//everything is fine 
		ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E000);
		ret.c_bpartner_ID = bp.getC_BPartner_ID();
		ret.contact_set = contacts;
		return ret;
	}

	private CreateBPResult addUsers(MBPartner bp, BPartner bpartner) {
		CreateBPResult ret = new CreateBPResult();
		ret.error = CreateBPResult.E000;
		
		for( BPartnerContact bpcontact : bpartner.contact_set){
			MUser user = new MUser(bp);
			user.setName(bpcontact.name);
			user.setName2(bpcontact.name2);
			int greeting_id = getGreeting_ID(bpcontact.greeting);
			user.setC_Greeting_ID(greeting_id);
			user.setPhone(bpcontact.phone);
			user.setPhone2(bpcontact.phone2);
			user.setEMail(bpcontact.Email);
			user.set_Value("Is_ZDefault", bpcontact.isDefault);
			user.set_Value("IsContactDirect", bpcontact.IsDirect);
			user.set_Value("IsEggo",true);
			if(!user.save()){
				ret.error = CreateBPResult.E053;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E053);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E053), "", ret.errordesc));
				return ret;
			}
			//filling contacts to return at the end of create user
			BPartnerContact bpc = new BPartnerContact();
			 bpc.ad_user_id = String.valueOf(user.getAD_User_ID());
			 bpc.IdContact_DC = bpcontact.IdContact_DC;
			 contacts.add(bpc);
		}
		
		return ret;
	}

	private CreateBPResult addAddresses(MBPartner bp, BPartner bpartner) {
		
		CreateBPResult ret = new CreateBPResult();
		ret.error = CreateBPResult.E000;
		for( BPartnerAddress bpaddress : bpartner.address_set){
			MBPartnerLocation bpl = new MBPartnerLocation(bp);
			MLocation loc = new MLocation(getCompiereConnection().getCtxGlobal(), 0, null);
			loc.setAddress1(bpaddress.address1);
			loc.setAddress2(bpaddress.address2);
			loc.setAddress3(bpaddress.address3);
			loc.setAddress4(bpaddress.address4);
			loc.setPostal(bpaddress.postal);
			loc.setCity(bpaddress.city);
			loc.setC_Country_ID(getCountry_ID(bpaddress.country));
			loc.save();
			bpl.setC_Location_ID(loc.getC_Location_ID());
			boolean isshipto = bpaddress.IsShipTo.equals("Y")?true:false;
			boolean isbillto = bpaddress.IsBillTo.equals("Y")?true:false;
			bpl.setIsShipTo(isshipto);
			bpl.setIsShipTo(isbillto);
			bpl.setIsEggo(true);
			if(!bpl.save()){
				ret.error = CreateBPResult.E052;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E052);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E052), "", ret.errordesc));
				return ret;
			}
		}
		return ret;

	}

	private CreateBPResult validateContacts(Set<BPartnerContact> contact_set) {
		CreateBPResult ret = new CreateBPResult();
		ret.error = CreateBPResult.E000;
		
		for( BPartnerContact bpcontact : contact_set){
			//name
			if(bpcontact.name == null || bpcontact.name.length() == 0 ){
				ret.error = CreateBPResult.E030;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E030);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E030), "", ret.errordesc));
				return ret;
			}
			//greeting
			int greeting_id = DB.getSQLValue(null, "SELECT C_GREETING_ID FROM C_GREETING WHERE NAME=?", bpcontact.greeting);
			if(bpcontact.greeting == null || bpcontact.greeting.length() == 0 || greeting_id <=0){
				ret.error = CreateBPResult.E031;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E031);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E031), "", ret.errordesc));
				return ret;
			}
			//isDefault
			if(bpcontact.isDefault == null || bpcontact.isDefault.length() == 0 ||(!bpcontact.isDefault.equals("Y")  && !bpcontact.isDefault.equals("N"))){
				ret.error = CreateBPResult.E032;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E032);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E032), "", ret.errordesc));
				return ret;
			}
			//isDirect
			if(bpcontact.IsDirect == null || bpcontact.IsDirect.length() == 0 ||(!bpcontact.IsDirect.equals("Y") && !bpcontact.IsDirect.equals("N"))){
				ret.error = CreateBPResult.E033;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E033);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E033), "", ret.errordesc));
				return ret;
			}
		}
		return ret;

	}

	private CreateBPResult validateAddresses(Set<BPartnerAddress> address_set) {
		CreateBPResult ret = new CreateBPResult();
		ret.error = CreateBPResult.E000;
		
		for( BPartnerAddress bpaddress : address_set){
			if(bpaddress.address1 == null || bpaddress.address1.length() == 0 ){
				ret.error = CreateBPResult.E021;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E021);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E021), "", ret.errordesc));
				return ret;
			}
			if(bpaddress.postal == null || bpaddress.postal.length() == 0 ){
				ret.error = CreateBPResult.E022;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E022);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E022), "", ret.errordesc));
				return ret;
			}
			if(bpaddress.city == null || bpaddress.city.length() == 0 ){
				ret.error = CreateBPResult.E023;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E023);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E023), "", ret.errordesc));
				return ret;
			}
			if(bpaddress.IsShipTo == null || bpaddress.IsShipTo.length() == 0 ||(!bpaddress.IsShipTo.equals("Y")  && !bpaddress.IsShipTo.equals("N"))){
				ret.error = CreateBPResult.E025;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E025);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E025), "", ret.errordesc));
				return ret;
			}
			if(bpaddress.IsBillTo == null || bpaddress.IsBillTo.length() == 0 ||(!bpaddress.IsBillTo.equals("Y")  && !bpaddress.IsBillTo.equals("N"))){
				ret.error = CreateBPResult.E026;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E026);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E026), "", ret.errordesc));
				return ret;
			}

			int country_id =getCountry_ID(bpaddress.country);
			if(bpaddress.country == null || bpaddress.country.length() == 0 || country_id <= 0){
				ret.error = CreateBPResult.E024;
				ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E024);
				log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E024), "", ret.errordesc));
				return ret;
			}

		}
		return ret;
	}
	private CreateBPResult validateSession(BPartner bpartner) {
		CreateBPResult ret = new CreateBPResult();
		ret.error = CreateBPResult.E000;

		if(bpartner == null || bpartner.key == null || bpartner.key.length() == 0){
			ret.error = CreateBPResult.E001;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E001);
			log.info(String.format(CreateBPResult.getErrorMsg(CreateBPResult.E001), "", ret.errordesc));
			return ret;
		}

		PreparedStatement ps = null;
		ResultSet rs = null;
		Timestamp created = null;
		try {
			ps = DB.prepareStatement("SELECT Created FROM AD_Session WHERE AD_SESSION_ID=?", (Trx)null);
			ps.setString(1, bpartner.key);
			rs = ps.executeQuery();
			if (rs.next()) {
				created = rs.getTimestamp("Created");
			}
		} catch (Exception e) {
			ret.error = CreateBPResult.E001;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E001);
			log.info(String.format("Authenticate for Key %s, %s", bpartner.key, ret.errordesc));
			return ret;
		} finally {
			Util.closeCursor(ps, rs);
		}

		//Calculate expired date
		Timestamp now = new Timestamp(System.currentTimeMillis());
		Calendar cal = Calendar.getInstance();
		cal.setTime(now);
		cal.add(Calendar.HOUR_OF_DAY, -12);
		cal.add(Calendar.MINUTE, -30);
		Timestamp expireddate = new Timestamp(cal.getTimeInMillis());
		//

		//key not found or expired
		if (created == null || created.before(expireddate)){
			ret.error = CreateBPResult.E001;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E001);
			log.info(String.format("Authenticate for Key %s, %s", bpartner.key, ret.errordesc));
		}else{
			ret.error = CreateBPResult.E000;
			ret.errordesc = CreateBPResult.getErrorMsg(CreateBPResult.E000);
			log.info(String.format("Authenticate for Key %s, %s", bpartner.key, ret.errordesc));
		}

		return ret;

	}

	private int getCountry_ID(String countryCode){
		int country_id = DB.getSQLValue(null, "SELECT C_COUNTRY_ID FROM C_COUNTRY WHERE COUNTRYCODE=?", countryCode);
		return country_id;
	}
	private int getGreeting_ID(String greeting){
		int greeting_id = DB.getSQLValue(null, "SELECT C_GREETING_ID FROM C_GREETING WHERE NAME=?", greeting);
		return greeting_id;
	}

}
