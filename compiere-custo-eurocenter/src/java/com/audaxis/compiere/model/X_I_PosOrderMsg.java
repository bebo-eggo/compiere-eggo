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
/** Generated Model for I_POSORDERMSG
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_PosOrderMsg extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_POSORDERMSG_ID id
    @param trx transaction
    */
    public X_I_PosOrderMsg (Ctx ctx, int I_POSORDERMSG_ID, Trx trx)
    {
        super (ctx, I_POSORDERMSG_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_POSORDERMSG_ID == 0)
        {
            setI_PosOrder_ID (0);
            setI_PosOrderMsg_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_PosOrderMsg (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27634594990789L;
    /** Last Updated Timestamp 2012-11-09 15:01:14.0 */
    public static final long updatedMS = 1352469674000L;
    /** AD_Table_ID=1001383 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_POSORDERMSG");
        
    }
    ;
    
    /** TableName=I_POSORDERMSG */
    public static final String Table_Name="I_POSORDERMSG";
    
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
        if (AD_Message_ID <= 0) set_Value ("AD_Message_ID", null);
        else
        set_Value ("AD_Message_ID", Integer.valueOf(AD_Message_ID));
        
    }
    
    /** Get Message.
    @return System Message */
    public int getAD_Message_ID() 
    {
        return get_ValueAsInt("AD_Message_ID");
        
    }
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setDescription (String Description)
    {
        set_Value ("Description", Description);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getDescription() 
    {
        return (String)get_Value("Description");
        
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
    
    /** Set Order POS Msg.
    @param I_PosOrderMsg_ID Order POS Msg */
    public void setI_PosOrderMsg_ID (int I_PosOrderMsg_ID)
    {
        if (I_PosOrderMsg_ID < 1) throw new IllegalArgumentException ("I_PosOrderMsg_ID is mandatory.");
        set_ValueNoCheck ("I_PosOrderMsg_ID", Integer.valueOf(I_PosOrderMsg_ID));
        
    }
    
    /** Get Order POS Msg.
    @return Order POS Msg */
    public int getI_PosOrderMsg_ID() 
    {
        return get_ValueAsInt("I_PosOrderMsg_ID");
        
    }
    
    
}
