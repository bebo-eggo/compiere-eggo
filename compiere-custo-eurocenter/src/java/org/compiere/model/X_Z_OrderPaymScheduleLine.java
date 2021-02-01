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
/** Generated Model for Z_OrderPaymScheduleLine
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderPaymScheduleLine extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderPaymScheduleLine_ID id
    @param trx transaction
    */
    public X_Z_OrderPaymScheduleLine (Ctx ctx, int Z_OrderPaymScheduleLine_ID, Trx trx)
    {
        super (ctx, Z_OrderPaymScheduleLine_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderPaymScheduleLine_ID == 0)
        {
            setZ_OrderPaymSchedule_ID (0);
            setZ_OrderPaymScheduleLine_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderPaymScheduleLine (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27625680585789L;
    /** Last Updated Timestamp 2012-07-29 10:47:49.0 */
    public static final long updatedMS = 1343555269000L;
    /** AD_Table_ID=1001054 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderPaymScheduleLine");
        
    }
    ;
    
    /** TableName=Z_OrderPaymScheduleLine */
    public static final String Table_Name="Z_OrderPaymScheduleLine";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Tax.
    @param C_Tax_ID Tax identifier */
    public void setC_Tax_ID (int C_Tax_ID)
    {
        if (C_Tax_ID <= 0) set_Value ("C_Tax_ID", null);
        else
        set_Value ("C_Tax_ID", Integer.valueOf(C_Tax_ID));
        
    }
    
    /** Get Tax.
    @return Tax identifier */
    public int getC_Tax_ID() 
    {
        return get_ValueAsInt("C_Tax_ID");
        
    }
    
    /** Set Amount due.
    @param DueAmt Amount of the payment due */
    public void setDueAmt (java.math.BigDecimal DueAmt)
    {
        set_Value ("DueAmt", DueAmt);
        
    }
    
    /** Get Amount due.
    @return Amount of the payment due */
    public java.math.BigDecimal getDueAmt() 
    {
        return get_ValueAsBigDecimal("DueAmt");
        
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
    
    /** Set Z_OrderPaymScheduleLine.
    @param Z_OrderPaymScheduleLine_ID Z_OrderPaymScheduleLine */
    public void setZ_OrderPaymScheduleLine_ID (int Z_OrderPaymScheduleLine_ID)
    {
        if (Z_OrderPaymScheduleLine_ID < 1) throw new IllegalArgumentException ("Z_OrderPaymScheduleLine_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderPaymScheduleLine_ID", Integer.valueOf(Z_OrderPaymScheduleLine_ID));
        
    }
    
    /** Get Z_OrderPaymScheduleLine.
    @return Z_OrderPaymScheduleLine */
    public int getZ_OrderPaymScheduleLine_ID() 
    {
        return get_ValueAsInt("Z_OrderPaymScheduleLine_ID");
        
    }
    
    
}
