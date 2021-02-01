/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
/*
 * Class ReportStarter.
 */
package ru.compiere.report;

import java.awt.print.PrinterJob;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.PropertyResourceBundle;
import java.util.StringTokenizer;
import java.util.logging.Level;

import javax.print.attribute.HashPrintRequestAttributeSet;
import javax.print.attribute.PrintRequestAttributeSet;
import javax.print.attribute.standard.Sides;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JRPrintPage;
import net.sf.jasperreports.engine.JRQuery;
import net.sf.jasperreports.engine.JRQueryChunk;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRCsvExporter;
import net.sf.jasperreports.engine.export.JRCsvExporterParameter;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.export.JRPdfExporterParameter;
import net.sf.jasperreports.engine.fill.JRFileVirtualizer;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.util.JRProperties;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.params.HttpClientParams;
import org.apache.commons.io.FileUtils;
import org.compiere.db.CConnection;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MUser;
import org.compiere.model.MUserPreference;
import org.compiere.print.CPrinter;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ProcessReportEngineParams;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.GwtMode;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.BatchMode;
import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.jasperreport.FileFormatEnum;
import com.audaxis.compiere.jasperreport.XlsExporter;
import com.audaxis.compiere.model.MPrintFormatProxy;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;
import com.audaxis.compiere.util.CompiereException;
import com.audaxis.compiere.util.JRPropertiesDecoder;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfWriter;


