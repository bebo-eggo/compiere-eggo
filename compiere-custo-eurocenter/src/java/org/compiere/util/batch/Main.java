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
package org.compiere.util.batch;

import java.util.logging.Level;

import org.apache.commons.cli.BasicParser;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.OptionBuilder;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

import com.audaxis.compiere.batch.BatchRunner;


/**
 * The Batch Command, the main method.
 *
 * @author vha
 */
public final class Main
{
    private static final String COMPIEREPROCESS = "process";
    private static final String COMPIEREPROCESSCLASS = "processclass";
    private static final String COMPIEREROLE = "role";
    private static final String COMPIEREPWD = "pwd";
    private static final String COMPIEREUSER = "user";
    private static final String COMPIERELANG = "lang";
    private static final String COMPIEREWH = "wh";
    private static final String COMPIEREORG = "org";
    private static final String COMPIERECLIENT = "client";
    private static final String COMPIEREPARAM = "param";
    private static final String COMPIEREPRINTER = "printer";
    private static final String COMPIEREFILE = "out";
    
    private static CLogger s_log = CLogger.getCLogger(Main.class);

    public static void main(String[] args)
    {
        int errorCode = 0;
    	try
        {

        	Options options = new Options();
        	setupCommandLine(args, options);

        	CommandLine cmd = null;

            cmd = commonArgsParse(args, options);

            BatchRunner br = new BatchRunner(cmd.getOptionValue(COMPIERECLIENT),
                    cmd.getOptionValue(COMPIEREORG),
                    cmd.getOptionValue(COMPIEREWH),
                    cmd.getOptionValue(COMPIERELANG),
                    cmd.getOptionValue(COMPIEREUSER),
                    cmd.getOptionValue(COMPIEREPWD),
                    cmd.getOptionValue(COMPIEREROLE),
                    cmd.getOptionValue(COMPIEREPRINTER));

            String process = cmd.getOptionValue(COMPIEREPROCESS);
            String processClass = cmd.getOptionValue(COMPIEREPROCESSCLASS);

            s_log.warning("Client=" + cmd.getOptionValue(COMPIERECLIENT));
            s_log.warning("Org=" + cmd.getOptionValue(COMPIEREORG));
            s_log.warning("Wh=" + cmd.getOptionValue(COMPIEREWH));
            s_log.warning("Lang=" + cmd.getOptionValue(COMPIERELANG));
            s_log.warning("User=" + cmd.getOptionValue(COMPIEREUSER));
            s_log.warning("Pwd=" + cmd.getOptionValue(COMPIEREPWD));
            s_log.warning("Role=" + cmd.getOptionValue(COMPIEREROLE));
            s_log.warning("Printer=" + cmd.getOptionValue(COMPIEREPRINTER));
            s_log.warning("Out=" + cmd.getOptionValue(COMPIEREFILE));
            s_log.warning("Process=" + cmd.getOptionValue(COMPIEREPROCESS));
            s_log.warning("ProcessClass=" + cmd.getOptionValue(COMPIEREPROCESSCLASS));
            
            int processId = 0;

            if (processClass != null)
            {
                processId = DB.getSQLValue(null,
                        "select ad_process_id from ad_process where classname = '" +
                        processClass + "'");
                s_log.warning("==> Process ID " + processId);
            }

            if ((process == null) && (processId == 0))
            {
                errorCode = 8;
                s_log.severe(
                    "You must specify the process ID with -" + COMPIEREPROCESS +
                    " or with -" + COMPIEREPROCESSCLASS);
                System.exit(errorCode);
            }

            if (processId == 0)
            {
                processId = Integer.parseInt(process);
            }

            String[] params = cmd.getOptionValues(COMPIEREPARAM);

            if (params == null)
            {
                params = new String[0];
            }
            
            if (processId <= 0) {
            	s_log.severe("You must specify a Process ID or classname");
            	errorCode = 8;
            }
            else {
            	String out = cmd.getOptionValue(COMPIEREFILE);
            
            	if (out == null || out.trim().length() == 0) {
            		errorCode = br.run(processId, params);
            	}
            	else {
            		errorCode = br.run(processId, params, out);
            	}
            	s_log.info("End of batch process");
            }
        }
        catch (ParseException e)
        {
        	s_log.log(Level.SEVERE, "Could not Parse the command OPTIONS <<" + e.getMessage() + ">>", e);
            errorCode = 9;
        }
        catch (Throwable t)
        {
        	s_log.log(Level.SEVERE, "E", t);
            errorCode = 4;
        }
    }

    protected static CommandLine commonArgsParse(String[] args, Options options)
        throws ParseException
    {
        CommandLineParser parser = new BasicParser();
        CommandLine cmd = null;

        try
        {
            cmd = parser.parse(options, args, true);
        }
        catch (ParseException e)
        {
            if ((cmd == null) || !cmd.hasOption("help"))
            {
                throw e;
            }
        }

        if (cmd.hasOption("help"))
        {
            HelpFormatter formatter = new HelpFormatter();
            formatter.printHelp("RUN_Batch.bat/sh", options);
            System.exit(0);
        }

        return cmd;
    }

    /**
     * Create the list of OPTIONS for the batch command.
     *
     * @param args the Java program arguements
     * @param options the commons-cli Options that is modified
     */
    protected static void setupCommandLine(String[] args, Options options)
    {
        addOption(options, COMPIERECLIENT, "Compiere Client", true, true);
        addOption(options, COMPIEREORG, "Compiere Organisation", true, true);
        addOption(options, COMPIEREWH, "Compiere Waregouse", true, true);
        addOption(options, COMPIERELANG, "Compiere Language", true, true);
        addOption(options, COMPIEREUSER, "Compiere username (SuperUser)", true, true);
        addOption(options, COMPIEREPWD, "Compiere password", true, true);
        addOption(options, COMPIEREROLE, "Compiere role (GardenWorld Admin)", true, true);

        addOption(options, COMPIEREPROCESS, "Compiere Process to start in ID form", true, true);
        addOption(options, COMPIEREPROCESSCLASS, "Compiere Process to start", true, true);
        addOption(options, COMPIEREPRINTER, "Printer name", true, true);
        addOption(options, COMPIEREFILE, "File name to output reports in PDF", false, true);
        addOption(options, COMPIEREPARAM, "Compiere Process Parameters", true, true);

        options.addOption("help", false, "print this message");
    }

    private static void addOption(Options options, String argName,
        String argDescription, boolean required, boolean withParameter)
    {
        OptionBuilder.withArgName(argName);

        if (withParameter)
        {
            OptionBuilder.hasArg();
        }

        OptionBuilder.withDescription(argDescription);

        Option serverOption = OptionBuilder.create(argName);
        options.addOption(serverOption);
    }
}
