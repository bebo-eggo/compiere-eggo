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
package com.audaxis.compiere.imp;

import com.audaxis.compiere.CompiereVersion;
import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MPatch;
import com.audaxis.compiere.process.ad.ADRefTableExport;
import com.audaxis.compiere.util.FileTextReader;

import org.compiere.db.CConnection;
import org.compiere.util.DB;
import org.compiere.util.SecureEngine;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


/**
 * @author Vincent Harcq
 */
public class CustoPlSqlImport extends CustoImport
    implements CustoImportInterface
{
    private static final String C_CURRENCY_TO_25 = "C_Currency_ID_To";
    private static final String C_CURRENCY_TO_26 = "C_Currency_To_ID";
	private static final String COMPIEREPLSQL_SQL = "compiereplsql.sql";
    private static final String COMPIEREEXEC = "compiereplsql.bat";

    /**
     * @see com.audaxis.compiere.imp.CustoImportInterface#process(java.io.InputStream)
     */
    public String process(MPatch patch) throws Exception
    {
    	log.warning("========= EXECUTING "+patch.getPatchFile()+" ====================");
        boolean isWindows = System.getProperty("os.name", "").startsWith("Win");

        String sql = transformSql(patch.getSQL());
        CConnection cc = CConnection.get();
        File tmpFile = new File(COMPIEREPLSQL_SQL);
        BufferedWriter fos = new BufferedWriter(new OutputStreamWriter(
                    new FileOutputStream(tmpFile), Charset.forName("ISO8859-1")));
        if (sql != null)
        	fos.write(sql);
        fos.flush();
        fos.close();

        Runtime rt = Runtime.getRuntime();

        StringBuffer cmd = new StringBuffer();
        
        if (!isWindows)
        {
            cmd = cmd.append("NLS_LANG=FRENCH_FRANCE");
            cmd = cmd.append("\n");
            cmd = cmd.append("export NLS_LANG");
        }
        else
        {
            cmd = cmd.append("set NLS_LANG=FRENCH_FRANCE");
        }

        cmd.append("\n");
        cmd = cmd.append("sqlplus ");
        cmd = cmd.append(cc.getDbUid());
        cmd = cmd.append("/");
        cmd = cmd.append(cc.getDbPwd());
        cmd = cmd.append("@");
        cmd = cmd.append(cc.getDbName());

        if (!isWindows)
        {
            cmd = cmd.append(" << EOF");
        }
        else
        {
            cmd = cmd.append(" < tmp.txt");
        }

        cmd = cmd.append("\n");
        
        if (!isWindows)
        {
            /**/
            cmd = cmd.append(" @ ./");
            cmd = cmd.append(COMPIEREPLSQL_SQL);
            /**/
            /*
            cmd = cmd.append(" @ ../download/data/");
            cmd = cmd.append(patch.getPatchFile());
            */
            cmd = cmd.append("\n");
            cmd = cmd.append("exit");
            cmd = cmd.append("\n");
            cmd = cmd.append("EOF");
            cmd = cmd.append("\n");
        }

        log.fine("COMMAND : " + cmd.toString());

//        if(sql.toUpperCase().contains("ALTER TABLE")){
//        	ArrayList<String[]> dbLinksName = new ArrayList<String[]>();
//            PreparedStatement ps = DB.prepareStatement("select z_dbhost,z_dbuser,z_dbpwd from z_sync_database where ISACTIVE = 'Y' ",patch.get_Trx());
//            ResultSet rs = ps.executeQuery();
//            try {
//				while (rs.next())
//				{
//					String[] db = new String[3];
//					db[0]=rs.getString(1);
//					db[1]=rs.getString(2);
//						db[2]=rs.getString(3);
//					dbLinksName.add(db);
//				}
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}finally {
//	        	Util.closeCursor(ps, rs);
//	        }
//            
//            if(dbLinksName != null){
//            	for (String[] db : dbLinksName) {
//            		cmd = cmd.append("sqlplus ");
//                    cmd = cmd.append(db[1]);
//                    cmd = cmd.append("/");
//                    cmd = cmd.append(SecureEngine.decrypt(db[2]));
//                    cmd = cmd.append("@");
//                    cmd = cmd.append(SecureEngine.decrypt(db[0])+":1521/xe");
//
//                    if (!isWindows)
//                    {
//                        cmd = cmd.append(" << EOF");
//                    }
//                    else
//                    {
//                        cmd = cmd.append(" < tmp.txt");
//                    }
//
//                    cmd = cmd.append("\n");
//                    
//                    if (!isWindows)
//                    {
//                        /**/
//                        cmd = cmd.append(" @ ./");
//                        cmd = cmd.append(COMPIEREPLSQL_SQL);
//                        /**/
//                        /*
//                        cmd = cmd.append(" @ ../download/data/");
//                        cmd = cmd.append(patch.getPatchFile());
//                        */
//                        cmd = cmd.append("\n");
//                        cmd = cmd.append("exit");
//                        cmd = cmd.append("\n");
//                        cmd = cmd.append("EOF");
//                        cmd = cmd.append("\n");
//                    }
//				}
//            }
//        }
        
        BufferedWriter bw = new BufferedWriter(new FileWriter(COMPIEREEXEC));
        bw.write(cmd.toString());
        bw.close();

        File execFile = new File(COMPIEREEXEC);

        // For windows
        StringBuffer cmdTxt = new StringBuffer();

        /**/
        cmdTxt = cmdTxt.append(" @ ./");
        cmdTxt = cmdTxt.append(COMPIEREPLSQL_SQL);
        /**/
        /*
        cmdTxt = cmdTxt.append(" @ ../download/data/");
        cmdTxt = cmdTxt.append(patch.getPatchFile());
        */
        cmdTxt = cmdTxt.append("\n");
        cmdTxt = cmdTxt.append("commit");
        cmdTxt = cmdTxt.append("\n");
        cmdTxt = cmdTxt.append("exit");
        cmdTxt = cmdTxt.append("\n");

        BufferedWriter bwtxt = new BufferedWriter(new FileWriter("tmp.txt"));
        bwtxt.write(cmdTxt.toString());
        bwtxt.close();

        /*
         * See
         *
         * http://www.javaworld.com/javaworld/jw-12-2000/jw-1229-traps.html
         * http://www.rgagnon.com/javadetails/java-0014.html
         *
         */
        log.fine("Runtime.exec() START");

        Process p;

        if (isWindows)
        {
            //? p = rt.exec("cmd.exe /C " + '"' + COMPIEREEXEC + '"');
            p = rt.exec(COMPIEREEXEC);
        }
        else
        {
            p = rt.exec("/bin/sh " + execFile.getAbsolutePath());
        }

        log.fine("Runtime.exec() DONE");

        File outFile = new File(COMPIEREEXEC + ".out");
        File errFile = new File(COMPIEREEXEC + ".err");
        FileOutputStream fos1 = new FileOutputStream(outFile);
        FileOutputStream fos2 = new FileOutputStream(errFile);
        StreamGobbler errorGobbler = new StreamGobbler(p.getErrorStream(),
                "ERROR", fos2);
        StreamGobbler outputGobbler = new StreamGobbler(p.getInputStream(),
                "OUTPUT", fos1);
        errorGobbler.start();
        outputGobbler.start();

        int result = p.waitFor();

        log.fine("Runtime.exec() WAITFOR DONE Result:" + result);

        fos1.flush();
        fos1.close();
        fos2.flush();
        fos2.close();

        FileTextReader fto = new FileTextReader(outFile);
        FileTextReader fte = new FileTextReader(errFile);

        if (patch != null)
        {
            patch.setStandardOutput(fto.getContent());
            patch.setErrorOutput(fte.getContent());

            if ((fte.getContent() != null) &&
                    (fte.getContent().trim().length() > 0))
            {
                patch.setProcessed(false);
            }
            else
            {
                patch.setProcessed(true);
            }

            patch.save();
            
        }

        //tmpFile.delete();
        log.fine("FINISH");

        return null;
    }

	/**
	 * Transform specifically depending of version
	 * @param sql
	 * @return
	 */
    private String transformSql(String sql) {
    	String ret = sql;
    	if (ret == null)
    		return null;
    	if (CompiereVersion.isVersionBefore26()) {
    		if (ret.indexOf(C_CURRENCY_TO_26) > 0) {
    			ret = ret.replaceAll(C_CURRENCY_TO_26, C_CURRENCY_TO_25);
    		}
    		if (ret.indexOf(ADRefTableExport.FIELDS_GLOBAL) > 0) {
    			ret = ret.replaceAll(ADRefTableExport.FIELDS_GLOBAL, ADRefTableExport.FIELDS_25);
    		}
    	}
    	else {
    		if (ret.indexOf(C_CURRENCY_TO_25) > 0) {
    			ret = ret.replaceAll(C_CURRENCY_TO_25, C_CURRENCY_TO_26);
    		}
    		if (ret.indexOf(ADRefTableExport.FIELDS_25) > 0) {
    			ret = ret.replaceAll(ADRefTableExport.FIELDS_25, ADRefTableExport.FIELDS_GLOBAL);
    		}    		
    	}
		return ret;
	}
    
}
