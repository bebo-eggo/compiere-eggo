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
/** Generated Model for Z_SavStatus
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_SavStatus extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_SavStatus_ID id
    @param trx transaction
    */
    public X_Z_SavStatus (Ctx ctx, int Z_SavStatus_ID, Trx trx)
    {
        super (ctx, Z_SavStatus_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_SavStatus_ID == 0)
        {
            setZ_SavStatus_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_SavStatus (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27624662881789L;
    /** Last Updated Timestamp 2012-07-17 17:06:05.0 */
    public static final long updatedMS = 1342537565000L;
    /** AD_Table_ID=1000858 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_SavStatus");
        
    }
    ;
    
    /** TableName=Z_SavStatus */
    public static final String Table_Name="Z_SavStatus";
    
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
        if (C_Order_ID <= 0) set_Value ("C_Order_ID", null);
        else
        set_Value ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getC_Order_ID()));
        
    }
    
    /** Set Mouvement Date.
    @param DateMouvement Mouvement Date */
    public void setDateMouvement (Timestamp DateMouvement)
    {
        set_Value ("DateMouvement", DateMouvement);
        
    }
    
    /** Get Mouvement Date.
    @return Mouvement Date */
    public Timestamp getDateMouvement() 
    {
        return (Timestamp)get_Value("DateMouvement");
        
    }
    
    /** Set SAV_STATUS.
    @param SAV_STATUS SAV_STATUS */
    public void setSAV_STATUS (String SAV_STATUS)
    {
        set_Value ("SAV_STATUS", SAV_STATUS);
        
    }
    
    /** Get SAV_STATUS.
    @return SAV_STATUS */
    public String getSAV_STATUS() 
    {
        return (String)get_Value("SAV_STATUS");
        
    }
    
    /** Set Table des Status SAV.
    @param Z_SavStatus_ID Table des Status SAV */
    public void setZ_SavStatus_ID (int Z_SavStatus_ID)
    {
        if (Z_SavStatus_ID < 1) throw new IllegalArgumentException ("Z_SavStatus_ID is mandatory.");
        set_ValueNoCheck ("Z_SavStatus_ID", Integer.valueOf(Z_SavStatus_ID));
        
    }
    
    /** Get Table des Status SAV.
    @return Table des Status SAV */
    public int getZ_SavStatus_ID() 
    {
        return get_ValueAsInt("Z_SavStatus_ID");
        
    }
    
    
}
