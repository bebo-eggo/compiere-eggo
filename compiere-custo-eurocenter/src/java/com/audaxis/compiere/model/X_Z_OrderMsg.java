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
import java.sql.ResultSet;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;
/** Generated Model for Z_OrderMsg
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderMsg extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderMsg_ID id
    @param trx transaction
    */
    public X_Z_OrderMsg (Ctx ctx, int Z_OrderMsg_ID, Trx trx)
    {
        super (ctx, Z_OrderMsg_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderMsg_ID == 0)
        {
            setAD_Message_ID (0);
            setC_Order_ID (0);
            setZ_OrderMsg_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderMsg (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27634596312789L;
    /** Last Updated Timestamp 2012-11-09 15:23:16.0 */
    public static final long updatedMS = 1352470996000L;
    /** AD_Table_ID=1001283 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderMsg");
        
    }
    ;
    
    /** TableName=Z_OrderMsg */
    public static final String Table_Name="Z_OrderMsg";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Message.
    @param AD_Message_ID System Message */
    public void setAD_Message_ID (int AD_Message_ID)
    {
        if (AD_Message_ID < 1) throw new IllegalArgumentException ("AD_Message_ID is mandatory.");
        set_Value ("AD_Message_ID", Integer.valueOf(AD_Message_ID));
        
    }
    
    /** Get Message.
    @return System Message */
    public int getAD_Message_ID() 
    {
        return get_ValueAsInt("AD_Message_ID");
        
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
    
    /** Set Z_OrderMsg.
    @param Z_OrderMsg_ID Z_OrderMsg */
    public void setZ_OrderMsg_ID (int Z_OrderMsg_ID)
    {
        if (Z_OrderMsg_ID < 1) throw new IllegalArgumentException ("Z_OrderMsg_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderMsg_ID", Integer.valueOf(Z_OrderMsg_ID));
        
    }
    
    /** Get Z_OrderMsg.
    @return Z_OrderMsg */
    public int getZ_OrderMsg_ID() 
    {
        return get_ValueAsInt("Z_OrderMsg_ID");
        
    }
    
    
}
