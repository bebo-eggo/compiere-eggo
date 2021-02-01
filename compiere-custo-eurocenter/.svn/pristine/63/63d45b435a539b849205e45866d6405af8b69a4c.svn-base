package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.compiere.model.MProduct;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.SvrProcessExtended;

public class UpdateProductGamme extends SvrProcessExtended {

	//3KV4	
	private int client_ID = 0;
	private boolean isTest = false;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		client_ID = getParameterAsInt("AD_Client_ID");
		isTest = getParameterAsString("IsTest").equals("Y");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		int Gamme_ID = DB.getSQLValue(get_Trx(), "Select Z_Gamme_ID from Z_Gamme where AD_client_ID = ? and Value = 'Z' ", client_ID );
		StringBuffer sql = new StringBuffer("select mp.Value, mp.m_product_id, EXTRACT(DAY FROM trunc(sysdate)) as DAYX from M_Product mp " + 
				"inner join Z_Gamme zg on zg.Z_Gamme_ID = mp.Z_Gamme_ID " + 
				"where zg.Value = 'Y' and mp.AD_Client_ID = ? and trunc(mp.z_gammechange)< trunc(?) ");
		Calendar cal = Calendar.getInstance();
		if(!isTest)
		{
			//Only firstDay of mounth
			int dayOfMonth = cal.get(Calendar.DAY_OF_MONTH);
			if(dayOfMonth!=1)
				return "Exécution le premier jour de mois!";
		}
		PreparedStatement pst = null;
		ResultSet rs = null;
		int index= 0; int count = 0;
		GregorianCalendar gc = new GregorianCalendar();
        gc.setTimeInMillis(cal.getTimeInMillis());
        gc.add(GregorianCalendar.MONTH, -3);
		
		try{
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			pst.setInt(1, client_ID);
			pst.setTimestamp(2, new Timestamp( gc.getTimeInMillis()));
			rs = pst.executeQuery();
			while (rs.next()) {
				MProduct mp = new MProduct(getCtx(), rs.getInt(2), get_Trx());
				mp.set_ValueNoCheck("Z_GammeChange", new Timestamp(cal.getTimeInMillis()));
				mp.set_ValueNoCheck("Z_Gamme_ID", Gamme_ID);
				mp.save();
				index++;
			}
		}catch (Exception e) {
			log.severe(e.getMessage());
		}finally{
			Util.closeCursor(pst, rs);
		}
		return "Nombre d'article mis à jour : "+index;
	}

}
