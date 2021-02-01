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
/** Generated Model for XX_TNPAUTO
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_TNPAUTO extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_TNPAUTO_ID id
    @param trx transaction
    */
    public X_XX_TNPAUTO (Ctx ctx, int XX_TNPAUTO_ID, Trx trx)
    {
        super (ctx, XX_TNPAUTO_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_TNPAUTO_ID == 0)
        {
            setXX_TNPAUTO_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_TNPAUTO (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27824416914789L;
    /** AD_Table_ID=1007587 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_TNPAUTO");
        
    }
    ;
    
    /** TableName=XX_TNPAUTO */
    public static final String Table_Name="XX_TNPAUTO";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Phys.Inventory.
    @param M_Inventory_ID Parameters for a Physical Inventory */
    public void setM_Inventory_ID (int M_Inventory_ID)
    {
        if (M_Inventory_ID <= 0) set_Value ("M_Inventory_ID", null);
        else
        set_Value ("M_Inventory_ID", Integer.valueOf(M_Inventory_ID));
        
    }
    
    /** Get Phys.Inventory.
    @return Parameters for a Physical Inventory */
    public int getM_Inventory_ID() 
    {
        return get_ValueAsInt("M_Inventory_ID");
        
    }
    
    /** Set Inventory Move.
    @param M_Movement_ID Movement of Inventory */
    public void setM_Movement_ID (int M_Movement_ID)
    {
        if (M_Movement_ID <= 0) set_Value ("M_Movement_ID", null);
        else
        set_Value ("M_Movement_ID", Integer.valueOf(M_Movement_ID));
        
    }
    
    /** Get Inventory Move.
    @return Movement of Inventory */
    public int getM_Movement_ID() 
    {
        return get_ValueAsInt("M_Movement_ID");
        
    }
    
    /** Set Lien Transfert Conso - TNP.
    @param XX_TNPAUTO_ID Lien Transfert Conso - TNP */
    public void setXX_TNPAUTO_ID (int XX_TNPAUTO_ID)
    {
        if (XX_TNPAUTO_ID < 1) throw new IllegalArgumentException ("XX_TNPAUTO_ID is mandatory.");
        set_ValueNoCheck ("XX_TNPAUTO_ID", Integer.valueOf(XX_TNPAUTO_ID));
        
    }
    
    /** Get Lien Transfert Conso - TNP.
    @return Lien Transfert Conso - TNP */
    public int getXX_TNPAUTO_ID() 
    {
        return get_ValueAsInt("XX_TNPAUTO_ID");
        
    }
    
    
}
