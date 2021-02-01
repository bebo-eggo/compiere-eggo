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
/** Generated Model for Z_PosActionActivity
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_PosActionActivity extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_PosActionActivity_ID id
    @param trx transaction
    */
    public X_Z_PosActionActivity (Ctx ctx, int Z_PosActionActivity_ID, Trx trx)
    {
        super (ctx, Z_PosActionActivity_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_PosActionActivity_ID == 0)
        {
            setSeqNo (0);	// @SQL=SELECT COALESCE(MAX(seqno),0)+10 AS DefaultValue FROM Z_PosActionActivity WHERE Z_PosWfAction_ID=@Z_PosWfAction_ID@
            setZ_PosActionActivity_ID (0);
            setZ_PosWfAction_ID (0);
            setZ_PosWfActivity_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_PosActionActivity (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27622218304789L;
    /** Last Updated Timestamp 2012-06-19 10:03:08.0 */
    public static final long updatedMS = 1340092988000L;
    /** AD_Table_ID=1000849 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_PosActionActivity");
        
    }
    ;
    
    /** TableName=Z_PosActionActivity */
    public static final String Table_Name="Z_PosActionActivity";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
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
    
    /** Set Validé par Magasin d'origine.
    @param IsValidatedByOrgFrom Validé par Magasin d'origine */
    public void setIsValidatedByOrgFrom (boolean IsValidatedByOrgFrom)
    {
        set_Value ("IsValidatedByOrgFrom", Boolean.valueOf(IsValidatedByOrgFrom));
        
    }
    
    /** Get Validé par Magasin d'origine.
    @return Validé par Magasin d'origine */
    public boolean isValidatedByOrgFrom() 
    {
        return get_ValueAsBoolean("IsValidatedByOrgFrom");
        
    }
    
    /** Set Validé par Magasin de destination.
    @param IsValidatedByOrgTo Validé par Magasin de destination */
    public void setIsValidatedByOrgTo (boolean IsValidatedByOrgTo)
    {
        set_Value ("IsValidatedByOrgTo", Boolean.valueOf(IsValidatedByOrgTo));
        
    }
    
    /** Get Validé par Magasin d'origine.
    @return Validé par Magasin d'origine */
    public boolean isGenConsignation() 
    {
        return get_ValueAsBoolean("IsGenConsignation");
        
    }
    
    /** Set Validé par Magasin de destination.
    @param IsValidatedByOrgTo Validé par Magasin de destination */
    public void setisGenConsignation (boolean isGenConsignation)
    {
        set_Value ("IsGenConsignation", Boolean.valueOf(isGenConsignation));
        
    }

    
    /** Get Validé par Magasin d'origine.
    @return Validé par Magasin d'origine */
    public String getLocationComment() 
    {
        return get_ValueAsString("LocationComment");
        
    }
    
    /** Set Validé par Magasin de destination.
    @param IsValidatedByOrgTo Validé par Magasin de destination */
    public void setLocationComment (String LocationComment)
    {
        set_Value ("LocationComment", Boolean.valueOf(LocationComment));
        
    }

    
    /** Get Validé par Magasin de destination.
    @return Validé par Magasin de destination */
    public boolean isValidatedByOrgTo() 
    {
        return get_ValueAsBoolean("IsValidatedByOrgTo");
        
    }
    
    /** Set Validé par Magasin de destination.
    @param IsValidatedByOrgTo Validé par Magasin de destination */
    public void setIsAutoValidation (boolean IsAutoValidation)
    {
        set_Value ("IsAutoValidation", Boolean.valueOf(IsAutoValidation));
        
    }
    
    /** Get Validé par Magasin de destination.
    @return Validé par Magasin de destination */
    public boolean IsAutoValidation() 
    {
        return get_ValueAsBoolean("IsAutoValidation");
        
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
    
    /** Set create product
    @param isProduct création d'article */
    public void setIsProduct (boolean isProduct)
    {
        set_Value ("IsProduct", Boolean.valueOf(isProduct));
        
    }
    
    /** Get create product
    @return isProduct création d'article */
    public boolean isProduct() 
    {
        return get_ValueAsBoolean("IsProduct");
        
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
    
    /** Set Requisition.
    @param IsStocked Organization stocks this product */
    public void setIsRequisition (boolean IsRequisition)
    {
        set_Value ("IsRequisition", Boolean.valueOf(IsRequisition));
        
    }
    /** Get Stocked.
    @return Organization stocks this product */
    public boolean IsRequisition() 
    {
        return get_ValueAsBoolean("IsRequisition");
        
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

    
    /** Set Z_PosActionActivity_ID.
    @param Z_PosActionActivity_ID Z_PosActionActivity_ID */
    public void setZ_PosActionActivity_ID (int Z_PosActionActivity_ID)
    {
        if (Z_PosActionActivity_ID < 1) throw new IllegalArgumentException ("Z_PosActionActivity_ID is mandatory.");
        set_ValueNoCheck ("Z_PosActionActivity_ID", Integer.valueOf(Z_PosActionActivity_ID));
        
    }
    
    /** Get Z_PosActionActivity_ID.
    @return Z_PosActionActivity_ID */
    public int getZ_PosActionActivity_ID() 
    {
        return get_ValueAsInt("Z_PosActionActivity_ID");
        
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
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getZ_PosWfAction_ID()));
        
    }
    
    /** Set Z_PosWfActivity_ID.
    @param Z_PosWfActivity_ID Z_PosWfActivity_ID */
    public void setZ_PosWfActivity_ID (int Z_PosWfActivity_ID)
    {
        if (Z_PosWfActivity_ID < 1) throw new IllegalArgumentException ("Z_PosWfActivity_ID is mandatory.");
        set_Value ("Z_PosWfActivity_ID", Integer.valueOf(Z_PosWfActivity_ID));
        
    }
    
    /** Get Z_PosWfActivity_ID.
    @return Z_PosWfActivity_ID */
    public int getZ_PosWfActivity_ID() 
    {
        return get_ValueAsInt("Z_PosWfActivity_ID");
        
    }
    
    /** Set Quantité en transfert.
    @param Quantité en transfert */
     public void setIsSetTransfert (boolean IsSetTransfert)
    {
        set_Value ("IsSetTransfert", Boolean.valueOf(IsSetTransfert));
        
    }
    
    /** Get Quantité en transfert.
    @return Quantité en transfert */
    public boolean isSetTransfert() 
    {
        return get_ValueAsBoolean("IsSetTransfert");
        
    }
    
    /** Set Quantité libéré en transfert.
    @param Quantité libéré en transfert */
     public void setIsReleaseTransfert (boolean IsReleaseTransfert)
    {
        set_Value ("IsReleaseTransfert", Boolean.valueOf(IsReleaseTransfert));
        
    }
    
    /** Get Quantité libéré en transfert.
    @return Quantité libéré en transfert */
    public boolean isReleaseTransfert() 
    {
        return get_ValueAsBoolean("IsReleaseTransfert");
        
    }
    
    
}
