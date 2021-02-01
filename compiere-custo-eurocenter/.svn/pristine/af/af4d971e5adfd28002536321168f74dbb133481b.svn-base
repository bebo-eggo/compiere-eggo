/*    Evolution #37298      */
package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.Compiere;
import org.compiere.common.CompiereStateException;
import org.compiere.model.InvoiceTaxPrecisionHelper;
import org.compiere.model.MChangeLog;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MSession;
import org.compiere.model.MTable;
import org.compiere.model.MTax;
import org.compiere.model.X_AD_ChangeLog;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.DBUtils;
import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MInvoice;
import com.audaxis.compiere.util.CompiereException;

import ru.compiere.report.RusReportStarter;


public  class InvoiceLineTaxCorrection  extends  SvrProcess{

	private int p_AD_Client_ID = 0;
	private int p_AD_Org_ID = 0;
	private int p_C_Invoice_ID = 0;
	private int p_C_InvoiceLine_ID =0;
	private int p_C_Charge_ID =0;
	private int p_M_Product_ID =0;
	private String  p_ReportOnly ="";
	private int p_C_Tax_ID = 0;
	private int p_C_DocType_ID = 0;
	private boolean p_IsSoTrx=false;
	
	

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (name == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = para[i].getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID =  para[i].getParameterAsInt();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID =  para[i].getParameterAsInt();
			else if (name.equals("C_InvoiceLine_ID"))
				p_C_InvoiceLine_ID =  para[i].getParameterAsInt();
			else if (name.equals("C_Charge_ID"))
				p_C_Charge_ID =  para[i].getParameterAsInt();
			else if (name.equals("M_Product_ID"))
				p_M_Product_ID =  para[i].getParameterAsInt();
			else if (name.equals("ReportOnly"))
				p_ReportOnly = (String)para[i].getParameter();
			else if (name.equals("C_Tax_ID"))
				p_C_Tax_ID =  para[i].getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID =  para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare




	@Override
	public String  doIt() {

		String retValue = "ok";
		
		// Delete entries from same AD_PInstance in temp Table
		String sql1="Delete from T_InvLineTvaCor WHERE AD_PInstance_ID=?";
		int no1 = DB.executeUpdate(get_Trx(), sql1, getAD_PInstance_ID());
		commit(); // this can be commited
		
		// Load into temporary table
		loadDatas();
		
		checkRates();
		
		if (p_ReportOnly.equalsIgnoreCase("N")) 
		{  
			// Update new C_Tax_ID
			String sql2 = "UPDATE C_InvoiceLine SET C_Tax_ID=?, Updated=SYSDATE, UpdatedBy=? WHERE C_InvoiceLine_ID IN (SELECT C_InvoiceLine_ID FROM T_InvLineTvaCor WHERE AD_PInstance_ID=?)";
			Object [] params2 = {p_C_Tax_ID, getAD_User_ID(), getAD_PInstance_ID()};
			int no2 = DB.executeUpdate(get_Trx(), sql2, params2);
			if (no2 < 0)
				throw new CompiereException("Error updating InvoiceLine");
			changeLog();

			// Delete OLD C_InvoiceTax
			String sql3 = "DELETE FROM C_InvoiceTax WHERE C_Invoice_ID IN (SELECT DISTINCT C_Invoice_ID FROM T_InvLineTvaCor WHERE AD_PInstance_ID=?)";
			int no3 = DB.executeUpdate(get_Trx(), sql3, getAD_PInstance_ID());
			if (no3 < 0)
				throw new CompiereException("Error deleting InvoiceTax");
			//To comment
			//commit();
			// Create new C_Tax
			createNewCTax();
			
			// Upost Invoices
			String sql4 = "UPDATE C_Invoice SET Posted='N', Updated=SYSDATE, UpdatedBy=? WHERE C_Invoice_ID IN (SELECT DISTINCT C_Invoice_ID FROM T_InvLineTvaCor WHERE AD_PInstance_ID=?)";
			Object [] params4 = {getAD_User_ID(), getAD_PInstance_ID()};
			int no4 = DB.executeUpdate(get_Trx(), sql4, params4);
			if (no4 < 0)
				throw new CompiereException("Error updating Invoice");

			// Delete false FACT_ACCT
			String sql5 = "DELETE FROM FACT_ACCT WHERE AD_Table_ID=(SELECT AD_Table_ID FROM AD_Table WHERE TableName = 'C_Invoice') AND Record_ID IN (SELECT DISTINCT C_Invoice_ID FROM T_InvLineTvaCor WHERE AD_PInstance_ID=?)";
			int no5 = DB.executeUpdate(get_Trx(), sql5, getAD_PInstance_ID());
			if (no5 < 0)
				throw new CompiereException("Error deleting FACT_ACCT");
			retValue = "Process Completed - " + no4 +" invoices updated / "+no2+" invoiceline updated"; 
		}		

		return retValue;
	}

	private void loadDatas()
	{
		StringBuffer sql= new StringBuffer("INSERT INTO T_InvLineTvaCor (AD_Client_ID, AD_Org_ID, AD_Org_ID1, C_Invoice_ID, C_InvoiceLine_ID, C_Tax_ID, C_Tax_ID1, C_DocType_ID, C_DocType_ID1, C_Charge_ID, C_Charge_ID1, M_Product_ID, M_Product1, ReportOnly, AD_PInstance_ID) ")
		.append("SELECT DISTINCT il.AD_Client_ID, ?,il.AD_Org_ID ,il.C_Invoice_Id,il.C_InvoiceLine_ID, ?, il.C_Tax_ID, ?, i.C_DocType_ID , ?, il.C_Charge_ID , ?, il.M_Product_ID, ?, ?")
		.append(" FROM     C_InvoiceLine il ")
		.append(" INNER    JOIN C_Invoice i        ON   (il.c_invoice_id= i.c_invoice_id)")
		.append(" INNER    JOIN c_doctype cd       ON   (cd.c_doctype_id=i.c_doctype_id)")
		.append(" INNER    JOIN c_periodcontrol cp ON   (cp.docbasetype= cd.docbasetype)")
		.append(" INNER    JOIN C_Period p         ON   (p.c_period_id = cp.c_period_id)")
		.append(" WHERE    i.docstatus='CO'")
		.append(" AND      TRUNC(i.dateacct) BETWEEN  TRUNC(p.StartDate) AND  TRUNC(p.EndDate) ")
		.append(" AND      cp.periodstatus = 'O'")
		.append(" AND      i.c_invoice_id  NOT IN (SELECT c_invoice_id FROM z_tvaaencaissline)")
		.append(" AND      il.AD_Client_ID = ?");

		if (p_AD_Org_ID != 0)
			sql.append(" AND il.AD_Org_ID = ?");
		if (p_C_Invoice_ID != 0)
			sql.append(" AND il.C_Invoice_ID = ?");
		if (p_C_InvoiceLine_ID != 0)
			sql.append(" AND il.C_InvoiceLine_ID = ?");
		if (p_C_Charge_ID != 0)
			sql.append(" AND il.C_Charge_ID = ?");
		if (p_M_Product_ID != 0)
			sql.append(" AND il.M_Product_ID = ?");  
		sql.append(" ORDER BY il.C_Invoice_Id,il.C_InvoiceLine_ID ");

		List<Object> params = new ArrayList<Object>();
		params.add(p_AD_Org_ID);
		params.add(p_C_Tax_ID);
		params.add(p_C_DocType_ID);
		params.add(p_C_Charge_ID);
		params.add(p_M_Product_ID);
		params.add(p_ReportOnly);
		params.add(getAD_PInstance_ID());
		params.add(p_AD_Client_ID);
		if (p_AD_Org_ID != 0)
			params.add(p_AD_Org_ID);
		if (p_C_Invoice_ID != 0)
			params.add(p_C_Invoice_ID);
		if (p_C_InvoiceLine_ID != 0)
			params.add(p_C_InvoiceLine_ID);
		if (p_C_Charge_ID != 0)
			params.add(p_C_Charge_ID);
		if (p_M_Product_ID != 0)
			params.add(p_M_Product_ID);

		int no = DB.executeUpdate(get_Trx(), sql.toString(), params.toArray());
		if (no < 0)
			throw new CompiereException("Error creating datas");

	}

	private void checkRates()
	{
		//commit();
		//Correction pour les inconsitences !
		String sql = "SELECT COUNT(*) FROM T_InvLineTvaCor iltc INNER JOIN C_Tax t ON (t.C_Tax_ID=iltc.C_Tax_ID1) WHERE AD_PInstance_ID=? AND t.rate <> ?";
		MTax newTax = MTax.get(getCtx(), p_C_Tax_ID);
		Object [] params = {getAD_PInstance_ID(), newTax.getRate()};
		int no = DB.getSQLValue(get_Trx(),sql,params);
		if (no > 0)
			throw new CompiereException("Inconsistent Rate (new rate is " + newTax.getRate()+")");
		
	}
	
	private void createNewCTax()
	{
		String sql = "SELECT * FROM C_InvoiceLine il WHERE il.C_InvoiceLIne_ID IN (SELECT MIN(C_InvoiceLine_ID) from C_InvoiceLine WHERE C_Invoice_ID IN (SELECT DISTINCT C_Invoice_ID FROM T_InvLineTvaCor WHERE AD_PInstance_ID=?) GROUP BY C_Tax_ID)";
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try 
		{
			ps = DB.prepareStatement(sql, get_Trx());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();

			while (rs.next())
			{
				MInvoiceLine il = new MInvoiceLine(getCtx(), rs, get_Trx());

				MTax tax = MTax.get(getCtx(), il.getC_Tax_ID());
				
				boolean hasChild = tax.isSummary();
				MTax[] cTaxes = null;
				if (hasChild)
					cTaxes = tax.getChildTaxes(false);	//	Multiple taxes
				//	Recalculate Tax for this Tax
				MInvoiceTax it = new MInvoiceTax(getCtx(), 0, get_Trx());
				it.set_Trx(get_Trx());
				it.setClientOrg(il.getAD_Client_ID(), il.getAD_Org_ID());
				it.setC_Invoice_ID(il.getC_Invoice_ID());
				//Change this	it.setC_Tax_ID(tax.getC_Tax_ID());
				it.setC_Tax_ID(il.getC_Tax_ID());
				it = InvoiceTaxPrecisionHelper.setPrecision(it, il.getPrecision());			// Method setPecision is protected greeuuuhhh 
				it.setIsTaxIncluded(il.isTaxIncluded());
				if (!it.calculateTaxFromLines())
					throw new CompiereException("Tax not updated");

				if (!hasChild)
				{
					if (!it.save(get_Trx()))
						throw new CompiereException("Tax not updated");
				}
				else
				{
					for (MTax cTax : cTaxes)
					{
						BigDecimal taxAmt = cTax.calculateTax(it.getTaxBaseAmt(), il.isTaxIncluded(), il.getPrecision());
						//
						MInvoiceTax newITax = new MInvoiceTax(getCtx(), 0, get_Trx());
						newITax.setClientOrg(il.getAD_Client_ID(), il.getAD_Org_ID());
						newITax.setC_Invoice_ID(il.getC_Invoice_ID());
						newITax.setC_Tax_ID(cTax.getC_Tax_ID());
						newITax = InvoiceTaxPrecisionHelper.setPrecision(newITax, il.getPrecision());			// Method setPecision is protected greeuuuhhh 
						newITax.setIsTaxIncluded(il.isTaxIncluded());
						newITax.setTaxBaseAmt(it.getTaxBaseAmt());
						newITax.setTaxAmt(taxAmt);
						if (!newITax.save(get_Trx()))
							throw new CompiereException("Tax not updated");
					}
				}
			}
		}
		catch (SQLException se)
		{
			throw new CompiereException(se.getMessage());
		}
		finally
		{
			Util.closeCursor(ps, rs);
		}

	}
	
	private void changeLog()
	{
		//	Change Log
		MSession session = MSession.get (getCtx());
		if (session == null)
			return;

		int AD_Table_ID = DB.getSQLValue(get_Trx(), "SELECT AD_Table_ID FROM AD_Table WHERE TableName='C_InvoiceLine'");
		if (! session.isLogged(AD_Table_ID,	MTable.getTableName(getCtx(), AD_Table_ID), X_AD_ChangeLog.CHANGELOGTYPE_Update))
			return;

		int AD_Column_ID = DB.getSQLValue(get_Trx(), "SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='C_Tax_ID' AND AD_Table_ID=?", AD_Table_ID);

		String sqlCl = "INSERT INTO AD_ChangeLog (" +
				" AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, AD_ChangeLog_ID, TrxName, AD_Session_ID, AD_Table_ID, AD_Column_ID, Record_ID, OldValue, NewValue, Description, Type) " +
				" SELECT AD_Client_ID, AD_Org_ID, 'Y', ? , SYSDATE, ? ,SYSDATE, AD_Sequence_NextNo('AD_ChangeLog'), ?, ?, C_InvoiceLine_ID, C_Tax_ID, ?, 'InvoiceLineTaxcorrection', 'U' FROM T_InvLineTvaCor WHERE AD_PInstance_ID=? ";
		List<Object> params = new ArrayList<Object>();
		params.add(getAD_User_ID());
		params.add(getAD_User_ID());
		params.add(get_Trx().getTrxName());
		params.add(session.getAD_Session_ID());
		params.add(AD_Table_ID);
		params.add(AD_Column_ID);
		params.add(p_C_Tax_ID);
		
		DB.executeUpdate(get_Trx(), sqlCl, params.toArray()); // DO NOT CARE ABOUT ERROR#39019
	}
	
	private BigDecimal getWoDiscount(MInvoiceLine il, BigDecimal lineNetAmt) {
		String isDiscountable = null;
		BigDecimal discount =DB.getSQLValueBD(get_Trx(), "select pt.discount from c_paymentterm pt where pt.c_paymentterm_id = (select bp.PO_Paymentterm_Id from c_bpartner bp where bp.c_bpartner_id =( select c_bpartner_id from c_invoice where c_invoice_id=?))",il.getC_Invoice_ID());
		BigDecimal lna = BigDecimal.ZERO;
		BigDecimal esc = BigDecimal.ZERO;
		isDiscountable = DB.getSQLValueString(get_Trx(), "select IsDiscountable from c_bpartner where C_BPartner_ID in ( select c_bpartner_id from c_invoice where c_invoice_id=?)",il.getC_Invoice_ID());
		if (discount!=null && "Y".equalsIgnoreCase(isDiscountable)  ){
			esc = discount.multiply(lineNetAmt).setScale(2, BigDecimal.ROUND_HALF_UP);
			lna = lineNetAmt.subtract(esc);
		}
		else lna = lineNetAmt;
		return lna;
	}
		
}