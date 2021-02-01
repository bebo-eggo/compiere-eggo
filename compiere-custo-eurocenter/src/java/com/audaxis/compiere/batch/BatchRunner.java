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
package com.audaxis.compiere.batch;

import java.io.File;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.compiere.Compiere;
import org.compiere.framework.PO;
import org.compiere.model.MPInstancePara;
import org.compiere.model.MProcess;
import org.compiere.model.MProcessPara;
import org.compiere.print.CPrinter;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Login;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.MPInstanceProxy;


/**
 * This is the main Compiere Batch API class.
 * Instantiate this class by providing client, org, user, password, etc... data.
 * Then use the run() method to run a Compiere Process.<p>
 * Example:<p>
 * <pre>
 *                 BatchRunner br = new BatchRunner("GardenWorld","HQ","HQ Warehouse","English","SuperUser","System","GardenWorld Admin");
 *                // Cache Reset
 *                br.run(205, new String[0]);
 *                // Resubmit Posting
 *                String[] params = new String[2];
 *                params[1] = Integer.toString(11);
 *                params[0] = Integer.toString(318);
 *                br.run(175, params);
 * </pre>
 *
 * @author vha
 */
public class BatchRunner
{
    private static final String dateFormatPattern = "yyyy-MM-dd";
    private CLogger log = CLogger.get();
    private String client;
    private String org;
    private String warehouse;
    private String language;
    private String user;
    private String password;
    private String role;
    private String printer;

    private SimpleDateFormat dateFormat = null;

    /**
     * Initialize the Batchrunner with login information.<p>
     * The DATABASE connection will be read from a Compiere.properties file.  This one
     * will created at first run with the GUI frontend appearing to set it up.  Then this Properties file
     * will be run for next runs.  This has been done like that to not implement database specific
     * parameters here.<p>
     * Example:<p>
     * <pre>
     * BatchRunner br = new BatchRunner("GardenWorld","HQ","HQ Warehouse","English","SuperUser","System","GardenWorld Admin");
     * </pre>
     *
     * @param client AD_Client NAME
     * @param org AD_Org NAME
     * @param wh M_Warehouse NAME
     * @param language AD_Language NAME
     * @param user User NAME
     * @param pwd Password
     * @param role AD_Role NAME
     */
    public BatchRunner(String client, String org, String wh, String language,
        String user, String pwd, String role, String printer)
    {
        this.client = client;
        this.org = org;
        this.warehouse = wh;
        this.language = language;
        this.user = user;
        this.password = pwd;
        this.role = role;
        this.printer = printer;
        if (!login())
        	throw new IllegalStateException("Bad Username, Password, Role, ...");
    }

    public static void main(String[] args)
    {
        BatchRunner br = new BatchRunner("GardenWorld", "HQ", "HQ Warehouse",
                "English", "SuperUser", "System", "GardenWorld Admin",
                "");

        // Cache Reset
        // br.run(205);
        // Resubmit Posting
        //		String[] params = new String[2];
        //		params[1] = Integer.toString(11);
        //		params[0] = Integer.toString(318);
        //		
        //		br.run(175, params);

        //		// Import Product 
        String[] params = new String[2];
        params[0] = Integer.toString(1000000);
        params[1] = "Y";
        br.run(196, params);

        //		// REPORT : Open Confirmations
        //		String[] params = new String[4];
        //		params[0] = Integer.toString(1000001);
        //		params[1] = Integer.toString(-1);
        //		params[2] = Integer.toString(-1);
        //		params[3] = Integer.toString(-1);
        //		br.run(285, params);

        // REPORT : JASPER test
        //		String[] params = new String[3];
        //		params[0] = Integer.toString(1000001);
        //		params[1] = "2004-12-22";
        //		params[2] = "N";
        //		br.run(1000131, params);
    }

    /**
     * Run a specific process providing the parameters in String array format.<p>
     * ID must be passed in Integer format, not in Name.<p>
     * RANGE must be passed as 2 parameters in from/to order.<p>
     * DATE must be passed in yyyy-MM-dd format.<p>
     *
     * @param processId the AD_Process_ID to run
     * @param stringInputs the parameters in array format
     * @param outputFilename the name of the file where output will be generated
     */
    public int run(int processId, String[] stringInputs)
    {
        return run(processId, stringInputs, "");
    }

    /**
     * Run a specific process providing the parameters in String array format.<p>
     * ID must be passed in Integer format, not in Name.<p>
     * RANGE must be passed as 2 parameters in from/to order.<p>
     * DATE must be passed in yyyy-MM-dd format.<p>
     *
     * @param processId
     * @param stringInputs
     * @param outputFilename
     */
    public int run(int AD_Process_ID, String[] stringInputs, String outputFilename)
    {
        log.info("run");
        
        int errorCode = 0;
        
        MProcess process = MProcess.get(Env.getCtx(), AD_Process_ID);

        ProcessInfo pi = new ProcessInfo("Batch Runner Process", AD_Process_ID);
        pi.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(Env.getCtx(),
                pi.getAD_Process_ID(), pi.getRecord_ID()));
        pi.setAD_User_ID (Env.getCtx().getAD_User_ID());
		pi.setAD_Client_ID(Env.getCtx().getAD_Client_ID());

