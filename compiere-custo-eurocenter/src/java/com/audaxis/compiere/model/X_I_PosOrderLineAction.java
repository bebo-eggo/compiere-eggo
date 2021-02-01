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
/** Generated Model for I_PosOrderLineAction
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_PosOrderLineAction extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_PosOrderLineAction_ID id
    @param trx transaction
    */
    public X_I_PosOrderLineAction (Ctx ctx, int I_PosOrderLineAction_ID, Trx trx)
    {
        super (ctx, I_PosOrderLineAction_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_PosOrderLineAction_ID == 0)
        {
            setI_PosOrderLineAction_ID (0);
            setI_PosOrderLine_ID (0);
            
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_PosOrderLineAction (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27620056791789L;
    /** Last Updated Timestamp 2012-05-25 09:37:55.0 */
    public static final long updatedMS = 1337931475000L;
    /** AD_Table_ID=1000746 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_PosOrderLineAction");
        
    }
    ;
    
    /** TableName=I_PosOrderLineAction */
    public static final String Table_Name="I_PosOrderLineAction";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Comments.
    @param Comments Comments or additional information */
    public void setComments (String Comments)
    {
        set_Value ("Comments", Comments);
        
    }
    
    /** Get Comments.
    @return Comments or additional information */
    public String getComments() 
    {
        return (String)get_Value("Comments");
        
    }
    
    /** Set Action date.
    @param DateAction Action date */
    public void setDateAction (Timestamp DateAction)
    {
        set_Value ("DateAction", DateAction);
        
    }
    
    /** Get Action date.
    @return Action date */
    public Timestamp getDateAction() 
    {
        return (Timestamp)get_Value("DateAction");
        
    }
    
    /** Set I_PosOrderLineAction_ID.
    @param I_PosOrderLineAction_ID I_PosOrderLineAction_ID */
    public void setI_PosOrderLineAction_ID (int I_PosOrderLineAction_ID)
    {
        if (I_PosOrderLineAction_ID < 1) throw new IllegalArgumentException ("I_PosOrderLineAction_ID is mandatory.");
        set_ValueNoCheck ("I_PosOrderLineAction_ID", Integer.valueOf(I_PosOrderLineAction_ID));
        
    }
    
    /** Get I_PosOrderLineAction_ID.
    @return I_PosOrderLineAction_ID */
    public int getI_PosOrderLineAction_ID() 
    {
        return get_ValueAsInt("I_PosOrderLineAction_ID");
        
    }
    
    /** Set I_PosOrderLineAction_ID.
    @param I_PosOrderLineAction_ID I_PosOrderLineAction_ID */
    public void setZ_OrderLinePosAction_ID (int Z_OrderLinePosAction_ID)
    {
        set_ValueNoCheck ("Z_OrderLinePosAction_ID", Integer.valueOf(Z_OrderLinePosAction_ID));
        
    }
    

    /** Get I_PosOrderLineAction_ID.
    @return I_PosOrderLineAction_ID */
    public int getZ_OrderLinePosAction_ID() 
    {
        return get_ValueAsInt("Z_OrderLinePosAction_ID");
        
    }

    
    /** Set Z_PosWfAction_ID.
    @param Z_PosWfAction_ID Z_PosWfAction_ID */
    public void setZ_PosWfAction_ID (int Z_PosWfAction_ID)
    {
        set_ValueNoCheck ("Z_PosWfAction_ID", Integer.valueOf(Z_PosWfAction_ID));
        
    }
    

    /** Get Z_PosWfAction_ID.
    @return Z_PosWfAction_ID */
    public int getZ_PosWfAction_ID()
    {
        return get_ValueAsInt("Z_PosWfAction_ID");
        
    }

    
    
    /** Set I_PosOrderLineAction_ID.
    @param AD_OrgTo_ID I_PosOrderLineAction_ID */
    public void setAD_OrgTo_ID (int AD_OrgTo_ID)
    {
        set_ValueNoCheck ("AD_OrgTo_ID", Integer.valueOf(AD_OrgTo_ID));
        
    }
    
    /** Get AD_OrgTo_ID.
    @return AD_OrgTo_ID */
    public int getAD_OrgTo_ID() 
    {
        return get_ValueAsInt("AD_OrgTo_ID");
        
    }
    
    
    
    /** Set Order POS Line.
    @param I_PosOrderLine_ID Order POS Line */
    public void setI_PosOrderLine_ID (int I_PosOrderLine_ID)
    {
        if (I_PosOrderLine_ID < 1) throw new IllegalArgumentException ("I_PosOrderLine_ID is mandatory.");
        set_ValueNoCheck ("I_PosOrderLine_ID", Integer.valueOf(I_PosOrderLine_ID));
        
    }
    /** Get Order POS Line.
    @return Order POS Line */
    public int getI_PosOrderLine_ID() 
    {
        return get_ValueAsInt("I_PosOrderLine_ID");
        
    }

    
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getI_PosOrderLine_ID()));
        
    }
    
     
    /** Set Quantity.
    @param QtyEntered The Quantity Entered is based on the selected UoM */
    public void setQtyEntered (java.math.BigDecimal QtyEntered)
    {
        set_Value ("QtyEntered", QtyEntered);
        
    }
    
    /** Get Quantity.
    @return The Quantity Entered is based on the selected UoM */
    public java.math.BigDecimal getQtyEntered() 
    {
        return get_ValueAsBigDecimal("QtyEntered");
        
    }
    
    
}
