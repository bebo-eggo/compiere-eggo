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
/** Generated Model for ZSubPaymentRule_Trl
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_ZSubPaymentRule_Trl extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param ZSubPaymentRule_Trl_ID id
    @param trx transaction
    */
    public X_ZSubPaymentRule_Trl (Ctx ctx, int ZSubPaymentRule_Trl_ID, Trx trx)
    {
        super (ctx, ZSubPaymentRule_Trl_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (ZSubPaymentRule_Trl_ID == 0)
        {
            setAD_Language (null);
            setIsTranslated (false);
            setZSubPaymentRule_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_ZSubPaymentRule_Trl (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27617924341789L;
    /** Last Updated Timestamp 2012-04-30 16:17:05.0 */
    public static final long updatedMS = 1335799025000L;
    /** AD_Table_ID=1000872 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("ZSubPaymentRule_Trl");
        
    }
    ;
    
    /** TableName=ZSubPaymentRule_Trl */
    public static final String Table_Name="ZSubPaymentRule_Trl";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Language.
    @param AD_Language Language for this entity */
    public void setAD_Language (String AD_Language)
    {
        set_ValueNoCheck ("AD_Language", AD_Language);
        
    }
    
    /** Get Language.
    @return Language for this entity */
    public String getAD_Language() 
    {
        return (String)get_Value("AD_Language");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getAD_Language()));
        
    }
    
    /** Set Translated.
    @param IsTranslated This column is translated */
    public void setIsTranslated (boolean IsTranslated)
    {
        set_Value ("IsTranslated", Boolean.valueOf(IsTranslated));
        
    }
    
    /** Get Translated.
    @return This column is translated */
    public boolean isTranslated() 
    {
        return get_ValueAsBoolean("IsTranslated");
        
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
    
    /** Set Sub Payment Rule.
    @param ZSubPaymentRule_ID Sub Payment Rule */
    public void setZSubPaymentRule_ID (int ZSubPaymentRule_ID)
    {
        if (ZSubPaymentRule_ID < 1) throw new IllegalArgumentException ("ZSubPaymentRule_ID is mandatory.");
        set_ValueNoCheck ("ZSubPaymentRule_ID", Integer.valueOf(ZSubPaymentRule_ID));
        
    }
    
    /** Get Sub Payment Rule.
    @return Sub Payment Rule */
    public int getZSubPaymentRule_ID() 
    {
        return get_ValueAsInt("ZSubPaymentRule_ID");
        
    }
    
    
}