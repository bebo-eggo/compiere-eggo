package com.audaxis.compiere.pos.process;

import org.compiere.model.X_Z_OrgPOS;
import org.compiere.util.DB;


public class OrgPosCtx {
	

	// Parameter String
	
	public  int ad_client_id;	
//	public  String WAREHOUSE_REPARATEUR = "REPARATEUR";
	
//	public  String ARTICLE_GENERIQUE = "ART-GEN";
//	public  String ARTICLE_GENERIQUE_REPA = "ART-REPA";
	
//	public  String DEMANDE_CREATION_ARTICLE_ACTION = "21";
	
//	public  String ACTION_A_LIVRER = "02";
//	public  String ACTION_A_EMPORTER = "01";
//	public  String ACTION_PRET = "09";

//	public  String LOCCONSIGNATION = "CONSIGNATION";

	
//	public  String DEF_CURRENCY="EUR";
	public  String DEF_DEFAULT_SAV_STATUS;
	
	public  int LOCATOR_STOCK_ID;
	public  int LOCATOR_CONSIGNATION_ID;
	public  int LOCATOR_SAV_ID;
	
	public  int DOCTYPE_TICKET_ID;
	public  int DOCTYPE_BONDEVENTE_ID;
	public  int DOCTYPE_CONSIGNATION_ID;
	public  int DOCTYPE_CREATECLI_ID;
	public  int DOCTYPE_REPRISE_ID;
	public  int DOCTYPE_VENTEWEB_ID;
	public  int DOCTYPE_DEVIS_ID;
	public  int DEF_CURRENCY_ID;
	
	public  int DOCTYPE_SAV_DOM_ID;
	public  int DOCTYPE_EchangeGC_ID;
	public  int DOCTYPE_REPARATION_ID;
	public  int DOCTYPE_Echange2_ID;
	public  int DOCTYPE_EchangeDOA_ID;

	
	

	
	public  int ARTICLE_GENERIQUE_ID;
	public  int ARTICLE_GENERIQUE_REPA_ID;
	public  int DEMANDE_CREATION_ARTICLE_ACTION_ID;
	
	public  int ACTION_A_LIVRER_ID;
	public  int ACTION_A_EMPORTER_ID;
	public  int ACTION_PRET_ID;


