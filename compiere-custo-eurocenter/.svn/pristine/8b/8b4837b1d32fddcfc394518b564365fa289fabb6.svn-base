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
/** Generated Model for Z_OrderMargin
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_OrderMargin extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_OrderMargin_ID id
    @param trx transaction
    */
    public X_Z_OrderMargin (Ctx ctx, int Z_OrderMargin_ID, Trx trx)
    {
        super (ctx, Z_OrderMargin_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_OrderMargin_ID == 0)
        {
            setC_Order_ID (0);
            setMovementDate (new Timestamp(System.currentTimeMillis()));
            setZ_OrderMargin_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_OrderMargin (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27653339546789L;
    /** AD_Table_ID=1003059 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_OrderMargin");
        
    }
    ;
    
    /** TableName=Z_OrderMargin */
    public static final String Table_Name="Z_OrderMargin";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Marge Commerciale.
    @param CommercialMargin Marge Commerciale */
    public void setCommercialMargin (java.math.BigDecimal CommercialMargin)
    {
        set_Value ("CommercialMargin", CommercialMargin);
        
    }
    
    /** Get Marge Commerciale.
    @return Marge Commerciale */
    public java.math.BigDecimal getCommercialMargin() 
    {
        return get_ValueAsBigDecimal("CommercialMargin");
        
    }
    
    /** Set Pct Marge Commerciale.
    @param CommercialMarginPct Pct Marge Commerciale */
    public void setCommercialMarginPct (java.math.BigDecimal CommercialMarginPct)
    {
        set_Value ("CommercialMarginPct", CommercialMarginPct);
        
    }
    
    /** Get Pct Marge Commerciale.
    @return Pct Marge Commerciale */
    public java.math.BigDecimal getCommercialMarginPct() 
    {
        return get_ValueAsBigDecimal("CommercialMarginPct");
        
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
    
    /** Set Line Total.
    @param LineTotalAmt Total line amount incl. Tax */
    public void setLineTotalAmt (java.math.BigDecimal LineTotalAmt)
    {
        set_Value ("LineTotalAmt", LineTotalAmt);
        
    }
    
    /** Get Line Total.
    @return Total line amount incl. Tax */
    public java.math.BigDecimal getLineTotalAmt() 
    {
        return get_ValueAsBigDecimal("LineTotalAmt");
        
    }
    
    /** Set Movement Date.
    @param MovementDate Date a product was moved in or out of inventory */
    public void setMovementDate (Timestamp MovementDate)
    {
        if (MovementDate == null) throw new IllegalArgumentException ("MovementDate is mandatory.");
        set_ValueNoCheck ("MovementDate", MovementDate);
        
    }
    
    /** Get Movement Date.
    @return Date a product was moved in or out of inventory */
    public Timestamp getMovementDate() 
    {
        return (Timestamp)get_Value("MovementDate");
        
    }
    
    /** Set Marge Réelle.
    @param RealMargin Marge Réelle */
    public void setRealMargin (java.math.BigDecimal RealMargin)
    {
        set_Value ("RealMargin", RealMargin);
        
    }
    
    /** Get Marge Réelle.
    @return Marge Réelle */
    public java.math.BigDecimal getRealMargin() 
    {
        return get_ValueAsBigDecimal("RealMargin");
        
    }
    
    /** Set Pct Marge Réelle.
    @param RealMarginPct Pct Marge Réelle */
    public void setRealMarginPct (java.math.BigDecimal RealMarginPct)
    {
        set_Value ("RealMarginPct", RealMarginPct);
        
    }
    
    /** Get Pct Marge Réelle.
    @return Pct Marge Réelle */
    public java.math.BigDecimal getRealMarginPct() 
    {
        return get_ValueAsBigDecimal("RealMarginPct");
        
    }
    
    /** Set Marge de l'ordre de vente.
    @param Z_OrderMargin_ID Marge de l'ordre de vente */
    public void setZ_OrderMargin_ID (int Z_OrderMargin_ID)
    {
        if (Z_OrderMargin_ID < 1) throw new IllegalArgumentException ("Z_OrderMargin_ID is mandatory.");
        set_ValueNoCheck ("Z_OrderMargin_ID", Integer.valueOf(Z_OrderMargin_ID));
        
    }
    
    /** Get Marge de l'ordre de vente.
    @return Marge de l'ordre de vente */
    public int getZ_OrderMargin_ID() 
    {
        return get_ValueAsInt("Z_OrderMargin_ID");
        
    }
    
    /** Set Status Avancement.
    @param Z_OrderStepStatus Status Avancement */
    public void setZ_OrderStepStatus (String Z_OrderStepStatus)
    {
        set_ValueNoCheck ("Z_OrderStepStatus", Z_OrderStepStatus);
        
    }
    
    /** Get Status Avancement.
    @return Status Avancement */
    public String getZ_OrderStepStatus() 
    {
        return (String)get_Value("Z_OrderStepStatus");
        
    }
    
    
}
