package com.audaxis.compiere.util;

import java.math.BigDecimal;
import java.sql.Timestamp;

import net.sf.jasperreports.engine.JRParameter;

import org.compiere.model.MPInstancePara;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import bsh.EvalError;
import bsh.Interpreter;

public class ProcessUtils {

	static CLogger log = CLogger.getCLogger(ProcessUtils.class);

	public static void setParameterInstance(int AD_PInstance_ID, int seqno,
			ProcessInfoParameter pip)
	{
		log.info("setParameterInstance");

		// Create Parameter Info in DB
		MPInstancePara piparam = new MPInstancePara(Env.getCtx(),
				AD_PInstance_ID, seqno);
		piparam.setClientOrg(Env.getCtx().getAD_Client_ID(0), 0);
		piparam.setParameterName(pip.getParameterName());

		Object paramValue = pip.getParameter();
		Object paramValue_to = null;

		if (pip.getParameter_To() != null)
		{
			try
			{
				if ((pip.getParameter_To().toString().compareTo("") != 0))
				{
					paramValue_to = pip.getParameter_To();
				}
			}
			catch (Throwable t)
			{
				System.err.println("Could not cast ParaVlaue_to in String");
			}
		}

		if (paramValue instanceof Timestamp)
		{
			piparam.setP_Date((Timestamp) paramValue);

			if (paramValue_to != null)
			{
				piparam.setP_Date_To((Timestamp) paramValue_to);
			}
		}

		//	Integer
		else if (paramValue instanceof Integer)
		{
			Integer ii = (Integer) paramValue;
			piparam.setP_Number(ii.intValue());

			if (paramValue_to != null)
			{
				ii = (Integer) paramValue_to;
				piparam.setP_Number_To(ii.intValue());
			}
		}

		//	BigDecimal
		else if (paramValue instanceof BigDecimal)
		{
			piparam.setP_Number((BigDecimal) paramValue);

			if (paramValue_to != null)
			{
				piparam.setP_Number_To((BigDecimal) paramValue_to);
			}
		}

		//	Boolean
		else if (paramValue instanceof Boolean)
		{
			Boolean bb = (Boolean) paramValue;
			String value = bb.booleanValue() ? "Y" : "N";
			piparam.setP_String(value);

			//	to does not make sense
		}

		//	String
		else
		{
			if (paramValue != null)
			{
				piparam.setP_String(paramValue.toString());
			}

			if (paramValue_to != null)
			{
				piparam.setP_String_To(paramValue_to.toString());
			}
		}

		//  Info
		piparam.setInfo(pip.getInfo());

		if (paramValue_to != null)
		{
			piparam.setInfo_To(pip.getInfo_To());
		}

		//
		piparam.save();
	}
	
	
	public static String setParaToSQLReport(String sql, ProcessInfo pi, JRParameter[] jasperReportPara) throws EvalError
	{
		log.info("set Para To SQL Report");
		Object paramValue;
		String paramName;
		String reportParaName1;
		String reportParaName2;
		ProcessInfoParameter[] para = pi.getParameter();
		String defaultValueScript;
		Interpreter bsh = new Interpreter();
		//set report parameters value from process parameters
		for (ProcessInfoParameter element : para) {
			paramName = element.getParameterName();
			paramValue = element.getParameter();
			reportParaName1 = "$P{"+paramName+"}";
			reportParaName2 = "$P!{"+paramName+"}";
			if (paramValue == null){
				//#61156
			    continue;
		
		}else {

				if (paramValue instanceof Timestamp)
				{
					sql = sql.replace(reportParaName1, DB.TO_DATE((Timestamp) paramValue));
					sql = sql.replace(reportParaName2, DB.TO_DATE((Timestamp) paramValue));
				}//	Integer
				else if (paramValue instanceof Integer)
				{
					sql = sql.replace(reportParaName1, paramValue.toString());
					sql = sql.replace(reportParaName2, paramValue.toString());
				}//	BigDecimal
				else if (paramValue instanceof BigDecimal)
				{
					sql = sql.replace(reportParaName1, paramValue.toString());
					sql = sql.replace(reportParaName2, paramValue.toString());
				}//	Boolean
				else if (paramValue instanceof Boolean)
				{
					boolean boolparamValue = (Boolean) paramValue;
					sql = sql.replace(reportParaName1, boolparamValue ? "'Y'" : "'N'");
					sql = sql.replace(reportParaName2, boolparamValue ? "'Y'" : "'N'");
				}//	String
				else
				{
					sql = sql.replace(reportParaName1, "'"+paramValue+"'");
					sql = sql.replace(reportParaName2, "'"+paramValue+"'");
				}
			}
		}
		
		
		//set report parameters default values
		if(jasperReportPara != null){
			for(JRParameter jasperPara : jasperReportPara){
				if(jasperPara.getDefaultValueExpression()==null)
					continue;  
				defaultValueScript = jasperPara.getDefaultValueExpression().getText();
				paramName = jasperPara.getName();
				paramValue = bsh.eval("foo="+defaultValueScript);
				
				reportParaName1 = "$P{"+paramName+"}";
				reportParaName2 = "$P!{"+paramName+"}";
				if (paramValue == null){
					sql = sql.replace(reportParaName1, "null");
					sql = sql.replace(reportParaName2, "null");
				}
				else {
				
					if(paramName.equals("SORTBYNAME")){
						String SORTBYNAME = String.valueOf(((Double) paramValue).intValue());
						sql = sql.replace(reportParaName1, SORTBYNAME);
						sql = sql.replace(reportParaName2, SORTBYNAME);
					}
					else if (paramValue instanceof Timestamp)
					{
						sql = sql.replace(reportParaName1, DB.TO_DATE((Timestamp) paramValue));
						sql = sql.replace(reportParaName2, DB.TO_DATE((Timestamp) paramValue));
					}//	Integer
					else if (paramValue instanceof Integer)
					{
						sql = sql.replace(reportParaName1, paramValue.toString());
						sql = sql.replace(reportParaName2, paramValue.toString());
					}//	BigDecimal
					else if (paramValue instanceof BigDecimal)
					{
						sql = sql.replace(reportParaName1, paramValue.toString());
						sql = sql.replace(reportParaName2, paramValue.toString());
					}
					else if (paramValue instanceof Double)
					{
						sql = sql.replace(reportParaName1, paramValue.toString());
						sql = sql.replace(reportParaName2, paramValue.toString());
					}//	Boolean
					else if (paramValue instanceof Boolean)
					{
						boolean boolparamValue = (Boolean) paramValue;
						sql = sql.replace(reportParaName1, boolparamValue ? "'Y'" : "'N'");
						sql = sql.replace(reportParaName2, boolparamValue ? "'Y'" : "'N'");
					}//	String
					else
					{
						sql = sql.replace(reportParaName1, "'"+paramValue+"'");
						sql = sql.replace(reportParaName2, "'"+paramValue+"'");
					}
				}
			}
		}
		
		return sql;
	}
}
