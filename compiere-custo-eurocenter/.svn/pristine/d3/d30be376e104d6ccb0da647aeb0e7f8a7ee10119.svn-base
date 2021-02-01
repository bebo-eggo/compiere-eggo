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
/** Generated Model for Z_OrderVendorStep
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderVendorStep extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderVendorStep_ID id
    @param trx transaction
    */
    public X_Z_OrderVendorStep (Ctx ctx, int Z_OrderVendorStep_ID, Trx trx)
    {
        super (ctx, Z_OrderVendorStep_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderVendorStep_ID == 0)
        {
            setC_Order_ID (0);
            setZ_OrderVendorStep_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderVendorStep (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27641054471789L;
    /** Last Updated Timestamp 2013-01-23 09:19:15.0 */
    public static final long updatedMS = 1358929155000L;
    /** AD_Table_ID=1001996 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderVendorStep");
        
    }
    ;
    
    /** TableName=Z_OrderVendorStep */
    public static final String Table_Name="Z_OrderVendorStep";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set User/Contact.
    @param AD_User_ID User within the system - Internal or Business Partner Contact */
    public void setAD_User_ID (int AD_User_ID)
    {
        if (AD_User_ID <= 0) set_Value ("AD_User_ID", null);
        else
        set_Value ("AD_User_ID", Integer.valueOf(AD_User_ID));
        
    }
    
    /** Get User/Contact.
    @return User within the system - Internal or Business Partner Contact */
    public int getAD_User_ID() 
    {
        return get_ValueAsInt("AD_User_ID");
        
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
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getDateAction()));
        
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
    
    /** Set Order Vendor Step.
    @param Z_OrderVendorStep_ID Order Vendor Step */
    public void setZ_OrderVendorStep_ID (int Z_OrderVendorStep_ID)
    {
        if (Z_OrderVendorStep_ID < 1) throw new IllegalArgumentException ("Z_OrderVendorStep_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderVendorStep_ID", Integer.valueOf(Z_OrderVendorStep_ID));
        
    }
    
    /** Get Order Vendor Step.
    @return Order Vendor Step */
    public int getZ_OrderVendorStep_ID() 
    {
        return get_ValueAsInt("Z_OrderVendorStep_ID");
        
    }
    
    /** Set Z_OrderVendorStepStatus.
    @param Z_OrderVendorStepStatus Z_OrderVendorStepStatus */
    public void setZ_OrderVendorStepStatus (String Z_OrderVendorStepStatus)
    {
        set_Value ("Z_OrderVendorStepStatus", Z_OrderVendorStepStatus);
        
    }
    
    /** Get Z_OrderVendorStepStatus.
    @return Z_OrderVendorStepStatus */
    public String getZ_OrderVendorStepStatus() 
    {
        return (String)get_Value("Z_OrderVendorStepStatus");
        
    }
    
    
}
