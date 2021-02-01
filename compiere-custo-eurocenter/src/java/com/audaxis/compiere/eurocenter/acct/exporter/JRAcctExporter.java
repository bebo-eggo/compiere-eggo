package com.audaxis.compiere.eurocenter.acct.exporter;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRCsvExporter;
import net.sf.jasperreports.engine.export.JRCsvExporterParameter;
import net.sf.jasperreports.engine.fill.JRFileVirtualizer;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jxls.exception.ParsePropertyException;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.compiere.util.CLogger;
import org.compiere.util.Language;
import org.compiere.util.Msg;

import com.audaxis.compiere.jasperreport.XlsExporter;
import com.audaxis.compiere.eurocenter.acct.datasource.interfaces.AcctDatasource;
import com.audaxis.compiere.eurocenter.acct.exporter.interfaces.AcctExporter;
import com.audaxis.compiere.util.CompiereException;

public class JRAcctExporter implements AcctExporter {

	protected CLogger log = CLogger.getCLogger(this.getClass());

	public String fileFormat = "";

	public JRAcctExporter()
	{
		this("pdf");
	}
	public JRAcctExporter(String fileFormat)
	{
		this.fileFormat = fileFormat;
	}

	public void buildOutputFile(AcctDatasource ds, File template, String filename, Map<String, Object> params) throws ParsePropertyException, InvalidFormatException, IOException, JRException  
	{

		// Load the .jasper File into an Object
		JasperReport data = (JasperReport) JRLoader.loadObject(template);
		if (data == null) 
			throw new CompiereException("JasperReport is null");
		
		// Add virtualization (for big files)
        JRFileVirtualizer fileVirtualizer = new JRFileVirtualizer(50, getTmpDirectory());
        params.put(JRParameter.REPORT_VIRTUALIZER, fileVirtualizer);

		FileOutputStream out = null;

		try
		{
			JasperPrint jasperPrint = JasperFillManager.fillReport(data, params , ds);

			if (jasperPrint == null)
				throw new CompiereException("jasperPrint pas initialise");

			log.info("RusReportStarter.startProcess print report -" + jasperPrint.getName());

			// Copy from JasperReportServer from EUL
			out = new FileOutputStream(filename); // getOutputAbsoluteFileName()
			if (fileFormat == null || fileFormat.length() <3)
				fileFormat="pdf";

			if ("pdf".equalsIgnoreCase(fileFormat.toLowerCase())) {
				out.write(JasperExportManager.exportReportToPdf(jasperPrint));
			}
			else if ("html".equalsIgnoreCase(fileFormat.toLowerCase())) {
				JasperExportManager.exportReportToHtmlFile(jasperPrint, "Export HTML");
				FileInputStream in = new FileInputStream("Export HTML");
				int b;
				while ((b = in.read()) != -1) {
					out.write(b);
				}
				in.close();
			}
			else if ("xml".equalsIgnoreCase(fileFormat.toLowerCase())) {
				JasperExportManager.exportReportToXmlStream(jasperPrint, out);
			}
			else if ("xls".equalsIgnoreCase(fileFormat.toLowerCase()) || "xlsx".equalsIgnoreCase(fileFormat.toLowerCase())) {
				XlsExporter exporter = new XlsExporter();
				exporter.exportReport(jasperPrint, new File(filename));
			}
			else if ("csv".equalsIgnoreCase(fileFormat.toLowerCase()))
			{
				JRCsvExporter exporter = new JRCsvExporter();
				exporter.setParameter(JRCsvExporterParameter.OUTPUT_FILE_NAME, filename);
				exporter.setParameter(JRCsvExporterParameter.JASPER_PRINT, jasperPrint);
				exporter.setParameter(JRCsvExporterParameter.FIELD_DELIMITER, ";");
				exporter.exportReport();
			}

		}
		finally
		{
			if (out != null) try {out.flush();} catch (Exception e) {}
			if (out != null) try {out.close();} catch (Exception e) {} finally {out=null;}
		}
		
	}


	private String getTmpDirectory() {
		String tmpdir = Msg.getMsg(Language.AD_Language_en_US, "AUDAXIS_JASPER_TEMPDIR", true);						//ZCOM999
		if (tmpdir == null  || tmpdir.trim().length()==0 || tmpdir.equalsIgnoreCase("AUDAXIS_JASPER_TEMPDIR"))		//ZCOM999
			tmpdir=System.getProperty("java.io.tmpdir");															//ZCOM999
		return tmpdir;																								//ZCOM999
		// return System.getProperty("java.io.tmpdir");																//ZCOM999
	}

}
