package com.audaxis.compiere.eurocenter.acct.process;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

import org.compiere.model.MProcess;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.eurocenter.acct.datasource.interfaces.AcctDatasource;
import com.audaxis.compiere.eurocenter.acct.exporter.JRAcctExporter;
import com.audaxis.compiere.eurocenter.acct.exporter.XLSAcctExporter;
import com.audaxis.compiere.eurocenter.acct.exporter.interfaces.AcctExporter;
import com.audaxis.compiere.eurocenter.acct.util.ExportHelper;
import com.audaxis.compiere.util.CompiereException;

public class AcctExport extends ReportServerOutputImpl implements ReportBatchModeInterface, ReportServer 
{

	protected Map<String, Object> params;
	protected String fileFormat = null;
	protected String id_process = null;
	
	@Override
	protected void prepare() 
	{
		params = new HashMap<String, Object>();
		ProcessInfoParameter [] pips = getParameter();
		for (ProcessInfoParameter pip : pips)
		{
			params.put(pip.getParameterName(), pip.getParameter());
			if (pip.getParameter_To() != null)
				params.put(pip.getParameterName()+"_To", pip.getParameter_To());
		}
		
		if (params.get("AD_Client_ID") == null)
			params.put("AD_Client_ID", getCtx().getAD_Client_ID());
		if (params.get("AD_Org_ID") == null)
			params.put("AD_Org_ID", getCtx().getAD_Org_ID());
		
		try {params.put("URL", ExportHelper.getBaseURL().toString());} catch (Throwable t) {}
		
		
		if ("xls".equalsIgnoreCase(getParameterAsString("FileFormat")) || "xlsx".equalsIgnoreCase(getParameterAsString("FileFormat")))
			fileFormat = "xlsx";
		else
			fileFormat = "pdf";
			
		MProcess process = MProcess.get(getCtx(), getProcessInfo().getAD_Process_ID());
		id_process = process.get_ValueAsString("JasperReport");
	}

	@Override
	public void buildOutputFile() 
	{
		AcctDatasource ds = getDatasource();
		AcctExporter exporter = getExporter();
		try 
		{
			exporter.buildOutputFile(ds, getTemplate(), getOutputAbsoluteFileName(), params);
		}
		catch (Exception e)
		{
			log.severe(e.getMessage());
			throw new CompiereException("Export failed !", e);
		}
	}

	@Override
	protected String getOutputFileNameSimple() {
		return id_process +"."+fileFormat;
	}
	
	protected File getTemplate() throws IOException
	{
		return ExportHelper.getTemplateFile("acct/"+id_process + "_Template." + (("xlsx".equalsIgnoreCase(fileFormat)) ? "xlsx" : "jasper")); 
	}

	protected AcctExporter getExporter() {
		if ("xlsx".equalsIgnoreCase(fileFormat))
			return new XLSAcctExporter();
		else
			return new JRAcctExporter(fileFormat);
	}

	protected AcctDatasource getDatasource()
	{
		AcctDatasource retValue = null;
		try {
			Class<?> cl = Class.forName("com.audaxis.compiere.eurocenter.acct.datasource."+id_process+"Datasource");
			Constructor<?> cons = cl.getConstructor(Ctx.class, Trx.class , Map.class);
			retValue = (AcctDatasource) cons.newInstance(getCtx(), get_Trx(), params);
		} catch (Exception e) {
			throw new CompiereException("Datasource not found (template="+id_process+")", e);
		}
		return retValue;
	}

}
