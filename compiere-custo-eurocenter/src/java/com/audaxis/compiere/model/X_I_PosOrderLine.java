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
/** Generated Model for I_PosOrderLine
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_PosOrderLine extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_PosOrderLine_ID id
    @param trx transaction
    */
    public X_I_PosOrderLine (Ctx ctx, int I_PosOrderLine_ID, Trx trx)
    {
        super (ctx, I_PosOrderLine_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_PosOrderLine_ID == 0)
        {
            setI_PosOrder_ID (0);
            setI_PosOrderLine_ID (0);
            setLine (0);	// @SQL=SELECT COALESCE(MAX(Line),0)+10 AS DefaultValue FROM I_PosOrderLine WHERE I_PosOrder_ID=@I_PosOrder_ID@
            setPriceEntered (Env.ZERO);
            setPriceList (Env.ZERO);
            setQtyEntered (Env.ZERO);	// 1
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_PosOrderLine (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27623082948789L;
    /** Last Updated Timestamp 2012-06-29 10:13:52.0 */
    public static final long updatedMS = 1340957632000L;
    /** AD_Table_ID=1000745 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_PosOrderLine");
        
    }
    ;
    
    /** TableName=I_PosOrderLine */
    public static final String Table_Name="I_PosOrderLine";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Order Line.
    @param C_OrderLine_ID Order Line */
    public void setC_OrderLine_ID (int C_OrderLine_ID)
    {
        if (C_OrderLine_ID <= 0) set_ValueNoCheck ("C_OrderLine_ID", null);
        else
        set_ValueNoCheck ("C_OrderLine_ID", Integer.valueOf(C_OrderLine_ID));
        
    }
    
    /** Get Order Line.
    @return Order Line */
    public int getC_OrderLine_ID() 
    {
        return get_ValueAsInt("C_OrderLine_ID");
        
    }
    
    /** Set Fournisseur.
    @param Fournisseur Fournisseur */
    public void setFournisseur (String Fournisseur)
    {
        set_Value ("Fournisseur", Fournisseur);
        
    }
    
    /** Get Fournisseur.
    @return Fournisseur */
    public String getFournisseur() 
    {
        return (String)get_Value("Fournisseur");
        
    }
    
    /** Set I_PosOrder_ID.
    @param I_PosOrder_ID I_PosOrder_ID */
    public void setI_PosOrder_ID (int I_PosOrder_ID)
    {
        if (I_PosOrder_ID < 1) throw new IllegalArgumentException ("I_PosOrder_ID is mandatory.");
        set_ValueNoCheck ("I_PosOrder_ID", Integer.valueOf(I_PosOrder_ID));
        
    }
    
    /** Get I_PosOrder_ID.
    @return I_PosOrder_ID */
    public int getI_PosOrder_ID() 
    {
        return get_ValueAsInt("I_PosOrder_ID");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getI_PosOrder_ID()));
        
    }
    
    /** Set Order POS Line.
    @param I_PosOrderLine_ID Order POS Line */
    public void setI_PosOrderLine_ID (int I_PosOrderLine_ID)
    {
        if (I_PosOrderLine_ID < 1) throw new IllegalArgumentException ("I_PosOrderLine_ID is mandatory.");
        set_ValueNoCheck ("I_PosOrderLine_ID", Integer.valueOf(I_PosOrderLine_ID));
        
    }
    
    /** Get Order POS Line.
    @return Order POS Line */
    public int getI_PosOrderLine_ID() 
    {
        return get_ValueAsInt("I_PosOrderLine_ID");
        
    }
    
    /** Set Line No.
    @param Line Unique line for this document */
    public void setLine (int Line)
    {
        set_Value ("Line", Integer.valueOf(Line));
        
    }
    
    /** Get Line No.
    @return Unique line for this document */
    public int getLine() 
    {
        return get_ValueAsInt("Line");
        
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
    
    /** Set Price.
    @param PriceEntered Price Entered - the price based on the selected/base UoM */
    public void setPriceEntered (java.math.BigDecimal PriceEntered)
    {
        if (PriceEntered == null) throw new IllegalArgumentException ("PriceEntered is mandatory.");
        set_Value ("PriceEntered", PriceEntered);
        
    }
    
    /** Get Price.
    @return Price Entered - the price based on the selected/base UoM */
    public java.math.BigDecimal getPriceEntered() 
    {
        return get_ValueAsBigDecimal("PriceEntered");
        
    }
    
    /** Set Discount.
    @param Discount - the Discount */
    public void setDiscount (java.math.BigDecimal Discount)
    {
        set_Value ("Discount", Discount);
        
    }
    
    /** Get Discount
    @return Discount - the Discount */
    public java.math.BigDecimal getDiscount() 
    {
        return get_ValueAsBigDecimal("Discount");
        
    }
    
    /** Set List price.
    @param PriceList List price (Internally used vs. entered) */
    public void setPriceList (java.math.BigDecimal PriceList)
    {
        if (PriceList == null) throw new IllegalArgumentException ("PriceList is mandatory.");
        set_Value ("PriceList", PriceList);
        
    }
    
    /** Get List price.
    @return List price (Internally used vs. entered) */
    public java.math.BigDecimal getPriceList() 
    {
        return get_ValueAsBigDecimal("PriceList");
        
    }
    
    /** Set Product_Price.
    @param Product_Price Product_Price */
    public void setProduct_Price (java.math.BigDecimal Product_Price)
    {
        set_Value ("Product_Price", Product_Price);
        
    }
    
    /** Get Product_Price.
    @return Product_Price */
    public java.math.BigDecimal getProduct_Price() 
    {
        return get_ValueAsBigDecimal("Product_Price");
        
    }
    
    /** Set Quantity.
    @param QtyEntered The Quantity Entered is based on the selected UoM */
    public void setQtyEntered (java.math.BigDecimal QtyEntered)
    {
        if (QtyEntered == null) throw new IllegalArgumentException ("QtyEntered is mandatory.");
        set_Value ("QtyEntered", QtyEntered);
        
    }
    
    /** Get Quantity.
    @return The Quantity Entered is based on the selected UoM */
    public java.math.BigDecimal getQtyEntered() 
    {
        return get_ValueAsBigDecimal("QtyEntered");
        
    }
    
    /** Set Marque.
    @param Y_Marque_ID Marque */
    public void setY_Marque_ID (int Y_Marque_ID)
    {
        if (Y_Marque_ID <= 0) set_Value ("Y_Marque_ID", null);
        else
        set_Value ("Y_Marque_ID", Integer.valueOf(Y_Marque_ID));
        
    }
    
    /** Get Marque.
    @return Marque */
    public int getY_Marque_ID() 
    {
        return get_ValueAsInt("Y_Marque_ID");
        
    }
    
    /** Set No de Caisse.
    @param Z_PosNbr No de Caisse */
    public void setZ_PosNbr (String Z_PosNbr)
    {
        set_Value ("Z_PosNbr", Z_PosNbr);
        
    }
    
    /** Get No de Caisse.
    @return No de Caisse */
    public String getZ_PosNbr() 
    {
        return (String)get_Value("Z_PosNbr");
        
    }
    
    /** Set Z_ProdDescription.
    @param Z_ProdDescription Z_ProdDescription */
    public void setZ_ProdDescription (String Z_ProdDescription)
    {
        set_Value ("Z_ProdDescription", Z_ProdDescription);
        
    }
    
    /** Get Z_ProdDescription.
    @return Z_ProdDescription */
    public String getZ_ProdDescription() 
    {
        return (String)get_Value("Z_ProdDescription");
        
    }
    
    /** Set Z_ReferenceArt.
    @param Z_ReferenceArt Z_ReferenceArt */
    public void setZ_ReferenceArt (String Z_ReferenceArt)
    {
        set_Value ("Z_ReferenceArt", Z_ReferenceArt);
        
    }
    
    /** Get Z_ReferenceArt.
    @return Z_ReferenceArt */
    public String getZ_ReferenceArt() 
    {
        return (String)get_Value("Z_ReferenceArt");
        
    }
    
    /** Set Serial No.
    @param Z_SerNo Serial No */
    public void setZ_SerNo (String Z_SerNo)
    {
        set_Value ("Z_SerNo", Z_SerNo);
        
    }
    
    /** Get Serial No.
    @return Serial No */
    public String getZ_SerNo() 
    {
        return (String)get_Value("Z_SerNo");
        
    }
    
    /** Set Z_S_Famille_ID.
    @param Z_S_Famille_ID Z_S_Famille_ID */
    public void setZ_S_Famille_ID (int Z_S_Famille_ID)
    {
        if (Z_S_Famille_ID <= 0) set_Value ("Z_S_Famille_ID", null);
        else
        set_Value ("Z_S_Famille_ID", Integer.valueOf(Z_S_Famille_ID));
        
    }
    
    /** Get Z_S_Famille_ID.
    @return Z_S_Famille_ID */
    public int getZ_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_Famille_ID");
        
    }
    
    /** Set Z_S_S_Famille_ID.
    @param Z_S_S_Famille_ID Z_S_S_Famille_ID */
    public void setZ_S_S_Famille_ID (int Z_S_S_Famille_ID)
    {
        if (Z_S_S_Famille_ID <= 0) set_Value ("Z_S_S_Famille_ID", null);
        else
        set_Value ("Z_S_S_Famille_ID", Integer.valueOf(Z_S_S_Famille_ID));
        
    }
    
    /** Get Z_S_S_Famille_ID.
    @return Z_S_S_Famille_ID */
    public int getZ_S_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_S_Famille_ID");
        
    }
    
    /** Set Z_S_S_S_Famille_ID.
    @param Z_S_S_S_Famille_ID Z_S_S_S_Famille_ID */
    public void setZ_S_S_S_Famille_ID (int Z_S_S_S_Famille_ID)
    {
        if (Z_S_S_S_Famille_ID <= 0) set_Value ("Z_S_S_S_Famille_ID", null);
        else
        set_Value ("Z_S_S_S_Famille_ID", Integer.valueOf(Z_S_S_S_Famille_ID));
        
    }
    
    /** Get Z_S_S_S_Famille_ID.
    @return Z_S_S_S_Famille_ID */
    public int getZ_S_S_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_S_S_Famille_ID");
        
    }
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setMProductState(String MProductState)
    {
        set_Value ("M_ProductState", MProductState);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getMProductState() 
    {
        return (String)get_Value("M_ProductState");
        
    }
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setAccessories(String Accessories)
    {
        set_Value ("Accessories", Accessories);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getAccessories() 
    {
        return (String)get_Value("Accessories");
        
    }
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setPurchaseDate(Timestamp purchaseDate)
    {
        set_Value ("PurchaseDate", purchaseDate);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public Timestamp getPurchaseDate() 
    {
        return (Timestamp)get_Value("PurchaseDate");
        
    } 
    
}
