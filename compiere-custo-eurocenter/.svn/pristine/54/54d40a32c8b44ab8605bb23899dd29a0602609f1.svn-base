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
/** Generated Model for Z_PosWfAction
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_PosWfAction extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_PosWfAction_ID id
    @param trx transaction
    */
    public X_Z_PosWfAction (Ctx ctx, int Z_PosWfAction_ID, Trx trx)
    {
        super (ctx, Z_PosWfAction_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_PosWfAction_ID == 0)
        {
            setIsDateOrCmtRequired (false);	// N
            setIsMvtIn (false);	// N
            setIsStocked (false);	// N
            setIsToOrgRequired (false);	// N
            setValue (null);
            setZ_PosWfAction_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_PosWfAction (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27622925259789L;
    /** Last Updated Timestamp 2012-06-27 14:25:43.0 */
    public static final long updatedMS = 1340799943000L;
    /** AD_Table_ID=1000848 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_PosWfAction");
        
    }
    ;
    
    /** TableName=Z_PosWfAction */
    public static final String Table_Name="Z_PosWfAction";
    
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
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getDescription());
        
    }
    
    /** Set Générer Message.
    @param GenerateMsg Générer Message */
    public void setGenerateMsg (boolean GenerateMsg)
    {
        set_Value ("GenerateMsg", Boolean.valueOf(GenerateMsg));
        
    }
    
    /** Get Générer Message.
    @return Générer Message */
    public boolean isGenerateMsg() 
    {
        return get_ValueAsBoolean("GenerateMsg");
        
    }
    
    /** Set Date ou Commentaire Requis.
    @param IsDateOrCmtRequired Date ou Commentaire Requis */
    public void setIsDateOrCmtRequired (boolean IsDateOrCmtRequired)
    {
        set_Value ("IsDateOrCmtRequired", Boolean.valueOf(IsDateOrCmtRequired));
        
    }
    
    /** Get Date ou Commentaire Requis.
    @return Date ou Commentaire Requis */
    public boolean isDateOrCmtRequired() 
    {
        return get_ValueAsBoolean("IsDateOrCmtRequired");
        
    }
    
    /** Set Mouvement d'entrée.
    @param IsMvtIn Mouvement d'entrée */
    public void setIsMvtIn (boolean IsMvtIn)
    {
        set_Value ("IsMvtIn", Boolean.valueOf(IsMvtIn));
        
    }
    
    /** Get Mouvement d'entrée.
    @return Mouvement d'entrée */
    public boolean isMvtIn() 
    {
        return get_ValueAsBoolean("IsMvtIn");
        
    }
    
    /** Set Stocked.
    @param IsStocked Organization stocks this product */
    public void setIsStocked (boolean IsStocked)
    {
        set_Value ("IsStocked", Boolean.valueOf(IsStocked));
        
    }
    
    /** Get Stocked.
    @return Organization stocks this product */
    public boolean isStocked() 
    {
        return get_ValueAsBoolean("IsStocked");
        
    }
    
    /** Set Stocked.
    @param IsStocked Organization stocks this product */
    public void setIsGenConsignation (boolean IsGenConsignation)
    {
        set_Value ("IsGenConsignation", Boolean.valueOf(IsGenConsignation));
        
    }
    
    /** Get Stocked.
    @return Organization stocks this product */
    public boolean isGenConsignation() 
    {
        return get_ValueAsBoolean("IsGenConsignation");
        
    }

    
    /** Set Autre Organisation Requise.
    @param IsToOrgRequired Autre Organisation Requise */
    public void setIsToOrgRequired (boolean IsToOrgRequired)
    {
        set_Value ("IsToOrgRequired", Boolean.valueOf(IsToOrgRequired));
        
    }
    
    /** Get Autre Organisation Requise.
    @return Autre Organisation Requise */
    public boolean isToOrgRequired() 
    {
        return get_ValueAsBoolean("IsToOrgRequired");
        
    }
    
    /** Set Locator.
    @param M_Locator_ID Warehouse Locator */
    public void setM_Locator_ID (int M_Locator_ID)
    {
        if (M_Locator_ID <= 0) set_Value ("M_Locator_ID", null);
        else
        set_Value ("M_Locator_ID", Integer.valueOf(M_Locator_ID));
        
    }
    
    /** Get Locator.
    @return Warehouse Locator */
    public int getM_Locator_ID() 
    {
        return get_ValueAsInt("M_Locator_ID");
        
    }
    
    /** Set Sequence.
    @param SeqNo Method of ordering elements;
     lowest number comes first */
    public void setSeqNo (int SeqNo)
    {
        set_Value ("SeqNo", Integer.valueOf(SeqNo));
        
    }
    
    /** Get Sequence.
    @return Method of ordering elements;
     lowest number comes first */
    public int getSeqNo() 
    {
        return get_ValueAsInt("SeqNo");
        
    }
    
    /** Set Search Key.
    @param Value Search key for the record in the format required - must be unique */
    public void setValue (String Value)
    {
        if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
        set_ValueNoCheck ("Value", Value);
        
    }
    
    /** Get Search Key.
    @return Search key for the record in the format required - must be unique */
    public String getValue() 
    {
        return (String)get_Value("Value");
        
    }
    
    /** Set Z_PosWfAction_ID.
    @param Z_PosWfAction_ID Z_PosWfAction_ID */
    public void setZ_PosWfAction_ID (int Z_PosWfAction_ID)
    {
        if (Z_PosWfAction_ID < 1) throw new IllegalArgumentException ("Z_PosWfAction_ID is mandatory.");
        set_ValueNoCheck ("Z_PosWfAction_ID", Integer.valueOf(Z_PosWfAction_ID));
        
    }
    
    /** Get Z_PosWfAction_ID.
    @return Z_PosWfAction_ID */
    public int getZ_PosWfAction_ID() 
    {
        return get_ValueAsInt("Z_PosWfAction_ID");
        
    }
    
    
}
