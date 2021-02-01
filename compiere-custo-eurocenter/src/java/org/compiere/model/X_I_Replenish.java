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
/** Generated Model for I_Replenish
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_Replenish extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_Replenish_ID id
    @param trx transaction
    */
    public X_I_Replenish (Ctx ctx, int I_Replenish_ID, Trx trx)
    {
        super (ctx, I_Replenish_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_Replenish_ID == 0)
        {
            setI_IsImported (null);	// N
            setI_Replenish_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_Replenish (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27625179517789L;
    /** Last Updated Timestamp 2012-07-23 15:36:41.0 */
    public static final long updatedMS = 1343054201000L;
    /** AD_Table_ID=1001051 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_Replenish");
        
    }
    ;
    
    /** TableName=I_Replenish */
    public static final String Table_Name="I_Replenish";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
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
        
        set_ValueNoCheck ("I_IsImported", I_IsImported);
        
    }
    
    /** Get Imported.
    @return Has this import been processed? */
    public String getI_IsImported() 
    {
        return (String)get_Value("I_IsImported");
        
    }
    
    /** Set I_Replenish_ID.
    @param I_Replenish_ID I_Replenish_ID */
    public void setI_Replenish_ID (int I_Replenish_ID)
    {
        if (I_Replenish_ID < 1) throw new IllegalArgumentException ("I_Replenish_ID is mandatory.");
        set_ValueNoCheck ("I_Replenish_ID", Integer.valueOf(I_Replenish_ID));
        
    }
    
    /** Get I_Replenish_ID.
    @return I_Replenish_ID */
    public int getI_Replenish_ID() 
    {
        return get_ValueAsInt("I_Replenish_ID");
        
    }
    
    /** Set Maximum Level.
    @param Level_Max Maximum Inventory level for this product */
    public void setLevel_Max (java.math.BigDecimal Level_Max)
    {
        set_Value ("Level_Max", Level_Max);
        
    }
    
    /** Get Maximum Level.
    @return Maximum Inventory level for this product */
    public java.math.BigDecimal getLevel_Max() 
    {
        return get_ValueAsBigDecimal("Level_Max");
        
    }
    
    /** Set Minimum Level.
    @param Level_Min Minimum Inventory level for this product */
    public void setLevel_Min (java.math.BigDecimal Level_Min)
    {
        set_Value ("Level_Min", Level_Min);
        
    }
    
    /** Get Minimum Level.
    @return Minimum Inventory level for this product */
    public java.math.BigDecimal getLevel_Min() 
    {
        return get_ValueAsBigDecimal("Level_Min");
        
    }
    
    /** Set Product Category.
    @param M_Product_Category_ID Category of a Product */
    public void setM_Product_Category_ID (int M_Product_Category_ID)
    {
        if (M_Product_Category_ID <= 0) set_Value ("M_Product_Category_ID", null);
        else
        set_Value ("M_Product_Category_ID", Integer.valueOf(M_Product_Category_ID));
        
    }
    
    /** Get Product Category.
    @return Category of a Product */
    public int getM_Product_Category_ID() 
    {
        return get_ValueAsInt("M_Product_Category_ID");
        
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
    
    /** Set Type de magasin.
    @param TypeMagasin Type de magasin */
    public void setTypeMagasin (String TypeMagasin)
    {
        set_Value ("TypeMagasin", TypeMagasin);
        
    }
    
    /** Get Type de magasin.
    @return Type de magasin */
    public String getTypeMagasin() 
    {
        return (String)get_Value("TypeMagasin");
        
    }
    
    /** Set Code article.
    @param Value_M_Product Code article */
    public void setValue_M_Product (String Value_M_Product)
    {
        set_Value ("Value_M_Product", Value_M_Product);
        
    }
    
    /** Get Code article.
    @return Code article */
    public String getValue_M_Product() 
    {
        return (String)get_Value("Value_M_Product");
        
    }
    
    /** Set Code Famille.
    @param Value_M_Product_Category Code Famille */
    public void setValue_M_Product_Category (String Value_M_Product_Category)
    {
        set_Value ("Value_M_Product_Category", Value_M_Product_Category);
        
    }
    
    /** Get Code Famille.
    @return Code Famille */
    public String getValue_M_Product_Category() 
    {
        return (String)get_Value("Value_M_Product_Category");
        
    }
    
    /** Set Code magasin.
    @param Value_Org Code magasin */
    public void setValue_Org (String Value_Org)
    {
        set_Value ("Value_Org", Value_Org);
        
    }
    
    /** Get Code magasin.
    @return Code magasin */
    public String getValue_Org() 
    {
        return (String)get_Value("Value_Org");
        
    }
    
    /** Set Magasin créateur.
    @param Z_AD_org_ID Magasin créateur */
    public void setZ_AD_org_ID (int Z_AD_org_ID)
    {
        if (Z_AD_org_ID <= 0) set_Value ("Z_AD_org_ID", null);
        else
        set_Value ("Z_AD_org_ID", Integer.valueOf(Z_AD_org_ID));
        
    }
    
    /** Get Magasin créateur.
    @return Magasin créateur */
    public int getZ_AD_org_ID() 
    {
        return get_ValueAsInt("Z_AD_org_ID");
        
    }
    
    
}