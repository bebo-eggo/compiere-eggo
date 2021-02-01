/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2008 Compiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us at *
 * Compiere, Inc., 3600 Bridge Parkway #102, Redwood City, CA 94065, USA      *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.sql.*;
import org.compiere.framework.*;
import org.compiere.util.*;
/** Generated Model for Z_Sync_Db_Level_Log
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_Sync_Db_Level_Log extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_Sync_Db_Level_Log_ID id
    @param trx transaction
    */
    public X_Z_Sync_Db_Level_Log (Ctx ctx, int Z_Sync_Db_Level_Log_ID, Trx trx)
    {
        super (ctx, Z_Sync_Db_Level_Log_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_Sync_Db_Level_Log_ID == 0)
        {
            setIsError (false);	// N
            setZ_Sync_Database_Level_ID (0);
            setZ_Sync_Db_Level_Log_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_Sync_Db_Level_Log (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27630958442789L;
    /** Last Updated Timestamp 2012-09-28 13:52:06.0 */
    public static final long updatedMS = 1348833126000L;
    /** AD_Table_ID=1000970 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_Sync_Db_Level_Log");
        
    }
    ;
    
    /** TableName=Z_Sync_Db_Level_Log */
    public static final String Table_Name="Z_Sync_Db_Level_Log";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Error.
    @param IsError An Error that has occurred in the execution */
    public void setIsError (boolean IsError)
    {
        set_Value ("IsError", Boolean.valueOf(IsError));
        
    }
    
    /** Get Error.
    @return An Error that has occurred in the execution */
    public boolean isError() 
    {
        return get_ValueAsBoolean("IsError");
        
    }
    
    /** Set LastRun.
    @param LastRun LastRun */
    public void setLastRun (Timestamp LastRun)
    {
        set_Value ("LastRun", LastRun);
        
    }
    
    /** Get LastRun.
    @return LastRun */
    public Timestamp getLastRun() 
    {
        return (Timestamp)get_Value("LastRun");
        
    }
    
    /** Set Message Text.
    @param MsgText Textual Informational, Menu or Error Message */
    public void setMsgText (String MsgText)
    {
        set_Value ("MsgText", MsgText);
        
    }
    
    /** Get Message Text.
    @return Textual Informational, Menu or Error Message */
    public String getMsgText() 
    {
        return (String)get_Value("MsgText");
        
    }
    
    /** Set Z_Sync_Database_Level.
    @param Z_Sync_Database_Level_ID Z_Sync_Database_Level */
    public void setZ_Sync_Database_Level_ID (int Z_Sync_Database_Level_ID)
    {
        if (Z_Sync_Database_Level_ID < 1) throw new IllegalArgumentException ("Z_Sync_Database_Level_ID is mandatory.");
        set_ValueNoCheck ("Z_Sync_Database_Level_ID", Integer.valueOf(Z_Sync_Database_Level_ID));
        
    }
    
    /** Get Z_Sync_Database_Level.
    @return Z_Sync_Database_Level */
    public int getZ_Sync_Database_Level_ID() 
    {
        return get_ValueAsInt("Z_Sync_Database_Level_ID");
        
    }
    
    /** Set Z_Sync_Db_Level_Log.
    @param Z_Sync_Db_Level_Log_ID Z_Sync_Db_Level_Log */
    public void setZ_Sync_Db_Level_Log_ID (int Z_Sync_Db_Level_Log_ID)
    {
        if (Z_Sync_Db_Level_Log_ID < 1) throw new IllegalArgumentException ("Z_Sync_Db_Level_Log_ID is mandatory.");
        set_ValueNoCheck ("Z_Sync_Db_Level_Log_ID", Integer.valueOf(Z_Sync_Db_Level_Log_ID));
        
    }
    
    /** Get Z_Sync_Db_Level_Log.
    @return Z_Sync_Db_Level_Log */
    public int getZ_Sync_Db_Level_Log_ID() 
    {
        return get_ValueAsInt("Z_Sync_Db_Level_Log_ID");
        
    }
    
    
}
