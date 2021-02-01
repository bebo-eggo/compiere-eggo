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
/** Generated Model for Z_OrderLinePosAction
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderLinePosAction extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderLinePosAction_ID id
    @param trx transaction
    */
    public X_Z_OrderLinePosAction (Ctx ctx, int Z_OrderLinePosAction_ID, Trx trx)
    {
        super (ctx, Z_OrderLinePosAction_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderLinePosAction_ID == 0)
        {
            setC_OrderLine_ID (0);
            setZ_OrderLinePosAction_ID (0);
            setZ_PosWfAction_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderLinePosAction (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27625765850789L;
    /** Last Updated Timestamp 2012-07-30 11:28:54.0 */
    public static final long updatedMS = 1343640534000L;
    /** AD_Table_ID=1000850 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderLinePosAction");
        
    }
    ;
    
    /** TableName=Z_OrderLinePosAction */
    public static final String Table_Name="Z_OrderLinePosAction";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Inter-Organization.
    @param AD_OrgTo_ID Organization valid for intercompany documents */
    public void setAD_OrgTo_ID (int AD_OrgTo_ID)
    {
        if (AD_OrgTo_ID <= 0) set_ValueNoCheck ("AD_OrgTo_ID", null);
        else
        set_ValueNoCheck ("AD_OrgTo_ID", Integer.valueOf(AD_OrgTo_ID));
        
    }
    
    /** Get Inter-Organization.
    @return Organization valid for intercompany documents */
    public int getAD_OrgTo_ID() 
    {
        return get_ValueAsInt("AD_OrgTo_ID");
        
    }
    
    /** Set Comments.
    @param Comments Comments or additional information */
    public void setComments (String Comments)
    {
        set_ValueNoCheck ("Comments", Comments);
        
    }
    
    /** Get Comments.
    @return Comments or additional information */
    public String getComments() 
    {
        return (String)get_Value("Comments");
        
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
    
    /** Set Action date.
    @param DateAction Action date */
    public void setDateAction (Timestamp DateAction)
    {
        set_ValueNoCheck ("DateAction", DateAction);
        
    }
    
    /** Get Action date.
    @return Action date */
    public Timestamp getDateAction() 
    {
        return (Timestamp)get_Value("DateAction");
        
    }
    
    /** Set Quantity.
    @param QtyEntered The Quantity Entered is based on the selected UoM */
    public void setQtyEntered (java.math.BigDecimal QtyEntered)
    {
        set_ValueNoCheck ("QtyEntered", QtyEntered);
        
    }
    
    /** Get Quantity.
    @return The Quantity Entered is based on the selected UoM */
    public java.math.BigDecimal getQtyEntered() 
    {
        return get_ValueAsBigDecimal("QtyEntered");
        
    }
    
    /** Set Actions des lignes de commandes POS.
    @param Z_OrderLinePosAction_ID Actions des lignes de commandes POS */
    public void setZ_OrderLinePosAction_ID (int Z_OrderLinePosAction_ID)
    {
        if (Z_OrderLinePosAction_ID < 1) throw new IllegalArgumentException ("Z_OrderLinePosAction_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderLinePosAction_ID", Integer.valueOf(Z_OrderLinePosAction_ID));
        
    }
    
    /** Get Actions des lignes de commandes POS.
    @return Actions des lignes de commandes POS */
    public int getZ_OrderLinePosAction_ID() 
    {
        return get_ValueAsInt("Z_OrderLinePosAction_ID");
        
    }
    
    /** Set Z_PosWfAction_ID.
    @param Z_PosWfAction_ID Z_PosWfAction_ID */
    public void setZ_PosWfAction_ID (int Z_PosWfAction_ID)
    {
        if (Z_PosWfAction_ID < 1) throw new IllegalArgumentException ("Z_PosWfAction_ID is mandatory.");
        set_Value ("Z_PosWfAction_ID", Integer.valueOf(Z_PosWfAction_ID));
        
    }
    
    /** Get Z_PosWfAction_ID.
    @return Z_PosWfAction_ID */
    public int getZ_PosWfAction_ID() 
    {
        return get_ValueAsInt("Z_PosWfAction_ID");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getZ_PosWfAction_ID()));
        
    }
    
    /** Set Transaction Message.
    @param Z_TransactionMsg_ID Transaction Message */
    public void setZ_TransactionMsg_ID (int Z_TransactionMsg_ID)
    {
        if (Z_TransactionMsg_ID <= 0) set_ValueNoCheck ("Z_TransactionMsg_ID", null);
        else
        set_ValueNoCheck ("Z_TransactionMsg_ID", Integer.valueOf(Z_TransactionMsg_ID));
        
    }
    
    /** Get Transaction Message.
    @return Transaction Message */
    public int getZ_TransactionMsg_ID() 
    {
        return get_ValueAsInt("Z_TransactionMsg_ID");
        
    }
    
    
}