        if (pi.getAD_PInstance_ID() == 0)
        {
            throw new IllegalArgumentException(Msg.getMsg(Env.getCtx(),
                    "ProcessNoInstance"));
        }

        int[] paramIds = PO.getAllIDs("AD_Process_Para",
                "IsActive = 'Y' and AD_Process_ID = " + AD_Process_ID + " order by SeqNo ASC ", null);

        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
        int n = 0;
        for (int i = 0; i < paramIds.length; i++)
        {
            int p = paramIds[i];
            log.info("param id " + p);

            MProcessPara param = new MProcessPara(Env.getCtx(), p, null);
            log.info("param " + param);

            if (stringInputs != null && i < stringInputs.length)
            {
                Object parameterValue = parseParameterValue(stringInputs[n], param);

                ProcessInfoParameter pip = new ProcessInfoParameter(param.getColumnName(),
                        parameterValue, "", param.getName(), "");
                pipList.add(pip);
                log.info("process info param " + pip);

                // Look if we have a RANGE parameter
                boolean okRange = false;
                if ((i + 1) < paramIds.length)
                {
                    if (param.isRange())
                    {
                        n++;
                        p = paramIds[n];

                        Object parameterValue_To = parseParameterValue(stringInputs[n], param);
                        pip.setInfo_To(param.getColumnName() + " To");
                        pip.setParameter_To(parameterValue_To);
                        okRange = true;
                    }
                }
                
                //setParameterInstance(pi.getAD_PInstance_ID(), param.getSeqNo(), pip);
                if(!okRange && param.isRange())
                {
                    p = paramIds[n];
                    n++;
                    Object parameterValue_To = parseParameterValue(stringInputs[n++], param);
                    pip.setInfo_To(param.getColumnName() + " To");
                    pip.setParameter_To(parameterValue_To);
                }
                n++;
                setParameterInstance(pi.getAD_PInstance_ID(), param.getSeqNo(), pip);
            }

        }

        ProcessInfoParameter[] pips = (ProcessInfoParameter[]) pipList.toArray(new ProcessInfoParameter[pipList.size()]);
        pi.setParameter(pips);

        log.info("procesCtl Go !");

        String trxName = "BATCH";
        Trx trx = Trx.get(trxName);
        boolean ok = process.processIt(pi, trx);
        if (ok) {
        	errorCode = 0;
        	trx.commit();
        	trx.close();
        }
        else {
        	errorCode = 2;
        	trx.rollback();
        	trx.close();
        }
        
