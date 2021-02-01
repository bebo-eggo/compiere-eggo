package com.audaxis.compiere.report;

import java.io.File;
import java.io.FileOutputStream;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;

import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.compiere.common.FieldType;
import org.compiere.controller.GridFieldVO;
import org.compiere.db.CConnection;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MLookupInfo;
import org.compiere.model.MPInstance;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.ProcessInfoUtil;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import ru.compiere.report.RusReportStarter;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.jasperreport.FileFormatEnum;
import com.audaxis.compiere.util.CompiereException;
import com.audaxis.compiere.util.FlatFileHelper;
import com.audaxis.compiere.util.ProcessUtils;
import com.audaxis.compiere.xls.util.ResultSetToExcelUtil;
import com.audaxis.compiere.process.ReportBatchModeInterface;

public abstract class ReportToCSVExporter extends RusReportStarter implements ReportBatchModeInterface, ReportServer{
    private static final String JASPER_SUBDIRECTORY = "/jasper/";
	protected Ctx _ctx;
	private ProcessInfo pi;

	protected void prepare(ProcessInfo pi) {
		super.prepare();
	}
	//Evolution #28279   Jasper - Balance Générale version 2
	protected void prepare() {
		super.prepare();
	}

	@Override
	public String doIt() throws Exception {
		_ctx = getCtx();
		startReport(_ctx, getProcessInfo(), false);
		return null;
	}

	public File startReport(Ctx ctx, ProcessInfo pi, boolean IsDirectPrint) {
		ProcessInfoUtil.setParameterFromDB(pi);
		_ctx=ctx;
		prepare(pi);
		this.pi = pi;
    	if (exportType == FileFormatEnum.CSV || exportType == FileFormatEnum.XLS)
			return exportXLSLikeFile(pi);

    	return exportIReportFile(pi);
	}

	private File exportIReportFile(ProcessInfo _pi) 
	{
		int process_id=DB.getSQLValue(get_Trx(), "select ad_process_id from ad_process where value='"+getReportProcessValue()+"'");
		MPInstance pinstance = new MPInstance(_ctx, process_id, 0);
		pinstance.save();
		int i=1;

		if(_pi.getParameter() != null){
			for(ProcessInfoParameter pr : _pi.getParameter()){
				ProcessUtils.setParameterInstance(pinstance.getAD_PInstance_ID(), i*10, pr);
				i++;
			}
		}
		
		ProcessInfo pi=new ProcessInfo("GeneralBalance", process_id);
		pi.setAD_PInstance_ID(pinstance.getAD_PInstance_ID());
		File report = super.startReport(_ctx, pi, false);
		return report;
	}


	private File exportXLSLikeFile(ProcessInfo pi)
	{
		String reportsql = null;
		File retFile = null;
		int process_id=DB.getSQLValue(get_Trx(), "select ad_process_id from ad_process where value='"+getReportProcessValue()+"'");
		MPInstance pinstance = new MPInstance(_ctx, process_id, 0);
		pinstance.save();
		//#61156
		File reportFile = getFile(_ctx,pi);
		String jrxmlReportFile;

		if(reportFile != null){
			try{
				if(reportFile.getAbsolutePath().contains(".jasper"))
					jrxmlReportFile = JasperCompileManager.writeReportToXmlFile(reportFile.getAbsolutePath());
				else
					jrxmlReportFile = reportFile.getAbsolutePath();
				JasperDesign jasperDesign = JRXmlLoader.load(jrxmlReportFile );
				JRParameter[] jasperReportPara = jasperDesign.getParameters();
				reportsql = jasperDesign.getQuery().getText();	
				retFile = buildXLSLikeFile(reportsql, pi, jasperReportPara);	
			}catch(Exception e){
				log.severe(e.getMessage());
			}
		}

		return retFile;
	}


	private File buildXLSLikeFile(String reportsql, ProcessInfo pi, JRParameter[] jasperReportPara)
	{
		if(reportsql==null || reportsql.length()==0)
			return null;
		
		reportsql = setParameters(reportsql, pi, jasperReportPara);//set Parameters to sql report
		reportsql = getSelectSQL()+" FROM ("+reportsql+")";
		
		
		if (exportType == FileFormatEnum.CSV)
			return buildCSVFile(reportsql, pi, jasperReportPara);
		
		return buildXLSFile(reportsql, pi, jasperReportPara);
	}

	private File buildCSVFile(String sql, ProcessInfo pi, JRParameter[] jasperReportPara) {

		String paraText = getParametersAsString(pi);

		File retFile = null;
		/** Write to file **/
		try {
			FlatFileHelper ffh = new FlatFileHelper(getOutputAbsoluteFileName(), null);
			ffh.setDelimiter(";");
			ffh.setTransformerObject(null);
			ffh.setIsFormatData(false);
			ffh.setPreText(paraText);
			retFile = ffh.writeFile(sql, null);
		}
		catch (Exception e)
		{
			log.severe(e.getMessage());
			throw new CompiereException(e);
		}

		return retFile;
	}

	
	
