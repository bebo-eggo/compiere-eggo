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
/** Generated Model for Z_Sync_Database_Client
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_Sync_Database_Client extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_Sync_Database_Client_ID id
    @param trx transaction
    */
    public X_Z_Sync_Database_Client (Ctx ctx, int Z_Sync_Database_Client_ID, Trx trx)
    {
        super (ctx, Z_Sync_Database_Client_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_Sync_Database_Client_ID == 0)
        {
            setClientValue (null);
            setZ_Sync_Database_Client_ID (0);
            setZ_Sync_Database_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_Sync_Database_Client (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27630958442789L;
    /** Last Updated Timestamp 2012-09-28 13:52:06.0 */
    public static final long updatedMS = 1348833126000L;
    /** AD_Table_ID=1000972 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_Sync_Database_Client");
        
    }
    ;
    
    /** TableName=Z_Sync_Database_Client */
    public static final String Table_Name="Z_Sync_Database_Client";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Tenant Key.
    @param ClientValue Key of the Tenant */
    public void setClientValue (String ClientValue)
    {
        if (ClientValue == null) throw new IllegalArgumentException ("ClientValue is mandatory.");
        set_Value ("ClientValue", ClientValue);
        
    }
    
    /** Get Tenant Key.
    @return Key of the Tenant */
    public String getClientValue() 
    {
        return (String)get_Value("ClientValue");
        
    }
    
    /** Set Z_Sync_Database_Client_ID.
    @param Z_Sync_Database_Client_ID Z_Sync_Database_Client_ID */
    public void setZ_Sync_Database_Client_ID (int Z_Sync_Database_Client_ID)
    {
        if (Z_Sync_Database_Client_ID < 1) throw new IllegalArgumentException ("Z_Sync_Database_Client_ID is mandatory.");
        set_ValueNoCheck ("Z_Sync_Database_Client_ID", Integer.valueOf(Z_Sync_Database_Client_ID));
        
    }
    
    /** Get Z_Sync_Database_Client_ID.
    @return Z_Sync_Database_Client_ID */
    public int getZ_Sync_Database_Client_ID() 
    {
        return get_ValueAsInt("Z_Sync_Database_Client_ID");
        
    }
    
    /** Set Database used during Synchronization.
    @param Z_Sync_Database_ID Database used during Synchronization */
    public void setZ_Sync_Database_ID (int Z_Sync_Database_ID)
    {
        if (Z_Sync_Database_ID < 1) throw new IllegalArgumentException ("Z_Sync_Database_ID is mandatory.");
        set_ValueNoCheck ("Z_Sync_Database_ID", Integer.valueOf(Z_Sync_Database_ID));
        
    }
    
    /** Get Database used during Synchronization.
    @return Database used during Synchronization */
    public int getZ_Sync_Database_ID() 
    {
        return get_ValueAsInt("Z_Sync_Database_ID");
        
    }
    
    
}
