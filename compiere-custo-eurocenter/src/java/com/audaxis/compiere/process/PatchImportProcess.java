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
package com.audaxis.compiere.process;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MPatch;
import com.audaxis.compiere.process.ad.PatchApplyProcess;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;


/**
 * Import patches from a directory
 *
 * @author vha
 *
 */
public class PatchImportProcess extends SvrProcessExtended
{
    protected static CLogger s_log = CLogger.getCLogger(PatchImportProcess.class);

    public static final String SQL_SCRIPT_SUFFIX = ".sql";

    protected String patchNumber = null;
    protected String directory = null;

    @Override
    protected void prepare()
    {
        ProcessInfoParameter[] para = getParameter();

        if (para.length > 0)
        {
            patchNumber = (String) para[0].getParameter();
        }

        if (para.length > 1)
        {
            directory = (String) para[1].getParameter();
        }
    }

    @Override
    protected String doIt() throws Exception
    {
    	// These must remain the first ones
    	try {
	    	CallableStatement cs = get_Trx().getConnection().prepareCall("alter table z_patch modify patchfile nvarchar2(2000)");
	    	cs.execute();
	    	cs = get_Trx().getConnection().prepareCall("alter table z_patch modify patchnumber nvarchar2(2000)");
	    	cs.execute();
    	} catch (SQLException e) {
    		log.log(Level.SEVERE, "E", e);
    	}

    	// Delete old Manual patches that were not processed 
    	// and should never been !
    	DB.executeUpdate(get_TrxName(), "delete from z_patch where manualload = 'Y' and processed = 'N'");
    	
        File dirFile = new File(directory);
        String ret = "";

        if (dirFile.isDirectory())
        {
            File[] f = dirFile.listFiles();

            for (int i = 0; i < f.length; i++)
            {
                File file2 = f[i];

                if (isEntryValid(file2.getName()))
                {
                    log.info(file2.getName() + " found");

                    InputStream is = new FileInputStream(file2);
                    try {
                    	createPatchInDatabase(file2.getName(), is);
                    } catch (Exception e) {
                    	log.warning("PATCH "+file2.getName()+ " COULD NOT BE INSERTED INTO Z_PATCH TABLE");
                    }
                    is.close();
                }
            }
        }

        ret = importNewpatches();

        return ret;
    }

    /**
    * Check all patch not loaded yet and process them.
    * @return error if any
    */
    protected String importNewpatches()
    {
        PatchApplyProcess.preProcess(getCtx(), get_TrxName());

        StringBuffer sb = new StringBuffer("");

        try
        {
            if ((patchNumber == null) || (patchNumber.trim().length() == 0))
            {
                sb = new StringBuffer("");

                PreparedStatement ps = DB.prepareStatement("select * from z_patch where processed = ? and manualload = ? order by patchfile asc",
                        get_TrxName());
                ps.setString(1, "N");
                ps.setString(2, "N");

                ResultSet rs = ps.executeQuery();

                try {
					while (rs.next())
					{
					    MPatch patch = new MPatch(getCtx(), rs, get_TrxName());
					    String error = null;
					    try {
					    	patch.process();
					    } catch (Exception e){
					    	error = e.getMessage();
					    }

					    if ((error != null) && (error.trim().length() > 0))
					    {
					        sb.append(patch.getPatchFile());
					        sb.append(" : ");
					        sb.append(error);
					        sb.append("\n");
					    }
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                finally{
        			Util.closeCursor(ps, rs);
        		}
            }
            else
            {
                sb = new StringBuffer("");

                PreparedStatement ps = DB.prepareStatement("select * from z_patch where patchnumber = ? order by patchfile asc",
                        get_TrxName());
                ps.setString(1, patchNumber);

                ResultSet rs = ps.executeQuery();

                try {
					while (rs.next())
					{
					    MPatch patch = new MPatch(getCtx(), rs, get_TrxName());
					    String error = patch.process();

					    if ((error != null) && (error.trim().length() > 0))
					    {
					        sb.append(patch.getPatchFile());
					        sb.append(" : ");
					        sb.append(error);
					        sb.append("\n");
					    }
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                finally{
        			Util.closeCursor(ps, rs);
        		}
            }
        }
        catch (SQLException e)
        {
            log.log(Level.SEVERE, "exception", e);
        }

        try {
        	PatchApplyProcess.postProcess(getCtx(),get_TrxName());
        } catch (Throwable t) {
        	log.log(Level.SEVERE, "Post Process exception", t);
        }

        return sb.toString();
    }

    /**
     * @param entryName
     * @return
     */
    protected boolean isEntryValid(String entryName)
    {
        boolean ret = entryName.endsWith(SQL_SCRIPT_SUFFIX);

        if (patchNumber != null)
        {
            ret = ret && entryName.startsWith(patchNumber);
        }

        return ret;
    }

    protected void createPatchInDatabase(String patchFile, InputStream is)
    {
        try
        {
            InputStreamReader reader = new InputStreamReader(is,
                    Charset.forName("ISO8859-1"));

            StringBuffer out = new StringBuffer();
            char[] b = new char[4096];

            for (int n; (n = reader.read(b)) != -1;)
            {
                out.append(new String(b, 0, n));
            }

            MPatch patch = MPatch.getPatch(patchFile, get_TrxName());

            if (patch == null)
            {
                patch = new MPatch(getCtx(), 0, get_TrxName());
                patch.setClientOrg(0, 0);
                patch.setIsActive(true);
                patch.setPatchFile(patchFile.toUpperCase());
                int l = patchFile.length();
                if (patchFile.indexOf("-") > 0)
                	l = patchFile.indexOf("-");
                else if (patchFile.indexOf(".") > 0)
                	l = patchFile.indexOf(".");
                patch.setPatchNumber(patchFile.toUpperCase().substring(0, l)); 
                patch.setProcessed(false);
                patch.setSQL(out.toString());
                patch.setManualLoad(false);
                patch.save();
            }
        }
        catch (Throwable e)
        {
            log.log(Level.SEVERE, patchFile + " : le Z_Patch ne peut être sauvé dans la Database", e);
        }
    }
    
    public static void main(String[] args){
    	String patchFile = "C001-sql-01.sql";
    	int l = patchFile.indexOf("-");
    	System.out.println(patchFile.substring(0, l));
    	patchFile = "ECOTAX-01.sql";
    	l = patchFile.indexOf("-");
    	System.out.println(patchFile.substring(0, l));
    	patchFile = "ECOTAX.sql";
    	l = patchFile.indexOf(".");
    	System.out.println(patchFile.substring(0, l));

    }
}
