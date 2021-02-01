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
/** Generated Model for Z_Sync_Database
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_Sync_Database extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_Sync_Database_ID id
    @param trx transaction
    */
    public X_Z_Sync_Database (Ctx ctx, int Z_Sync_Database_ID, Trx trx)
    {
        super (ctx, Z_Sync_Database_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_Sync_Database_ID == 0)
        {
            setIsDefault (true);	// Y
            setZ_Sync_Database_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_Sync_Database (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27630184051789L;
    /** Last Updated Timestamp 2012-09-19 14:45:35.0 */
    public static final long updatedMS = 1348058735000L;
    /** AD_Table_ID=1000968 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_Sync_Database");
        
    }
    ;
    
    /** TableName=Z_Sync_Database */
    public static final String Table_Name="Z_Sync_Database";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Database Link Name.
    @param DatabaseLinkName Database Link Name */
    public void setDatabaseLinkName (String DatabaseLinkName)
    {
        set_Value ("DatabaseLinkName", DatabaseLinkName);
        
    }
    
    /** Get Database Link Name.
    @return Database Link Name */
    public String getDatabaseLinkName() 
    {
        return (String)get_Value("DatabaseLinkName");
        
    }
    
    /** Set Default.
    @param IsDefault Default value */
    public void setIsDefault (boolean IsDefault)
    {
        set_Value ("IsDefault", Boolean.valueOf(IsDefault));
        
    }
    
    /** Get Default.
    @return Default value */
    public boolean isDefault() 
    {
        return get_ValueAsBoolean("IsDefault");
        
    }
    
    /** Set Dernière synchronisation.
    @param LastSynchronization Dernière synchronisation */
    public void setLastSynchronization (Timestamp LastSynchronization)
    {
        set_Value ("LastSynchronization", LastSynchronization);
        
    }
    
    /** Get Dernière synchronisation.
    @return Dernière synchronisation */
    public Timestamp getLastSynchronization() 
    {
        return (Timestamp)get_Value("LastSynchronization");
        
    }
    
    /** Set LastSynchronizationUP.
    @param LastSynchronizationUP LastSynchronizationUP */
    public void setLastSynchronizationUP (Timestamp LastSynchronizationUP)
    {
        set_Value ("LastSynchronizationUP", LastSynchronizationUP);
        
    }
    
    /** Get LastSynchronizationUP.
    @return LastSynchronizationUP */
    public Timestamp getLastSynchronizationUP() 
    {
        return (Timestamp)get_Value("LastSynchronizationUP");
        
    }
    
    /** Set Name.
    @param Name Alphanumeric identifier of the entity */
    public void setName (String Name)
    {
        set_Value ("Name", Name);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getName() 
    {
        return (String)get_Value("Name");
        
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
    
    /** Get Database used during Synchronization.
    @return Database used during Synchronization */
    public int getAD_OrgTrx_ID() 
    {
        return get_ValueAsInt("AD_OrgTrx_ID");
        
    }
    
    @Override
    protected boolean beforeDelete() {
    	String sqlDelDbLink = "drop database link "+getDatabaseLinkName();
    	int result = DB.executeUpdate(sqlDelDbLink, get_Trx());
		if(result < 0)
			return false;
    	return true;
    }
}