	private File buildXLSFile(String sql, ProcessInfo pi, JRParameter[] jasperReportPara) 
	{
		File retValue = new File(getOutputAbsoluteFileName());
		
		PreparedStatement ps = null;
		ResultSet rs=null;
		try {
			log.config(sql);
			ps = DB.prepareStatement(sql,null);
			rs = ps.executeQuery();
			ResultSetToExcelUtil resultSetToExcel = new ResultSetToExcelUtil(rs, null, getReportProcessValue());
			resultSetToExcel.generate(new FileOutputStream(retValue));

		} catch (Exception e) {
			log.severe(e.getMessage());
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		return retValue;
		
	}

	
	private String setParameters(String sql, ProcessInfo pi, JRParameter[] jasperReportPara) {
		try {
			return ProcessUtils.setParaToSQLReport(sql, pi, jasperReportPara);
		} catch (Exception e) {
			log.severe(e.getMessage());
			return "";
		}
		
	}



	private String getParametersAsString(ProcessInfo pi) {

		ProcessInfoParameter[] para = pi.getParameter();
		String retValue = "";
		Object paramValue;
		String paramName;
		SimpleDateFormat format=new SimpleDateFormat("dd/MM/yyyy");
		Date date;
		GridFieldVO gfvo;

		String sql;
		if (Env.isBaseLanguage(_ctx, "AD_Process_Para"))
			sql = "SELECT p.Name, p.Description, p.Help, "
				+ "p.AD_Reference_ID, p.AD_Process_Para_ID, "
				+ "p.FieldLength, p.IsMandatory IsMandatoryUI, p.IsRange, p.ColumnName, "
				+ "p.DefaultValue, p.DefaultValue2, p.VFormat, p.ValueMin, p.ValueMax, "
				+ "p.SeqNo, p.AD_Reference_Value_ID, p.IsEncrypted, vr.Code AS ValidationCode " //#16546
				+ "FROM AD_Process_Para p"
				+ " LEFT OUTER JOIN AD_Val_Rule vr ON (p.AD_Val_Rule_ID=vr.AD_Val_Rule_ID) "
				+ "WHERE p.AD_Process_ID="+pi.getAD_Process_ID()		//	1
				+ " AND p.IsActive='Y' "
				+ "ORDER BY SeqNo";
		else
			sql = "SELECT t.Name, t.Description, t.Help, "
				+ "p.AD_Reference_ID, p.AD_Process_Para_ID, "
				+ "p.FieldLength, p.IsMandatory IsMandatoryUI, p.IsRange, p.ColumnName, "
				+ "p.DefaultValue, p.DefaultValue2, p.VFormat, p.ValueMin, p.ValueMax, "
				+ "p.SeqNo, p.AD_Reference_Value_ID, p.IsEncrypted, vr.Code AS ValidationCode " //#16546
				+ "FROM AD_Process_Para p"
				+ " INNER JOIN AD_Process_Para_Trl t ON (p.AD_Process_Para_ID=t.AD_Process_Para_ID)"
				+ " LEFT OUTER JOIN AD_Val_Rule vr ON (p.AD_Val_Rule_ID=vr.AD_Val_Rule_ID) "
				+ "WHERE p.AD_Process_ID="+pi.getAD_Process_ID()		//	1
				+ " AND t.AD_Language='" + Env.getAD_Language(_ctx) + "'"
				+ " AND p.IsActive='Y' "
				+ "ORDER BY SeqNo";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MLookup ml = null;

		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			rs = pstmt.executeQuery();

			while (rs.next())
			{
				gfvo = GridFieldVO.createParameter(_ctx, 1, rs);
				if(FieldType.isLookup(gfvo.displayType)){
					ml = new MLookup(_ctx, 1, gfvo.displayType);
					MLookupInfo lookupInfo = MLookupFactory.getLookupInfo(ml, gfvo.AD_Column_ID, Env.getLanguage(_ctx),gfvo.ColumnName, gfvo.AD_Reference_Value_ID, gfvo.IsParent,gfvo.ValidationCode);
					ml.initialize(lookupInfo);
				}
				
				for (ProcessInfoParameter element : para) {
					
					if(gfvo.ColumnName.equals(element.getParameterName())){
						
						paramValue = FieldType.isLookup(gfvo.displayType) ? ml.getDisplay(element.getParameter()) : element.getParameter();
						paramName =  element.getParameterName();
						
						if (paramValue == null)
							retValue += Msg.getElement(_ctx, paramName)+";"+Env.NL;
						else {
							retValue += Msg.getElement(_ctx, paramName)+";";
							if (paramValue instanceof Timestamp)
							{
								date = new Date(((Timestamp)paramValue).getTime());
								retValue += format.format(date)+Env.NL;
							}//	Integer
							else if (paramValue instanceof Integer)
							{
								retValue +=(Integer) paramValue+Env.NL;
							}//	BigDecimal
							else if (paramValue instanceof BigDecimal)
							{
								retValue += (BigDecimal) paramValue+Env.NL;
							}//	Boolean
							else if (paramValue instanceof Boolean)
							{
								retValue +=(Boolean) paramValue ? "Y" : "N"+Env.NL;
							}//	String
							else
							{
								retValue += paramValue + ";"+Env.NL;
							}
						}
					}
				}
			}
		}catch(Exception e){
			log.severe(e.getMessage());
		}finally{
			Util.closeCursor(pstmt, rs);
		}

		retValue+=Env.NL+Env.NL;
		return retValue;
	}
	
