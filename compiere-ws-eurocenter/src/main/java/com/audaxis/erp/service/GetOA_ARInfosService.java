package com.audaxis.erp.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

import org.compiere.util.DB;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.AR_OA_Details;
import com.audaxis.erp.json.AR_OA_Infos;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class GetOA_ARInfosService extends CompiereSessionFullService implements IGetOA_ARInfos {

	@Override
	public AR_OA_Infos getOA_ARInfos(String no_oa) {
		String sql = "Select zpo.z_arnumber, zpo.z_aramt, zpo.z_armain, TO_CHAR(zpo.z_ardate,'YYYY-MM-DD') as z_ardate, TO_CHAR(zpo.z_ardate,'DD/MM/YYYY') as ardate, co2.documentno,co.poreference from z_poacknoledgment zpo " + 
				"inner join C_order co on co.C_order_ID = zpo.C_Order_ID and co.documentno = ? " + 
				"inner join C_Order co2 on co2.C_order_ID = co.Ref_Order_ID "+
				"order by zpo.z_armain desc ,zpo.z_arnumber";
		
		AR_OA_Infos ari = new AR_OA_Infos();
		HashMap<String, AR_OA_Details> OA_ARDetail= new HashMap<String, AR_OA_Details>();
		CopyOnWriteArrayList<AR_OA_Details> OA_ARDetails = new CopyOnWriteArrayList<>();
		ari.oa_no = no_oa;
		
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		try
		{
			int i=1;
			pstmt2 = DB.prepareStatement(sql,get_Trx());
			pstmt2.setString(i, no_oa);
			rs2 = pstmt2.executeQuery();
			Calendar calendar = Calendar.getInstance(Locale.FRANCE); 
			while (rs2.next())
			{
				AR_OA_Details ard = new AR_OA_Details();
				ard.amount = rs2.getString("z_aramt");
				ard.ar_no = rs2.getString("z_arnumber");
				ard.principal = rs2.getString("z_armain");
				ard.date_ar = rs2.getString("ardate");
				ard.poref = rs2.getString("poreference");
				ard.odv = rs2.getString("documentno");
				int zz_SemAR = 0;
				String ss[] = rs2.getString("z_ardate").split("-");
				if(!ss[0].equals("0000")) {
					calendar.set(Integer.parseInt(ss[0]), Integer.parseInt(ss[1])-1, Integer.parseInt(ss[2])); 
					zz_SemAR = calendar.get(Calendar.WEEK_OF_YEAR);
				}
				ard.sem_ar = ""+zz_SemAR;
				OA_ARDetail.put(rs2.getString("z_arnumber"), ard);
			
			}
		}catch (SQLException ex) {
			ex.printStackTrace();
			return ari;
		}
		finally {
			DB.closeResultSet(rs2);
			DB.closeStatement(pstmt2);
		}	
		OA_ARDetails.addAll(OA_ARDetail.values());
		ari.AR_OA_list_set = new HashSet<>(OA_ARDetails);
		return ari;
	}


}
