package com.audaxis.compiere.xls;

import java.io.File;
import java.io.FileOutputStream;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.logging.Level;

import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.xls.util.ResultSetToExcelUtil;

public class ExportXlsBalanceTiers extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer
{
	private static final String reportName = "BalanceTiers";
	
	protected int 		AD_Client_ID = 0;	
	protected int 		AD_Org_ID = 0;
	protected Timestamp DateFrom = null;
	protected int 		C_BP_Group_ID=0;
	protected String 	BP_GROUP_FROM;
	protected String 	BP_GROUP_TO;
	protected int 		C_BPartner_ID;
	protected String 	IsSOTrx;
	protected String 	IsSummary;
	protected int 		SORTBYNAME;
	protected int 		C_Country_ID;
	protected String    messageError;
	protected boolean m_IsUIReturn;//32156 pour le retour du fichier
	protected String fullFileName;//32156 pour le retour du fichier
	protected String fileName;
	protected String extention;
	protected Ctx myCtx = null;
	protected File file;
	private ProcessInfo processInfo;
	
	protected static final SimpleDateFormat _dfTime = new SimpleDateFormat("yyyyMMddHHmmss");

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
			else if (name.equals("SORTBYNAME"))
				SORTBYNAME= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("C_Country_ID"))
				C_Country_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("IsUIReturn"))
				m_IsUIReturn = "Y".equals(para[i].getParameter()); 
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

		String sql = "SELECT NVL(( select S.Name from AD_Org S where S.AD_Org_ID = " + AD_Org_ID + " ), ' ' ) \"Société\" "
				+",TRUNC(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") \"Date au\" " 
				+",TAB.Created  \"Date saisie\" " 
				+",TAB.bpvalue  \"Tiers\" " 
				+",TAB.name  \"Nom tiers\" "
				+",TAB.doctype  \"T\" " 
				+",TAB.indispute  \"C\" "
				+",TRIM(TAB.documentno)  \"Document\" "
				+",TRIM(REPLACE(TAB.poreference,CHR(10),''))  \"Référence tiers\" "
				+",TAB.dateacct  \"Date comptable document\" "
				+",TAB.dateinvoiced  \"Date document\" "
				+",TAB.duedate  \"Date échéance\" "
				+",GET_MONTANT_DEBIT_CREDIT(" + DB.TO_STRING(IsSOTrx) + ",TAB.doctype,'DR',TAB.docamt,TAB.payamt)  \"Débit\" "
				+",GET_MONTANT_DEBIT_CREDIT(" + DB.TO_STRING(IsSOTrx) + ",TAB.doctype,'CR',TAB.docamt,TAB.payamt)  \"Crédit\" "
				+",GET_MONTANT_DEBIT_CREDIT(" + DB.TO_STRING(IsSOTrx) + ",TAB.doctype,'TT',TAB.docamt,TAB.payamt)  \"Total\" "
				+"FROM "
				+"(select "
				+"bp.value as bpvalue, bp.name as name, "
				+"'I' as doctype, "
				+"i.documentno as documentno, "
				+"i.poreference as poreference, "
				+"trunc(i.dateinvoiced) as dateinvoiced, "
				+"trunc(i.dateacct) as dateacct, "
				+"i.isindispute as indispute, "
				+"i.Created as Created, "
				+"trunc(i.dateinvoiced - PaymentTermDueDays(i.C_PaymentTerm_ID,i.DateInvoiced, i.DateInvoiced)) as duedate, "
				+"Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) as docamt , "
				+"0 as payamt "
				+"FROM c_invoice i "
				+"inner join     c_bpartner bp on ( i.c_bpartner_id = bp.c_bpartner_id) "
				+"inner join     c_bp_group bpg on  ( bp.C_BP_Group_ID = bpg.C_BP_Group_ID ) "
				+"where "
				+"( bpg.Value >= " + DB.TO_STRING(BP_GROUP_FROM) + " or " + DB.TO_STRING(BP_GROUP_FROM) + " is null or " + DB.TO_STRING(BP_GROUP_FROM) + " = '' ) "
				+"and ( bpg.Value <= " + DB.TO_STRING(BP_GROUP_TO) + " or " + DB.TO_STRING(BP_GROUP_TO) + " is null or " + DB.TO_STRING(BP_GROUP_TO) + " = '' ) "
				+"and ( bp.C_BPartner_ID = " + C_BPartner_ID + " or " + C_BPartner_ID + " is null or " + C_BPartner_ID + " = 0 ) "
				+"and ( bp.C_BP_Group_ID = " + C_BP_Group_ID + " or " + C_BP_Group_ID + " is null or " + C_BP_Group_ID + " = 0 ) "
				+"and ( ( i.issotrx = 'Y' and " + DB.TO_STRING(IsSOTrx) + " = 'Y' ) or ( i.issotrx = 'N' and " + DB.TO_STRING(IsSOTrx) + " = 'N' ) ) "
				+"and i.docstatus in ('CO','CL','RE','VO') "
				+"and ( i.AD_Client_ID = " + AD_Client_ID + " or " + AD_Client_ID + " is null or " + AD_Client_ID + " = 0 ) "
				+"and ( i.AD_Org_ID =  " + AD_Org_ID + " or " + AD_Org_ID + " is null or " + AD_Org_ID + " = 0 ) "
				+"and trunc(i.dateacct) <= trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") "
				+"and Z_Invoice_Open_AsOf_Base(i.C_Invoice_ID,0,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") ) <> 0  "
				+"UNION ALL "
				+"select "
				+"bp.value as bpvalue, bp.name as name, "
				+"'P' as docType, "
				+"p.documentno || '          ' || p.c_payment_id as documentno, "
				+"null as poreference, "
				+"trunc(p.datetrx) as dateinvoiced, "
				+"trunc(p.dateacct) as dateacct, "
				+"'N' as indispute, "
				+"p.Created as Created, "
				+"trunc(coalesce(p.duedate,p.datetrx)) as duedate, "
				+"0 as docbase, "
				+"currencyConvert(zpaymentAvailable(p.C_Payment_ID,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")),p.C_Currency_ID,(select a.C_Currency_ID from c_acctschema a where a.ad_client_id = p.ad_client_id),p.DateAcct,p.C_ConversionType_ID,p.AD_Client_ID,p.AD_Org_ID) "
				+" as PayAmt "
				+"from c_Payment p, "
				+"c_bp_group bpg, "
				+"c_bpartner bp "
				+"where  "
				+"( bpg.Value >= " + DB.TO_STRING(BP_GROUP_FROM) + " or " + DB.TO_STRING(BP_GROUP_FROM) + " is null or " + DB.TO_STRING(BP_GROUP_FROM) + " = '' )  "
				+"and ( bp.C_BP_Group_ID = bpg.C_BP_Group_ID )  "
				+"and ( bpg.Value <= " + DB.TO_STRING(BP_GROUP_TO) + " or " + DB.TO_STRING(BP_GROUP_TO) + " is null or " + DB.TO_STRING(BP_GROUP_TO) + " = '' )  "
				+"and ( bp.C_BPartner_ID = " + C_BPartner_ID + " or " + C_BPartner_ID + " is null or " + C_BPartner_ID + " = 0 )  "
				+"and ( bp.C_BP_Group_ID = " + C_BP_Group_ID + " or " + C_BP_Group_ID + " is null or " + C_BP_Group_ID + " = 0 )  "
				+"and ( ( p.IsReceipt = 'Y' and " + DB.TO_STRING(IsSOTrx) + " = 'Y' ) or ( p.IsReceipt = 'N' and " + DB.TO_STRING(IsSOTrx) + " = 'N' ) )  "
				+"and p.docstatus in ('CO','CL','RE','VO')  "
				+"and p.c_bpartner_id = bp.c_bpartner_id  "
				+"and (p.C_Charge_ID = 0 or p.C_Charge_ID is null)  "
				+"and ( p.AD_Client_ID = " + AD_Client_ID + " or " + AD_Client_ID + " is null or " + AD_Client_ID + " = 0 )  "
				+"and ( p.AD_Org_ID = " + AD_Org_ID + " or " + AD_Org_ID + " is null or " + AD_Org_ID + " = 0 )  "
				+"and trunc(p.dateacct) <= trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")  "
				+"and zpaymentAvailable(p.C_Payment_ID,trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")) <> 0 ) TAB  "
				+"ORDER BY TRUNC(TAB.Created), TRUNC(TAB.dateacct), TAB.doctype, TAB.documentno ";

		return sql;
	}

}
