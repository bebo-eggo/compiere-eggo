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
/** Generated Model for I_ProductPrice
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_ProductPrice extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_ProductPrice_ID id
    @param trx transaction
    */
    public X_I_ProductPrice (Ctx ctx, int I_ProductPrice_ID, Trx trx)
    {
        super (ctx, I_ProductPrice_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_ProductPrice_ID == 0)
        {
            setI_ProductPrice_ID (0);
            setIs_ZDataValidate (false);	// N
            setIs_ZFolder (false);	// N
            setProcessed (false);	// N
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_ProductPrice (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27633366207789L;
    /** AD_Table_ID=1000982 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_ProductPrice");
        
    }
    ;
    
    /** TableName=I_ProductPrice */
    public static final String Table_Name="I_ProductPrice";
    
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
        if (!X_Ref__IsImported.isValid(I_IsImported));
        
        set_Value ("I_IsImported", I_IsImported);
        
    }
    
    /** Get Imported.
    @return Has this import been processed? */
    public String getI_IsImported() 
    {
        return (String)get_Value("I_IsImported");
        
    }
    
    /** Set Import des listes de prix.
    @param I_ProductPrice_ID Import des listes de prix */
    public void setI_ProductPrice_ID (int I_ProductPrice_ID)
    {
        if (I_ProductPrice_ID < 1) throw new IllegalArgumentException ("I_ProductPrice_ID is mandatory.");
        set_ValueNoCheck ("I_ProductPrice_ID", Integer.valueOf(I_ProductPrice_ID));
        
    }
    
    /** Get Import des listes de prix.
    @return Import des listes de prix */
    public int getI_ProductPrice_ID() 
    {
        return get_ValueAsInt("I_ProductPrice_ID");
        
    }
    
    /** Set Données validées.
    @param Is_ZDataValidate Données validées */
    public void setIs_ZDataValidate (boolean Is_ZDataValidate)
    {
        set_Value ("Is_ZDataValidate", Boolean.valueOf(Is_ZDataValidate));
        
    }
    
    /** Get Données validées.
    @return Données validées */
    public boolean is_ZDataValidate() 
    {
        return get_ValueAsBoolean("Is_ZDataValidate");
        
    }
    
    /** Set Folder.
    @param Is_ZFolder Folder */
    public void setIs_ZFolder (boolean Is_ZFolder)
    {
        set_Value ("Is_ZFolder", Boolean.valueOf(Is_ZFolder));
        
    }
    
    /** Get Folder.
    @return Folder */
    public boolean is_ZFolder() 
    {
        return get_ValueAsBoolean("Is_ZFolder");
        
    }
    
    /** Set Price List.
    @param M_PriceList_ID Unique identifier of a Price List */
    public void setM_PriceList_ID (int M_PriceList_ID)
    {
        if (M_PriceList_ID <= 0) set_Value ("M_PriceList_ID", null);
        else
        set_Value ("M_PriceList_ID", Integer.valueOf(M_PriceList_ID));
        
    }
    
    /** Get Price List.
    @return Unique identifier of a Price List */
    public int getM_PriceList_ID() 
    {
        return get_ValueAsInt("M_PriceList_ID");
        
    }
    
    /** Set Price List Version.
    @param M_PriceList_Version_ID Identifies a unique instance of a Price List */
    public void setM_PriceList_Version_ID (int M_PriceList_Version_ID)
    {
        if (M_PriceList_Version_ID <= 0) set_Value ("M_PriceList_Version_ID", null);
        else
        set_Value ("M_PriceList_Version_ID", Integer.valueOf(M_PriceList_Version_ID));
        
    }
    
    /** Get Price List Version.
    @return Identifies a unique instance of a Price List */
    public int getM_PriceList_Version_ID() 
    {
        return get_ValueAsInt("M_PriceList_Version_ID");
        
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
    
    /** Set Nom liste de prix.
    @param Name_M_PriceList Nom liste de prix */
    public void setName_M_PriceList (String Name_M_PriceList)
    {
        set_Value ("Name_M_PriceList", Name_M_PriceList);
        
    }
    
    /** Get Nom liste de prix.
    @return Nom liste de prix */
    public String getName_M_PriceList() 
    {
        return (String)get_Value("Name_M_PriceList");
        
    }
    
    /** Set Nom Version liste de prix.
    @param Name_M_Pricelist_Version Nom Version liste de prix */
    public void setName_M_Pricelist_Version (String Name_M_Pricelist_Version)
    {
        set_Value ("Name_M_Pricelist_Version", Name_M_Pricelist_Version);
        
    }
    
    /** Get Nom Version liste de prix.
    @return Nom Version liste de prix */
    public String getName_M_Pricelist_Version() 
    {
        return (String)get_Value("Name_M_Pricelist_Version");
        
    }
    
    /** Set Standard Price.
    @param PriceStd Standard Price */
    public void setPriceStd (java.math.BigDecimal PriceStd)
    {
        set_Value ("PriceStd", PriceStd);
        
    }
    
    /** Get Standard Price.
    @return Standard Price */
    public java.math.BigDecimal getPriceStd() 
    {
        return get_ValueAsBigDecimal("PriceStd");
        
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
    
    /** Set Valider données.
    @param ValidateData Valider données */
    public void setValidateData (String ValidateData)
    {
        set_Value ("ValidateData", ValidateData);
        
    }
    
    /** Get Valider données.
    @return Valider données */
    public String getValidateData() 
    {
        return (String)get_Value("ValidateData");
        
    }
    
    /** Set Valid from.
    @param ValidFrom Valid from including this date (first day) */
    public void setValidFrom (Timestamp ValidFrom)
    {
        set_Value ("ValidFrom", ValidFrom);
        
    }
    
    /** Get Valid from.
    @return Valid from including this date (first day) */
    public Timestamp getValidFrom() 
    {
        return (Timestamp)get_Value("ValidFrom");
        
    }
    
    /** Set Valid to.
    @param ValidTo Valid to including this date (last day) */
    public void setValidTo (Timestamp ValidTo)
    {
        set_Value ("ValidTo", ValidTo);
        
    }
    
    /** Get Valid to.
    @return Valid to including this date (last day) */
    public Timestamp getValidTo() 
    {
        return (Timestamp)get_Value("ValidTo");
        
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
    
    
}