	public OrgPosCtx(int client_id,X_Z_OrgPOS orgPOS) {
		ad_client_id=client_id;
		LOCATOR_STOCK_ID= orgPOS.get_ValueAsInt("M_LocatorStock_ID");
		LOCATOR_CONSIGNATION_ID= orgPOS.get_ValueAsInt("M_LocatorConsignation_ID");
		LOCATOR_SAV_ID= orgPOS.get_ValueAsInt("M_LocatorSAV_ID");
		DOCTYPE_TICKET_ID = orgPOS.get_ValueAsInt("DocType_Ticket_ID");
		DOCTYPE_BONDEVENTE_ID = orgPOS.get_ValueAsInt("DocType_Bdv_ID");
		DOCTYPE_CONSIGNATION_ID = orgPOS.get_ValueAsInt("DocType_Consignation_ID");
		DOCTYPE_CREATECLI_ID = orgPOS.get_ValueAsInt("DocType_CreateCli_ID");
		DOCTYPE_REPRISE_ID = orgPOS.get_ValueAsInt("DoctType_Retour_ID");
		DOCTYPE_VENTEWEB_ID = orgPOS.get_ValueAsInt("DocType_WebSales_ID");
		DOCTYPE_DEVIS_ID = orgPOS.get_ValueAsInt("DocType_Devis_ID");		
		DOCTYPE_SAV_DOM_ID = orgPOS.get_ValueAsInt("DocType_SavDom_ID");
		DOCTYPE_EchangeGC_ID = orgPOS.get_ValueAsInt("DocType_Gc_ID");
		DOCTYPE_REPARATION_ID = orgPOS.get_ValueAsInt("DocType_Rep_ID");
		DOCTYPE_Echange2_ID = orgPOS.get_ValueAsInt("DocType_Ech2_ID"); 
		DOCTYPE_EchangeDOA_ID = orgPOS.get_ValueAsInt("DocType_Doa_ID"); 
		DEF_CURRENCY_ID = orgPOS.get_ValueAsInt("C_Currency_ID");
		ARTICLE_GENERIQUE_ID = orgPOS.get_ValueAsInt("DefaultProduct_ID");
		ARTICLE_GENERIQUE_REPA_ID = orgPOS.get_ValueAsInt("DefaultRepaProduct_ID");
		DEMANDE_CREATION_ARTICLE_ACTION_ID = orgPOS.get_ValueAsInt("PosAction_CreateProduct_ID"); 		
		ACTION_A_LIVRER_ID = orgPOS.get_ValueAsInt("PosAction_Ship_ID");
		ACTION_A_EMPORTER_ID = orgPOS.get_ValueAsInt("PosAction_ShipNow_ID");
		ACTION_PRET_ID = orgPOS.get_ValueAsInt("PosAction_PretCli_ID");
		DEF_DEFAULT_SAV_STATUS = DB.getSQLValueString(null,"select value from Z_PosWfAction where Z_PosWfAction_ID=?",orgPOS.get_ValueAsInt("PosAction_Repa_ID"));
		
		

		
		

		
//		Ctx.AD_LANGUAGE_ID = orgPOS.get_ValueAsInt("AD_Language_ID");
//		Ctx.DEFAULT_CUSTOMER_ID = orgPOS.get_ValueAsInt("DefaultCustomer_ID");
//		Ctx.DEFAULT_VENDOR_ID = orgPOS.get_ValueAsInt("DefaultSupplier_ID");
//		Ctx.DEFAULT_PRODUCT_ID = 
//		Ctx.DEFAULT_PRODUCT_FRAIS_ID = orgPOS.get_ValueAsInt("DefaultServiceProduct_ID");
//		Ctx.DEFAULT_PAYMENT_DECAISS_ID = orgPOS.get_ValueAsInt("ZSubPaymentRule_ID");
//		Ctx.C_BP_GROUP_PARTICULAR_ID = orgPOS.get_ValueAsInt("Particular_Group_ID");
//		Ctx.C_BP_GROUP_PRO_ID = orgPOS.get_ValueAsInt("Pro_Group_ID");
//		Ctx.MPRICELIST_CUSTOMER_ID=orgPOS.get_ValueAsInt("M_PriceList_ID");
//
//		Ctx.DOCTYPE_BONDEVENTE_ID = 
//		Ctx.DOCTYPE_CREATECLI_ID = 
//		Ctx.DOCTYPE_VENTEWEB_ID = 
//		Ctx.DOCTYPE_DEVIS_ID = 
//		Ctx.DOCTYPE_CONSIGNATION_ID = 
//		Ctx.DOCTYPE_RETOUR_ID = 
//		Ctx.DOCTYPE_DECAISS_ID = orgPOS.get_ValueAsInt("DocType_Decaiss_ID");
//		Ctx.DOCTYPE_SAVDOM_ID = 
//		Ctx.DOCTYPE_ECHANGEGC_ID = 
//		Ctx.DOCTYPE_REPARATION_ID = 
//		Ctx.DOCTYPE_ECHANGE2_ID = 
//		Ctx.DOCTYPE_ECHANGEDOA_ID = 
//		Ctx.DOCTYPE_DEVISREPA_ID = orgPOS.get_ValueAsInt("DocTypeDevisRepa_ID");
//		Ctx.DEF_BANKACCOUNT_ID = orgPOS.get_ValueAsInt("C_BankAccount_ID"); 
//		Ctx.DEF_BANKDOCTYPE_ID = orgPOS.get_ValueAsInt("DocType_BankAcct_ID");
//		Ctx.DEF_PAYCASH_ID = orgPOS.get_ValueAsInt("CashPaymentRule_ID");
//		Ctx.DEF_PAYCARD_ID = orgPOS.get_ValueAsInt("CardPaymentRule_ID");
//		Ctx.DEF_PAYCHECK_ID = orgPOS.get_ValueAsInt("CheckPaymentRule_ID");
//		Ctx.C_CURRENCY_ID =  
//		Ctx.ACTION_SAV_ATR_ID= orgPOS.get_ValueAsInt("PosAction_Repa_ID");
//		Ctx.ACTION_SAV_EXP_ID= orgPOS.get_ValueAsInt("PosAction_RepaExp_ID");
//		Ctx.ACTION_CREATE_ART_ID=
//		Ctx.ACTION_LIVRER_ID= 
////		Ctx.ACTION_EMPORTER_ID = orgPOS.get_ValueAsInt("PosAction_ShipNow_ID");
//		Ctx.ACTION_SAV_MAG_ID= orgPOS.get_ValueAsInt("Action_ReceptionSavMag_ID");
//		Ctx.ACTION_PRET_CLI_ID = 
//		Ctx.PRODUCT_STATE_LIST_ID = orgPOS.get_ValueAsInt("Ref_Product_State_ID");
//		Ctx.SAVTEMPLATEEMAIL_ID = orgPOS.get_ValueAsInt("R_MailText_ID");
//		Ctx.BDVTEMPLATEEMAIL_ID = orgPOS.get_ValueAsInt("BDV_R_MailText_ID");
//		Ctx.SNMP_AGENT_IP = orgPOS.get_ValueAsString("AgentSnmp");
//		Ctx.SNMP_OID = orgPOS.get_ValueAsString("snmpOID");
//		Ctx.DEFAULT_COUNTRY_ID = orgPOS.get_ValueAsInt("C_Country_ID");
//		Ctx.ACTION_SAV_RETURNEDTOCUSTOMER_ID=orgPOS.get_ValueAsInt("PosAction_SalesmanEdit_ID");
//		Ctx.DEFAULT_COST_ELEMENT_ID=orgPOS.get_ValueAsInt("M_CostElement_ID");
//		Ctx.LOCATOR_STOCK_ID = ;
//		Ctx.LOCATOR_CONSIGNATION_ID = ;
	}	
}
