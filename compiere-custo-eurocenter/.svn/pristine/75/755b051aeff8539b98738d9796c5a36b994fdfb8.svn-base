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
/** Generated Model for Z_TypeEcheance
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_TypeEcheance extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_TypeEcheance_ID id
    @param trx transaction
    */
    public X_Z_TypeEcheance (Ctx ctx, int Z_TypeEcheance_ID, Trx trx)
    {
        super (ctx, Z_TypeEcheance_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_TypeEcheance_ID == 0)
        {
            setIsFinancement (false);	// N
            setIsLivraison (false);	// N
            setName (null);
            setValue (null);
            setZ_TypeEcheance_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_TypeEcheance (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27638635813789L;
    /** Last Updated Timestamp 2012-12-26 09:28:17.0 */
    public static final long updatedMS = 1356510497000L;
    /** AD_Table_ID=1001794 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_TypeEcheance");
        
    }
    ;
    
    /** TableName=Z_TypeEcheance */
    public static final String Table_Name="Z_TypeEcheance";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set IsFinancement.
    @param IsFinancement IsFinancement */
    public void setIsFinancement (boolean IsFinancement)
    {
        set_Value ("IsFinancement", Boolean.valueOf(IsFinancement));
        
    }
    
    /** Get IsFinancement.
    @return IsFinancement */
    public boolean isFinancement() 
    {
        return get_ValueAsBoolean("IsFinancement");
        
    }
    
    /** Set IsLivraison.
    @param IsLivraison IsLivraison */
    public void setIsLivraison (boolean IsLivraison)
    {
        set_Value ("IsLivraison", Boolean.valueOf(IsLivraison));
        
    }
    
    /** Get IsLivraison.
    @return IsLivraison */
    public boolean isLivraison() 
    {
        return get_ValueAsBoolean("IsLivraison");
        
    }
    
    /** Set IsLivraison.
    @param IsAjust IsAjust */
    public void setIsAjust (boolean IsAjust)
    {
        set_Value ("IsAjust", Boolean.valueOf(IsAjust));
        
    }
    
    /** Get IsLivraison.
    @return IsLivraison */
    public boolean isAjust() 
    {
        return get_ValueAsBoolean("IsAjust");
        
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
    
    /** Set Z_TypeEcheance.
    @param Z_TypeEcheance_ID Z_TypeEcheance */
    public void setZ_TypeEcheance_ID (int Z_TypeEcheance_ID)
    {
        if (Z_TypeEcheance_ID < 1) throw new IllegalArgumentException ("Z_TypeEcheance_ID is mandatory.");
        set_ValueNoCheck ("Z_TypeEcheance_ID", Integer.valueOf(Z_TypeEcheance_ID));
        
    }
    
    /** Get Z_TypeEcheance.
    @return Z_TypeEcheance */
    public int getZ_TypeEcheance_ID() 
    {
        return get_ValueAsInt("Z_TypeEcheance_ID");
        
    }
    
    /** Set IsUnique.
    @param IsUnique IsUnique */
    public void setIsUnique (boolean IsUnique)
    {
        set_Value ("IsUnique", Boolean.valueOf(IsUnique));
        
    }
    
    /** Get IsLivraison.
    @return IsLivraison */
    public boolean isUnique() 
    {
        return get_ValueAsBoolean("IsUnique");
        
    }
    
    
}
