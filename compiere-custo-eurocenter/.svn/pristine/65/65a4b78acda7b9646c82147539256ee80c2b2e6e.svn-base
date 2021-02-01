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
/** Generated Model for Z_Interventions
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_Interventions extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_Interventions_ID id
    @param trx transaction
    */
    public X_Z_Interventions (Ctx ctx, int Z_Interventions_ID, Trx trx)
    {
        super (ctx, Z_Interventions_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_Interventions_ID == 0)
        {
            setC_Order_ID (0);
            setDateFrom (new Timestamp(System.currentTimeMillis()));
            setDateTo (new Timestamp(System.currentTimeMillis()));	// @DateFrom@
            setTaskType (null);	// P
            setVendor_ID (0);
            setZ_Interventions_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_Interventions (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27653767730789L;
    /** AD_Table_ID=1003160 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_Interventions");
        
    }
    ;
    
    /** TableName=Z_Interventions */
    public static final String Table_Name="Z_Interventions";
    
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
    
    /** Set Date From.
    @param DateFrom Starting date for a range */
    public void setDateFrom (Timestamp DateFrom)
    {
        if (DateFrom == null) throw new IllegalArgumentException ("DateFrom is mandatory.");
        set_Value ("DateFrom", DateFrom);
        
    }
    
    /** Get Date From.
    @return Starting date for a range */
    public Timestamp getDateFrom() 
    {
        return (Timestamp)get_Value("DateFrom");
        
    }
    
    /** Set Date To.
    @param DateTo End date of a date range */
    public void setDateTo (Timestamp DateTo)
    {
        if (DateTo == null) throw new IllegalArgumentException ("DateTo is mandatory.");
        set_Value ("DateTo", DateTo);
        
    }
    
    /** Get Date To.
    @return End date of a date range */
    public Timestamp getDateTo() 
    {
        return (Timestamp)get_Value("DateTo");
        
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
    
    /** Set Task Type.
    @param TaskType Type of Project Task */
    public void setTaskType (String TaskType)
    {
        set_Value ("TaskType", TaskType);
        
    }
    
    /** Get Task Type.
    @return Type of Project Task */
    public String getTaskType() 
    {
        return (String)get_Value("TaskType");
        
    }
    
    /** Set Vendor.
    @param Vendor_ID The Vendor of the product/service */
    public void setVendor_ID (int Vendor_ID)
    {
        if (Vendor_ID < 1) throw new IllegalArgumentException ("Vendor_ID is mandatory.");
        set_Value ("Vendor_ID", Integer.valueOf(Vendor_ID));
        
    }
    
    /** Get Vendor.
    @return The Vendor of the product/service */
    public int getVendor_ID() 
    {
        return get_ValueAsInt("Vendor_ID");
        
    }
    
    /** Set Interventions sur une commande de vente.
    @param Z_Interventions_ID Interventions sur une commande de vente */
    public void setZ_Interventions_ID (int Z_Interventions_ID)
    {
        if (Z_Interventions_ID < 1) throw new IllegalArgumentException ("Z_Interventions_ID is mandatory.");
        set_ValueNoCheck ("Z_Interventions_ID", Integer.valueOf(Z_Interventions_ID));
        
    }
    
    /** Get Interventions sur une commande de vente.
    @return Interventions sur une commande de vente */
    public int getZ_Interventions_ID() 
    {
        return get_ValueAsInt("Z_Interventions_ID");
        
    }
    
    public void setIsXX_AM (boolean XX_AM)
    {
        set_Value ("XX_AM", Boolean.valueOf(XX_AM));
        
    }
    
    public boolean isXX_AM() 
    {
        return get_ValueAsBoolean("XX_AM");
        
    }
    
    public void setIsXX_PM (boolean XX_PM)
    {
        set_Value ("XX_PM", Boolean.valueOf(XX_PM));
        
    }
    
    public boolean isXX_PM() 
    {
        return get_ValueAsBoolean("XX_PM");
        
    }
    
    public void setIsXX_IsSecVendor (boolean XX_IsSecVendor)
    {
        set_Value ("XX_IsSecVendor", Boolean.valueOf(XX_IsSecVendor));
        
    }
    
    public boolean isXX_IsSecVendor() 
    {
        return get_ValueAsBoolean("XX_IsSecVendor");
        
    }
    
    public void setXX_Ressource (String XX_Ressource)
    {
        set_Value ("XX_Ressource", XX_Ressource);
        
    }
    
    public String getXX_Ressource() 
    {
        return (String)get_Value("XX_Ressource");
        
    }
    
    public void setXX_Hours (java.math.BigDecimal XX_Hours)
    {
        set_Value ("XX_Hours", XX_Hours);
        
    }
    
    public java.math.BigDecimal getXX_Hours() 
    {
        return get_ValueAsBigDecimal("XX_Hours");
        
    }
}
