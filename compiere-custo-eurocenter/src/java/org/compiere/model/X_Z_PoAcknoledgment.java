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
/** Generated Model for Z_PoAcknoledgment
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_PoAcknoledgment extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_PoAcknoledgment_ID id
    @param trx transaction
    */
    public X_Z_PoAcknoledgment (Ctx ctx, int Z_PoAcknoledgment_ID, Trx trx)
    {
        super (ctx, Z_PoAcknoledgment_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_PoAcknoledgment_ID == 0)
        {
            setC_Order_ID (0);
            setZ_ArControled (false);	// N
            setZ_ArMain (false);	// N
            setZ_ArNumber (null);
            setZ_PoAcknoledgment_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_PoAcknoledgment (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27656800539789L;
    /** AD_Table_ID=1003363 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_PoAcknoledgment");
        
    }
    ;
    
    /** TableName=Z_PoAcknoledgment */
    public static final String Table_Name="Z_PoAcknoledgment";
    
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
    
    /** Set Z_ArAmt.
    @param Z_ArAmt Z_ArAmt */
    public void setZ_ArAmt (java.math.BigDecimal Z_ArAmt)
    {
        set_Value ("Z_ArAmt", Z_ArAmt);
        
    }
    
    /** Get Z_ArAmt.
    @return Z_ArAmt */
    public java.math.BigDecimal getZ_ArAmt() 
    {
        return get_ValueAsBigDecimal("Z_ArAmt");
        
    }
    
    /** Set Z_ArControled.
    @param Z_ArControled Z_ArControled */
    public void setZ_ArControled (boolean Z_ArControled)
    {
        set_Value ("Z_ArControled", Boolean.valueOf(Z_ArControled));
        
    }
    
    /** Get Z_ArControled.
    @return Z_ArControled */
    public boolean isZ_ArControled() 
    {
        return get_ValueAsBoolean("Z_ArControled");
        
    }
    
    /** Set Z_ArDate.
    @param Z_ArDate Z_ArDate */
    public void setZ_ArDate (Timestamp Z_ArDate)
    {
        set_Value ("Z_ArDate", Z_ArDate);
        
    }
    
    /** Get Z_ArDate.
    @return Z_ArDate */
    public Timestamp getZ_ArDate() 
    {
        return (Timestamp)get_Value("Z_ArDate");
        
    }
    
    /** Set Z_ArMain.
    @param Z_ArMain Z_ArMain */
    public void setZ_ArMain (boolean Z_ArMain)
    {
        set_Value ("Z_ArMain", Boolean.valueOf(Z_ArMain));
        
    }
    
    /** Get Z_ArMain.
    @return Z_ArMain */
    public boolean isZ_ArMain() 
    {
        return get_ValueAsBoolean("Z_ArMain");
        
    }
    
    /** Set Z_ArNumber.
    @param Z_ArNumber Z_ArNumber */
    public void setZ_ArNumber (String Z_ArNumber)
    {
        if (Z_ArNumber == null) throw new IllegalArgumentException ("Z_ArNumber is mandatory.");
        set_Value ("Z_ArNumber", Z_ArNumber);
        
    }
    
    /** Get Z_ArNumber.
    @return Z_ArNumber */
    public String getZ_ArNumber() 
    {
        return (String)get_Value("Z_ArNumber");
        
    }
    
    /** Set Z_PoAcknoledgment_ID.
    @param Z_PoAcknoledgment_ID Z_PoAcknoledgment_ID */
    public void setZ_PoAcknoledgment_ID (int Z_PoAcknoledgment_ID)
    {
        if (Z_PoAcknoledgment_ID < 1) throw new IllegalArgumentException ("Z_PoAcknoledgment_ID is mandatory.");
        set_ValueNoCheck ("Z_PoAcknoledgment_ID", Integer.valueOf(Z_PoAcknoledgment_ID));
        
    }
    
    /** Get Z_PoAcknoledgment_ID.
    @return Z_PoAcknoledgment_ID */
    public int getZ_PoAcknoledgment_ID() 
    {
        return get_ValueAsInt("Z_PoAcknoledgment_ID");
        
    }
    
   
    public void setXX_SemAR (String xx_SemAR)
    {
        set_Value ("XX_SemAR", xx_SemAR);
        
    }
    
    public String getXX_SemAR() 
    {
        return (String)get_Value("XX_SemAR");
        
    }
    
    
}
