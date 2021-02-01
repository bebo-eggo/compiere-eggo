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
/** Generated Model for Z_StorageEvent
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_StorageEvent extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_StorageEvent_ID id
    @param trx transaction
    */
    public X_Z_StorageEvent (Ctx ctx, int Z_StorageEvent_ID, Trx trx)
    {
        super (ctx, Z_StorageEvent_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_StorageEvent_ID == 0)
        {
            setM_Locator_ID (0);
            setM_Product_ID (0);
            setQty (Env.ZERO);
            setQtyType (null);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_StorageEvent (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27675010258789L;
    /** AD_Table_ID=1003584 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_StorageEvent");
        
    }
    ;
    
    /** TableName=Z_StorageEvent */
    public static final String Table_Name="Z_StorageEvent";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Attribute Set Instance.
    @param M_AttributeSetInstance_ID Product Attribute Set Instance */
    public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID)
    {
        if (M_AttributeSetInstance_ID <= 0) set_Value ("M_AttributeSetInstance_ID", null);
        else
        set_Value ("M_AttributeSetInstance_ID", Integer.valueOf(M_AttributeSetInstance_ID));
        
    }
    
    /** Get Attribute Set Instance.
    @return Product Attribute Set Instance */
    public int getM_AttributeSetInstance_ID() 
    {
        return get_ValueAsInt("M_AttributeSetInstance_ID");
        
    }
    
    /** Set Locator.
    @param M_Locator_ID Warehouse Locator */
    public void setM_Locator_ID (int M_Locator_ID)
    {
        if (M_Locator_ID < 1) throw new IllegalArgumentException ("M_Locator_ID is mandatory.");
        set_Value ("M_Locator_ID", Integer.valueOf(M_Locator_ID));
        
    }
    
    /** Get Locator.
    @return Warehouse Locator */
    public int getM_Locator_ID() 
    {
        return get_ValueAsInt("M_Locator_ID");
        
    }
    
    /** Set Product.
    @param M_Product_ID Product, Service, Item */
    public void setM_Product_ID (int M_Product_ID)
    {
        if (M_Product_ID < 1) throw new IllegalArgumentException ("M_Product_ID is mandatory.");
        set_Value ("M_Product_ID", Integer.valueOf(M_Product_ID));
        
    }
    
    /** Get Product.
    @return Product, Service, Item */
    public int getM_Product_ID() 
    {
        return get_ValueAsInt("M_Product_ID");
        
    }
    
    /** Set Quantity.
    @param Qty Quantity */
    public void setQty (java.math.BigDecimal Qty)
    {
        if (Qty == null) throw new IllegalArgumentException ("Qty is mandatory.");
        set_Value ("Qty", Qty);
        
    }
    
    /** Get Quantity.
    @return Quantity */
    public java.math.BigDecimal getQty() 
    {
        return get_ValueAsBigDecimal("Qty");
        
    }
    
    /** Reserved = R */
    public static final String QTYTYPE_Reserved = X_Ref_Quantity_Type.RESERVED.getValue();
    /** Allocated = A */
    public static final String QTYTYPE_Allocated = X_Ref_Quantity_Type.ALLOCATED.getValue();
    /** Dedicated = D */
    public static final String QTYTYPE_Dedicated = X_Ref_Quantity_Type.DEDICATED.getValue();
    /** Expected = E */
    public static final String QTYTYPE_Expected = X_Ref_Quantity_Type.EXPECTED.getValue();
    /** On Hand = H */
    public static final String QTYTYPE_OnHand = X_Ref_Quantity_Type.ON_HAND.getValue();
    /** Ordered = O */
    public static final String QTYTYPE_Ordered = X_Ref_Quantity_Type.ORDERED.getValue();
    /** Set Quantity Type.
    @param QtyType Quantity Type */
    public void setQtyType (String QtyType)
    {
        if (QtyType == null) throw new IllegalArgumentException ("QtyType is mandatory");
        if (!X_Ref_Quantity_Type.isValid(QtyType));
        
        set_Value ("QtyType", QtyType);
        
    }
    
    /** Get Quantity Type.
    @return Quantity Type */
    public String getQtyType() 
    {
        return (String)get_Value("QtyType");
        
    }
    
    public void setProcessed(boolean Processed)
    {
        set_Value ("Processed", Boolean.valueOf(Processed));
        
    }
    
    public boolean isProcessed() 
    {
        return get_ValueAsBoolean("Processed");
        
    }
    
    /** Set Document Type.
    @param C_DocType_ID Document type or rules */
    public void setZ_StorageEvent_ID (int Z_StorageEvent_ID)
    {
        if (Z_StorageEvent_ID < 0) throw new IllegalArgumentException ("Z_StorageEvent_ID is mandatory.");
        set_ValueNoCheck ("Z_StorageEvent_ID", Integer.valueOf(Z_StorageEvent_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getZ_StorageEvent_ID() 
    {
        return get_ValueAsInt("Z_StorageEvent_ID");
        
    }
}
