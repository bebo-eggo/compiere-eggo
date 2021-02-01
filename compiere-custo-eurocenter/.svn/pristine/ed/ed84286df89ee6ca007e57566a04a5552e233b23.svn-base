package com.audaxis.compiere.xls;

import java.io.File;
import java.io.FileOutputStream;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.model.MPeriod;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.util.CompiereException;
import com.audaxis.compiere.xls.util.ResultSetToExcelUtil;

public class ExportXlsBalanceGenV2 extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer
{
	private static final String reportName = "BalanceGenV2";
	
	protected int AD_Client_ID = 0;	
	protected int AD_Org_ID = 0;
	protected Timestamp DateFrom = null;
	protected Timestamp DateTo = null;
	
	//Evolution #45989
	protected Timestamp Created1 = null;
	protected Timestamp Created2 = null;
	
	protected int Account_From;
	protected int Account_To;
	protected String IncludeAdjPeriod;
	protected String IncludeAnouveau;
	protected String    messageError;

	protected Map<String, Object> beans = new HashMap<String, Object>();
	protected ArrayList<PO> list = new ArrayList<PO>();
	protected File file;
	
	protected static final SimpleDateFormat _dfTime = new SimpleDateFormat("yyyyMMddHHmmss");

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++){
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null && para[i].getParameter_To() == null)
				;
			else if (name.equals("AD_Client_ID"))
				AD_Client_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("AD_Org_ID"))
				AD_Org_ID= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("DateFrom"))
				DateFrom= ((Timestamp)para[i].getParameter());
			else if (name.equals("DateTo"))
				DateTo= ((Timestamp)para[i].getParameter());
			else if (name.equals("Account_From"))
				Account_From= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("Account_To"))
				Account_To= ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("IncludeAdjPeriod"))
				IncludeAdjPeriod = ((String)para[i].getParameter());
			else if (name.equals("IncludeAnouveau"))
				IncludeAnouveau = ((String)para[i].getParameter());
			
			//Evolution #45989
			else if (name.equals("Created"))
			{
				Created1= ((Timestamp)para[i].getParameter());
				Created2= ((Timestamp)para[i].getParameter_To());
			}
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		Calendar calFrom = Calendar.getInstance();
		Calendar calTo = Calendar.getInstance();
		calFrom.setTime(DateFrom);
		calTo.setTime(DateTo);
		if(DateFrom == null || DateTo == null)
			throw new CompiereException("La Date début et date fin ne sont pas sur la même année fiscale");
		
		int PIDFrom = MPeriod.getC_Period_ID(getCtx(), AD_Org_ID, DateFrom);
		int PIDTo = MPeriod.getC_Period_ID(getCtx(), AD_Org_ID, DateTo);
		MPeriod mpFrom = new MPeriod(getCtx(), PIDFrom, get_Trx());
		MPeriod mpTo = new MPeriod(getCtx(), PIDTo, get_Trx());
		
		if(mpFrom.getC_Calendar_ID()!=mpTo.getC_Calendar_ID())
			throw new CompiereException("La Date début et date fin ne sont pas sur la même année fiscale");
		
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
		
		Calendar calFrom = Calendar.getInstance();
		Calendar calTo = Calendar.getInstance();
		/*
		calFrom.setTime(DateFrom);
		calTo.setTime(DateTo);
		if(DateFrom == null || DateTo == null)
			throw new CompiereException("La Date début et date fin ne sont pas sur la même année fiscale");

		calFrom.setTime(DateFrom);
		calTo.setTime(DateTo);
		if(calFrom.get(Calendar.YEAR)!=  calTo.get(Calendar.YEAR))
			throw new CompiereException("La Date début et date fin ne sont pas sur la même année fiscale");
		*/

		//Pour ne pas prendre en consédiration les Dr et Cr de la periode de départ
		String SumAmtDrCr = "((sum(amountDR_) - coalesce(Z_ACCOUNT_starting_BALANCE_Dr(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "),acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")," /*+ DB.TO_STRING(IncludeAnouveau)*/ + "'N'" + "," + DB.TO_STRING(IncludeAdjPeriod) + "),0)) -"
				+ "(sum(amountCR_) - coalesce(Z_ACCOUNT_starting_BALANCE_Cr(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "),acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")," /*+ DB.TO_STRING(IncludeAnouveau)*/ + "'N'" + "," + DB.TO_STRING(IncludeAdjPeriod) + "),0)))";

		String sql = "SELECT TAB.Acct_1 as \"Classe\",TAB.NameClient as \"Société\", TAB.DateFrom as \"Date De\", TAB.DateTo as \"Date À\", " 
				+ "TAB.Account_From as \"Compte De\", TAB.Account_To as \"Compte À\", TAB.ACCTVALUE as \"Clé Compte \", TAB.ACCTNAME as \"Nom Compte\", " 
				+ "TAB.STARTING_BALANCEDR as \"Débit (Solde début)\", TAB.STARTING_BALANCECR as \"Crédit (Solde début)\", TAB.AmtAcctDr as \"Débit (Cumul mouvements)\", " 
				+ "TAB.AmtAcctCr as \"Crédit (Cumul mouvements)\",  TAB.Amount as \"Montant\", TAB.STARTING_BALANCEDRFN as \"Débit (Solde fin)\", TAB.STARTING_BALANCECRFN as \"Crédit (Solde fin)\" "
				+" FROM (SELECT "
				+ "'Total classe ' || substr(acct_value_,1, 1) as Acct_1, "
				+ "(SELECT NVL(Name,' - ') FROM AD_Org cli WHERE (cli.AD_Org_ID = " + AD_Org_ID + " OR  " + AD_Org_ID + " = 0 ) and rownum=1) as NameClient, "
				+ "trunc(" +(DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") as DateFrom, "
				+ "trunc(" +(DateTo != null ? DB.TO_DATE(DateTo, true): "NULL") + ") as DateTo, "
				+ "NVL(Y_Id_Cpt_To_Val_Name(" + Account_From + "), "
				+ "(SELECT MIN(Y_Id_Cpt_To_Val_Name(C_ElementValue_ID)) FROM C_ElementValue ev INNER JOIN C_Element e ON e.C_Element_ID = ev.C_Element_ID and e.ElementType = 'A' WHERE (" + AD_Client_ID + " =0 OR ev.AD_Client_ID=" + AD_Client_ID + ") AND ev.IsSummary='N' AND ev.PostActual='Y') " 
				+ ") as Account_From, "
				+ "NVL(Y_Id_Cpt_To_Val_Name(" + Account_To+ "), "
				+ "(SELECT MAX(Y_Id_Cpt_To_Val_Name(C_ElementValue_ID)) FROM C_ElementValue ev INNER JOIN C_Element e ON e.C_Element_ID = ev.C_Element_ID and e.ElementType = 'A' WHERE (" + AD_Client_ID + " =0 OR ev.AD_Client_ID=" + AD_Client_ID + ") AND ev.IsSummary='N' AND ev.PostActual='Y') "
				+ ") as Account_To, "
				+ "acct_value_ as ACCTVALUE, "
				+ "acct_name_ as ACCTNAME, "
				+ "coalesce(Z_ACCOUNT_starting_BALANCE(" + AD_Client_ID + ", " + AD_Org_ID + ", "//#37978
				+ "(select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "), "
				+ "acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")),0) as STARTING_BALANCE, "//#37978
				+ "(sum(amountDR_) - coalesce(Z_ACCOUNT_starting_BALANCE_Dr(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "),acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")," /*+ DB.TO_STRING(IncludeAnouveau)*/ + "'N'" + "," + DB.TO_STRING(IncludeAdjPeriod) + "),0))as AmtAcctDr, "
				+ "(sum(amountCR_) - coalesce(Z_ACCOUNT_starting_BALANCE_Cr(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "),acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")," /*+ DB.TO_STRING(IncludeAnouveau)*/ + "'N'" + "," + DB.TO_STRING(IncludeAdjPeriod) + "),0))as AmtAcctCr, "
				+ "(sum(amountDR_) - coalesce(Z_ACCOUNT_starting_BALANCE_Dr(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "),acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")," /*+ DB.TO_STRING(IncludeAnouveau)*/ + "'N'" + "," + DB.TO_STRING(IncludeAdjPeriod) + "),0)) -"
				+ "(sum(amountCR_) - coalesce(Z_ACCOUNT_starting_BALANCE_Cr(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "),acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")," /*+ DB.TO_STRING(IncludeAnouveau)*/ + "'N'" + "," + DB.TO_STRING(IncludeAdjPeriod) + "),0))as Amount,"
				+ AD_Client_ID + " as AD_Client_ID, "
				+ AD_Org_ID + " as AD_Org_ID, "
				+ " 0 AS CreatedBy, "
				+ (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + " AS CREATED, "
				+ "'Y' AS IsActive, "
				+ (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + " AS Updated, "
				+ " 0 AS UpdatedBy, "
				+ " AccountType_ AS AccountType, " 
				+ " GET_MONTANT_BLG_LF ('SD', AccountType_ , 'DR', coalesce(Z_ACCOUNT_starting_BALANCE(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "), acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")),0),sum(amount_)) AS  STARTING_BALANCEDR,  "//#37978
				+ " GET_MONTANT_BLG_LF ('SD', AccountType_ , 'CR', coalesce(Z_ACCOUNT_starting_BALANCE(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "), acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")),0),sum(amount_)) AS  STARTING_BALANCECR,  "//#37978
				+ " GET_MONTANT_BLG_LF ('SF', AccountType_ , 'DR', coalesce(Z_ACCOUNT_starting_BALANCE(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "), acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")),0),"+SumAmtDrCr+") AS  STARTING_BALANCEDRFN,  "//#37978
				+ " GET_MONTANT_BLG_LF ('SF', AccountType_ , 'CR', coalesce(Z_ACCOUNT_starting_BALANCE(" + AD_Client_ID + ", " + AD_Org_ID + ", (select c_acctschema1_id from ad_clientinfo where ad_client_id = " + AD_Client_ID + "), acct_id_, trunc(" + (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ")),0),"+SumAmtDrCr+") AS  STARTING_BALANCECRFN  "//#37978
				+ "from "
				+ "( "
				+ "( "
				+ "select "
				+ "0 as amount_, "
				+ "0 as amountCR_, "
				+ "0 as amountDR_, "
				+ "acct.c_elementvalue_id as acct_id_, "
				+ "acct.value as acct_value_, "
				+ "acct.name as acct_name_, "
				+ "acct.AccountType as AccountType_ "
				+ "from c_elementvalue acct "
				+ "inner join c_element e on e.c_element_id = acct.c_element_id and e.elementtype = 'A' "
				+ "where "
				+ "exists ( "
				+ "select * "
				+ "from fact_acct f "
				+ "where "
				+ "acct.c_elementvalue_id = f.account_id and f.postingtype = 'A' "
				+ "and 	(f.ad_client_id = " + AD_Client_ID + " or " + AD_Client_ID + " = 0) "
				+ "and 	(f.ad_Org_id = " + AD_Org_ID + " or  " + AD_Org_ID + " = 0) "
				+ "and 	( Z_Id_Cpt_To_Val(acct.c_elementvalue_id) >= Z_Id_Cpt_To_Val(" + Account_From + ") or " + Account_From + " = 0 or " + Account_From + " = null) "
				+ "and 	( Z_Id_Cpt_To_Val(acct.c_elementvalue_id) <= Z_Id_Cpt_To_Val(" + Account_To+ ") or " + Account_To+ " = 0 or " + Account_To+ " = null) "
				+ "	) "
				+ "	) "
				+ "union all "
				+ "	( "
				+ "select coalesce(coalesce(f.amtacctdr,0) - coalesce(f.amtacctcr,0),0) as amount_, "
				+ "coalesce(f.amtacctcr, 0) as amountCR_, "
				+ "coalesce(f.amtacctdr, 0) as amountDR_, "
				+ "acct.c_elementvalue_id as acct_id_, "
				+ "acct.value as acct_value_, "
				+ "acct.name as acct_name_, "
				+ "acct.AccountType as AccountType_ "
				+ "from fact_acct f "
				+ "inner join c_elementvalue acct on acct.c_elementvalue_id = f.account_id "
				+ "inner join c_period per on per.c_period_id = f.c_period_id and (per.periodtype='S' or ( " /*+ DB.TO_STRING(IncludeAnouveau) + "'N'" + " ='Y' AND */ + "TRUNC(PER.StartDate)= TRUNC(PER.EndDate) AND TRUNC(PER.StartDate) = TRUNC(GETMINDATEPERIODE(PER.C_Period_ID))) OR ( " + DB.TO_STRING(IncludeAdjPeriod) + " ='Y' AND TRUNC(PER.StartDate)= TRUNC(PER.EndDate) AND TRUNC(PER.StartDate) = TRUNC(GETMAXDATEPERIODE(PER.C_Period_ID))))  "
				+ "where "
				+ "( f.ad_client_id = " + AD_Client_ID + " or  " + AD_Client_ID + " = 0 ) "
				+ "and 	f.postingtype = 'A' "
				+ "and 	( f.ad_org_id = " + AD_Org_ID + " or  " + AD_Org_ID + " = 0 ) "
				+ "and 	( Z_Id_Cpt_To_Val(acct.c_elementvalue_id) >= Z_Id_Cpt_To_Val(" + Account_From + ") or " + Account_From + " = 0 or " + Account_From + " = null) "
				+ "and 	( Z_Id_Cpt_To_Val(acct.c_elementvalue_id) <= Z_Id_Cpt_To_Val(" + Account_To+ ") or " + Account_To+ " = 0 or " + Account_To+ " = null) "
				+ "and	f.dateacct >= trunc("+ (DateFrom != null ? DB.TO_DATE(DateFrom, true): "NULL") + ") "
				+ "and 	f.dateacct <= trunc("+ (DateTo != null ? DB.TO_DATE(DateTo, true): "NULL") + ") ";
				
				//Evolution #45989
				if (Created1 != null)
					sql += "and	f.created >= trunc("+ DB.TO_DATE(Created1, true) + ") ";
				if (Created2 != null)
					sql +="and 	f.created <= trunc("+ DB.TO_DATE(Created2, true) + ") ";
			
				sql += ") "
				+ ") "
				+ "group by acct_id_, acct_value_, acct_name_, AccountType_ ) TAB "
				+ "order by TAB.ACCTVALUE ";

		log.info(sql.toString());

		return sql.toString();
	}

}