public class RusReportStarter 
extends ReportServerOutputImpl
implements ReportBatchModeInterface, ReportServer 
{
	private static final boolean DEBUG = false;
	
    private static final String JASPER_SUBDIRECTORY = "/jasper/";
    
    protected String reportDirectories = null;
    protected String jasperHost = null;
    protected String jasperPort = null;
    protected String localDirectory = null;
    
    protected FileFormatEnum exportType = FileFormatEnum.PDF;
    
    /**
     * The URL to the current file (file or http)
     */
    protected String urlString;
    protected CLogger log = CLogger.getCLogger(getClass());

    public String getOutputFileNameSimple() {

		String format;
		switch (exportType) {
			case PDF:  format = ".pdf" ; break;
			case XLS:  format = ".xls" ; break;
			case HTML: format = ".html"; break;
			case XML:  format = ".xml" ; break;
			case CSV:  format = ".csv" ; break;
			default:   format = ".pdf" ; break;
		}
		
		return "JasperReport" + format;
    }
    
	@Override
	protected void prepare() {
	}
	
	@Override
    public void buildOutputFile() {
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
	        	// EuroCenter travaille en 8080
	        	jasperPort = "8080";
	        	// EuroCenter travaille en 8080
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
    	
        Locale avant = Locale.getDefault();
        // ceci pour avoir des milliers : 1.000,99 et des dates dd/mm/yy
//14675        Locale.setDefault(Locale.UK);
        Locale.setDefault(new Locale(getCtx().getContext("#AD_Language").substring(0, 2), getCtx().getContext("#AD_Language").substring(3)));//14675

        try
        {
        	ProcessInfo pi = getProcessInfo();
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
            	String tmp = "Can not find report file ! "; // !!! NULL POINTER EXCEPTION !!! => String tmp = "Can not find report file : " + reportFile.getAbsolutePath();
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

            // 3. Load the .jasper File into an Object
            JasperData data = loadJasperReportFile(reportFile);

            if ((data == null) || (data.getJasperReport() == null))
            {
                String tmp = "JasperReport is null -" + data;
                log.severe(tmp);
                reportResult(AD_PInstance_ID, tmp);

                throw new CompiereException(tmp);
            }

            // 4. Compiere parameters to Jasper parameters
            Map<String, Object> params = getParameters(AD_PInstance_ID, getCtx(), data, reportData, Record_ID);
            Language currLang = Env.getLanguage(getCtx());
            String langue = currLang.getAD_Language();
            int C_BPartner_ID = getCtx().getContextAsInt(1, "C_BPartner_ID");
            String BPartner_ID = null;
            if(pi.getTable_ID() >0 && pi.getTable_ID()==MOrderPaymSchedule.Table_ID && C_BPartner_ID<=0)
            {
            	if(pi.getParameter()!=null && pi.getParameter().length>0 && pi.getParameter()[0]!=null)
            	{
            		for (int i = 0; i < pi.getParameter().length; i++) {
            			if(pi.getParameter()[i].getParameterName().toUpperCase().equals("C_BPARTNER_ID"))
            			{
            				BPartner_ID = pi.getParameter()[i].getParameter().toString();
            				break;
            			}
            			
					} 
            	}
            }
            else
            	BPartner_ID = ""+C_BPartner_ID;
            if (BPartner_ID !=null)
            {
            	langue = DB.getSQLValueString(get_Trx(), "SELECT nvl(ad_language,'"+langue+"') FROM c_bpartner WHERE c_bpartner_id=?" , BPartner_ID);
            	if(langue!=null)
            		params.put("REPORT_LOCALE", new Locale(langue.substring(0, 2), langue.substring(3).toUpperCase()));
            }	
            
            processResources(data, params);

            // 6. View, print or export the report
            printReport(pi, reportData, reportFile, data, params, AD_PInstance_ID);

            //	        }
            reportResult(AD_PInstance_ID, null);
        }
        finally
        {
            Locale.setDefault(avant);
        }

	}
	
    protected void printReport(ProcessInfo pi, CompiereReportData reportData, File reportFile, JasperData data, Map<String, Object> params, int AD_PInstance_ID)
    {
        ProcessReportEngineParams prParams = (ProcessReportEngineParams) pi.getTransientObject();
        int copies = 1;
        String printerName = null;
        boolean withDialog = true;
        int Verso_PrintFormat_ID = 0;

        if (prParams != null)
        {
            copies = prParams.getCopies();
            printerName = prParams.getPrinterName();
            withDialog = prParams.isWithDialog();
            Verso_PrintFormat_ID = prParams.getVerso_PrintFormat_ID();
        }

        if ((printerName == null) || (printerName.trim().length() == 0))
        {
        	MUserPreference p = MUserPreference.getOfUser(MUser.get(getCtx()), false);
            if (p != null)
            	printerName = p.getPrinterName();
        }

        try
        {
            if (GwtMode.isGwtMode(getCtx())) 
            {
                log.info("Gwt Mode");

            	boolean withPagination = false;
            	if (exportType == FileFormatEnum.PDF) {
            		withPagination = true;
            	}

            	JasperPrint jasperPrint = fillReport(data, params, withPagination);
                log.info("RusReportStarter.startProcess print report -" + jasperPrint.getName());
    			log.info("File Output : "+getOutputAbsoluteFileName());

    			try {
    				FileOutputStream out = new FileOutputStream(getOutputAbsoluteFileName());

    				if (exportType == FileFormatEnum.PDF) {
    					out.write(JasperExportManager.exportReportToPdf(jasperPrint));
    				}
    				else if (exportType == FileFormatEnum.HTML) {
    					JasperExportManager.exportReportToHtmlFile(jasperPrint, "Export HTML");
    					FileInputStream in = new FileInputStream("Export HTML");
    					int b;
    					while ((b = in.read()) != -1) {
    						out.write(b);
    					}
    					in.close();
    				}
    				else if (exportType == FileFormatEnum.XML) {
    					JasperExportManager.exportReportToXmlStream(jasperPrint, out);
    				}
    				else if (exportType == FileFormatEnum.XLS) {
    					JRPropertiesDecoder decoder = new JRPropertiesDecoder(reportData.getXlsExportFormat());
    					XlsExporter exporter = new XlsExporter();
                    	exporter.exportReport(jasperPrint, new File(getOutputAbsoluteFileName()), decoder.getProperties(), decoder.getFilters());
    				}
    				else if (exportType == FileFormatEnum.CSV)
                    {
                        JRCsvExporter exporter = new JRCsvExporter();
                        exporter.setParameter(JRCsvExporterParameter.OUTPUT_FILE_NAME, getOutputAbsoluteFileName());
                        exporter.setParameter(JRCsvExporterParameter.JASPER_PRINT, jasperPrint);
                        exporter.setParameter(JRCsvExporterParameter.FIELD_DELIMITER, ";");
                        exporter.exportReport();
                    }

    				out.flush();
    				out.close();
    				/*
    				//Si PDF, Si signature Topé sur le format d'export et avec certificat parametré dans la société, signer le pdf
    				//github.com/iromu/pdf-signature-itext
    					if(exportType == FileFormatEnum.PDF) {
    						
    						String filename = getOutputAbsoluteFileName();
    						File UnSigned = new File(filename);
    						File ToSigned = new File(filename+"X");
    						FileUtils.copyFile(UnSigned, ToSigned);
    						PDFSignature signature = new PDFSignature();
    						signature.setPdfSign(filename);
    						signature.setPdfUnSign(getOutputAbsoluteFileName()+"X");
    						signature.signPdf();
    						//signature.process(filename);
    				
    					}
    					
    				if(exportType == FileFormatEnum.PDF) {
    				String filename = getOutputAbsoluteFileName();
					File UnSigned = new File(filename);
					File ToSigned = new File(filename+"X");
					FileUtils.copyFile(UnSigned, ToSigned);
    				File sourceFile = new File(filename);
    				JasperPrint jasperPrint2 = (JasperPrint)JRLoader.loadObject(filename+"X");

    				File destFile = new File(filename);

    				JRPdfExporter exporter = new JRPdfExporter();

    				exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
    				exporter.setParameter(JRExporterParameter.OUTPUT_FILE, destFile);
    				exporter.setParameter(JRPdfExporterParameter.IS_ENCRYPTED, Boolean.TRUE);
    				exporter.setParameter(JRPdfExporterParameter.IS_128_BIT_KEY, Boolean.TRUE);
    				exporter.setParameter(JRPdfExporterParameter.USER_PASSWORD, "jasper");
    				exporter.setParameter(JRPdfExporterParameter.OWNER_PASSWORD, "reports");
    				exporter.setParameter(
    				JRPdfExporterParameter.PERMISSIONS,
    				new Integer(PdfWriter.ALLOW_PRINTING | PdfWriter.ALLOW_SCREENREADERS | PdfWriter.ALLOW_COPY)
    				);
    				exporter.exportReport();
    				}
    				*/
    			} catch (JRException e) {
    				log.log(Level.SEVERE,"E",e);
    			} catch (FileNotFoundException e) {
    				log.log(Level.SEVERE,"E",e);
    			} catch (IOException e) {
    				log.log(Level.SEVERE,"E",e);
    			}

            }
            else if (BatchMode.isBatchMode())
            {
                log.info("Batch Mode");
                boolean withPagination = true;
                JasperPrint jasperPrint = fillReport(data, params, withPagination);
                log.info("RusReportStarter.startProcess print report -" + jasperPrint.getName());
            	String fileName = getOutputFileName();
            	log.info("Fichier PDF : "+fileName);
                JasperExportManager.exportReportToPdfFile(jasperPrint, fileName);
                // 
                /*
                 * Voir Scheduler.java
		File report = re.getPDF();
		//	Notice
		int AD_Message_ID = 884;		//	HARDCODED SchedulerResult
		Integer[] userIDs = m_model.getRecipientAD_User_IDs();
		for (int i = 0; i < userIDs.length; i++)
		{
			MNote note = new MNote(getCtx(), AD_Message_ID, userIDs[i].intValue(), m_trx.getTrxName());
			note.setTextMsg(m_model.getName());
			note.setDescription(m_model.getDescription());
			note.setRecord(AD_Table_ID, Record_ID);
			note.save();
			//	Attachment
			MAttachment attachment = new MAttachment (getCtx(), MNote.Table_ID, note.getAD_Note_ID(), m_trx.getTrxName());
			attachment.addEntry(report);
			attachment.setTextMsg(m_model.getName());
			attachment.save();
		}
 
                 */
            }
            else if (!withDialog || reportData.isDirectPrint())
            {
            	boolean withPagination = true;
            	JasperPrint jasperPrint = fillReport(data, params, withPagination);
                log.info("print report -" + jasperPrint.getName());
                
                PrintRequestAttributeSet prats = new HashPrintRequestAttributeSet();
                // Add Verso pages
                boolean hasVerso = addVersoPages(Verso_PrintFormat_ID, jasperPrint, AD_PInstance_ID, pi, withPagination);

                if (hasVerso)
                {
                    prats.add(Sides.DUPLEX);
                }

                PrinterJob pj = CPrinter.getPrinterJob(printerName);
                pj.setCopies(copies);

                JasperPrinterAWT jpa = new JasperPrinterAWT(jasperPrint, pj,
                        false, prats); // true : demande l'imprimante
                jpa.printPages();
            }
            else
            {
            	boolean withPagination = true;
            	logSql(data, params);
            	JasperPrint jasperPrint = fillReport(data, params, withPagination);
                JasperViewer.viewReport(jasperPrint, pi, data, params);
            }

            /** On garde le fichier ce qui permet de trouver les rapports téléchargé
             * une fois quand le serveur JBoss est arreté - download/update
            try{
                    if (REPORT_HOME == null)
                            reportFile.delete();
            }catch (Throwable t){
            }
            **/
        }
        catch (Throwable e)
        {
            log.log(Level.SEVERE, "Exception Jasper Report", e);

            if (e.getCause() != null)
            {
                log.log(Level.SEVERE, "Exception Jasper Report", e.getCause());
            }
            throw new CompiereException(e);
        }
    }

	protected void logSql(JasperData data, Map<String, Object> params) {
		try {
		    JRQuery query = data.getJasperReport().getMainDataset().getQuery();
		    StringBuffer sb = new StringBuffer();
		    for (JRQueryChunk chunk : query.getChunks()){
		    	if (chunk.getType() == JRQueryChunk.TYPE_TEXT){
		    		sb.append(chunk.getText());
		    	}
		    	else if (chunk.getType() == JRQueryChunk.TYPE_PARAMETER || chunk.getType() == JRQueryChunk.TYPE_PARAMETER_CLAUSE){
		            Object p = params.get(chunk.getText());
		            if (p instanceof Integer || p instanceof BigDecimal || p instanceof Double)
		            	sb.append(p);
		            else if (p instanceof Timestamp)
		            	sb.append("to_date('").append(((Timestamp)p).toString().substring(0,10)).append("','YYYY-MM-DD')");
		            else
		            	sb.append("'").append(p).append("'");
		        }
		        else {
		        	sb.append(chunk.getText());
		        }
		    }
		    log.info("SQLSQLSQL\n" + sb.toString()+ "\nSQLSQLSQL");
		} catch (Throwable e) {
			log.log(Level.SEVERE, "Can not log SQL", e);
		}
	}

	protected JasperPrint fillReport(JasperData data, Map<String, Object> params, boolean withPagination) 
	throws JRException {
		Trx trx = Trx.get("JasperReport_"+System.currentTimeMillis());
		JasperPrint jasperPrint = null;
		try {
			setJasperReportProperties(params, withPagination);
			jasperPrint = JasperFillManager.fillReport(data.getJasperReport(), params, trx.getConnection());
			return jasperPrint;
		} finally {
			trx.close();
		}
	}

    protected void processResources(JasperData data, Map<String, Object> params)
    {
        Language currLang = Env.getLanguage(getCtx());
        String jasperName = data.getJasperName();
        File[] resources = data.getReportDir().listFiles(new FileFilter(jasperName, data.getReportDir(), ".properties"));
        File resFile = null;

        // try baseName + "_" + language
        for (int i = 0; i < resources.length; i++)
        {
            if (resources[i].getName()
                                .equals(jasperName +
                        currLang.getLocale().getLanguage() + ".properties"))
            {
                resFile = resources[i];

                break;
            }
        }

        if (resFile == null)
        {
            // try baseName only
            for (int i = 0; i < resources.length; i++)
            {
                if (resources[i].getName().equals(jasperName + ".properties"))
                {
                    resFile = resources[i];

                    break;
                }
            }
        }

        if (resFile != null)
        {
            try
            {
                PropertyResourceBundle res = new PropertyResourceBundle(new FileInputStream(
                            resFile));
                params.put("RESOURCE", res);
            }
            catch (IOException e)
            {
                ;
            }
        }
    }

    protected File constructReportFile(String reportPath, int AD_PInstance_ID)
    {
        if ((reportPath == null) || (reportPath.length() == 0))
        {
            reportResult(AD_PInstance_ID, "Can not find report");

            return null;
        }

        File reportFile = null;

    	if (reportDirectories != null)
    	{
    		StringTokenizer st = new StringTokenizer(reportDirectories,",");
    		boolean found = false;
    		File REPORT_HOME = null;
    		while (!found && st.hasMoreTokens()) {
    			String directory = st.nextToken();
    			REPORT_HOME = new File(directory);
    			reportFile = new File(REPORT_HOME, reportPath);
    			if (reportFile.exists()) {
    				found = true;
    		        urlString = "file:///" + REPORT_HOME.getAbsolutePath() + "/";
    		    }
    		}
        }
        else
        {
            reportFile = new File(reportPath.replaceAll("/", "-"));

            if (!System.getProperty("os.name", "").startsWith("Win"))
            {
                reportFile = new File(localDirectory +
                        reportPath.replaceAll("/", "-"));
            }

            URL reportFileUrl = null;

            try
            {
                reportFileUrl = new URL("http", jasperHost, Integer.parseInt(jasperPort), JASPER_SUBDIRECTORY + "/" + reportPath);

                InputStream is = reportFileUrl.openStream();
                FileOutputStream fos = new FileOutputStream(reportFile);
                byte[] buffer = new byte[4096];
                int bytes_read;

                while ((bytes_read = is.read(buffer)) != -1)
                {
                    fos.write(buffer, 0, bytes_read);
                }

                is.close();
                fos.close();
                
	            urlString = "http://" + jasperHost + ":" +
                Integer.parseInt(jasperPort) + JASPER_SUBDIRECTORY;

            }
            catch (IOException e1)
            {
                log.warning(
                    "JasperReport not found on server OR can not be save locally");
                log.warning("REMOTE=" + reportFileUrl.getFile());
                log.warning("LOCAL (" + localDirectory + ") =" +
                    reportFile.getAbsolutePath());
                log.log(Level.INFO, "E", e1);
            }
        }

        return reportFile;
    }

    protected boolean addVersoPages(int Verso_PrintFormat_ID, JasperPrint jasperPrint, int AD_PInstance_ID, ProcessInfo pi, boolean withPagination)
        throws JRException
    {
        boolean ret = false;

        if (Verso_PrintFormat_ID > 0)
        {
            MPrintFormat versoPF = new MPrintFormat(getCtx(),
                    Verso_PrintFormat_ID, null);
            MPrintFormatProxy proxy = new MPrintFormatProxy(versoPF);
            String versoJasper = proxy.getJasperReportName();

            if ((versoJasper != null) && (versoJasper.trim().length() > 0))
            {
                /***************************************************************/
                File reportFile = constructReportFile(versoJasper,
                        AD_PInstance_ID);

                if (reportFile == null)
                {
                    String tmp = "Can not find report file : " + reportFile.getAbsolutePath();
                    log.severe(tmp);
                    reportResult(AD_PInstance_ID, tmp);

                    return false;
                }

                if (!reportFile.exists())
                {
                    String tmp = "Can not find report file : " + reportFile.getAbsolutePath();
                    log.severe(tmp);
                    reportResult(AD_PInstance_ID, tmp);

                    return false;
                }

                // 3. Load the .jasper File into an Object
                JasperData data = loadJasperReportFile(reportFile);

                if ((data == null) || (data.getJasperReport() == null))
                {
                    String tmp = "RusReportStarter.startProcess: JasperReport is null -" +
                        data;
                    log.severe(tmp);
                    reportResult(AD_PInstance_ID, tmp);

                    return false;
                }

                // 4. Compiere parameters to Jasper parameters
                Map<String, Object> params = new HashMap<String, Object>();

                // 5. Resources
                //processResources(data, params);
                JasperPrint versionJasperPrint = fillReport(data, params, withPagination);

                //DEBUG JasperViewer.viewReport(versionJasperPrint, pi);

                /***************************************************************/
                JRPrintPage toadd = null;
                ret = true;

                Iterator<?> it = versionJasperPrint.getPages().iterator();

                //verso has only 1 page
                if (it.hasNext())
                {
                    toadd = (JRPrintPage) it.next();

                    int adds = 0;
                    int initialSize = jasperPrint.getPages().size();

                    for (int i = 0; i < initialSize; i++)
                    {
                        jasperPrint.addPage(adds + i + 1, toadd);
                        adds++;
                    }
                }
            }
        }

        return ret;
    }

    protected void reportResult(int AD_PInstance_ID, String errMsg)
    {
        int result = (errMsg == null) ? 1 : 0;
        errMsg = (errMsg == null) ? "" : errMsg;

        String sql = "update AD_PInstance set result=" + result +
            ", errormsg='" + errMsg + "' " + "where AD_PInstance_ID=" +
            AD_PInstance_ID;
        //Statement pstmt = null;

//        try
//        {
            //pstmt = DB.createStatement();
            DB.executeUpdate(null, sql);
            //pstmt.close();
//        }
//        catch (SQLException e)
//        {
//            log.severe("RusReportStarter.addProcessParameters - " + sql + e);
//        }
//        finally
//        {
//            Util.closeCursor(pstmt, null);
//        }
    }

    protected JasperData loadJasperReportFile(File reportFile)
    {
        log.info(reportFile.getAbsolutePath());

        JasperData data = null;
        JasperReport jasperReport = null;

        String jasperName = reportFile.getName();
        int pos = jasperName.indexOf('.');

        if (pos != -1)
        {
            jasperName = jasperName.substring(0, pos);
        }

        File jasperFile = reportFile;
        File reportDir = new File(".");

        try
        {
            jasperReport = (JasperReport) JRLoader.loadObject(jasperFile);
            data = new JasperData(jasperReport, reportDir, jasperName, jasperFile);
        }
        catch (JRException e)
        {
            jasperReport = null;
            log.log(Level.SEVERE, "Can not load Report", e);

            if (e.getCause() != null)
            {
                log.log(Level.SEVERE, "Can not load Report", e.getCause());
            }
        }

        return data;
    }

	protected Map<String, Object> getParameters(int AD_PInstance_ID, Ctx ctx, JasperData data, CompiereReportData reportData, int Record_ID)
    {
        Language currLang = Env.getLanguage(getCtx());
        Map<String, Object> params = new HashMap<String, Object>(ctx);

        params.put("URL", urlString);

        JRParameter[] jparams = data.getJasperReport().getParameters();
        log.info("RusReportStarter.addProcessParameters");

        String sql = "select ParameterName, " + "P_String, " + "P_String_To, " +
            "P_Number, " + "P_Number_To, " + "P_Date, " + "P_Date_To " +
            "from AD_PInstance_Para where AD_PInstance_ID=?";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            pstmt = DB.prepareStatement(sql, ResultSet.TYPE_FORWARD_ONLY,
                    ResultSet.CONCUR_READ_ONLY, null);
            pstmt.setInt(1, AD_PInstance_ID);
            rs = pstmt.executeQuery();

            while (rs.next())
            {
                String name = rs.getString(1);
                String pStr = rs.getString(2);
                String pStrTo = rs.getString(3);
                Object pNum = rs.getObject(4);
                Object pNumTo = rs.getObject(5);
                Object pNumSent = pNum;
                Object pNumToSent = pNumTo;
                Timestamp pDate = rs.getTimestamp(6);
                Timestamp pDateTo = rs.getTimestamp(7);
                
                //#24402
                if (name.equals("FileFormat")) {
                	if ("XLS".equals(pStr))
                		exportType = FileFormatEnum.XLS;
                	else if ("CSV".equals(pStr))
                		exportType = FileFormatEnum.CSV;
                	else if ("HTML".equals(pStr))
                		exportType = FileFormatEnum.HTML;
                	else if ("PDF".equals(pStr))
                		exportType = FileFormatEnum.PDF;
                	else if ("XML".equals(pStr))
                		exportType = FileFormatEnum.XML;
                }
                
                // handle the case of the parameters !
                // parse JR parameters and if names are equals, take the name of the JR parameter instead of the name of the Compiere parameter !
                for (int i = 0; i < jparams.length; i++)
                {
                    if (name.equalsIgnoreCase(jparams[i].getName()))
                    {
                        name = jparams[i].getName();
                        // Parfois on a mis du Double, parfois du BigDecimal, il faut alors convertir de l'un à l'autre
                        if (pNum != null && jparams[i].getValueClass() == BigDecimal.class && pNum.getClass() == Double.class) {
                        	pNumSent = new BigDecimal(((Double)pNum).doubleValue());
                        	if (pNumTo != null)
                        		pNumToSent = new BigDecimal(((Double)pNumTo).doubleValue());
                        	else
                        		pNumToSent = Env.ZERO;
                        }
                        else if (pNum != null && jparams[i].getValueClass() == Double.class && pNum.getClass() == BigDecimal.class) {
                        	pNumSent = new Double(((BigDecimal)pNum).doubleValue());
                        	if (pNumTo != null)
                        		pNumToSent = new Double(((BigDecimal)pNumTo).doubleValue());
                        	else
                        		pNumToSent = new Double(0);
                        }
                        break;
                    }
                }

                if (pStr != null)
                {
                    if (pStrTo != null)
                    {
                        params.put(name + "1", pStr);
                        params.put(name + "2", pStrTo);
                    }
                    else
                    {
                        params.put(name + "1", pStr);
                        params.put(name, pStr);
                    }
                }
                else if (pDate != null)
                {
                    if (pDateTo != null)
                    {
                        params.put(name + "1", pDate);
                        params.put(name + "2", pDateTo);
                    }
                    else
                    {
                        params.put(name + "1", pDate);
                        params.put(name, pDate);
                    }
                }
                else if (pNum != null)
                {
                    if (pNumTo != null)
                    {
                        params.put(name + "1", pNumSent);
                        params.put(name + "2", pNumToSent);
                    }
                    else if (pNum != null)
                    {
                        params.put(name + "1", pNumSent);
                        params.put(name, pNumSent);
                    }
                }
            }
        }
        catch (SQLException e)
        {
            log.severe(sql);
            log.log(Level.SEVERE,"E",e);
        }
        finally
        {
        	Util.closeCursor(pstmt, rs);
        }

        params.put("RECORD_ID", new Double(Record_ID));

        // DO NOT REMOVE !!!!
        // get partner language if exists on current screen   
        String langue = currLang.getAD_Language();
        int C_BPartner_ID = getCtx().getContextAsInt(1, "C_BPartner_ID");
  
        if (C_BPartner_ID > 0)
        {
        	langue = DB.getSQLValueString(get_Trx(), "SELECT nvl(ad_language,'"+langue+"') FROM c_bpartner WHERE c_bpartner_id=?" , C_BPartner_ID);
        }	
        // add to manage bundle langage
        // DO NOT REMOVE !!!!        
        
        params.put("CURRENT_LANG",langue.substring(0, 2)+"_"+langue.substring(3).toUpperCase());
        params.put("REPORT_LOCALE", new Locale(langue.substring(0, 2), langue.substring(3).toUpperCase()));
        params.put("PINSTANCE_ID", AD_PInstance_ID);
        if (exportType == FileFormatEnum.XLS || exportType == FileFormatEnum.CSV)
        	params.put("excel", "Y");
        // For Long Report we use a disk cache mechanism	
        // a cach file is created at every 50 pages
        JRFileVirtualizer fileVirtualizer = new JRFileVirtualizer(50, getTmpDirectory());
        params.put(JRParameter.REPORT_VIRTUALIZER, fileVirtualizer);
        
        for (Iterator iterator = params.keySet().iterator(); iterator.hasNext();) {
			String key = (String) iterator.next();
			log.info("PARAMETER "+key+" = "+params.get(key));
		}
        
        addParameters(params);
        return params;
    }
    
	protected void addParameters(Map<String,Object> params) 
    {
    	// to override if needed
    }
    
    protected CompiereReportData getCompiereReportData(int AD_PInstance_ID)
    {
        log.info("getCompiereReportData");

        String sql = "SELECT pr.JasperReport, pr.IsDirectPrint, pr.XLSExportFormat from AD_Process pr, AD_PInstance pi " +
            "WHERE pr.AD_Process_Id=pi.AD_Process_Id " +
            "AND pi.AD_PInstance_ID=?";
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try
        {
            pstmt = DB.prepareStatement(sql, (Trx)null);
            pstmt.setInt(1, AD_PInstance_ID);
            rs = pstmt.executeQuery();

            String path = null;
            String tmp = null;
            String xls = null;
            if (rs.next())
            {
                path = rs.getString(1);
                tmp = rs.getString(2);
                xls = rs.getString(3);
                
                log.info("Jasper File = " + path + " - isDirectPrint = " + tmp);

                if (path == null)
                {
                    log.severe("No JasperFile defined on REPORT/PROCESS");
                }
            }
            else
            {
                log.severe(sql);
            }

            return new CompiereReportData(path, ((tmp.equalsIgnoreCase("y")) ? true : false), xls);
        }
        catch (SQLException e)
        {
            log.severe(sql);
            log.log(Level.SEVERE, "E", e);
            Util.closeCursor(pstmt, rs);

            return null;
        }
        finally
        {
        	Util.closeCursor(pstmt, rs);
        }
    }

    protected class CompiereReportData
    {
        private String reportFilePath;
        private boolean directPrint;
        private String xlsExportFormat;
        public CompiereReportData(String reportFilePath, boolean directPrint, String xlsExportFormat)
        {
            this.reportFilePath = reportFilePath;
            this.directPrint = directPrint;
            this.xlsExportFormat=xlsExportFormat;
        }

        public String getReportFilePath()
        {
            return reportFilePath;
        }

        public boolean isDirectPrint()
        {
            return directPrint;
        }

        public String getXlsExportFormat()
        {
            return xlsExportFormat;
        }

    }

    protected class JasperData
    {
        private JasperReport jasperReport;
        private File reportDir;
        private String jasperName;
        private File jasperFile;

        public JasperData(JasperReport jasperReport, File reportDir,
            String jasperName, File jasperFile)
        {
            this.jasperReport = jasperReport;
            this.reportDir = reportDir;
            this.jasperName = jasperName;
            this.jasperFile = jasperFile;
        }

        public JasperReport getJasperReport()
        {
            return jasperReport;
        }

        public File getReportDir()
        {
            return reportDir;
        }

        public String getJasperName()
        {
            return jasperName;
        }

        public File getJasperFile()
        {
            return jasperFile;
        }
    }

    protected class FileFilter implements FilenameFilter
    {
        private String reportStart;
        private File directory;
        private String extension;

        public FileFilter(String reportStart, File directory, String extension)
        {
            this.reportStart = reportStart;
            this.directory = directory;
            this.extension = extension;
        }

        public boolean accept(File file, String name)
        {
            if (file.equals(directory))
            {
                if (name.startsWith(reportStart))
                {
                    int pos = name.lastIndexOf(extension);

                    if ((pos != -1) &&
                            (pos == (name.length() - extension.length())))
                    {
                        return true;
                    }
                }
            }

            return false;
        }
    }
	
	private String getTmpDirectory() {
		String tmpdir = Msg.getMsg(Language.AD_Language_en_US, "AUDAXIS_JASPER_TEMPDIR", true);						//ZCOM999
		if (tmpdir == null  || tmpdir.trim().length()==0 || tmpdir.equalsIgnoreCase("AUDAXIS_JASPER_TEMPDIR"))		//ZCOM999
			tmpdir=System.getProperty("java.io.tmpdir");																				//ZCOM999
		return tmpdir;																			//ZCOM999
		// return System.getProperty("java.io.tmpdir");																//ZCOM999
	}

	protected void setJasperReportProperties(Map<String, Object> params, boolean withPagination) {
		// En Mode Excel on se fiche de la pagination
		// C'est en GUI le RusJRViewer qui re-lance le fill une seconde fois
		if (! withPagination) {
			params.put(JRParameter.IS_IGNORE_PAGINATION, Boolean.TRUE);
		}
		
		JRProperties.setProperty("net.sf.jasperreports.export.xls.remove.empty.space.between.rows", "true");
		JRProperties.setProperty("net.sf.jasperreports.export.xls.remove.empty.space.between.columns","true");
		JRProperties.setProperty("net.sf.jasperreports.export.xls.collapse.row.span", "true");
		JRProperties.setProperty("net.sf.jasperreports.export.xls.auto.fit.row", "true");
		JRProperties.setProperty("net.sf.jasperreports.export.xls.detect.cell.type","true");
		JRProperties.setProperty("net.sf.jasperreports.export.xls.create.custom.palette","true");
		JRProperties.setProperty("net.sf.jasperreports.export.xls.font.size.fix.enabled","false");

		// Essai infructueux de forcer la FONT dans l'Excel
		//JRProperties.setProperty("net.sf.jasperreports.default.font.name","Arial");
		//JRProperties.setProperty("net.sf.jasperreports.default.font.size","10");
		
		// je ne sais pas trop a quoi ca sert
		//JRProperties.setProperty("net.sf.jasperreports.text.measurer.factory.single.line", "com.jaspersoft.jasperserver.api.engine.jasperreports.util.SingleLineTextMeasurerFactory");
		
		//Redmine 37782 : FOR XPATH2
		JRProperties.setProperty("net.sf.jasperreports.query.executer.factory.xpath2","com.jaspersoft.jrx.query.JRXPathQueryExecuterFactory");
		//

	}

}