        // Si on a un AD_ReportView_ID alors le process est suivi d'un rapport !
        if (process.getAD_ReportView_ID() > 0) {
        	//boolean reportOk = ReportCtl.start(pi, true);
        	ReportEngine re = ReportEngine.get(Env.getCtx(), pi);
        	re.setPrinterName(printer);
        	// On ne peut rien "laisser tourner" en arrière plan en batch !
        	if (outputFilename == null || outputFilename.trim().length() == 0){
        		re.print(true);
        	}
        	else {
        		re.createPDF(new File(outputFilename));
        	}
        }
        return errorCode;
    }

    /**
     * Parse the string parameter into a Compiere specific object.<p>
     * <ul>
     * <li>Timestamp for Date, DateTime and Time
     * <li>Boolean for YesNo
     * <li>BigDecimal for all others
     * </ul>
     * This is done by lokking at AD_Process_Para information.
     *
     * @param stringInput the parameter to parse in string format
     * @param param the Ad_Process_Para information
     * @return the parsed object
     */
    protected Object parseParameterValue(String stringInput, MProcessPara param)
    {
        log.info("PARAMETER " + stringInput + " " + param.getName());

        Object ret = stringInput;
        int refId = param.getAD_Reference_ID();

        switch (refId)
        {
        /*
                                // TABLE
                                case 18:
                                        // ??? Implement a search here on linked table based on Name ???
                                        // Difficult because we need to go via REFERENCE for TABLE and retrieve the _ID
                                        // for TABLEDIR and Search
                                        ret = new BigDecimal(stringInput);
                                        break;
                                // TABLEDIR
                                case 19:
                                        ret = new BigDecimal(stringInput);
                                        break;
                                // SEARCH
                                case 30:
                                        ret = new BigDecimal(stringInput);
                                        break;
                                // AMOUNT
                                case 12:
                                        ret = new BigDecimal(stringInput);
                                        break;
        */

        // DATE
        case 15:
            ret = parseTimestamp(stringInput);

            break;

        // DATETIME
        case 16:
            ret = parseTimestamp(stringInput);

            break;

        // TIME
        case 24:
            ret = parseTimestamp(stringInput);

            break;

        // BOOLEAN
        //			case 20:
        //				ret = Boolean.valueOf(stringInput);			
        //				break;
        case 20:
            ret = stringInput;

            break;

        // STRING
        case 10:
            ret = stringInput;

            break;

        // TEXT
        case 14:
            ret = stringInput;

            break;

        // TEXT LONG
        case 36:
            ret = stringInput;

            break;

        // REF LIST
        case 17:
            ret = stringInput;

            break;
        	

            
        default:

            if ((stringInput != null) && !stringInput.equals(""))
            {
                try
                {
                    ret = new BigDecimal(stringInput);
                }
                catch (Throwable t)
                {
                    System.err.println("Could not parse '" + stringInput +
                        "' in BigDecimal for a REFERENCE = '" + refId + "'");
                }
            }
            else if ((stringInput != null) && stringInput.trim().equals(""))
            {
                ret = Env.ZERO;
            }

            break;
        }

        return ret;
    }

    /**
     * Parse a Timestamp in String format in a java.sql.Timestamp object.
     *
     * @param stringInput the timestamp in yyyy-MM-DD format
     * @return the parsed Timestamp object
     */
    protected Timestamp parseTimestamp(String stringInput)
    {
        if (dateFormat == null)
        {
            try
            {
                dateFormat = new SimpleDateFormat(dateFormatPattern);
            }
            catch (Exception e)
            {
                throw new IllegalArgumentException(
                    "ImpFormatRow.parseDate Format=" + dateFormatPattern + " " +
                    e.getMessage());
            }

            if (dateFormat == null)
            {
                dateFormat = (SimpleDateFormat) DateFormat.getDateInstance();
            }

            dateFormat.setLenient(true);
        }

        Timestamp ts = null;

        try
        {
            ts = new Timestamp(dateFormat.parse(stringInput).getTime());
        }
        catch (ParseException pe)
        {
            throw new IllegalArgumentException("ImpFormatRow.parseDate - " +
                stringInput + " " + pe.getMessage());
        }

        return ts;
    }

    /**
     * Login to Compiere with information provided at instanciation.  This is
     * The DB connection read from Compiere.properties file and the Compiere
     * login specific information (user,password, role, client, org, ...)
     *
     */
    protected boolean login()
    {
        Compiere.startup(true);
        //CLogMgt.setLoggerLevel(Level.INFO, null);
		//CLogMgt.setLevel(Level.INFO);

        // This one is too complex to code here 
        // So we NEED a properties file to be able to RUN the BatchRunner
        //Ini.setProperty(Ini.P_CONNECTION,"")
        Ini.setProperty(Ini.P_CLIENT, client);
        //20120924 ceci semble nécessaire en 380
        if (org == null) org = "*";
        Ini.setProperty(Ini.P_ORG, org);
        Ini.setProperty(Ini.P_WAREHOUSE, warehouse);
        Ini.setProperty(Ini.P_LANGUAGE, language);
        Ini.setProperty(Ini.P_UID, user);
        Ini.setProperty(Ini.P_PWD, password);
        Ini.setProperty(Ini.P_ROLE, role);

        Login login = new Login(Env.getCtx());
		if (!login.batchLogin()) {
			// Pour des Batchs System cela plante à cause de la non existance d'un magasin
			// C'est le cas pour Load_Patch
			if (! "System".equalsIgnoreCase(client)) {
				System.err.println("Erreur de Login");
				return false;
			}
		}
        
		//CLogMgt.setLoggerLevel(Level.WARNING, null);
		//CLogMgt.setLevel(Level.WARNING);

        
        // on a besoin des imprimantes plus tard
        CPrinter.getPrinterNames(); 
        return true;
    }

    /**
     * @return Returns the client.
     */
    public String getClient()
    {
        return client;
    }

    /**
     * @param client The client to set.
     */
    public void setClient(String client)
    {
        this.client = client;
    }

    /**
     * @return Returns the language.
     */
    public String getLanguage()
    {
        return language;
    }

    /**
     * @param language The language to set.
     */
    public void setLanguage(String language)
    {
        this.language = language;
    }

    /**
     * @return Returns the org.
     */
    public String getOrg()
    {
        return org;
    }

    /**
     * @param org The org to set.
     */
    public void setOrg(String org)
    {
        this.org = org;
    }

    /**
     * @return Returns the password.
     */
    public String getPassword()
    {
        return password;
    }

    /**
     * @param password The password to set.
     */
    public void setPassword(String password)
    {
        this.password = password;
    }

    /**
     * @return Returns the role.
     */
    public String getRole()
    {
        return role;
    }

    /**
     * @param role The role to set.
     */
    public void setRole(String role)
    {
        this.role = role;
    }

    /**
     * @return Returns the user.
     */
    public String getUser()
    {
        return user;
    }

    /**
     * @param user The user to set.
     */
    public void setUser(String user)
    {
        this.user = user;
    }

    /**
     * @return Returns the waregouse.
     */
    public String getWaregouse()
    {
        return warehouse;
    }

    /**
     * @param waregouse The waregouse to set.
     */
    public void setWaregouse(String waregouse)
    {
        this.warehouse = waregouse;
    }

    public void setParameterInstance(int AD_PInstance_ID, int seqno,
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
}
