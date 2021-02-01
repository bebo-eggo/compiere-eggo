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
package com.audaxis.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.sql.*;
import org.compiere.framework.*;
import org.compiere.util.*;
/** Generated Model for Z_PosWfActivity
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_PosWfActivity extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_PosWfActivity_ID id
    @param trx transaction
    */
    public X_Z_PosWfActivity (Ctx ctx, int Z_PosWfActivity_ID, Trx trx)
    {
        super (ctx, Z_PosWfActivity_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_PosWfActivity_ID == 0)
        {
            setIsPOSUpdatable (false);	// N
            setValue (null);
            setZ_PosWfActivity_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_PosWfActivity (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27623543186789L;
    /** Last Updated Timestamp 2012-07-04 18:04:30.0 */
    public static final long updatedMS = 1341417870000L;
    /** AD_Table_ID=1000847 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_PosWfActivity");
        
    }
    ;
    
    /** TableName=Z_PosWfActivity */
    public static final String Table_Name="Z_PosWfActivity";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Role.
    @param AD_Role_ID Responsibility Role */
    public void setAD_Role_ID (int AD_Role_ID)
    {
        if (AD_Role_ID <= 0) set_Value ("AD_Role_ID", null);
        else
        set_Value ("AD_Role_ID", Integer.valueOf(AD_Role_ID));
        
    }
    
    /** Get Role.
    @return Responsibility Role */
    public int getAD_Role_ID() 
    {
        return get_ValueAsInt("AD_Role_ID");
        
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
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getDescription());
        
    }
    
    /** Set Modif.Pos Autorisée.
    @param IsPOSUpdatable Modif.Pos Autorisée */
    public void setIsPOSUpdatable (boolean IsPOSUpdatable)
    {
        set_Value ("IsPOSUpdatable", Boolean.valueOf(IsPOSUpdatable));
        
    }
    
    /** Get Modif.Pos Autorisée.
    @return Modif.Pos Autorisée */
    public boolean isPOSUpdatable() 
    {
        return get_ValueAsBoolean("IsPOSUpdatable");
        
    }
    
     
    /** Set Search Key.
    @param Value Search key for the record in the format required - must be unique */
    public void setValue (String Value)
    {
        if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
        set_ValueNoCheck ("Value", Value);
        
    }
    
    /** Get Search Key.
    @return Search key for the record in the format required - must be unique */
    public String getValue() 
    {
        return (String)get_Value("Value");
        
    }
    
    /** Set Activité.
    @param Z_PosWfActivity_ID Activité */
    public void setZ_PosWfActivity_ID (int Z_PosWfActivity_ID)
    {
        if (Z_PosWfActivity_ID < 1) throw new IllegalArgumentException ("Z_PosWfActivity_ID is mandatory.");
        set_ValueNoCheck ("Z_PosWfActivity_ID", Integer.valueOf(Z_PosWfActivity_ID));
        
    }
    
    /** Get Activité.
    @return Activité */
    public int getZ_PosWfActivity_ID() 
    {
        return get_ValueAsInt("Z_PosWfActivity_ID");
        
    }
    
    
}
