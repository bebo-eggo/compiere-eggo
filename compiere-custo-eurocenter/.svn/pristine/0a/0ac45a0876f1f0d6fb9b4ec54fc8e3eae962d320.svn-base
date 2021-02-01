package com.audaxis.compiere.eurocenter.acct.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import org.compiere.db.CConnection;

public class ExportHelper 
{

	public static SimpleDateFormat sdf_year = new SimpleDateFormat("yyyy");
	public static SimpleDateFormat sdf_date = new SimpleDateFormat("dd/MM/yyyy");
	public static SimpleDateFormat sdf_datetime = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	
	private static URL base_url = null;
	
	// dd/MM/yyyy - dd/MM/yyyy
	public static String createRangeDate(Timestamp dateFrom, Timestamp dateTo)
	{
		return createRangeString(sdf_date.format(dateFrom), sdf_date.format(dateTo));
	}
	// XXX - YYY , - YYY , XXX - , Empty
	public static String createRangeString(String from, String to)
	{
		String retValue = "";
		if (from != null)
			retValue = from;
		retValue = retValue + " - ";
		if (to != null)
			retValue = retValue + to;
			
		if ("-".equalsIgnoreCase(retValue.trim()))
			retValue = "";
		
		return retValue;
	}

	
	public static File getTemplateFile(String templatePath) throws IOException
	{
		
		if ((templatePath == null) || (templatePath.length() == 0))
			return null;
		
		File template = null;

		InputStream is = null;
		FileOutputStream fos = null;
		
		try
		{
			template = File.createTempFile(templatePath.replaceAll("/", "-"), ".template");
			URL reportFileUrl = new URL(getBaseURL() + templatePath);
			is = reportFileUrl.openStream();
			fos = new FileOutputStream(template);
			byte[] buffer = new byte[4096];
			int bytes_read;
			while ((bytes_read = is.read(buffer)) != -1)
				fos.write(buffer, 0, bytes_read);
		}
		finally
		{
			if (is!=null) try {is.close();}catch (Exception e) {} finally {is=null;}
			if (fos!=null) try {fos.close();}catch (Exception e) {} finally {fos=null;}
		}
		return template;
	}

	public static URL getBaseURL() throws MalformedURLException
	{
		if (base_url == null)
		{
			String reportDirectories = System.getProperty("ru.compiere.report.path");
			if (reportDirectories != null && reportDirectories.length() > 0)
			{
				File reportHome = new File(reportDirectories);
				if (reportHome != null && reportHome.isDirectory())
					base_url = reportHome.toURI().toURL();
			}
			
			if (base_url == null)
			{
				String jasperDir = "/jasper/";
				String jasperHost = System.getProperty("jasper.host");
				String jasperPort = System.getProperty("jasper.port");

				if (jasperHost == null || jasperHost.length() == 0)
				{
					CConnection cc = CConnection.get();
					jasperHost = cc.getAppsHost();
					jasperPort = Integer.toString(cc.getAppsPort() - 19); // 2099 - 19 = 2080
		        	// EuroCenter travaille en 8080
		        	jasperPort = "8080";
		}

				base_url = new URL("http://"+jasperHost+":"+jasperPort+jasperDir);
			}
		}
		return base_url;
	}
}
