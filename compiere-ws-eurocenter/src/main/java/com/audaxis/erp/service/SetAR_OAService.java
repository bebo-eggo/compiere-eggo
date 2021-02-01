package com.audaxis.erp.service;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MPoAcknoledgment;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.eurocenter.ws.WSUtil;
import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.AR_OA;
import com.audaxis.erp.json.AR_OA2;
import com.audaxis.erp.json.SetARDetailResult;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class SetAR_OAService  extends CompiereSessionFullService implements ISetAR_OAService{

	
	public SetARDetailResult setAR_OA2(AR_OA2 ar_oa) {
		// TODO Auto-generated method stub
		SetARDetailResult ret = new SetARDetailResult();
		
		//Info AR EBSoft
		String urlArInfo = Msg.getMsg(getCtx(), "XX_URL_ARINFO");
		urlArInfo = urlArInfo+ar_oa.ar_no;
		//String jj = jsonGetRequest(urlArInfo);
		//List<arinfo> myObjects = parseJSON(jj);
		int c_order_id = DB.getSQLValue(get_Trx(), "select C_Order_ID from C_Order where  AD_Client_ID = ? and documentno = ? ", getCtx().getAD_Client_ID(), ar_oa.ref1 );
		MOrder mo = null;
		MOrg org = null;
		if(c_order_id>0)
		{
			mo = new MOrder(getCtx(), c_order_id, get_Trx());
			org = new MOrg(getCtx(), mo.getAD_Org_ID(), get_Trx());
		}
		boolean v1 = false;
		/*
		if(myObjects!=null && myObjects.size()>0 && c_order_id>0)
		{
			arinfo ai =  myObjects.get(0);
			if(ai.prix == null)
				v1 = true;
			else {
				ArrayList<MPoAcknoledgment> Ars = MPoAcknoledgment.getRecordFrom(getCtx(),ar_oa.ar_no,c_order_id , get_Trx() );
				if(Ars!=null && Ars.size()>0)
				{
					MPoAcknoledgment newArX = Ars.get(0);
					if(newArX!=null && !Msg.getMsg(getCtx(), "XX_SYS_USER").contains(""+newArX.getUpdatedBy() ))
							v1 = true;	
				}
			}
		}
		*/
		if( (c_order_id<=0) || v1)
		{
			String mag = ar_oa.ref1.substring(0, 3);
			int magDB = DB.getSQLValue(get_Trx(), "Select AD_Org_ID from AD_Org where AD_Client_ID = ? and value = '"+mag+"'", getCtx().getAD_Client_ID() );
			if(magDB>0) {
				org = new MOrg(getCtx(), magDB, get_Trx());
				mag = org.getValue();
			}
			else
			{
				mag = ar_oa.ref1.substring(1, 3);
				magDB = DB.getSQLValue(get_Trx(), "Select AD_Org_ID from AD_Org where AD_Client_ID = ? and value = '"+mag+"'", getCtx().getAD_Client_ID() );
				if(magDB>0) {
					org = new MOrg(getCtx(), magDB, get_Trx());
					mag = org.getValue();
			}else
				mag = "0";
			}
			ret.error = "0";
			ret.errordesc  = "no info from EBSoft";
			ret.version = "1";
			ret.amount = ""+0;
			ret.cubage = ""+0;
			ret.ar_no = ar_oa.ar_no;
			ret.poref = ar_oa.ref1;
			if(org!=null && org.getAD_Org_ID()>0)
				ret.magasin = org.getValue();
			else
				ret.magasin = mag==null ? "0":mag;
			ret.total_ar_oa = "0";
			return ret; 
		}
		if(c_order_id>0 && ar_oa.deliveryweek!=null)
			if(ar_oa.ref1 != null && ar_oa.ref1.length()>0)
			{
				int nbAr = 0;
			//OA ou POREF ?
				//arinfo ai =  myObjects.get(0);
				//OA found
				ret.version = "2";
				mo = new MOrder(getCtx(), c_order_id, get_Trx());
				org = new MOrg(getCtx(), mo.getAD_Org_ID(), get_Trx());
				String mag = org.getValue();
				//Find if NoAR exist pour OA
				ArrayList<MPoAcknoledgment> Ars = MPoAcknoledgment.getRecordFrom(getCtx(),null,c_order_id , get_Trx() );
				boolean isprinc = false;
				if(Ars.size()>0) {
					nbAr = Ars.size();
					for (int i = 0; i <Ars.size(); i++) {
						if(Ars.get(i).isZ_ArMain())
						{
							isprinc = true;
							break;
						}
					}
				}
				Ars = MPoAcknoledgment.getRecordFrom(getCtx(),ar_oa.ar_no,c_order_id , get_Trx() );
				MPoAcknoledgment newArX = null;
				if(Ars.size()>0) {
					newArX = Ars.get(0);
					isprinc = Ars.get(0).isZ_ArMain();
				}
				else {
					newArX = new MPoAcknoledgment(getCtx(), 0, get_Trx());
					nbAr = nbAr + 1;
				}
				
				Calendar calendar = Calendar.getInstance(Locale.FRANCE); 
				//deliveryWeek  YYYYSS ou DD/MM/YYYY
				String zz_SemAR = "";
				if(ar_oa.deliveryweek!=null && ar_oa.deliveryweek.length()>0)
				{
					if(ar_oa.deliveryweek.length()==6)
					{
						//YYYYSS
						String ss = ar_oa.deliveryweek.substring(4, 6);
						zz_SemAR = ss;
					}else
					{
						//DD/MM/YYYY
						String ss = QueryUtil.getSQLValueString(get_Trx(), "Select week from xx_cal_week where dates = TO_DATE(?,'DD/MM/YYYY') ", ar_oa.deliveryweek);
						int week = 0;
						if(ss!=null)
						{
							try {
								zz_SemAR = ss;
							}
							catch (Exception e) {
								zz_SemAR = "";
							}
						}
						else
							zz_SemAR = "";
					}
				}
				
				MOrder mov = new MOrder(getCtx(), mo.getRef_Order_ID(), get_Trx());
				if(mov!=null && mov.get_Value("XX_SemAR")==null){
					mov.set_Value("XX_SemAR", zz_SemAR);
					mov.save(get_Trx());
				}
				if(mov!=null && mov.get_Value("XX_SemRec")!=null)
					ret.sem_rec = ""+mov.get_Value("XX_SemRec");
				else
					ret.sem_rec = "0";

				newArX.setAD_Org_ID(mo.getAD_Org_ID());
				newArX.setC_Order_ID(c_order_id);
				newArX.setZ_ArNumber(ar_oa.ar_no);
				newArX.setZ_ArAmt(new BigDecimal(ar_oa.price));
				//newArX.setZ_ArDate(dateAr);
				if(newArX.getZ_PoAcknoledgment_ID()<=0) {
					newArX.setZ_ArMain(!isprinc);
				}
				newArX.setZ_ArControled(false);
				newArX.setXX_SemAR(""+zz_SemAR);
				newArX.save();
				WSUtil.updatePoAcknoledgment(getCtx(), newArX, true, get_Trx());
				ret.amount =ar_oa.price;
				ret.oa = ar_oa.ref1;
				ret.poref = mov!=null?mov.getPOReference():ar_oa.ref2;
				ret.c_order_id = c_order_id;
				ret.sem_ar = zz_SemAR;
				ret.odv = mov!=null? mov.getDocumentNo():"No ODV link to OA";
				ret.ar_princ = newArX.isZ_ArMain()?"Y":"N";
				ret.total_ar_oa = ""+nbAr;
				ret.magasin = mag;
				ret.error = "1";
		}
		
		return ret;
	}
	@Override
	public SetARDetailResult setAR_OA(AR_OA ar_oa) {
		// TODO Auto-generated method stub
		SetARDetailResult ret = new SetARDetailResult();
		
		//Info AR EBSoft
		String urlArInfo = Msg.getMsg(getCtx(), "XX_URL_ARINFO");
		urlArInfo = urlArInfo+ar_oa.ar_no;
		String jj = jsonGetRequest(urlArInfo);
		List<arinfo> myObjects = parseJSON(jj);
		int c_order_id = DB.getSQLValue(get_Trx(), "select C_Order_ID from C_Order where  AD_Client_ID = ? and documentno = ? ", getCtx().getAD_Client_ID(), ar_oa.ref1 );
		MOrder mo = null;
		MOrg org = null;
		if(c_order_id>0)
		{
			mo = new MOrder(getCtx(), c_order_id, get_Trx());
			org = new MOrg(getCtx(), mo.getAD_Org_ID(), get_Trx());
		}
		boolean v1 = false;
		if(myObjects!=null && myObjects.size()>0 && c_order_id>0)
		{
			arinfo ai =  myObjects.get(0);
			if(ai.prix == null)
				v1 = true;
			else {
				ArrayList<MPoAcknoledgment> Ars = MPoAcknoledgment.getRecordFrom(getCtx(),ar_oa.ar_no,c_order_id , get_Trx() );
				if(Ars!=null && Ars.size()>0)
				{
					MPoAcknoledgment newArX = Ars.get(0);
					if(newArX!=null && !Msg.getMsg(getCtx(), "XX_SYS_USER").contains(""+newArX.getUpdatedBy() ))
							v1 = true;	
				}
			}
		}
		
		if((myObjects==null || myObjects.size()==0 ) || (c_order_id<=0) || v1)
		{
			String mag = ar_oa.ref1.substring(0, 3);
			int magDB = DB.getSQLValue(get_Trx(), "Select AD_Org_ID from AD_Org where AD_Client_ID = ? and value = '"+mag+"'", getCtx().getAD_Client_ID() );
			if(magDB>0) {
				org = new MOrg(getCtx(), magDB, get_Trx());
				mag = org.getValue();
			}
			else
			{
				mag = ar_oa.ref1.substring(1, 3);
				magDB = DB.getSQLValue(get_Trx(), "Select AD_Org_ID from AD_Org where AD_Client_ID = ? and value = '"+mag+"'", getCtx().getAD_Client_ID() );
				if(magDB>0) {
					org = new MOrg(getCtx(), magDB, get_Trx());
					mag = org.getValue();
			}else
				mag = "0";
			}
			ret.error = "0";
			ret.errordesc  = "no info from EBSoft";
			ret.version = "1";
			ret.amount = ""+0;
			ret.cubage = ""+0;
			ret.ar_no = ar_oa.ar_no;
			ret.poref = ar_oa.ref1;
			if(org!=null && org.getAD_Org_ID()>0)
				ret.magasin = org.getValue();
			else
				ret.magasin = mag==null ? "0":mag;
			ret.total_ar_oa = "0";
			return ret; 
		}
		if(c_order_id>0 && myObjects.size()>0)
			if(ar_oa.ref1 != null && ar_oa.ref1.length()>0)
			{
				int nbAr = 0;
			//OA ou POREF ?
				arinfo ai =  myObjects.get(0);
				//OA found
				ret.version = "2";
				mo = new MOrder(getCtx(), c_order_id, get_Trx());
				org = new MOrg(getCtx(), mo.getAD_Org_ID(), get_Trx());
				String mag = org.getValue();
				//Find if NoAR exist pour OA
				ArrayList<MPoAcknoledgment> Ars = MPoAcknoledgment.getRecordFrom(getCtx(),null,c_order_id , get_Trx() );
				boolean isprinc = false;
				if(Ars.size()>0) {
					nbAr = Ars.size();
					for (int i = 0; i <Ars.size(); i++) {
						if(Ars.get(i).isZ_ArMain())
						{
							isprinc = true;
							break;
						}
					}
				}
				Ars = MPoAcknoledgment.getRecordFrom(getCtx(),ar_oa.ar_no,c_order_id , get_Trx() );
				MPoAcknoledgment newArX = null;
				if(Ars.size()>0) {
					newArX = Ars.get(0);
					isprinc = Ars.get(0).isZ_ArMain();
				}
				else {
					newArX = new MPoAcknoledgment(getCtx(), 0, get_Trx());
					nbAr = nbAr + 1;
				}
				
				Calendar calendar = Calendar.getInstance(Locale.FRANCE); 
				String ss[] = ai.datereception.split("-");
				int zz_SemAR = 0;
				if(!ss[0].equals("0000")) {
					calendar.set(Integer.parseInt(ss[0]), Integer.parseInt(ss[1])-1, Integer.parseInt(ss[2])); 
					zz_SemAR = calendar.get(Calendar.WEEK_OF_YEAR);
				}
				MOrder mov = new MOrder(getCtx(), mo.getRef_Order_ID(), get_Trx());
				if(mov!=null && mov.get_Value("XX_SemAR")==null){
					mov.set_Value("XX_SemAR", (""+zz_SemAR).length()==1?"0"+zz_SemAR:""+zz_SemAR);
					mov.save(get_Trx());
				}
				if(mov!=null && mov.get_Value("XX_SemRec")!=null)
					ret.sem_rec = ""+mov.get_Value("XX_SemRec");
				else
					ret.sem_rec = "0";

				newArX.setAD_Org_ID(mo.getAD_Org_ID());
				newArX.setC_Order_ID(c_order_id);
				newArX.setZ_ArNumber(ar_oa.ar_no);
				if(ai.prix == null || ai.prix.equalsIgnoreCase("null"))
					newArX.setZ_ArAmt(new BigDecimal("0"));
				else
					
					newArX.setZ_ArAmt(new BigDecimal(ai.prix));
				//newArX.setZ_ArDate(dateAr);
				if(newArX.getZ_PoAcknoledgment_ID()<=0) {
					newArX.setZ_ArMain(!isprinc);
				}
				newArX.setZ_ArControled(false);
				newArX.setXX_SemAR(""+zz_SemAR);
				newArX.save();
				WSUtil.updatePoAcknoledgment(getCtx(), newArX, true, get_Trx());
				if(ai.prix == null || ai.prix.equalsIgnoreCase("null"))
					ret.amount = "0";
				else
					ret.amount =ai.prix;
				ret.oa = ar_oa.ref1;
				ret.poref = mov!=null?mov.getPOReference():ar_oa.ref2;
				ret.c_order_id = c_order_id;
				ret.sem_ar = (""+zz_SemAR).length()==1?"0"+zz_SemAR:""+zz_SemAR;
				ret.odv = mov!=null? mov.getDocumentNo():"No ODV link to OA";
				ret.ar_princ = newArX.isZ_ArMain()?"Y":"N";
				ret.total_ar_oa = ""+nbAr;
				ret.cubage = ai.cubage;
				ret.magasin = mag;
				ret.error = "1";
		}
		
		return ret;
	}
	
	public class arinfo
	{
		String ar;
		String numerodocument;
		String ordrevente; //POREF
		String datereception; //YYYY-MM-DD
        String datepose;
        String datelivraison;
        String prix;
        String cubage;
        
		public arinfo(String ar, String numerodocument, String ordrevente, String datereception, String datepose,
				String datelivraison, String prix, String cubage) {
			super();
			this.ar = ar;
			this.numerodocument = numerodocument;
			this.ordrevente = ordrevente;
			this.datereception = datereception;
			this.datepose = datepose;
			this.datelivraison = datelivraison;
			this.prix = prix;
			this.cubage = cubage;
		}
		
		public arinfo()
		{
			super();
		}
		public String getAr() {
			return ar;
		}
		public void setAr(String ar) {
			this.ar = ar;
		}
		public String getNumerodocument() {
			return numerodocument;
		}
		public void setNumerodocument(String numerodocument) {
			this.numerodocument = numerodocument;
		}
		public String getOrdrevente() {
			return ordrevente;
		}
		public void setOrdrevente(String ordrevente) {
			this.ordrevente = ordrevente;
		}
		public String getDatereception() {
			return datereception;
		}
		public void setDatereception(String datereception) {
			this.datereception = datereception;
		}
		public String getDatepose() {
			return datepose;
		}
		public void setDatepose(String datepose) {
			this.datepose = datepose;
		}
		public String getDatelivraison() {
			return datelivraison;
		}
		public void setDatelivraison(String datelivraison) {
			this.datelivraison = datelivraison;
		}
		public String getPrix() {
			return prix;
		}
		public void setPrix(String prix) {
			this.prix = prix;
		}
		public String getCubage() {
			return cubage;
		}
		public void setCubage(String cubage) {
			this.cubage = cubage;
		}
        
	}
	
	private List<arinfo> parseJSON(String yy)  {
	    Gson gson = new Gson();
	    Type type = new TypeToken<List<arinfo>>(){}.getType();
	    List<arinfo> contactList = gson.fromJson(yy, type);
	    return contactList;
	}
	
	private static String jsonGetRequest(String urlQueryString) {
	    String json = null;
	    try {
	      URL url = new URL(urlQueryString);
	      HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	      connection.setDoOutput(true);
	      connection.setInstanceFollowRedirects(false);
	      connection.setRequestMethod("GET");
	      connection.setRequestProperty("Content-Type", "application/json");
	      connection.setRequestProperty("charset", "utf-8");
	      connection.connect();
	      InputStream inStream = connection.getInputStream();
	      json = streamToString(inStream); // input stream to string
	    
	    } catch (IOException ex) {
	      ex.printStackTrace();
	    }
	    return json;
	}
	
	private static String streamToString(InputStream inputStream) {
	    String text = new Scanner(inputStream, "UTF-8").useDelimiter("\\Z").next();
	    return text;
	}

	
}
