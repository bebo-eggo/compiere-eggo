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
/** Generated Model for XX_BPARTNER_GROUP_L
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_BPARTNER_GROUP_L extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_BPARTNER_GROUP_L_ID id
    @param trx transaction
    */
    public X_XX_BPARTNER_GROUP_L (Ctx ctx, int XX_BPARTNER_GROUP_L_ID, Trx trx)
    {
        super (ctx, XX_BPARTNER_GROUP_L_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_BPARTNER_GROUP_L_ID == 0)
        {
            setIsValid (false);
            setXX_BPARTNER_GROUP_L_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_BPARTNER_GROUP_L (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27825608752789L;
    /** AD_Table_ID=1007592 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_BPARTNER_GROUP_L");
        
    }
    ;
    
    /** TableName=XX_BPARTNER_GROUP_L */
    public static final String Table_Name="XX_BPARTNER_GROUP_L";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Business Partner Key.
    @param BPartnerValue Key of the Business Partner */
    public void setBPartnerValue (String BPartnerValue)
    {
        set_Value ("BPartnerValue", BPartnerValue);
        
    }
    
    /** Get Business Partner Key.
    @return Key of the Business Partner */
    public String getBPartnerValue() 
    {
        return (String)get_Value("BPartnerValue");
        
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
    
    /** Set Business Partner Group.
    @param C_BP_Group_ID Business Partner Group */
    public void setC_BP_Group_ID (int C_BP_Group_ID)
    {
        if (C_BP_Group_ID <= 0) set_Value ("C_BP_Group_ID", null);
        else
        set_Value ("C_BP_Group_ID", Integer.valueOf(C_BP_Group_ID));
        
    }
    
    /** Get Business Partner Group.
    @return Business Partner Group */
    public int getC_BP_Group_ID() 
    {
        return get_ValueAsInt("C_BP_Group_ID");
        
    }
    
    /** Set Group Key.
    @param GroupValue Business Partner Group Key */
    public void setGroupValue (String GroupValue)
    {
        set_Value ("GroupValue", GroupValue);
        
    }
    
    /** Get Group Key.
    @return Business Partner Group Key */
    public String getGroupValue() 
    {
        return (String)get_Value("GroupValue");
        
    }
    
    /** Set Valid.
    @param IsValid Element is valid */
    public void setIsValid (boolean IsValid)
    {
        set_Value ("IsValid", Boolean.valueOf(IsValid));
        
    }
    
    /** Get Valid.
    @return Element is valid */
    public boolean isValid() 
    {
        return get_ValueAsBoolean("IsValid");
        
    }
    
    /** Set Maintenance Tiers - Groupe de tiers.
    @param XX_BPARTNER_GROUP_ID Maintenance Tiers - Groupe de tiers */
    public void setXX_BPARTNER_GROUP_ID (int XX_BPARTNER_GROUP_ID)
    {
        if (XX_BPARTNER_GROUP_ID <= 0) set_Value ("XX_BPARTNER_GROUP_ID", null);
        else
        set_Value ("XX_BPARTNER_GROUP_ID", Integer.valueOf(XX_BPARTNER_GROUP_ID));
        
    }
    
    /** Get Maintenance Tiers - Groupe de tiers.
    @return Maintenance Tiers - Groupe de tiers */
    public int getXX_BPARTNER_GROUP_ID() 
    {
        return get_ValueAsInt("XX_BPARTNER_GROUP_ID");
        
    }
    
    /** Set Lignes Tiers - Groupe de tiers.
    @param XX_BPARTNER_GROUP_L_ID Lignes Tiers - Groupe de tiers */
    public void setXX_BPARTNER_GROUP_L_ID (int XX_BPARTNER_GROUP_L_ID)
    {
        if (XX_BPARTNER_GROUP_L_ID < 1) throw new IllegalArgumentException ("XX_BPARTNER_GROUP_L_ID is mandatory.");
        set_ValueNoCheck ("XX_BPARTNER_GROUP_L_ID", Integer.valueOf(XX_BPARTNER_GROUP_L_ID));
        
    }
    
    /** Get Lignes Tiers - Groupe de tiers.
    @return Lignes Tiers - Groupe de tiers */
    public int getXX_BPARTNER_GROUP_L_ID() 
    {
        return get_ValueAsInt("XX_BPARTNER_GROUP_L_ID");
        
    }
    
    
}
