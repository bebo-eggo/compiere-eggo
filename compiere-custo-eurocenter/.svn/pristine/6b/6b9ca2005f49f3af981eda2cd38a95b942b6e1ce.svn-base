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
/** Generated Model for Z_SynchoLevel
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_SynchoLevel extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_SynchoLevel_ID id
    @param trx transaction
    */
    public X_Z_SynchoLevel (Ctx ctx, int Z_SynchoLevel_ID, Trx trx)
    {
        super (ctx, Z_SynchoLevel_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_SynchoLevel_ID == 0)
        {
            setAD_Schedule_ID (0);
            setName (null);
            setSeqNo (0);
            setZ_SynchoLevel_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_SynchoLevel (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27630958442789L;
    /** Last Updated Timestamp 2012-09-28 13:52:06.0 */
    public static final long updatedMS = 1348833126000L;
    /** AD_Table_ID=1000971 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_SynchoLevel");
        
    }
    ;
    
    /** TableName=Z_SynchoLevel */
    public static final String Table_Name="Z_SynchoLevel";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Schedule.
    @param AD_Schedule_ID Execution Schedule */
    public void setAD_Schedule_ID (int AD_Schedule_ID)
    {
        if (AD_Schedule_ID < 1) throw new IllegalArgumentException ("AD_Schedule_ID is mandatory.");
        set_Value ("AD_Schedule_ID", Integer.valueOf(AD_Schedule_ID));
        
    }
    
    /** Get Schedule.
    @return Execution Schedule */
    public int getAD_Schedule_ID() 
    {
        return get_ValueAsInt("AD_Schedule_ID");
        
    }
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setDescription (String Description)
    {
        set_Value ("Description", Description);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getDescription() 
    {
        return (String)get_Value("Description");
        
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
    
    /** Set Name.
    @param Name Alphanumeric identifier of the entity */
    public void setName (String Name)
    {
        if (Name == null) throw new IllegalArgumentException ("Name is mandatory.");
        set_Value ("Name", Name);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getName() 
    {
        return (String)get_Value("Name");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
        
    }
    
    /** Set Result.
    @param Result Result of the action taken */
    public void setResult (String Result)
    {
        set_Value ("Result", Result);
        
    }
    
    /** Get Result.
    @return Result of the action taken */
    public String getResult() 
    {
        return (String)get_Value("Result");
        
    }
    
    /** Set Sequence.
    @param SeqNo Method of ordering elements;
     lowest number comes first */
    public void setSeqNo (int SeqNo)
    {
        set_Value ("SeqNo", Integer.valueOf(SeqNo));
        
    }
    
    /** Get Sequence.
    @return Method of ordering elements;
     lowest number comes first */
    public int getSeqNo() 
    {
        return get_ValueAsInt("SeqNo");
        
    }
    
    /** Set Z_SynchoLevel_ID.
    @param Z_SynchoLevel_ID Z_SynchoLevel_ID */
    public void setZ_SynchoLevel_ID (int Z_SynchoLevel_ID)
    {
        if (Z_SynchoLevel_ID < 1) throw new IllegalArgumentException ("Z_SynchoLevel_ID is mandatory.");
        set_ValueNoCheck ("Z_SynchoLevel_ID", Integer.valueOf(Z_SynchoLevel_ID));
        
    }
    
    /** Get Z_SynchoLevel_ID.
    @return Z_SynchoLevel_ID */
    public int getZ_SynchoLevel_ID() 
    {
        return get_ValueAsInt("Z_SynchoLevel_ID");
        
    }
    
    
}
