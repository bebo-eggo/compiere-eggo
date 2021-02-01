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
/** Generated Model for Z_BP_PriceListByDocType
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_BP_PriceListByDocType extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_BP_PriceListByDocType_ID id
    @param trx transaction
    */
    public X_Z_BP_PriceListByDocType (Ctx ctx, int Z_BP_PriceListByDocType_ID, Trx trx)
    {
        super (ctx, Z_BP_PriceListByDocType_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_BP_PriceListByDocType_ID == 0)
        {
            setC_BPartner_ID (0);	// @C_BPartner_ID@
            setZ_BP_PriceListByDocType_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_BP_PriceListByDocType (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27721950228789L;
    /** AD_Table_ID=1003729 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_BP_PriceListByDocType");
        
    }
    ;
    
    /** TableName=Z_BP_PriceListByDocType */
    public static final String Table_Name="Z_BP_PriceListByDocType";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Business Partner.
    @param C_BPartner_ID Identifies a Business Partner */
    public void setC_BPartner_ID (int C_BPartner_ID)
    {
        if (C_BPartner_ID < 1) throw new IllegalArgumentException ("C_BPartner_ID is mandatory.");
        set_ValueNoCheck ("C_BPartner_ID", Integer.valueOf(C_BPartner_ID));
        
    }
    
    /** Get Business Partner.
    @return Identifies a Business Partner */
    public int getC_BPartner_ID() 
    {
        return get_ValueAsInt("C_BPartner_ID");
        
    }
    
    /** Set Document Type.
    @param C_DocType_ID Document type or rules */
    public void setC_DocType_ID (int C_DocType_ID)
    {
        if (C_DocType_ID <= 0) set_Value ("C_DocType_ID", null);
        else
        set_Value ("C_DocType_ID", Integer.valueOf(C_DocType_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getC_DocType_ID() 
    {
        return get_ValueAsInt("C_DocType_ID");
        
    }
    
    /** Set Price List.
    @param M_PriceList_ID Unique identifier of a Price List */
    public void setM_PriceList_ID (int M_PriceList_ID)
    {
        if (M_PriceList_ID <= 0) set_Value ("M_PriceList_ID", null);
        else
        set_Value ("M_PriceList_ID", Integer.valueOf(M_PriceList_ID));
        
    }
    
    /** Get Price List.
    @return Unique identifier of a Price List */
    public int getM_PriceList_ID() 
    {
        return get_ValueAsInt("M_PriceList_ID");
        
    }
    
    /** Set Z_BP_PriceListByDocType.
    @param Z_BP_PriceListByDocType_ID Z_BP_PriceListByDocType */
    public void setZ_BP_PriceListByDocType_ID (int Z_BP_PriceListByDocType_ID)
    {
        if (Z_BP_PriceListByDocType_ID < 1) throw new IllegalArgumentException ("Z_BP_PriceListByDocType_ID is mandatory.");
        set_ValueNoCheck ("Z_BP_PriceListByDocType_ID", Integer.valueOf(Z_BP_PriceListByDocType_ID));
        
    }
    
    /** Get Z_BP_PriceListByDocType.
    @return Z_BP_PriceListByDocType */
    public int getZ_BP_PriceListByDocType_ID() 
    {
        return get_ValueAsInt("Z_BP_PriceListByDocType_ID");
        
    }
    
    
}
