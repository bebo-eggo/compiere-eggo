package com.audaxis.compiere.eurocenter.process;

import java.sql.Timestamp;

import org.compiere.util.DB;

import com.audaxis.compiere.process.SvrProcessExtended;

public class ExportFusionSN extends SvrProcessExtended {

	private int client_ID = 0;
	private int pvid = 0;
	private int paid = 0;
	private Timestamp datePrice= null;
	private String lang = null;
	private int currencyTo = 0;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		client_ID = getParameterAsInt("AD_Client_ID");
		pvid = getParameterAsInt("PRICELISTVENTE_ID");
		paid = getParameterAsInt("PRICELISTACHAT_ID");
		datePrice = getParameterAsTimestamp("ValidFrom");
		lang = getParameterAsString("LANGUAGE_ID");
		currencyTo = getParameterAsInt("C_Currency_ID");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		int no = DB.executeUpdate("TRUNCATE TABLE XX_EXPORTFUSION", get_Trx());
		StringBuffer SQL = new StringBuffer("Insert into XX_EXPORTFUSION " + 
				"select AD_CLIENT_ID, " + 
				"AD_ORG_ID, " + 
				"UNM, " + 
				"UNEW, " + 
				"ORD, " + 
				"DSC, " + 
				"CATR, " + 
				"NVL(PTYP,'99999999') as PTYP, " + 
				"NVL(STYP,'99999999') as STYP, " + 
				"VCAT, " + 
				"GRAPH, " + 
				"STYLE, " + 
				"TYPE, " + 
				"VENTE, " + 
				"ACHAT, " + 
				"0, " + 
				"? , " + 
				"? , " + 
				"LANGUAGE_ID, " + 
				"PLV, " + 
				"ISFUSION, m_product_id, ?, ?, ? from ZRV_EXPORTFUSION2 ");
		SQL.append(" where ISFUSION = 'Y' and AD_Client_ID = ? and LANGUAGE_ID = ? ");
		no = DB.executeUpdate(get_Trx(), SQL.toString(),paid,pvid, datePrice, getAD_PInstance_ID(),currencyTo,client_ID, lang);
		addLog("Nombre de ligne : "+no);
		no = DB.executeUpdate(get_Trx(), "update XX_EXPORTFUSION set PTYP = 'Tout le Tarif' where PTYP = '99999999' and AD_PINSTANCE_ID = ? ", getAD_PInstance_ID());
		addLog("Lignes avec PTYP vide : "+no);
		no = DB.executeUpdate(get_Trx(), "update XX_EXPORTFUSION set STYP = 'Tout le Tarif' where STYP = '99999999' and AD_PINSTANCE_ID = ? ", getAD_PInstance_ID());
		addLog("Lignes avec PTYP vide : "+no);
		no = DB.executeUpdate(get_Trx(), "update XX_EXPORTFUSION set VENTE = NVL(ROUND(getPriceLastVersionPriceList2(PRICELISTVENTE_ID,m_product_id, ?),2 ),0) where AD_PINSTANCE_ID = ? ",datePrice, getAD_PInstance_ID());
		no = DB.executeUpdate(get_Trx(), "update XX_EXPORTFUSION set ACHAT = NVL(ROUND(getPriceLastVersionPriceList2(PRICELISTACHAT_ID,m_product_id, ?),2 ),0) where AD_PINSTANCE_ID = ? ",datePrice, getAD_PInstance_ID());
		
		no = DB.executeUpdate(get_Trx(), "update XX_EXPORTFUSION set VENTE = NVL(VENTE*(NVL((select Round(multiplyrate,2) from c_conversion_rate where c_currency_id = (select C_Currency_ID from M_PriceList where M_PriceList.M_PriceList_ID = PRICELISTVENTE_ID) and c_currency_to_id = ? and validfrom<=? and (validto is null or validto > ?)),1) ),0)  where AD_PINSTANCE_ID = ? ",currencyTo,datePrice, datePrice, getAD_PInstance_ID());
		no = DB.executeUpdate(get_Trx(), "update XX_EXPORTFUSION set ACHAT = NVL(ACHAT*(NVL((select Round(multiplyrate,2) from c_conversion_rate where c_currency_id = (select C_Currency_ID from M_PriceList where M_PriceList.M_PriceList_ID = PRICELISTACHAT_ID) and c_currency_to_id = ? and validfrom<=? and (validto is null or validto > ?)),1) ),0)  where AD_PINSTANCE_ID = ? ",currencyTo,datePrice, datePrice, getAD_PInstance_ID());
		
		no = DB.executeUpdate(get_Trx(), "update XX_EXPORTFUSION set VENTE = Round(VENTE,2)*100, ACHAT = Round(ACHAT,2)*100  where AD_PINSTANCE_ID = ? ", getAD_PInstance_ID());
		
		return "Export terminé";
	}

}
