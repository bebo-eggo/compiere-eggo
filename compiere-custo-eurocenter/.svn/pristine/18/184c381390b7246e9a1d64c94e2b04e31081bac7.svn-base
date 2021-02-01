package com.audaxis.compiere.eurocenter.acct.exporter;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

import net.sf.jxls.exception.ParsePropertyException;
import net.sf.jxls.transformer.XLSTransformer;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.compiere.Compiere;
import org.compiere.util.Env;

import com.audaxis.compiere.eurocenter.acct.datasource.PartnerGLJournalDatasource;
import com.audaxis.compiere.eurocenter.acct.datasource.interfaces.AcctDatasource;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctElementVO;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctVO;
import com.audaxis.compiere.eurocenter.acct.exporter.interfaces.AcctExporter;

public class XLSAcctExporter implements AcctExporter
{
	public String fileFormat="xlsx";
	
	public void buildOutputFile(AcctDatasource ds, File template, String filename, Map<String, Object> params) throws ParsePropertyException, InvalidFormatException, IOException  
	{
		XLSTransformer transformer = new XLSTransformer();
		Map<String, Object> xlsDatasource = ds.getXLSDatasource();
		AcctVO paramsVO = new AcctElementVO();
		for (String key : params.keySet())
			paramsVO.addValue(key, params.get(key));
		xlsDatasource.put("params", paramsVO);
		transformer.transformXLS(template.getAbsolutePath(), xlsDatasource, filename);
	}
	
	// For Testing purpose
	public static void main (String ... args) throws Exception
	{

		// Dummy 
		//	XLSAcctExporter e = new XLSAcctExporter(new AcctDummyDatasource(), "/tmp/test.xlsx", "/tmp/result1.xlsx");
		// e.buildOutputFile();

//		// NO DB
//		 XLSAcctExporter e = new XLSAcctExporter(new AcctDummyXLSPartnerGLDatasource(), "./data/jasper/jxls/PartnerGLJournal_Template.xlsx", "/tmp/result2.xlsx");
//		 e.buildOutputFile();
		
		
		Compiere.startup(false);
		
		Calendar cal = new GregorianCalendar(2014, 0, 1);
		long longTimeAgo = cal.getTimeInMillis();
		cal.add(Calendar.DAY_OF_YEAR, 100);
		long aLittleLessLongTimeAgo = cal.getTimeInMillis();
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("AD_Client_ID", 1000000);
		map.put("AD_Org_ID", 1000000);
		//map.put("C_BP_Group_ID", 0);
		//map.put("C_BPartner_ID", );
		map.put("DATEFROM", new Timestamp(longTimeAgo));
		map.put("DATETO", new Timestamp(aLittleLessLongTimeAgo));
		map.put("C_BP_Group_ID", 1000218);
		map.put("C_BP_Group_ID_To", 1000739);
		map.put("ISSOTRX", "Y");
		map.put("ISDOUBTFULINCLUDED", true);
		//map.put("C_Currency_ID", );
		map.put("C_ACCTSCHEMA_ID", 1000000);

		XLSAcctExporter e = new XLSAcctExporter();
		e.buildOutputFile(new PartnerGLJournalDatasource(Env.getCtx(), null, map), new File("./data/jasper/jxls/PartnerGLJournal_Template.xlsx"), "/tmp/result3.xlsx", map);
	}

}
