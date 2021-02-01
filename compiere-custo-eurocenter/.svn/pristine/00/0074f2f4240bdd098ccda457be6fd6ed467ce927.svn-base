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
/** Generated Model for Z_OrderPayment
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderPayment extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderPayment_ID id
    @param trx transaction
    */
    public X_Z_OrderPayment (Ctx ctx, int Z_OrderPayment_ID, Trx trx)
    {
        super (ctx, Z_OrderPayment_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderPayment_ID == 0)
        {
            setC_BankAccount_ID (0);
            setDateTrx (new Timestamp(System.currentTimeMillis()));	// @#Date@
            setPayAmt (Env.ZERO);	// 0
            setZ_OrderPayment_ID (0);
            setZ_OrderPaymSchedule_ID (0);
            setZSubPaymentRule_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderPayment (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27638741191789L;
    /** Last Updated Timestamp 2012-12-27 14:44:35.0 */
    public static final long updatedMS = 1356615875000L;
    /** AD_Table_ID=1001795 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderPayment");
        
    }
    ;
    
    /** TableName=Z_OrderPayment */
    public static final String Table_Name="Z_OrderPayment";
    
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
    
    /** Set Payment.
    @param C_Payment_ID Payment identifier */
    public void setC_Payment_ID (int C_Payment_ID)
    {
        if (C_Payment_ID <= 0) set_ValueNoCheck ("C_Payment_ID", null);
        else
        set_ValueNoCheck ("C_Payment_ID", Integer.valueOf(C_Payment_ID));
        
    }
    
    /** Get Payment.
    @return Payment identifier */
    public int getC_Payment_ID() 
    {
        return get_ValueAsInt("C_Payment_ID");
        
    }
    
    /** Set Transaction Date.
    @param DateTrx Transaction Date */
    public void setDateTrx (Timestamp DateTrx)
    {
        if (DateTrx == null) throw new IllegalArgumentException ("DateTrx is mandatory.");
        set_Value ("DateTrx", DateTrx);
        
    }
    
    /** Get Transaction Date.
    @return Transaction Date */
    public Timestamp getDateTrx() 
    {
        return (Timestamp)get_Value("DateTrx");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getDateTrx()));
        
    }
    
    /** Set Payment amount.
    @param PayAmt Amount being paid */
    public void setPayAmt (java.math.BigDecimal PayAmt)
    {
        if (PayAmt == null) throw new IllegalArgumentException ("PayAmt is mandatory.");
        set_Value ("PayAmt", PayAmt);
        
    }
    
    /** Get Payment amount.
    @return Amount being paid */
    public java.math.BigDecimal getPayAmt() 
    {
        return get_ValueAsBigDecimal("PayAmt");
        
    }
    
    /** Set Paiement d'un echéancier.
    @param Z_OrderPayment_ID Paiement d'un echéancier */
    public void setZ_OrderPayment_ID (int Z_OrderPayment_ID)
    {
        if (Z_OrderPayment_ID < 1) throw new IllegalArgumentException ("Z_OrderPayment_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderPayment_ID", Integer.valueOf(Z_OrderPayment_ID));
        
    }
    
    /** Get Paiement d'un echéancier.
    @return Paiement d'un echéancier */
    public int getZ_OrderPayment_ID() 
    {
        return get_ValueAsInt("Z_OrderPayment_ID");
        
    }
    
    /** Set Echéancier de paiement.
    @param Z_OrderPaymSchedule_ID Echéancier de paiement */
    public void setZ_OrderPaymSchedule_ID (int Z_OrderPaymSchedule_ID)
    {
        if (Z_OrderPaymSchedule_ID < 1) throw new IllegalArgumentException ("Z_OrderPaymSchedule_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderPaymSchedule_ID", Integer.valueOf(Z_OrderPaymSchedule_ID));
        
    }
    
    /** Get Echéancier de paiement.
    @return Echéancier de paiement */
    public int getZ_OrderPaymSchedule_ID() 
    {
        return get_ValueAsInt("Z_OrderPaymSchedule_ID");
        
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
