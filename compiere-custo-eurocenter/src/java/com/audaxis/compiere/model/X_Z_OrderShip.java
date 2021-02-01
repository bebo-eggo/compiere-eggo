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
/** Generated Model for Z_OrderShip
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderShip extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderShip_ID id
    @param trx transaction
    */
    public X_Z_OrderShip (Ctx ctx, int Z_OrderShip_ID, Trx trx)
    {
        super (ctx, Z_OrderShip_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderShip_ID == 0)
        {
            setC_Order_ID (0);
            setC_OrderLine_ID (0);
            setM_Product_ID (0);
            setQtyToDeliver (Env.ZERO);	// 0
            setZ_OrderShip_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderShip (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27639233882789L;
    /** Last Updated Timestamp 2013-01-02 07:36:06.0 */
    public static final long updatedMS = 1357108566000L;
    /** AD_Table_ID=1001895 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderShip");
        
    }
    ;
    
    /** TableName=Z_OrderShip */
    public static final String Table_Name="Z_OrderShip";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Order.
    @param C_Order_ID Order */
    public void setC_Order_ID (int C_Order_ID)
    {
        if (C_Order_ID < 1) throw new IllegalArgumentException ("C_Order_ID is mandatory.");
        set_ValueNoCheck ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    /** Set Order Line.
    @param C_OrderLine_ID Order Line */
    public void setC_OrderLine_ID (int C_OrderLine_ID)
    {
        if (C_OrderLine_ID < 1) throw new IllegalArgumentException ("C_OrderLine_ID is mandatory.");
        set_ValueNoCheck ("C_OrderLine_ID", Integer.valueOf(C_OrderLine_ID));
        
    }
    
    /** Get Order Line.
    @return Order Line */
    public int getC_OrderLine_ID() 
    {
        return get_ValueAsInt("C_OrderLine_ID");
        
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
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getM_Product_ID()));
        
    }
    
    /** Set Qty to deliver.
    @param QtyToDeliver Qty to deliver */
    public void setQtyToDeliver (java.math.BigDecimal QtyToDeliver)
    {
        if (QtyToDeliver == null) throw new IllegalArgumentException ("QtyToDeliver is mandatory.");
        set_Value ("QtyToDeliver", QtyToDeliver);
        
    }
    
    /** Get Qty to deliver.
    @return Qty to deliver */
    public java.math.BigDecimal getQtyToDeliver() 
    {
        return get_ValueAsBigDecimal("QtyToDeliver");
        
    }
    
    /** Set Expédition Commande.
    @param Z_OrderShip_ID Expédition Commande */
    public void setZ_OrderShip_ID (int Z_OrderShip_ID)
    {
        if (Z_OrderShip_ID < 1) throw new IllegalArgumentException ("Z_OrderShip_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderShip_ID", Integer.valueOf(Z_OrderShip_ID));
        
    }
    
    /** Get Expédition Commande.
    @return Expédition Commande */
    public int getZ_OrderShip_ID() 
    {
        return get_ValueAsInt("Z_OrderShip_ID");
        
    }
    
    /** Set Locator.
    @param M_Locator_ID Order Line */
    public void setM_Locator_ID (int M_Locator_ID)
    {
        set_ValueNoCheck ("M_Locator_ID", Integer.valueOf(M_Locator_ID));
        
    }
    
    /** Get Locator.
    @return Locator */
    public int getM_Locator_ID() 
    {
        return get_ValueAsInt("M_Locator_ID");
        
    }
 
    
    
}
