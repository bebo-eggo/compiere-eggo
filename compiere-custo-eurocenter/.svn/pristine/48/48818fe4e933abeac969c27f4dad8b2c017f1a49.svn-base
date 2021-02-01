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
/** Generated Model for I_TrxMsg
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_TrxMsg extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_TrxMsg_ID id
    @param trx transaction
    */
    public X_I_TrxMsg (Ctx ctx, int I_TrxMsg_ID, Trx trx)
    {
        super (ctx, I_TrxMsg_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_TrxMsg_ID == 0)
        {
            setI_IsImported (false);	// N
            setIsExported (false);	// N
            setI_TrxMsg_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_TrxMsg (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27676153237789L;
    /** AD_Table_ID=1003586 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_TrxMsg");
        
    }
    ;
    
    /** TableName=I_TrxMsg */
    public static final String Table_Name="I_TrxMsg";
    
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
        if (C_OrderLine_ID <= 0) set_Value ("C_OrderLine_ID", null);
        else
        set_Value ("C_OrderLine_ID", Integer.valueOf(C_OrderLine_ID));
        
    }
    
    /** Get Order Line.
    @return Order Line */
    public int getC_OrderLine_ID() 
    {
        return get_ValueAsInt("C_OrderLine_ID");
        
    }
    
    /** Set Import Error Message.
    @param I_ErrorMsg Messages generated from import process */
    public void setI_ErrorMsg (String I_ErrorMsg)
    {
        set_Value ("I_ErrorMsg", I_ErrorMsg);
        
    }
    
    /** Get Import Error Message.
    @return Messages generated from import process */
    public String getI_ErrorMsg() 
    {
        return (String)get_Value("I_ErrorMsg");
        
    }
    
    /** Set I_IsImported.
    @param I_IsImported I_IsImported */
    public void setI_IsImported (boolean I_IsImported)
    {
        set_Value ("I_IsImported", Boolean.valueOf(I_IsImported));
        
    }
    
    /** Get I_IsImported.
    @return I_IsImported */
    public boolean isI_IsImported() 
    {
        return get_ValueAsBoolean("I_IsImported");
        
    }
    
    /** Set Order POS Line.
    @param I_PosOrderLine_ID Order POS Line */
    public void setI_PosOrderLine_ID (int I_PosOrderLine_ID)
    {
        if (I_PosOrderLine_ID <= 0) set_Value ("I_PosOrderLine_ID", null);
        else
        set_Value ("I_PosOrderLine_ID", Integer.valueOf(I_PosOrderLine_ID));
        
    }
    
    /** Get Order POS Line.
    @return Order POS Line */
    public int getI_PosOrderLine_ID() 
    {
        return get_ValueAsInt("I_PosOrderLine_ID");
        
    }
    
    /** Set Export data.
    @param IsExported Is data exported or imported? */
    public void setIsExported (boolean IsExported)
    {
        set_Value ("IsExported", Boolean.valueOf(IsExported));
        
    }
    
    /** Get Export data.
    @return Is data exported or imported? */
    public boolean isExported() 
    {
        return get_ValueAsBoolean("IsExported");
        
    }
    
    /** Set I_TrxMsg.
    @param I_TrxMsg_ID I_TrxMsg */
    public void setI_TrxMsg_ID (int I_TrxMsg_ID)
    {
        if (I_TrxMsg_ID < 1) throw new IllegalArgumentException ("I_TrxMsg_ID is mandatory.");
        set_ValueNoCheck ("I_TrxMsg_ID", Integer.valueOf(I_TrxMsg_ID));
        
    }
    
    /** Get I_TrxMsg.
    @return I_TrxMsg */
    public int getI_TrxMsg_ID() 
    {
        return get_ValueAsInt("I_TrxMsg_ID");
        
    }
    
    /** Set Quantity Delivered.
    @param QtyDelivered Quantity Delivered */
    public void setQtyDelivered (java.math.BigDecimal QtyDelivered)
    {
        set_Value ("QtyDelivered", QtyDelivered);
        
    }
    
    /** Get Quantity Delivered.
    @return Quantity Delivered */
    public java.math.BigDecimal getQtyDelivered() 
    {
        return get_ValueAsBigDecimal("QtyDelivered");
        
    }
    
    /** Set Z_PosWfAction_ID.
    @param Z_PosWfAction_ID Z_PosWfAction_ID */
    public void setZ_PosWfAction_ID (int Z_PosWfAction_ID)
    {
        if (Z_PosWfAction_ID <= 0) set_Value ("Z_PosWfAction_ID", null);
        else
        set_Value ("Z_PosWfAction_ID", Integer.valueOf(Z_PosWfAction_ID));
        
    }
    
    /** Get Z_PosWfAction_ID.
    @return Z_PosWfAction_ID */
    public int getZ_PosWfAction_ID() 
    {
        return get_ValueAsInt("Z_PosWfAction_ID");
        
    }
    
    /** Set Activité.
    @param Z_PosWfActivity_ID Activité */
    public void setZ_PosWfActivity_ID (int Z_PosWfActivity_ID)
    {
        if (Z_PosWfActivity_ID <= 0) set_Value ("Z_PosWfActivity_ID", null);
        else
        set_Value ("Z_PosWfActivity_ID", Integer.valueOf(Z_PosWfActivity_ID));
        
    }
    
    /** Get Activité.
    @return Activité */
    public int getZ_PosWfActivity_ID() 
    {
        return get_ValueAsInt("Z_PosWfActivity_ID");
        
    }
    
    
}
