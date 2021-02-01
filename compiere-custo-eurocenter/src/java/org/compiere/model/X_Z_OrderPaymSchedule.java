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
/** Generated Model for Z_OrderPaymSchedule
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderPaymSchedule extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderPaymSchedule_ID id
    @param trx transaction
    */
    public X_Z_OrderPaymSchedule (Ctx ctx, int Z_OrderPaymSchedule_ID, Trx trx)
    {
        super (ctx, Z_OrderPaymSchedule_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderPaymSchedule_ID == 0)
        {
            setC_Order_ID (0);
            setZ_OrderPaymSchedule_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderPaymSchedule (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27625680670789L;
    /** Last Updated Timestamp 2012-07-29 10:49:14.0 */
    public static final long updatedMS = 1343555354000L;
    /** AD_Table_ID=1001053 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderPaymSchedule");
        
    }
    ;
    
    /** TableName=Z_OrderPaymSchedule */
    public static final String Table_Name="Z_OrderPaymSchedule";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Invoice.
    @param C_Invoice_ID Invoice Identifier */
    public void setC_Invoice_ID (int C_Invoice_ID)
    {
        if (C_Invoice_ID <= 0) set_Value ("C_Invoice_ID", null);
        else
        set_Value ("C_Invoice_ID", Integer.valueOf(C_Invoice_ID));
        
    }
    
    /** Get Invoice.
    @return Invoice Identifier */
    public int getC_Invoice_ID() 
    {
        return get_ValueAsInt("C_Invoice_ID");
        
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
    
    /** Set Facturer échéance.
    @param Invoice Facturer échéance */
    public void setInvoice (String Invoice)
    {
        set_Value ("Invoice", Invoice);
        
    }
    
    /** Get Facturer échéance.
    @return Facturer échéance */
    public String getInvoice() 
    {
        return (String)get_Value("Invoice");
        
    }
    
    /** Set Sequence.
    @param SeqNo Method of ordering elements;
     lowest number comes first */
    public void setSeqNo (int SeqNo)
    {
        set_Value ("SeqNo", Integer.valueOf(SeqNo));
        
    }
    
    /** Get Sequence.
    @return Method of ordering elements;
     lowest number comes first */
    public int getSeqNo() 
    {
        return get_ValueAsInt("SeqNo");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getSeqNo()));
        
    }
    
    /** Set Total Amount.
    @param TotalAmt Total Amount */
    public void setTotalAmt (java.math.BigDecimal TotalAmt)
    {
        set_Value ("TotalAmt", TotalAmt);
        
    }
    
    /** Get Total Amount.
    @return Total Amount */
    public java.math.BigDecimal getTotalAmt() 
    {
        return get_ValueAsBigDecimal("TotalAmt");
        
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
    
    /** Set Fin Amount.
    @param Fin Amount */
    public void setZ_AmtFin (java.math.BigDecimal Z_AmtFin)
    {
        set_Value ("Z_AmtFin", Z_AmtFin);
        
    }
    
    /** Get Fin Amount.
    @return Fin Amount */
    public java.math.BigDecimal getZ_AmtFin() 
    {
        return get_ValueAsBigDecimal("Z_AmtFin");
        
    }
    
    /** Set Org Credit.
    @param  Org Credit Alphanumeric identifier of the  Org Credit */
    public void setZ_OrgCredit (String Z_OrgCredit)
    {
        set_Value ("Z_OrgCredit", Z_OrgCredit);
        
    }
    
    /** Get Org Credit.
    @return Alphanumeric identifier of the Org Credit */
    public String getZ_OrgCredit() 
    {
        return (String)get_Value("Z_OrgCredit");
        
    }
    
    /** Set Num Accept
    @param  Num Accept Alphanumeric identifier of the  Num Accept */
    public void setZ_NumAccept (String Z_NumAccept)
    {
        set_Value ("Z_NumAccept", Z_NumAccept);
        
    }
    
    /** Get Num Accept.
    @return Alphanumeric identifier of the Num Accept */
    public String getZ_NumAccept() 
    {
        return (String)get_Value("Z_NumAccept");
        
    }
    
    /** Set Type Echeance
    @param Z_TypeEcheance_ID Type Echeance */
    public void setZ_TypeEcheance_ID (int Z_TypeEcheance_ID)
    {
        set_ValueNoCheck ("Z_TypeEcheance_ID", Integer.valueOf(Z_TypeEcheance_ID));
        
    }
    
    /** Get Type Echeance.
    @return Order */
    public int getZ_TypeEcheance_ID() 
    {
        return get_ValueAsInt("Z_TypeEcheance_ID");
        
    }



    
    
}
