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
/** Generated Model for Z_S_S_S_Famille
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_S_S_S_Famille extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_S_S_S_Famille_ID id
    @param trx transaction
    */
    public X_Z_S_S_S_Famille (Ctx ctx, int Z_S_S_S_Famille_ID, Trx trx)
    {
        super (ctx, Z_S_S_S_Famille_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_S_S_S_Famille_ID == 0)
        {
            setName (null);
            setValue (null);
            setZ_S_S_Famille_ID (0);
            setZ_S_S_S_Famille_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_S_S_S_Famille (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27623880438789L;
    /** Last Updated Timestamp 2012-07-08 14:45:22.0 */
    public static final long updatedMS = 1341755122000L;
    /** AD_Table_ID=1000853 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_S_S_S_Famille");
        
    }
    ;
    
    /** TableName=Z_S_S_S_Famille */
    public static final String Table_Name="Z_S_S_S_Famille";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
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
    
    /** Set Search Key.
    @param Value Search key for the record in the format required - must be unique */
    public void setValue (String Value)
    {
        if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
        set_Value ("Value", Value);
        
    }
    
    /** Get Search Key.
    @return Search key for the record in the format required - must be unique */
    public String getValue() 
    {
        return (String)get_Value("Value");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getValue());
        
    }
    
    /** Set Sous sous famille.
    @param Z_S_S_Famille_ID Sous sous famille */
    public void setZ_S_S_Famille_ID (int Z_S_S_Famille_ID)
    {
        if (Z_S_S_Famille_ID < 1) throw new IllegalArgumentException ("Z_S_S_Famille_ID is mandatory.");
        set_ValueNoCheck ("Z_S_S_Famille_ID", Integer.valueOf(Z_S_S_Famille_ID));
        
    }
    
    /** Get Sous sous famille.
    @return Sous sous famille */
    public int getZ_S_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_S_Famille_ID");
        
    }
    
    /** Set Sous sous sous famille.
    @param Z_S_S_S_Famille_ID Sous sous sous famille */
    public void setZ_S_S_S_Famille_ID (int Z_S_S_S_Famille_ID)
    {
        if (Z_S_S_S_Famille_ID < 1) throw new IllegalArgumentException ("Z_S_S_S_Famille_ID is mandatory.");
        set_ValueNoCheck ("Z_S_S_S_Famille_ID", Integer.valueOf(Z_S_S_S_Famille_ID));
        
    }
    
    /** Get Sous sous sous famille.
    @return Sous sous sous famille */
    public int getZ_S_S_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_S_S_Famille_ID");
        
    }
    
    
}
