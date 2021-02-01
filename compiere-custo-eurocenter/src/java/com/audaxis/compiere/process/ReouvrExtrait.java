package com.audaxis.compiere.process;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.*;


import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.*;

/**
 * Redmine 18999, développement récupéré de chez EuroM
 * 
 * @author bbo
 *
 */
public class ReouvrExtrait extends SvrProcess
{
	private int		p_BankAcctID = 0;
	private String		p_Name = null;
	private Timestamp	p_StatementDate = null;

	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_BankAccount_ID"))
				p_BankAcctID = para[i].getParameterAsInt();
			else if (name.equals("Name"))
				p_Name = (String)para[i].getParameter();
			else if (name.equals("StatementDate"))
				p_StatementDate = (Timestamp)para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	protected String doIt() throws Exception
	{
		int		ex = 0;
		int		ln = 0;
		int bkstID = 0;
		String sql = null;
		if (p_Name != null && p_BankAcctID == 0 && p_StatementDate ==null)
			throw new CompiereUserException("@FillMandatory@");
		
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(p_BankAcctID);
		params.add(p_Name);
		params.add(p_StatementDate);
		
		sql = "SELECT  C_BankStatement_ID FROM  C_BankStatement WHERE C_BankAccount_ID = ? AND name= ? AND statementdate =?";
		bkstID = DB.getSQLValue(get_Trx(), sql, params);
		
		if (bkstID < 1)	
			return "Sélection erronée.";
		
		//ZCOM Vérification sur la société en plus
		String PeriodStatus = DB.getSQLValueString(get_Trx(), "SELECT pc.periodstatus FROM C_PeriodControl pc WHERE pc.docbasetype = 'CMB' AND "+DB.TO_DATE(p_StatementDate)
				+" >= (SELECT p.startdate FROM c_period p WHERE pc.C_period_ID = p.C_period_ID )"
				+" AND "+DB.TO_DATE(p_StatementDate)+" <= (SELECT p.enddate FROM c_period p WHERE pc.C_period_ID = p.C_period_ID ) and 0=? and pc.AD_CLIENT_ID = "+getAD_Client_ID(),0);
		if (!PeriodStatus.equals("O"))
			return "Période Cloturée.";

		ex = DB.executeUpdate(get_Trx(), "UPDATE C_BankStatement SET docstatus='IP', posted='N',  docaction='CO', processed='N', updated=sysdate, updatedby=100 WHERE  C_BankStatement_ID= ? AND docstatus IN ('CO', 'CL')", bkstID);

		ln = DB.executeUpdate(get_Trx(), "UPDATE C_BankStatementLine SET processed='N' where  C_BankStatement_ID = ? ", bkstID);

		//Evolution #38564 (Entity Type : 15N4)	Réouverture d'un extrait bancaire ne supprime pas les fact_acct associés
		if(ex > 0)
		{
		StringBuffer del= new StringBuffer(" delete from fact_acct where ad_table_id = ( select ad_table_id from ad_table where tablename = 'C_BankStatement') and record_id = ? ");
		DB.executeUpdate(get_Trx(), del.toString(), bkstID);	
		}
		return "Extrait mise à jour : " + ex + " Nombre de Lignes : " + ln;
	}

}	
