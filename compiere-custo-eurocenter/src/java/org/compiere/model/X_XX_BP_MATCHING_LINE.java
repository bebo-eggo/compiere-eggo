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
/** Generated Model for XX_BP_MATCHING_LINE
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_BP_MATCHING_LINE extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_BP_MATCHING_LINE_ID id
    @param trx transaction
    */
    public X_XX_BP_MATCHING_LINE (Ctx ctx, int XX_BP_MATCHING_LINE_ID, Trx trx)
    {
        super (ctx, XX_BP_MATCHING_LINE_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_BP_MATCHING_LINE_ID == 0)
        {
            setXX_BP_MATCHING_ID (0);
            setXX_BP_MATCHING_LINE_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_BP_MATCHING_LINE (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27825350054789L;
    /** AD_Table_ID=1007589 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_BP_MATCHING_LINE");
        
    }
    ;
    
    /** TableName=XX_BP_MATCHING_LINE */
    public static final String Table_Name="XX_BP_MATCHING_LINE";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Partner Name.
    @param BPName Account or Business Partner Name */
    public void setBPName (String BPName)
    {
        set_Value ("BPName", BPName);
        
    }
    
    /** Get Partner Name.
    @return Account or Business Partner Name */
    public String getBPName() 
    {
        return (String)get_Value("BPName");
        
    }
    
    /** Set Business Partner.
    @param C_BPartner_ID Identifies a Business Partner */
    public void setC_BPartner_ID (int C_BPartner_ID)
    {
        if (C_BPartner_ID <= 0) set_Value ("C_BPartner_ID", null);
        else
        set_Value ("C_BPartner_ID", Integer.valueOf(C_BPartner_ID));
        
    }
    
    /** Get Business Partner.
    @return Identifies a Business Partner */
    public int getC_BPartner_ID() 
    {
        return get_ValueAsInt("C_BPartner_ID");
        
    }
    
    public void setC_AllocationHdr_ID (int C_AllocationHdr_ID)
    {
        set_Value ("C_AllocationHdr_ID", Integer.valueOf(C_AllocationHdr_ID));
        
    }
    
    /** Get Business Partner.
    @return Identifies a Business Partner */
    public int getC_AllocationHdr_ID() 
    {
        return get_ValueAsInt("C_AllocationHdr_ID");
        
    }
    
    /** Set Solde.
    @param SOLDE Solde */
    public void setSOLDE (java.math.BigDecimal SOLDE)
    {
        set_Value ("SOLDE", SOLDE);
        
    }
    
    /** Get Solde.
    @return Solde */
    public java.math.BigDecimal getSOLDE() 
    {
        return get_ValueAsBigDecimal("SOLDE");
        
    }
    
    /** Set Search Key.
    @param Value Search key for the record in the format required - must be unique */
    public void setValue (String Value)
    {
        set_Value ("Value", Value);
        
    }
    
    /** Get Search Key.
    @return Search key for the record in the format required - must be unique */
    public String getValue() 
    {
        return (String)get_Value("Value");
        
    }
    
    /** Set XX_BP_MATCHING.
    @param XX_BP_MATCHING_ID XX_BP_MATCHING */
    public void setXX_BP_MATCHING_ID (int XX_BP_MATCHING_ID)
    {
        if (XX_BP_MATCHING_ID < 1) throw new IllegalArgumentException ("XX_BP_MATCHING_ID is mandatory.");
        set_Value ("XX_BP_MATCHING_ID", Integer.valueOf(XX_BP_MATCHING_ID));
        
    }
    
    /** Get XX_BP_MATCHING.
    @return XX_BP_MATCHING */
    public int getXX_BP_MATCHING_ID() 
    {
        return get_ValueAsInt("XX_BP_MATCHING_ID");
        
    }
    
    /** Set XX_BP_MATCHING_LINE.
    @param XX_BP_MATCHING_LINE_ID XX_BP_MATCHING_LINE */
    public void setXX_BP_MATCHING_LINE_ID (int XX_BP_MATCHING_LINE_ID)
    {
        if (XX_BP_MATCHING_LINE_ID < 1) throw new IllegalArgumentException ("XX_BP_MATCHING_LINE_ID is mandatory.");
        set_ValueNoCheck ("XX_BP_MATCHING_LINE_ID", Integer.valueOf(XX_BP_MATCHING_LINE_ID));
        
    }
    
    /** Get XX_BP_MATCHING_LINE.
    @return XX_BP_MATCHING_LINE */
    public int getXX_BP_MATCHING_LINE_ID() 
    {
        return get_ValueAsInt("XX_BP_MATCHING_LINE_ID");
        
    }
    
    
}
