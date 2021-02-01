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
/** Generated Model for XX_CleanUnPaid
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_CleanUnPaid extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_CleanUnPaid_ID id
    @param trx transaction
    */
    public X_XX_CleanUnPaid (Ctx ctx, int XX_CleanUnPaid_ID, Trx trx)
    {
        super (ctx, XX_CleanUnPaid_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_CleanUnPaid_ID == 0)
        {
            setXX_CleanUnPaid_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_CleanUnPaid (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27823627718789L;
    /** AD_Table_ID=1007487 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_CleanUnPaid");
        
    }
    ;
    
    /** TableName=XX_CleanUnPaid */
    public static final String Table_Name="XX_CleanUnPaid";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Amount.
    @param Amount Amount in a defined currency */
    public void setAmount (java.math.BigDecimal Amount)
    {
        set_Value ("Amount", Amount);
        
    }
    
    /** Get Amount.
    @return Amount in a defined currency */
    public java.math.BigDecimal getAmount() 
    {
        return get_ValueAsBigDecimal("Amount");
        
    }
    
    /** Set Order.
    @param C_Order_ID Order */
    public void setC_Order_ID (int C_Order_ID)
    {
        if (C_Order_ID <= 0) set_Value ("C_Order_ID", null);
        else
        set_Value ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    public void setC_DocType_ID (int C_DocType_ID)
    {
        if (C_DocType_ID <= 0) set_Value ("C_DocType_ID", null);
        else
        set_Value ("C_DocType_ID", Integer.valueOf(C_DocType_ID));
        
    }
    
    public int getC_DocType_ID() 
    {
        return get_ValueAsInt("C_DocType_ID");
        
    }
    
    
    /** Set XX_CleanUnPaid.
    @param XX_CleanUnPaid_ID XX_CleanUnPaid */
    public void setXX_CleanUnPaid_ID (int XX_CleanUnPaid_ID)
    {
        if (XX_CleanUnPaid_ID < 1) throw new IllegalArgumentException ("XX_CleanUnPaid_ID is mandatory.");
        set_ValueNoCheck ("XX_CleanUnPaid_ID", Integer.valueOf(XX_CleanUnPaid_ID));
        
    }
    
    /** Get XX_CleanUnPaid.
    @return XX_CleanUnPaid */
    public int getXX_CleanUnPaid_ID() 
    {
        return get_ValueAsInt("XX_CleanUnPaid_ID");
        
    }
    
    public void setZ_PayGI (java.math.BigDecimal Z_PayGI)
    {
        set_Value ("Z_PayGI", Z_PayGI);
        
    }
    
    /** Get Amount.
    @return Amount in a defined currency */
    public java.math.BigDecimal getZ_PayGI() 
    {
        return get_ValueAsBigDecimal("Z_PayGI");
        
    }
    
}
