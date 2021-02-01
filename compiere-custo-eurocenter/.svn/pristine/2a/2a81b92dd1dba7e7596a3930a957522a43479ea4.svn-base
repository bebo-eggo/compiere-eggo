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
/** Generated Model for Z_DefaultWarehouse
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_DefaultWarehouse extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_DefaultWarehouse_ID id
    @param trx transaction
    */
    public X_Z_DefaultWarehouse (Ctx ctx, int Z_DefaultWarehouse_ID, Trx trx)
    {
        super (ctx, Z_DefaultWarehouse_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_DefaultWarehouse_ID == 0)
        {
            setC_DocType_ID (0);
            setM_Locator_ID (0);
            setM_Warehouse_ID (0);
            setZ_DefaultWarehouse_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_DefaultWarehouse (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27645470962789L;
    /** AD_Table_ID=1002311 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_DefaultWarehouse");
        
    }
    ;
    
    /** TableName=Z_DefaultWarehouse */
    public static final String Table_Name="Z_DefaultWarehouse";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Document Type.
    @param C_DocType_ID Document type or rules */
    public void setC_DocType_ID (int C_DocType_ID)
    {
        if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
        set_ValueNoCheck ("C_DocType_ID", Integer.valueOf(C_DocType_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getC_DocType_ID() 
    {
        return get_ValueAsInt("C_DocType_ID");
        
    }
    
    /** Set Locator.
    @param M_Locator_ID Warehouse Locator */
    public void setM_Locator_ID (int M_Locator_ID)
    {
        if (M_Locator_ID < 1) throw new IllegalArgumentException ("M_Locator_ID is mandatory.");
        set_Value ("M_Locator_ID", Integer.valueOf(M_Locator_ID));
        
    }
    
    /** Get Locator.
    @return Warehouse Locator */
    public int getM_Locator_ID() 
    {
        return get_ValueAsInt("M_Locator_ID");
        
    }
    
    /** Set Warehouse.
    @param M_Warehouse_ID Storage Warehouse and Service Point */
    public void setM_Warehouse_ID (int M_Warehouse_ID)
    {
        if (M_Warehouse_ID < 1) throw new IllegalArgumentException ("M_Warehouse_ID is mandatory.");
        set_Value ("M_Warehouse_ID", Integer.valueOf(M_Warehouse_ID));
        
    }
    
    /** Get Warehouse.
    @return Storage Warehouse and Service Point */
    public int getM_Warehouse_ID() 
    {
        return get_ValueAsInt("M_Warehouse_ID");
        
    }
    
    /** Set Emplacement/Magasin Défaut.
    @param Z_DefaultWarehouse_ID Emplacement/Magasin Défaut */
    public void setZ_DefaultWarehouse_ID (int Z_DefaultWarehouse_ID)
    {
        if (Z_DefaultWarehouse_ID < 1) throw new IllegalArgumentException ("Z_DefaultWarehouse_ID is mandatory.");
        set_ValueNoCheck ("Z_DefaultWarehouse_ID", Integer.valueOf(Z_DefaultWarehouse_ID));
        
    }
    
    /** Get Emplacement/Magasin Défaut.
    @return Emplacement/Magasin Défaut */
    public int getZ_DefaultWarehouse_ID() 
    {
        return get_ValueAsInt("Z_DefaultWarehouse_ID");
        
    }
    
    
}
