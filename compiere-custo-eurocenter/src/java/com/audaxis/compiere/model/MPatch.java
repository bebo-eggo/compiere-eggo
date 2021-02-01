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
package com.audaxis.compiere.model;

import com.audaxis.compiere.CompiereVersion;
import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.imp.CustoImportFactory;
import com.audaxis.compiere.imp.CustoImportInterface;

import org.compiere.model.X_Z_Patch;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.util.Ctx;
import java.util.logging.Level;


public class MPatch extends X_Z_Patch
{
    private static CLogger s_log = CLogger.getCLogger(MPatch.class);

    public MPatch(Ctx ctx, int Z_Patch_ID, Trx trxName)
    {
        super(ctx, Z_Patch_ID, trxName);
    }

    public MPatch(Ctx ctx, ResultSet rs, Trx trxName)
    {
        super(ctx, rs, trxName);
    }

    /**
     * return a Patch object for a specific patch file.
     *
     * @param patchFile
     * @param trxName
     * @return
     */
    public static MPatch getPatch(String patchFile, Trx trxName)
    {
        MPatch patch = null;

        PreparedStatement ps = null;
        ResultSet rs = null;
        try
        {
            ps = DB.prepareStatement("select * from z_patch where upper(patchfile) = upper(?)", trxName);
            ps.setString(1, patchFile);

            rs = ps.executeQuery();

            if (rs.next())
            {
                patch = new MPatch(Env.getCtx(), rs, trxName);
            }

        }
        catch (SQLException e)
        {
            s_log.log(Level.SEVERE, "Exception", e);
        }
        finally
        {
        	Util.closeCursor(ps, rs);
        }
        return patch;
    }

    /**
     * Process/Import the SQL of this patch
     *
     * @return error if any
     */
    public String process()
    {
        String error = "";
        CustoImportInterface csi = null;

        if (getPatchFile().toUpperCase().endsWith(".sql".toUpperCase()))
        {
            csi = CustoImportFactory.getCustoImport(CustoImportFactory.SQL,
                    get_Trx());
        }
        else
        {
            log.warning(getPatchFile() + " is not recognized as a CUSTO file.  It must be ended by .sql");
        }

        if (csi != null)
        {
            try
            {
                error = csi.process(this);
            }
            catch (Exception e)
            {
                log.log(Level.SEVERE, "Error Process Patch", e);
            }
        }

        // For New AD_EntityType table
        if (! CompiereVersion.isVersionBefore26()) {
        	String sql = "insert into ad_entitytype (ad_client_id, ad_org_id, createdby, updatedby, created, updated, isactive, "
        		+ "ad_entitytype_id, description, entitytype, help, name) " 
        		+ "select 0, 0, createdby, updatedby, created, updated , isactive, ad_sequence_nextno('AD_EntityType'), name, value, name, name "
        		+ "from ad_ref_list l where ad_reference_id = 245 "
        		+ "and not exists (select 1 from ad_entitytype o where o.entitytype = l.value)";
        	DB.executeUpdate(null, sql);
        }
        return error;
    }
}
