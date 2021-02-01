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
/** Generated Model for I_PosOrderPayment
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_PosOrderPayment extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_PosOrderPayment_ID id
    @param trx transaction
    */
    public X_I_PosOrderPayment (Ctx ctx, int I_PosOrderPayment_ID, Trx trx)
    {
        super (ctx, I_PosOrderPayment_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_PosOrderPayment_ID == 0)
        {
            setC_BankAccount_ID (0);
            setC_DocType_ID (0);
            setI_PosOrder_ID (0);
            setI_PosOrderPayment_ID (0);
            setZSubPaymentRule_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_PosOrderPayment (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27620056249789L;
    /** Last Updated Timestamp 2012-05-25 09:28:53.0 */
    public static final long updatedMS = 1337930933000L;
    /** AD_Table_ID=1000747 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_PosOrderPayment");
        
    }
    ;
    
    /** TableName=I_PosOrderPayment */
    public static final String Table_Name="I_PosOrderPayment";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Bank Account.
    @param C_BankAccount_ID Account at the Bank */
    public void setC_BankAccount_ID (int C_BankAccount_ID)
    {
        if (C_BankAccount_ID < 1) throw new IllegalArgumentException ("C_BankAccount_ID is mandatory.");
        set_Value ("C_BankAccount_ID", Integer.valueOf(C_BankAccount_ID));
        
    }
    
    /** Get Bank Account.
    @return Account at the Bank */
    public int getC_BankAccount_ID() 
    {
        return get_ValueAsInt("C_BankAccount_ID");
        
    }
    
    /** Set Document Type.
    @param C_DocType_ID Document type or rules */
    public void setC_DocType_ID (int C_DocType_ID)
    {
        if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
        set_Value ("C_DocType_ID", Integer.valueOf(C_DocType_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getC_DocType_ID() 
    {
        return get_ValueAsInt("C_DocType_ID");
        
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
    
    /** Set I_PosOrderPayment_ID.
    @param I_PosOrderPayment_ID I_PosOrderPayment_ID */
    public void setI_PosOrderPayment_ID (int I_PosOrderPayment_ID)
    {
        if (I_PosOrderPayment_ID < 1) throw new IllegalArgumentException ("I_PosOrderPayment_ID is mandatory.");
        set_ValueNoCheck ("I_PosOrderPayment_ID", Integer.valueOf(I_PosOrderPayment_ID));
        
    }
    
    /** Get I_PosOrderPayment_ID.
    @return I_PosOrderPayment_ID */
    public int getI_PosOrderPayment_ID() 
    {
        return get_ValueAsInt("I_PosOrderPayment_ID");
        
    }
    
    /** Set Payment amount.
    @param PayAmt Amount being paid */
    public void setPayAmt (java.math.BigDecimal PayAmt)
    {
        set_Value ("PayAmt", PayAmt);
        
    }
    
    /** Get Payment amount.
    @return Amount being paid */
    public java.math.BigDecimal getPayAmt() 
    {
        return get_ValueAsBigDecimal("PayAmt");
        
    }
    
    /** Set Sub Payment Rule.
    @param ZSubPaymentRule_ID Sub Payment Rule */
    public void setZSubPaymentRule_ID (int ZSubPaymentRule_ID)
    {
        if (ZSubPaymentRule_ID < 1) throw new IllegalArgumentException ("ZSubPaymentRule_ID is mandatory.");
        set_Value ("ZSubPaymentRule_ID", Integer.valueOf(ZSubPaymentRule_ID));
        
    }
    
    /** Get Sub Payment Rule.
    @return Sub Payment Rule */
    public int getZSubPaymentRule_ID() 
    {
        return get_ValueAsInt("ZSubPaymentRule_ID");
        
    }
    
    
}
