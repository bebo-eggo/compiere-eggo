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
/** Generated Model for C_DocTypeInfo
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_C_DocTypeInfo extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param C_DocTypeInfo_ID id
    @param trx transaction
    */
    public X_C_DocTypeInfo (Ctx ctx, int C_DocTypeInfo_ID, Trx trx)
    {
        super (ctx, C_DocTypeInfo_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (C_DocTypeInfo_ID == 0)
        {
            setC_DocType_ID (0);
            setC_DocTypeInfo_ID (0);
            setIsAccompte (false);	// N
            setIsAccompteReprise (false);	// N
            setIsDevis (false);	// N
            setIsDirect (false);	// N
            setIsEggo (false);	// N
            setIsEggoPro (false);	// N
            setIsExpo (false);	// N
            setIsMVT_TRF (false);	// N
            setIsPlacard (false);	// N
            setIsPOS (false);	// N
            setIsRequisition (false);	// N
            setIsSAV (false);	// N
            setIsStore (false);	// N
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_C_DocTypeInfo (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27714837620789L;
    /** AD_Table_ID=1006034 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("C_DocTypeInfo");
        
    }
    ;
    
    /** TableName=C_DocTypeInfo */
    public static final String Table_Name="C_DocTypeInfo";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Type doc accompte.
    @param C_DocType_Accompte_ID Type doc accompte */
    public void setC_DocType_Accompte_ID (int C_DocType_Accompte_ID)
    {
        if (C_DocType_Accompte_ID <= 0) set_Value ("C_DocType_Accompte_ID", null);
        else
        set_Value ("C_DocType_Accompte_ID", Integer.valueOf(C_DocType_Accompte_ID));
        
    }
    
    /** Get Type doc accompte.
    @return Type doc accompte */
    public int getC_DocType_Accompte_ID() 
    {
        return get_ValueAsInt("C_DocType_Accompte_ID");
        
    }
    
    /** Set Type doc Achat Direct.
    @param C_DocType_AchatDirect_ID Type doc Achat Direct */
    public void setC_DocType_AchatDirect_ID (int C_DocType_AchatDirect_ID)
    {
        if (C_DocType_AchatDirect_ID <= 0) set_Value ("C_DocType_AchatDirect_ID", null);
        else
        set_Value ("C_DocType_AchatDirect_ID", Integer.valueOf(C_DocType_AchatDirect_ID));
        
    }
    
    /** Get Type doc Achat Direct.
    @return Type doc Achat Direct */
    public int getC_DocType_AchatDirect_ID() 
    {
        return get_ValueAsInt("C_DocType_AchatDirect_ID");
        
    }
    
    /** Set Type doc Achat.
    @param C_DocType_Achat_ID Type doc Achat */
    public void setC_DocType_Achat_ID (int C_DocType_Achat_ID)
    {
        if (C_DocType_Achat_ID <= 0) set_Value ("C_DocType_Achat_ID", null);
        else
        set_Value ("C_DocType_Achat_ID", Integer.valueOf(C_DocType_Achat_ID));
        
    }
    
    /** Get Type doc Achat.
    @return Type doc Achat */
    public int getC_DocType_Achat_ID() 
    {
        return get_ValueAsInt("C_DocType_Achat_ID");
        
    }
    
    /** Set Type doc Achat SAV.
    @param C_DocType_AchatSAV_ID Type doc Achat SAV */
    public void setC_DocType_AchatSAV_ID (int C_DocType_AchatSAV_ID)
    {
        if (C_DocType_AchatSAV_ID <= 0) set_Value ("C_DocType_AchatSAV_ID", null);
        else
        set_Value ("C_DocType_AchatSAV_ID", Integer.valueOf(C_DocType_AchatSAV_ID));
        
    }
    
    /** Get Type doc Achat SAV.
    @return Type doc Achat SAV */
    public int getC_DocType_AchatSAV_ID() 
    {
        return get_ValueAsInt("C_DocType_AchatSAV_ID");
        
    }
    
    /** Set Type doc CONS.
    @param C_DocType_CONS_ID Type doc CONS */
    public void setC_DocType_CONS_ID (int C_DocType_CONS_ID)
    {
        if (C_DocType_CONS_ID <= 0) set_Value ("C_DocType_CONS_ID", null);
        else
        set_Value ("C_DocType_CONS_ID", Integer.valueOf(C_DocType_CONS_ID));
        
    }
    
    /** Get Type doc CONS.
    @return Type doc CONS */
    public int getC_DocType_CONS_ID() 
    {
        return get_ValueAsInt("C_DocType_CONS_ID");
        
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
    
    /** Set Type de document info.
    @param C_DocTypeInfo_ID Type de document info */
    public void setC_DocTypeInfo_ID (int C_DocTypeInfo_ID)
    {
        if (C_DocTypeInfo_ID < 1) throw new IllegalArgumentException ("C_DocTypeInfo_ID is mandatory.");
        set_ValueNoCheck ("C_DocTypeInfo_ID", Integer.valueOf(C_DocTypeInfo_ID));
        
    }
    
    /** Get Type de document info.
    @return Type de document info */
    public int getC_DocTypeInfo_ID() 
    {
        return get_ValueAsInt("C_DocTypeInfo_ID");
        
    }
    
    /** Set Type doc Transfert.
    @param C_DocType_MVT_ID Type doc Transfert */
    public void setC_DocType_MVT_ID (int C_DocType_MVT_ID)
    {
        if (C_DocType_MVT_ID <= 0) set_Value ("C_DocType_MVT_ID", null);
        else
        set_Value ("C_DocType_MVT_ID", Integer.valueOf(C_DocType_MVT_ID));
        
    }
    
    /** Get Type doc Transfert.
    @return Type doc Transfert */
    public int getC_DocType_MVT_ID() 
    {
        return get_ValueAsInt("C_DocType_MVT_ID");
        
    }
    
    /** Set Type doc parent.
    @param C_DocType_Parent_ID Type doc parent */
    public void setC_DocType_Parent_ID (int C_DocType_Parent_ID)
    {
        if (C_DocType_Parent_ID <= 0) set_Value ("C_DocType_Parent_ID", null);
        else
        set_Value ("C_DocType_Parent_ID", Integer.valueOf(C_DocType_Parent_ID));
        
    }
    
    /** Get Type doc parent.
    @return Type doc parent */
    public int getC_DocType_Parent_ID() 
    {
        return get_ValueAsInt("C_DocType_Parent_ID");
        
    }
    
    /** Set Type doc reprise accompte.
    @param C_DocType_RAccompte_ID Type doc reprise accompte */
    public void setC_DocType_RAccompte_ID (int C_DocType_RAccompte_ID)
    {
        if (C_DocType_RAccompte_ID <= 0) set_Value ("C_DocType_RAccompte_ID", null);
        else
        set_Value ("C_DocType_RAccompte_ID", Integer.valueOf(C_DocType_RAccompte_ID));
        
    }
    
    /** Get Type doc reprise accompte.
    @return Type doc reprise accompte */
    public int getC_DocType_RAccompte_ID() 
    {
        return get_ValueAsInt("C_DocType_RAccompte_ID");
        
    }
    
    /** Set Type doc SAV.
    @param C_DocType_SAV_ID Type doc SAV */
    public void setC_DocType_SAV_ID (int C_DocType_SAV_ID)
    {
        if (C_DocType_SAV_ID <= 0) set_Value ("C_DocType_SAV_ID", null);
        else
        set_Value ("C_DocType_SAV_ID", Integer.valueOf(C_DocType_SAV_ID));
        
    }
    
    /** Get Type doc SAV.
    @return Type doc SAV */
    public int getC_DocType_SAV_ID() 
    {
        return get_ValueAsInt("C_DocType_SAV_ID");
        
    }
    
    /** Set Type doc parent Store.
    @param C_DocType_Store_ID Type doc parent Store */
    public void setC_DocType_Store_ID (int C_DocType_Store_ID)
    {
        if (C_DocType_Store_ID <= 0) set_Value ("C_DocType_Store_ID", null);
        else
        set_Value ("C_DocType_Store_ID", Integer.valueOf(C_DocType_Store_ID));
        
    }
    
    /** Get Type doc parent Store.
    @return Type doc parent Store */
    public int getC_DocType_Store_ID() 
    {
        return get_ValueAsInt("C_DocType_Store_ID");
        
    }
    
    /** Set Accompte.
    @param IsAccompte Accompte */
    public void setIsAccompte (boolean IsAccompte)
    {
        set_Value ("IsAccompte", Boolean.valueOf(IsAccompte));
        
    }
    
    /** Get Accompte.
    @return Accompte */
    public boolean isAccompte() 
    {
        return get_ValueAsBoolean("IsAccompte");
        
    }
    
    /** Set Accompte Reprise.
    @param IsAccompteReprise Accompte Reprise */
    public void setIsAccompteReprise (boolean IsAccompteReprise)
    {
        set_Value ("IsAccompteReprise", Boolean.valueOf(IsAccompteReprise));
        
    }
    
    /** Get Accompte Reprise.
    @return Accompte Reprise */
    public boolean isAccompteReprise() 
    {
        return get_ValueAsBoolean("IsAccompteReprise");
        
    }
    
    /** Set Devis.
    @param IsDevis Devis */
    public void setIsDevis (boolean IsDevis)
    {
        set_Value ("IsDevis", Boolean.valueOf(IsDevis));
        
    }
    
    /** Get Devis.
    @return Devis */
    public boolean isDevis() 
    {
        return get_ValueAsBoolean("IsDevis");
        
    }
    
    /** Set Direct.
    @param IsDirect Direct */
    public void setIsDirect (boolean IsDirect)
    {
        set_Value ("IsDirect", Boolean.valueOf(IsDirect));
        
    }
    
    /** Get Direct.
    @return Direct */
    public boolean isDirect() 
    {
        return get_ValueAsBoolean("IsDirect");
        
    }
    
    /** Set Eggo.
    @param IsEggo Eggo */
    public void setIsCuisine (boolean IsEggo)
    {
        set_Value ("IsEggo", Boolean.valueOf(IsEggo));
        
    }
    
    /** Get Eggo.
    @return Eggo */
    public boolean isCuisine() 
    {
        return get_ValueAsBoolean("IsEggo");
        
    }
    
    /** Set EggoPro.
    @param IsEggoPro EggoPro */
    public void setIsEggoPro (boolean IsEggoPro)
    {
        set_Value ("IsEggoPro", Boolean.valueOf(IsEggoPro));
        
    }
    
    /** Get EggoPro.
    @return EggoPro */
    public boolean isEggoPro() 
    {
        return get_ValueAsBoolean("IsEggoPro");
        
    }
    
    /** Set Expo.
    @param IsExpo Expo */
    public void setIsExpo (boolean IsExpo)
    {
        set_Value ("IsExpo", Boolean.valueOf(IsExpo));
        
    }
    
    /** Get Expo.
    @return Expo */
    public boolean isExpo() 
    {
        return get_ValueAsBoolean("IsExpo");
        
    }
    
    /** Set Mouvement de transfert.
    @param IsMVT_TRF Mouvement de transfert */
    public void setIsMVT_TRF (boolean IsMVT_TRF)
    {
        set_Value ("IsMVT_TRF", Boolean.valueOf(IsMVT_TRF));
        
    }
    
    /** Get Mouvement de transfert.
    @return Mouvement de transfert */
    public boolean isMVT_TRF() 
    {
        return get_ValueAsBoolean("IsMVT_TRF");
        
    }
    
    /** Set Placard.
    @param IsPlacard Placard */
    public void setIsPlacard (boolean IsPlacard)
    {
        set_Value ("IsPlacard", Boolean.valueOf(IsPlacard));
        
    }
    
    /** Get Placard.
    @return Placard */
    public boolean isPlacard() 
    {
        return get_ValueAsBoolean("IsPlacard");
        
    }
    
    /** Set POS.
    @param IsPOS POS */
    public void setIsPOS (boolean IsPOS)
    {
        set_Value ("IsPOS", Boolean.valueOf(IsPOS));
        
    }
    
    /** Get POS.
    @return POS */
    public boolean isPOS() 
    {
        return get_ValueAsBoolean("IsPOS");
        
    }
    
    /** Set IsRequisition.
    @param IsRequisition IsRequisition */
    public void setIsRequisition (boolean IsRequisition)
    {
        set_Value ("IsRequisition", Boolean.valueOf(IsRequisition));
        
    }
    
    /** Get IsRequisition.
    @return IsRequisition */
    public boolean isRequisition() 
    {
        return get_ValueAsBoolean("IsRequisition");
        
    }
    
    /** Set SAV.
    @param IsSAV SAV */
    public void setIsSAV (boolean IsSAV)
    {
        set_Value ("IsSAV", Boolean.valueOf(IsSAV));
        
    }
    
    /** Get SAV.
    @return SAV */
    public boolean isSAV() 
    {
        return get_ValueAsBoolean("IsSAV");
        
    }
    
    /** Set Store.
    @param IsStore Store */
    public void setIsStore (boolean IsStore)
    {
        set_Value ("IsStore", Boolean.valueOf(IsStore));
        
    }
    
    /** Get Store.
    @return Store */
    public boolean isStore() 
    {
        return get_ValueAsBoolean("IsStore");
        
    }
    
    
    /** Set IsOpenOV.
    @param IsOpenOV OpenOV */
    public void setIsOpenOV (boolean IsOpenOV)
    {
        set_Value ("IsOpenOV", Boolean.valueOf(IsOpenOV));
        
    }
    
    /** Get IsOpenOV.
    @return IsOpenOV */
    public boolean isOpenOV() 
    {
        return get_ValueAsBoolean("IsOpenOV");
        
    }
    
    /** Set IsLimitDocAction.
    @param IsLimitDocAction LimitDocAction */
    public void setIsLimitDocAction (boolean IsLimitDocAction)
    {
        set_Value ("IsLimitDocAction", Boolean.valueOf(IsLimitDocAction));
        
    }
    
    /** Get IsLimitDocAction.
    @return IsLimitDocAction */
    public boolean isLimitDocAction() 
    {
        return get_ValueAsBoolean("IsLimitDocAction");
        
    }
    
    /** Set IsInTransit.
    @param IsInTransit IsInTransit */
    public void setIsInTransit (boolean IsInTransit)
    {
        set_Value ("IsInTransit", Boolean.valueOf(IsInTransit));
        
    }
    
    /** Get IsInTransit.
    @return IsInTransit */
    public boolean IsInTransit() 
    {
        return get_ValueAsBoolean("IsInTransit");
        
    }
}
