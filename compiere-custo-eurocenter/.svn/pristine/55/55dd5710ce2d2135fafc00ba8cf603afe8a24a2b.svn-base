package com.audaxis.compiere.xls;

import java.io.File;
import java.io.FileOutputStream;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.xls.util.ResultSetToExcelUtil;

public class ExportXlsBalanceAging extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer
{
	private static final String reportName = "BalanceAgee";
	
	protected int 		AD_Client_ID = 0;	
	protected int 		AD_Org_ID = 0;
	protected int       Echu1 = 0;
	protected int       Echu2 = 0;
	protected int       Echu3 = 0;
	protected Timestamp DateFrom = null;
	protected int 		C_BP_Group_ID=0;
	protected String 	BP_GROUP_FROM;
	protected String 	BP_GROUP_TO;
	protected int 		C_BPartner_ID;
	protected String 	IsSOTrx;
	protected String 	IsSummary;
	protected int 		C_Country_ID = 0;
	protected String    messageError;
	protected String IsDraftIncluded;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++){
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				AD_Client_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("AD_Org_ID"))
				AD_Org_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("DateFrom"))
				DateFrom= ((Timestamp)para[i].getParameter());
			else if (name.equals("C_BP_Group_ID"))
				C_BP_Group_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("BP_GROUP_FROM"))
				BP_GROUP_FROM = ((String)para[i].getParameter());
			else if (name.equals("BP_GROUP_TO"))
				BP_GROUP_TO = ((String)para[i].getParameter());
			else if (name.equals("C_BPartner_ID"))
				C_BPartner_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("IsSOTrx"))
				IsSOTrx = ((String)para[i].getParameter());
			else if (name.equals("Summary"))
				IsSummary = ((String)para[i].getParameter());
			else if (name.equals("C_Country_ID"))
				C_Country_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if(name.equals("Echu1"))//Montebi RED 18783 27788 : Modifier la sélection.	Ajouter comme paramètres de sélection:Echéance1,Echéance2,Echénace3,Echéance4
				Echu1 = ((BigDecimal)para[i].getParameter()).intValue(); 
			else if(name.equals("Echu2"))//Montebi RED 18783 27788
				Echu2 = ((BigDecimal)para[i].getParameter()).intValue();
			else if(name.equals("Echu3"))//Montebi RED 18783 27788
				Echu3 = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("IsDraftIncluded"))//Montebi RED 25214 : paiement non affectés absent du rapport
				IsDraftIncluded = ((String)para[i].getParameter());

			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}


	@Override
	protected String getOutputFileNameSimple() {
		return reportName + ".xlsx";
	}

	@Override
	protected void buildOutputFile() {
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			ps = DB.prepareStatement(getSQL(), get_Trx());
			rs = ps.executeQuery();

			ResultSetToExcelUtil resultSetToExcel = new ResultSetToExcelUtil(rs, null, reportName);
			resultSetToExcel.generate(new FileOutputStream(new File(getOutputAbsoluteFileName())));
		}
		catch (Exception e){
			messageError = e.getMessage();
			log.severe(e.getMessage());
		}
		finally
		{
			Util.closeCursor(ps, rs);
		}

	}

	protected String getSQL() {

		int Echu1_2 = Echu1+1;
		int Echu2_3 = Echu2+1;

		StringBuffer sql = new StringBuffer()
		.append("select ")
		.append("bp.value as \"Tiers\", bp.name as \"Nom\", 'I' as \"T\", ")
		.append("i.documentno as \"Document\", ")
		.append("trunc(i.dateinvoiced) as \"Date Document\", ")
		.append("i.dateinvoiced-PaymentTermDuedays(i.c_PaymentTerm_ID, i.DateInvoiced, i.dateinvoiced) as \"Date Echéance\", ")
		.append("cc.iso_code as  \"devise\", ")//Evolution #42918
		.append("i.Grandtotal as \"valeur sources\", ")//Evolution #42918
		.append("CurrencyConvert(i.Grandtotal, i.C_Currency_ID, ( select a.C_Currency_ID from c_acctschema a where a.ad_client_id = i.ad_client_id) , i.DateAcct, i.C_ConversionType_ID, i.ad_client_id, i.ad_org_id) as \"Montant Document\",  ")     
		.append("0 AS \"Paiement\", ")
		.append("CASE WHEN (ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced,i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) <  (SELECT +" + Echu1 + " * (-1) FROM DUAL )  ) " )
		.append("THEN Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) ")
		.append("ELSE 0 END \"Non Echu +" + Echu1 + " j\", ")//Montebi RED 18783 27788
		.append("CASE WHEN (ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced,i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) <= 0 AND ")
		.append("ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced, i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) >= (SELECT +" + Echu1 + " * (-1) FROM DUAL )) ")
		.append("THEN Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) ")
		.append("ELSE 0 END \"Non Echu -" + Echu1 + " j\", ")//Montebi RED 18783 27788
		.append("CASE WHEN (ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced,i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) > 0 AND ")
		.append("ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced,i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) <= " + Echu1 + ") ")
		.append("THEN Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) ")
		.append("ELSE 0 END \"Echu 1 à " + Echu1 + " j\", ")//Montebi RED 18783 27788
		.append("CASE WHEN (ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced, i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) > " + Echu1 + " AND ")
		.append("ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced,i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) <= " + Echu2 + ") ")
		.append("THEN Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) ")
		.append("ELSE 0 END \"Echu " + Echu1_2 + " à " + Echu2 +" j\", ")//Montebi RED 18783 27788
		.append("CASE WHEN (ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced,i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) > " + Echu2 + " AND ")
		.append("ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced, i.duedate,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) <= " + Echu3 + ") ")
		.append("THEN Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) ")
		.append("ELSE 0 END \"Echu " + Echu2_3 + " à " + Echu3 +" j\", ")//Montebi RED 18783 27788
		.append("CASE WHEN (ZInvoicePaymentTermDueDays(i.C_Invoice_ID,i.c_PaymentTerm_ID, i.DateInvoiced,i.duedate, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) > " + Echu3 + " ) ")
		.append("THEN Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) ")
		.append("ELSE 0 END \"Echu +" + Echu3 + " j\", ")//Montebi RED 18783 27788
		.append("Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) as \"Total\", ")	
		.append("i.isindispute as \"Litige\" ")//#44656 : champs "litige fournisseur"
		//.append("i.XX_Date_Blocage AS \"Date blocage\", " )//#44656 : champs "litige fournisseur"
		//.append("i.XX_Raison_Litige AS \"Raison Litige\" " )//#44656 : champs "litige fournisseur"
		.append("from c_invoice_v i INNER JOIN c_invoice ii ON i.c_invoice_id = ii.c_invoice_id INNER JOIN c_bpartner bp ON ( i.c_bpartner_id = bp.c_bpartner_id) ")//Montebi RED 18783 27788
		.append("INNER JOIN c_bp_group bpg ON ( bp.C_BP_Group_ID = bpg.C_BP_Group_ID ) INNER JOIN C_BPartner_Location bpl ON (ii.C_BPartner_Location_ID = bpl.C_BPartner_Location_ID) ")
		.append("INNER JOIN C_Location l ON (bpl.C_Location_ID  = l.C_Location_ID) ")//Montebi RED 28220
		.append("INNER JOIN C_currency cc  on (cc.c_currency_id = i.c_currency_id) ")//Evolution #42918
		.append("where( bpg.Value >=  "+DB.TO_STRING(BP_GROUP_FROM)+"  or  "+DB.TO_STRING(BP_GROUP_FROM)+"  is null or  "+DB.TO_STRING(BP_GROUP_FROM)+"  = '' ) ")
		.append("and  (l.C_Country_ID =  "+C_Country_ID+"  or  "+C_Country_ID+"   IS NULL OR  "+C_Country_ID+"   = 0 ) ")// Montebi RED 28220 :Le paramètre C_Country_ID n'était pas utilisé 
		.append("and ( bpg.Value <=  "+DB.TO_STRING(BP_GROUP_TO)+"  or  "+DB.TO_STRING(BP_GROUP_TO)+"  is null or  "+DB.TO_STRING(BP_GROUP_TO)+"  = '' ) ")
		.append("and ( bp.C_BPartner_ID =  "+C_BPartner_ID+"  or  "+C_BPartner_ID+"  is null or  "+C_BPartner_ID+"  = 0 ) ")
		.append("and ( bp.C_BP_Group_ID =  "+C_BP_Group_ID+"  or  "+C_BP_Group_ID+"  is null or  "+C_BP_Group_ID+"  = 0 ) ")
		.append("and ( ( i.issotrx = 'Y' and  "+DB.TO_STRING(IsSOTrx)+"  = 'Y' ) or ( i.issotrx = 'N' and  "+DB.TO_STRING(IsSOTrx)+"  = 'N' ) ) ")
		.append("and i.docstatus in ('CO','CL','RE','VO') ")
		.append("and ( i.AD_Client_ID = "+AD_Client_ID+"  or "+AD_Client_ID+"  is null or "+AD_Client_ID+"  = 0 ) ")
		.append("and ( i.AD_Org_ID =  "+AD_Org_ID+"  or  "+AD_Org_ID+"  is null or  "+AD_Org_ID+"  = 0 ) ")
		.append("and i.c_bpartner_id = bp.c_bpartner_id ")
		.append("and trunc(i.dateacct) <= trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ")
		.append("and Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) <> 0  and ii.Posted='Y' ")
		.append("UNION ALL ")
		.append("select bp.value as \"Tiers\", bp.name as \"Nom\",'P' as \"T\", ")
		.append("p.documentno || '          ' || p.c_payment_id as \"Document\", ")
		.append("trunc(p.datetrx) as \"Date Document\", ")
		.append("trunc(coalesce(p.duedate,p.datetrx)) as \"Date Echéance\", ")
		.append("cc.iso_code as  \"devise\", ")//Evolution #42918
		.append("p.PayAmt as \"valeur sources\", ")//Evolution #42918
		.append("- CurrencyConvert(p.PayAmt, p.C_Currency_ID, ( select a.C_Currency_ID from c_acctschema a where a.ad_client_id = p.ad_client_id) , p.DateAcct, p.C_ConversionType_ID, p.ad_client_id, p.ad_org_id) as \"Montant Document\", ")      
		.append("- CurrencyConvert( ")//Montebi RED 25214
		.append("  (p.PayAmt - NVL( ( select sum(( zpaysign(p.isreceipt) * al.Amount ))  ") 
		.append("from c_allocationline al inner join c_allocationhdr ah on ah.c_allocationhdr_id = al.c_allocationhdr_id ")
		.append("where al.c_payment_id = p.c_payment_id and  trunc(ah.dateacct) <= trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") and  al.isactive = 'Y' ")
		.append("group by al.c_payment_id ), 0 ) ) , ")
		.append("p.C_Currency_ID, ( select a.C_Currency_ID from c_acctschema a where a.ad_client_id = p.ad_client_id) , p.DateAcct, p.C_ConversionType_ID, p.ad_client_id, p.ad_org_id ")
		.append("   )  as \"Paiement\", ")
		.append("0 as \"Non Echu +" + Echu1 + " j\", ")
		.append("0 as \"Non Echu -" + Echu1 + " j\", ")
		.append("0 as \"Echu 1 à " + Echu1 + " j\", ")
		.append("0 as \"Echu " + Echu1_2 + " à " + Echu2 +" j\", ")//Montebi RED 18783 27788
		.append("0 as \"Echu " + Echu2_3 + " à " + Echu3 +" j\", ")//Montebi RED 18783 27788
		.append("0 as \"Echu +" + Echu3 + " j\", ")//Montebi RED 18783 27788
		.append("- CurrencyConvert( ")//Montebi RED 25214
		.append(" (p.PayAmt - NVL( ( select sum(( zpaysign(p.isreceipt) * al.Amount )) ")
		.append("from c_allocationline al inner join c_allocationhdr ah on ah.c_allocationhdr_id = al.c_allocationhdr_id ")
		.append("where al.c_payment_id = p.c_payment_id and  trunc(ah.dateacct) <= trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") and  al.isactive = 'Y' ")
		.append("group by al.c_payment_id ), 0 ) ) , ")
		.append("p.C_Currency_ID, ( select a.C_Currency_ID from c_acctschema a where a.ad_client_id = p.ad_client_id) , p.DateAcct, p.C_ConversionType_ID, p.ad_client_id, p.ad_org_id ")
		.append("    )  as \"Total\",  ")
		.append("'N' as \"Litige\" ")//#44656 : champs "litige fournisseur"
		//			.append("NULL AS \"Date blocage\", " )//#44656 : champs "litige fournisseur"
		//			.append("NULL AS \"Raison Litige\" " )//#44656 : champs "litige fournisseur"
		.append("from c_Payment p, c_bp_group bpg,  c_bpartner bp , c_currency cc ")
		.append("where EXISTS  (SELECT 1 FROM C_BPartner_Location bpl  INNER JOIN C_Location l  ON (bpl.C_Location_ID   = l.C_Location_ID ")//// Montebi RED 28220
		.append("and l.C_Country_ID      = "+C_Country_ID+"  OR "+C_Country_ID+"   IS NULL  OR "+C_Country_ID+"  = 0 ) ")//// Montebi RED 28220
		.append("where bpl.C_BPartner_ID = bp.c_bpartner_id ) ")
		.append("and (cc.c_currency_id = p.c_currency_id) ")
		.append("and ( bpg.Value >=  "+DB.TO_STRING(BP_GROUP_FROM)+"  or  "+DB.TO_STRING(BP_GROUP_FROM)+"  is null or  "+DB.TO_STRING(BP_GROUP_FROM)+"  = '' ) ")
		.append("and ( bpg.Value <=  "+DB.TO_STRING(BP_GROUP_TO)+"  or  "+DB.TO_STRING(BP_GROUP_TO)+"  is null or  "+DB.TO_STRING(BP_GROUP_TO)+"  = '' ) ")
		.append("and ( bp.C_BP_Group_ID = bpg.C_BP_Group_ID ) ")
		.append("and ( bp.C_BPartner_ID =  "+C_BPartner_ID+"  or  "+C_BPartner_ID+"  is null or  "+C_BPartner_ID+"  = 0 ) ")
		.append("and ( bp.C_BP_Group_ID =  "+C_BP_Group_ID+"  or  "+C_BP_Group_ID+"  is null or  "+C_BP_Group_ID+"  = 0 ) ")
		.append("and ( ( p.IsReceipt = 'Y' and  "+DB.TO_STRING(IsSOTrx)+" = 'Y' ) or ( p.IsReceipt = 'N' and  "+DB.TO_STRING(IsSOTrx)+"  = 'N' ) ) ")
		.append("and p.docstatus in ('CO','CL','RE','VO') ")
		.append("and (p.C_Charge_ID = 0 or p.C_Charge_ID is null) ")
		.append("and p.c_bpartner_id = bp.c_bpartner_id ")
		.append("and ( p.AD_Client_ID = "+AD_Client_ID+"  or "+AD_Client_ID+"  is null or "+AD_Client_ID+"  = 0 ) ")
		.append("and ( p.AD_Org_ID =  "+AD_Org_ID+"  or  "+AD_Org_ID+"  is null or  "+AD_Org_ID+"  = 0 ) ")
		.append("and trunc(p.dateacct) <= trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ")
		.append("and CurrencyConvert( ")
		.append(" (p.PayAmt - NVL( ( select sum(( zpaysign(p.isreceipt) * al.Amount )) ")
		.append("from c_allocationline al inner join c_allocationhdr ah on ah.c_allocationhdr_id = al.c_allocationhdr_id ")
		.append("where al.c_payment_id = p.c_payment_id and  trunc(ah.dateacct) <= trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ")
		.append("and  al.isactive = 'Y'  group by al.c_payment_id ), 0 ) ) , ")//Montebi RED 25214
		.append("p.C_Currency_ID, ( select a.C_Currency_ID from c_acctschema a where a.ad_client_id = p.ad_client_id) , p.DateAcct, p.C_ConversionType_ID, p.ad_client_id, ")
		.append("p.ad_org_id)  <> 0 and p.Posted='Y' ");

		log.info(sql.toString());

		return sql.toString();
	}

}