	public ProcessInfo getPI(){
		return pi;
	}
	
	//#61156
	public File getFile(Ctx ctx, ProcessInfo pi) {
		reportDirectories = System.getProperty("ru.compiere.report.path");

        jasperHost = System.getProperty("jasper.host");
        jasperPort = System.getProperty("jasper.port");
        localDirectory = System.getProperty("jasper.local");
        
        log.info("ru.compiere.report.path="+reportDirectories);
        log.info("jasper.host="+jasperHost);
        log.info("jasper.port="+jasperPort);
        log.info("jasper.local="+localDirectory);

        if ((localDirectory == null) || (localDirectory.trim().length() == 0))
        {
            localDirectory = "./";
        }
        
        if (reportDirectories == null || "".equalsIgnoreCase(reportDirectories.trim())) {
	        if (jasperHost == null || "".equalsIgnoreCase(jasperHost.trim())) {
	        	CConnection cc = CConnection.get();
	        	jasperHost = cc.getAppsHost();
	        	jasperPort = Integer.toString(cc.getAppsPort() - 19); // 2099 - 19 = 2080
	        	jasperPort="8080";
	        	GetMethod method = null;
	        	String url = "http://"+jasperHost+":"+jasperPort+JASPER_SUBDIRECTORY;
	        	log.info("URL : "+url);
	        	try {
	        		HttpClientParams params = new HttpClientParams();
	        		params.setLongParameter(HttpClientParams.CONNECTION_MANAGER_TIMEOUT, (long)5000); // 5 seconds
	        		HttpClient client = new HttpClient(params);
	        	    method = new GetMethod(url);
	        	    int statusCode = client.executeMethod(method);
	        	    if (statusCode != HttpStatus.SC_OK && statusCode != HttpStatus.SC_NOT_FOUND) {
	        	    	log.warning("Http Status = "+statusCode +" : can not get jasper by http.  Url = "+url);
	        	    	jasperHost = null;
	        	    	jasperPort = null;
	        	    }
	        	} catch (Throwable t) {
	        		log.warning("JasperReports - Can not connect to "+url);
	        		log.log(Level.INFO, "E", t);
	        		jasperHost = null;
      	    	  	jasperPort = null;
	        	} finally {
	        		if (method != null)
	        			method.releaseConnection();
	        	}
	        	
	        }
	        if (jasperHost == null) {
	        	reportDirectories = "./jboss/server/compiere/deploy/audaxis.ear/jasper.war,./data/jasper,../compiere-tools,../jboss/server/compiere/deploy/audaxis.ear/jasper.war,../server/compiere/deploy/audaxis.ear/jasper.war";
	        }
        }
    	
       // Locale avant = Locale.getDefault();
        // ceci pour avoir des milliers : 1.000,99 et des dates dd/mm/yy
//14675        Locale.setDefault(Locale.UK);
        //Locale.setDefault(new Locale(getCtx().getContext("#AD_Language").substring(0, 2), getCtx().getContext("#AD_Language").substring(3)));//14675

       
        	
            String Name = pi.getTitle();
            int AD_PInstance_ID = pi.getAD_PInstance_ID();
            int Record_ID = pi.getRecord_ID();

            log.info("Name=" + Name +
                "  AD_PInstance_ID=" + AD_PInstance_ID + " Record_ID=" +
                Record_ID);

            // 1. Get Compiere information about the current AD_Process
            CompiereReportData reportData = getCompiereReportData(AD_PInstance_ID);

            if (reportData == null)
            {
                reportResult(AD_PInstance_ID, "Can not find report data");

                throw new CompiereException("Can not find report data");
            }

            //if (Record_ID != -1) {
            // 2. Get the JasperReport file
            File reportFile = constructReportFile(reportData.getReportFilePath(), AD_PInstance_ID);

            if (reportFile == null)
            {
                String tmp = "Can not find report file : " + reportFile.getAbsolutePath();
                log.severe(tmp);
                reportResult(AD_PInstance_ID, tmp);

                throw new CompiereException(tmp);
            }

            if (!reportFile.exists())
            {
                String tmp = "Can not find report file : " + reportFile.getAbsolutePath();
                log.severe(tmp);
                reportResult(AD_PInstance_ID, tmp);

                throw new CompiereException(tmp);
            }
            return reportFile;
          }

    public String getOutputFileNameSimple() {
    	if (exportType == FileFormatEnum.XLS)
    		return getReportProcessValue() + ".xls";
    	else if (exportType == FileFormatEnum.CSV)
    		return getReportProcessValue() + ".csv";
    	else
    		return super.getOutputFileNameSimple();
    }

	
	protected abstract String getSelectSQL();
	protected abstract String getReportProcessValue();//value of process report


}
