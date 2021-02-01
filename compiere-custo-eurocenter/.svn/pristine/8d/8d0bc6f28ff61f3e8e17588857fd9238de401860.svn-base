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
/** Generated Model for XX_OrgInfoCODA
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_OrgInfoCODA extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_OrgInfoCODA_ID id
    @param trx transaction
    */
    public X_XX_OrgInfoCODA (Ctx ctx, int XX_OrgInfoCODA_ID, Trx trx)
    {
        super (ctx, XX_OrgInfoCODA_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_OrgInfoCODA_ID == 0)
        {
            setXX_OrgInfoCODA_ID (0);
            setXX_Terminal (null);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_OrgInfoCODA (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27722117120789L;
    /** AD_Table_ID=1006450 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_OrgInfoCODA");
        
    }
    ;
    
    /** TableName=XX_OrgInfoCODA */
    public static final String Table_Name="XX_OrgInfoCODA";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
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
    
    /** Set Infos CODA.
    @param XX_OrgInfoCODA_ID Infos CODA */
    public void setXX_OrgInfoCODA_ID (int XX_OrgInfoCODA_ID)
    {
        if (XX_OrgInfoCODA_ID < 1) throw new IllegalArgumentException ("XX_OrgInfoCODA_ID is mandatory.");
        set_ValueNoCheck ("XX_OrgInfoCODA_ID", Integer.valueOf(XX_OrgInfoCODA_ID));
        
    }
    
    /** Get Infos CODA.
    @return Infos CODA */
    public int getXX_OrgInfoCODA_ID() 
    {
        return get_ValueAsInt("XX_OrgInfoCODA_ID");
        
    }
    
    /** Set Terminal.
    @param XX_Terminal Terminal */
    public void setXX_Terminal (String XX_Terminal)
    {
        if (XX_Terminal == null) throw new IllegalArgumentException ("XX_Terminal is mandatory.");
        set_Value ("XX_Terminal", XX_Terminal);
        
    }
    
    /** Get Terminal.
    @return Terminal */
    public String getXX_Terminal() 
    {
        return (String)get_Value("XX_Terminal");
        
    }
    
    
}
