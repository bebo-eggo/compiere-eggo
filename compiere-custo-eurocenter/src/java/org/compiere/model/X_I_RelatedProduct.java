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
/** Generated Model for I_RelatedProduct
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_RelatedProduct extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_RelatedProduct_ID id
    @param trx transaction
    */
    public X_I_RelatedProduct (Ctx ctx, int I_RelatedProduct_ID, Trx trx)
    {
        super (ctx, I_RelatedProduct_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_RelatedProduct_ID == 0)
        {
            setI_RelatedProduct_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_RelatedProduct (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27625439241789L;
    /** Last Updated Timestamp 2012-07-26 15:45:25.0 */
    public static final long updatedMS = 1343313925000L;
    /** AD_Table_ID=1001153 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_RelatedProduct");
        
    }
    ;
    
    /** TableName=I_RelatedProduct */
    public static final String Table_Name="I_RelatedProduct";
    
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
        if (!X_Ref__IsImported.isValid(I_IsImported));
        
        set_Value ("I_IsImported", I_IsImported);
        
    }
    
    /** Get Imported.
    @return Has this import been processed? */
    public String getI_IsImported() 
    {
        return (String)get_Value("I_IsImported");
        
    }
    
    /** Set I_RelatedProduct.
    @param I_RelatedProduct_ID I_RelatedProduct */
    public void setI_RelatedProduct_ID (int I_RelatedProduct_ID)
    {
        if (I_RelatedProduct_ID < 1) throw new IllegalArgumentException ("I_RelatedProduct_ID is mandatory.");
        set_ValueNoCheck ("I_RelatedProduct_ID", Integer.valueOf(I_RelatedProduct_ID));
        
    }
    
    /** Get I_RelatedProduct.
    @return I_RelatedProduct */
    public int getI_RelatedProduct_ID() 
    {
        return get_ValueAsInt("I_RelatedProduct_ID");
        
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
    
    /** Set Related Product.
    @param RelatedProduct_ID Related Product */
    public void setRelatedProduct_ID (int RelatedProduct_ID)
    {
        if (RelatedProduct_ID <= 0) set_Value ("RelatedProduct_ID", null);
        else
        set_Value ("RelatedProduct_ID", Integer.valueOf(RelatedProduct_ID));
        
    }
    
    /** Get Related Product.
    @return Related Product */
    public int getRelatedProduct_ID() 
    {
        return get_ValueAsInt("RelatedProduct_ID");
        
    }
    
    /** Alternative = A */
    public static final String RELATEDPRODUCTTYPE_Alternative = X_Ref_M_RelatedProduct_Type.ALTERNATIVE.getValue();
    /** Web Promotion = P */
    public static final String RELATEDPRODUCTTYPE_WebPromotion = X_Ref_M_RelatedProduct_Type.WEB_PROMOTION.getValue();
    /** Supplemental = S */
    public static final String RELATEDPRODUCTTYPE_Supplemental = X_Ref_M_RelatedProduct_Type.SUPPLEMENTAL.getValue();
    /** Set Related Product Type.
    @param RelatedProductType Related Product Type */
    public void setRelatedProductType (String RelatedProductType)
    {
        if (!X_Ref_M_RelatedProduct_Type.isValid(RelatedProductType));
        
        set_Value ("RelatedProductType", RelatedProductType);
        
    }
    
    /** Get Related Product Type.
    @return Related Product Type */
    public String getRelatedProductType() 
    {
        return (String)get_Value("RelatedProductType");
        
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
    
    /** Set Related Product Value.
    @param Value_RelatedProduct Related Product Value */
    public void setValue_RelatedProduct (String Value_RelatedProduct)
    {
        set_Value ("Value_RelatedProduct", Value_RelatedProduct);
        
    }
    
    /** Get Related Product Value.
    @return Related Product Value */
    public String getValue_RelatedProduct() 
    {
        return (String)get_Value("Value_RelatedProduct");
        
    }
    
    
}
