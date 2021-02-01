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
/** Generated Model for I_Substitute
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_Substitute extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_Substitute_ID id
    @param trx transaction
    */
    public X_I_Substitute (Ctx ctx, int I_Substitute_ID, Trx trx)
    {
        super (ctx, I_Substitute_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_Substitute_ID == 0)
        {
            setI_IsImported (null);	// N
            setI_Substitute_ID (0);
            setName (null);
            setValue_M_Product (null);
            setValue_Substitute (null);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_Substitute (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27625243650789L;
    /** Last Updated Timestamp 2012-07-24 09:25:34.0 */
    public static final long updatedMS = 1343118334000L;
    /** AD_Table_ID=1001052 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_Substitute");
        
    }
    ;
    
    /** TableName=I_Substitute */
    public static final String Table_Name="I_Substitute";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
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
    
    /** Set Import Error Message.
    @param I_ErrorMsg Messages generated from import process */
    public void setI_ErrorMsg (String I_ErrorMsg)
    {
        set_Value ("I_ErrorMsg", I_ErrorMsg);
        
    }
    
    /** Get Import Error Message.
    @return Messages generated from import process */
    public String getI_ErrorMsg() 
    {
        return (String)get_Value("I_ErrorMsg");
        
    }
    
    /** Error = E */
    public static final String I_ISIMPORTED_Error = X_Ref__IsImported.ERROR.getValue();
    /** No = N */
    public static final String I_ISIMPORTED_No = X_Ref__IsImported.NO.getValue();
    /** Yes = Y */
    public static final String I_ISIMPORTED_Yes = X_Ref__IsImported.YES.getValue();
    /** Set Imported.
    @param I_IsImported Has this import been processed? */
    public void setI_IsImported (String I_IsImported)
    {
        if (I_IsImported == null) throw new IllegalArgumentException ("I_IsImported is mandatory");
        if (!X_Ref__IsImported.isValid(I_IsImported));
        
        set_Value ("I_IsImported", I_IsImported);
        
    }
    
    /** Get Imported.
    @return Has this import been processed? */
    public String getI_IsImported() 
    {
        return (String)get_Value("I_IsImported");
        
    }
    
    /** Set Substitute Import.
    @param I_Substitute_ID Substitute Import */
    public void setI_Substitute_ID (int I_Substitute_ID)
    {
        if (I_Substitute_ID < 1) throw new IllegalArgumentException ("I_Substitute_ID is mandatory.");
        set_ValueNoCheck ("I_Substitute_ID", Integer.valueOf(I_Substitute_ID));
        
    }
    
    /** Get Substitute Import.
    @return Substitute Import */
    public int getI_Substitute_ID() 
    {
        return get_ValueAsInt("I_Substitute_ID");
        
    }
    
    /** Set Product.
    @param M_Product_ID Product, Service, Item */
    public void setM_Product_ID (int M_Product_ID)
    {
        if (M_Product_ID <= 0) set_Value ("M_Product_ID", null);
        else
        set_Value ("M_Product_ID", Integer.valueOf(M_Product_ID));
        
    }
    
    /** Get Product.
    @return Product, Service, Item */
    public int getM_Product_ID() 
    {
        return get_ValueAsInt("M_Product_ID");
        
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
    
    /** Set Processed.
    @param Processed The document has been processed */
    public void setProcessed (boolean Processed)
    {
        set_Value ("Processed", Boolean.valueOf(Processed));
        
    }
    
    /** Get Processed.
    @return The document has been processed */
    public boolean isProcessed() 
    {
        return get_ValueAsBoolean("Processed");
        
    }
    
    /** Set Process Now.
    @param Processing Process Now */
    public void setProcessing (boolean Processing)
    {
        set_Value ("Processing", Boolean.valueOf(Processing));
        
    }
    
    /** Get Process Now.
    @return Process Now */
    public boolean isProcessing() 
    {
        return get_ValueAsBoolean("Processing");
        
    }
    
    /** Set Substitute.
    @param Substitute_ID Entity which can be used in place of this entity */
    public void setSubstitute_ID (int Substitute_ID)
    {
        if (Substitute_ID <= 0) set_Value ("Substitute_ID", null);
        else
        set_Value ("Substitute_ID", Integer.valueOf(Substitute_ID));
        
    }
    
    /** Get Substitute.
    @return Entity which can be used in place of this entity */
    public int getSubstitute_ID() 
    {
        return get_ValueAsInt("Substitute_ID");
        
    }
    
    /** Set Code article.
    @param Value_M_Product Code article */
    public void setValue_M_Product (String Value_M_Product)
    {
        if (Value_M_Product == null) throw new IllegalArgumentException ("Value_M_Product is mandatory.");
        set_Value ("Value_M_Product", Value_M_Product);
        
    }
    
    /** Get Code article.
    @return Code article */
    public String getValue_M_Product() 
    {
        return (String)get_Value("Value_M_Product");
        
    }
    
    /** Set Code article remplaçant.
    @param Value_Substitute Code article remplaçant */
    public void setValue_Substitute (String Value_Substitute)
    {
        if (Value_Substitute == null) throw new IllegalArgumentException ("Value_Substitute is mandatory.");
        set_Value ("Value_Substitute", Value_Substitute);
        
    }
    
    /** Get Code article remplaçant.
    @return Code article remplaçant */
    public String getValue_Substitute() 
    {
        return (String)get_Value("Value_Substitute");
        
    }
    
    
}
