package com.audaxis.compiere.process;

import java.lang.reflect.Constructor;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.model.MDocBaseType;
import org.compiere.model.MTable;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class DocumentStatusCorrection extends SvrProcessExtended {

	private int p_clientId = 0;
	private int p_orgId = 0;
	private int p_typeDoc = 0;
	private Timestamp p_dateFrom = null;
	private Timestamp p_dateTo = null;
	private String p_docNoFrom = null;
	private String p_docNoTo = null;
	private String p_reportOnly = "";
	private String p_docActionOrig = "";
	private String p_docAction = null;
	
	//74610
	private int p_bpartnerID = 0;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (name.equals("AD_Client_ID"))
				p_clientId = para[i].getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_orgId = para[i].getParameterAsInt();
			else if (name.equals("AD_Table_ID"))
				p_typeDoc = para[i].getParameterAsInt();
			else if (name.equals("Created")) {
				p_dateFrom = (Timestamp) para[i].getParameter();
				p_dateTo = (Timestamp) para[i].getParameter_To();
			}

			else if  (name.equals("DocumentNo")) {
				p_docNoFrom = (String) para[i].getParameter();
				p_docNoTo = (String) para[i].getParameter_To();
			}
			else if  (name.equals("ReportOnly"))
				p_reportOnly = (String) para[i].getParameter();
			else if  (name.equals("DocActionOrig"))
				p_docActionOrig = (String) para[i].getParameter();
			else if  (name.equals("DocAction"))
				p_docAction = (String) para[i].getParameter();
			if (name.equals("C_BPartner_ID"))
				p_bpartnerID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}	

	}

	@Override
	protected String doIt() throws Exception {

		String sql1 = "Delete from Z_DocCorrection ";
		int no1 = DB.executeUpdate(get_Trx(), sql1);
		int nbr=0;
		log.fine("save [" + get_Trx() + "] #" + no1 + " - Delete from Z_DocCorrection - getAD_PInstance_ID = " + getAD_PInstance_ID());
		commit();

		loadDatas();

		StringBuffer sql = new StringBuffer("select Record_ID from Z_DocCorrection where AD_PInstance_ID = ? ");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1,getAD_PInstance_ID());
			rs = pstmt.executeQuery();
			Class<?> className = null;
			while (rs.next())
			{ 				
				if("N".equals(p_reportOnly)) {
					try{
						if(p_docAction == null)
							log.severe("Action cible non valide");

						else{							
							className = MTable.getClass(tableIdToTablename(p_typeDoc));
							Constructor con = className.getConstructor(new Class[]{Ctx.class,int.class,Trx.class});
							DocAction classInstance = null;
							try
							{
								classInstance = (DocAction) con.newInstance(getCtx(),rs.getInt(1),get_Trx());
							}
							catch (ClassCastException cce)
							{
								throw new CompiereException("Type Document non supporté");
							}

							DocumentEngine.processIt(classInstance, p_docAction);
							if (! classInstance.save())
								throw new CompiereStateException("Erreur Enregistrement");	
							else {
								nbr++;
							}
						}

					}catch (Exception ex) {
						log.saveError("erreur traitement sur : "+rs.getString(1)+"-", ex);
					}
				} 

			}

		}
		catch (Exception e)
		{  
			log.log(Level.SEVERE, sql.toString(), e);
			throw new DBException(e);

		}
		finally
		{
			Util.closeCursor(pstmt, rs);						
		}

		return "nombre de documents corrigés :"+nbr;
	}

	private String tableIdToColumnkey (int p_adTable_id) {
		String columName="";
		columName = DB.getSQLValueString(get_Trx(), "select columnname from ad_column where ad_table_id= ? and iskey = 'Y' ", p_adTable_id);
		return (columName);
	}
	private String tableIdToTablename (int p_adTable_id) {
		String tableName="";
		tableName = DB.getSQLValueString(get_Trx(), "select tablename from ad_table where ad_table_id= ? ", p_adTable_id);
		return (tableName);
	}

	private void loadDatas() {

		boolean isAllocation = "C_AllocationHdr".equalsIgnoreCase(tableIdToTablename(p_typeDoc));
		boolean isInvoice = "C_Invoice".equalsIgnoreCase(tableIdToTablename(p_typeDoc));

		boolean isBankStatement = "C_BankStatement".equalsIgnoreCase(tableIdToTablename(p_typeDoc));//#40732

		StringBuffer sql= new StringBuffer("INSERT INTO Z_DocCorrection (AD_Client_ID, AD_Org_ID, AD_Table_ID, Record_ID, Created, DocAction, DocActionOrig, DocStatus, DocumentNo, ReportOnly, AD_PInstance_ID, DocOrg_ID,C_BPartner_ID ) ");
		sql.append("SELECT doc.AD_Client_ID ,");
		//#40732 Processus de traitement des documents : améliorations
		if (p_orgId !=0 )		
			sql.append("doc.AD_Org_ID ,");
		else 		
			sql.append("0 ,");	
		//#40732		
		sql.append("?,")
		.append(tableIdToColumnkey(p_typeDoc)).append(",")			
		.append("  doc.created, ?, ?, doc.docstatus, ");
		//#40732
		if (isBankStatement)
			sql.append("doc.name, ?, ? ");
		else 
			sql.append("doc.documentno, ?, ?");
		//#40732
		sql.append	(", doc.ad_org_id,  " ); //#40732
		//74610 
		if(p_bpartnerID!=0)
			sql.append("?");
		else
			sql.append("null");
		sql.append(" FROM ").append(tableIdToTablename(p_typeDoc)).append(" doc ");

		if (isAllocation)
		{
			// No DocType
			sql.append(" INNER JOIN c_periodcontrol cp ON   (cp.docbasetype= ?)")
			.append(" INNER    JOIN C_Period p         ON   (p.c_period_id = cp.c_period_id)");
		}
		else
		{
			sql.append(" INNER JOIN  c_doctype dt  ON   (dt.c_doctype_id=doc.c_doctype_id)")
			.append(" INNER JOIN c_periodcontrol cp ON   (cp.docbasetype= dt.docbasetype)")
			.append(" INNER    JOIN C_Period p         ON   (p.c_period_id = cp.c_period_id)");
		}

		sql.append (" WHERE doc.docstatus = ? ");
		//
		if (isBankStatement)
		{
			sql.append("AND      TRUNC(doc.STATEMENTDATE) BETWEEN  TRUNC(p.StartDate) AND  TRUNC(p.EndDate) ");	
		}
		else 
		{	
			sql.append(" AND      TRUNC(doc.dateacct) BETWEEN  TRUNC(p.StartDate) AND  TRUNC(p.EndDate) ");
		} //
		
		if (isAllocation || isInvoice)
			sql.append(" AND      cp.periodstatus = 'O'");
		sql.append(" AND doc.AD_Client_ID = ? ");	
		
		//Anomalie #55245
		sql.append(" AND p.AD_Client_ID = doc.AD_Client_ID AND p.AD_Org_ID IN (0, doc.AD_Org_ID)");

		if(p_dateFrom != null) {	
			sql.append(" AND TRUNC(doc.created) >= TRUNC(?) "); }
		if(p_dateTo != null) {
			sql.append(" AND TRUNC(doc.created) <= TRUNC(?) ");	
		}

		if(p_docNoFrom != null)
		{	
			//#40732
			if (isBankStatement)
				sql.append(" AND doc.name >= ? ");
			else
				sql.append(" AND doc.documentno >= ? ");
		} //#40732
		if(p_docNoTo != null)
		{
			//#40732
			if (isBankStatement)
				sql.append(" AND doc.name <= ? ");
			else
				sql.append(" AND doc.documentno <= ? ");
		}//#40732
		if(p_orgId!=0)
			sql.append("AND doc.ad_org_id = ? ");
		//74610 
		if(p_bpartnerID!=0)
			sql.append("AND doc.C_BPartner_ID = ? ");

		ArrayList<Object> params = new ArrayList<Object>();
		params.add(p_typeDoc);

		params.add(p_docAction);
		params.add(p_docActionOrig);

		params.add(p_reportOnly);
		params.add(getAD_PInstance_ID());
		if(p_bpartnerID!=0)
			params.add(p_bpartnerID);
		if (isAllocation)
			params.add(MDocBaseType.DOCBASETYPE_PaymentAllocation);
		params.add(p_docActionOrig);
		params.add(p_clientId);
		if(p_dateFrom != null)
			params.add(p_dateFrom);
		if(p_dateTo != null)
			params.add(p_dateTo);
		if(p_docNoFrom != null)
			params.add(p_docNoFrom);
		if(p_docNoTo != null)
			params.add(p_docNoTo);
		if(p_orgId!=0)
			params.add(p_orgId);
		//74610 
		if(p_bpartnerID!=0)
			params.add(p_bpartnerID);

		int no = DB.executeUpdate(get_Trx(), sql.toString(), params.toArray());
		if (no < 0)
			throw new CompiereException("Error creating datas");
	}
}
