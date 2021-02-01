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
/** Generated Model for Z_TransactionMsg
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_TransactionMsg extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_TransactionMsg_ID id
    @param trx transaction
    */
    public X_Z_TransactionMsg (Ctx ctx, int Z_TransactionMsg_ID, Trx trx)
    {
        super (ctx, Z_TransactionMsg_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_TransactionMsg_ID == 0)
        {
            setDocumentNo (null);
            setIsCancelRequest (false);	// N
            setIsProcessed (null);	// N
            setIsValidatedRequest (false);	// N
            setQuantity (Env.ZERO);	// 1
            setZ_PosWfAction_ID (0);
            setZ_PosWfActivity_ID (0);
            setZ_TransactionMsg_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_TransactionMsg (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27623097573789L;
    /** Last Updated Timestamp 2012-06-29 14:17:37.0 */
    public static final long updatedMS = 1340972257000L;
    /** AD_Table_ID=1000846 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_TransactionMsg");
        
    }
    ;
    
    /** TableName=Z_TransactionMsg */
    public static final String Table_Name="Z_TransactionMsg";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set ActionComment.
    @param ActionComment ActionComment */
    public void setActionComment (String ActionComment)
    {
        set_Value ("ActionComment", ActionComment);
        
    }
    
    /** Get ActionComment.
    @return ActionComment */
    public String getActionComment() 
    {
        return (String)get_Value("ActionComment");
        
    }
    
    /** Set ActionDate.
    @param ActionDate ActionDate */
    public void setActionDate (Timestamp ActionDate)
    {
        set_Value ("ActionDate", ActionDate);
        
    }
    
    /** Get ActionDate.
    @return ActionDate */
    public Timestamp getActionDate() 
    {
        return (Timestamp)get_Value("ActionDate");
        
    }
    
    /** Set Inter-Organization.
    @param AD_OrgTo_ID Organization valid for intercompany documents */
    public void setAD_OrgTo_ID (int AD_OrgTo_ID)
    {
        if (AD_OrgTo_ID <= 0) set_Value ("AD_OrgTo_ID", null);
        else
        set_Value ("AD_OrgTo_ID", Integer.valueOf(AD_OrgTo_ID));
        
    }
    
    /** Get Inter-Organization.
    @return Organization valid for intercompany documents */
    public int getAD_OrgTo_ID() 
    {
        return get_ValueAsInt("AD_OrgTo_ID");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getAD_OrgTo_ID()));
        
    }
    
    /** Set Trx Organization.
    @param AD_OrgTrx_ID Performing or initiating organization */
    public void setAD_OrgTrx_ID (int AD_OrgTrx_ID)
    {
        if (AD_OrgTrx_ID <= 0) set_ValueNoCheck ("AD_OrgTrx_ID", null);
        else
        set_ValueNoCheck ("AD_OrgTrx_ID", Integer.valueOf(AD_OrgTrx_ID));
        
    }
    
    /** Get Trx Organization.
    @return Performing or initiating organization */
    public int getAD_OrgTrx_ID() 
    {
        return get_ValueAsInt("AD_OrgTrx_ID");
        
    }
    
    /** Set Trx Organization.
    @param AD_OrgTrx_ID Performing or initiating organization */
    public void setInitialMsgID (int InitialMsgID)
    {
        if (InitialMsgID <= 0) set_ValueNoCheck ("InitialMsgID", null);
        else
        set_ValueNoCheck ("InitialMsgID", Integer.valueOf(InitialMsgID));
        
    }
    
    /** Get Trx Organization.
    @return Performing or initiating organization */
    public int getInitialMsgID() 
    {
        return get_ValueAsInt("InitialMsgID");
        
    }
    

    
    /** Set Business Partner.
    @param C_BPartner_ID Identifies a Business Partner */
    public void setC_BPartner_ID (int C_BPartner_ID)
    {
        if (C_BPartner_ID <= 0) set_ValueNoCheck ("C_BPartner_ID", null);
        else
        set_ValueNoCheck ("C_BPartner_ID", Integer.valueOf(C_BPartner_ID));
        
    }
    
    /** Get Business Partner.
    @return Identifies a Business Partner */
    public int getC_BPartner_ID() 
    {
        return get_ValueAsInt("C_BPartner_ID");
        
    }
    
    /** Set Order Line.
    @param C_OrderLine_ID Order Line */
    public void setC_OrderLine_ID (int C_OrderLine_ID)
    {
        if (C_OrderLine_ID <= 0) set_ValueNoCheck ("C_OrderLine_ID", null);
        else
        set_ValueNoCheck ("C_OrderLine_ID", Integer.valueOf(C_OrderLine_ID));
        
    }
    
    /** Get Order Line.
    @return Order Line */
    public int getC_OrderLine_ID() 
    {
        return get_ValueAsInt("C_OrderLine_ID");
        
    }
    
    /** Set Document No.
    @param DocumentNo Document sequence number of the document */
    public void setDocumentNo (String DocumentNo)
    {
        if (DocumentNo == null) throw new IllegalArgumentException ("DocumentNo is mandatory.");
        set_ValueNoCheck ("DocumentNo", DocumentNo);
        
    }
    
    /** Get Document No.
    @return Document sequence number of the document */
    public String getDocumentNo() 
    {
        return (String)get_Value("DocumentNo");
        
    }
    
    /** Set Error Message.
    @param ErrorMsg Error Message */
    public void setErrorMsg (String ErrorMsg)
    {
        set_Value ("ErrorMsg", ErrorMsg);
        
    }
    
    /** Get Error Message.
    @return Error Message */
    public String getErrorMsg() 
    {
        return (String)get_Value("ErrorMsg");
        
    }
    
    /** Set Fournisseur.
    @param Fournisseur Fournisseur */
    public void setFournisseur (String Fournisseur)
    {
        set_Value ("Fournisseur", Fournisseur);
        
    }
    
    /** Get Fournisseur.
    @return Fournisseur */
    public String getFournisseur() 
    {
        return (String)get_Value("Fournisseur");
        
    }
    
    /** Set IsCancelRequest.
    @param IsCancelRequest IsCancelRequest */
    public void setIsCancelRequest (boolean IsCancelRequest)
    {
        set_Value ("IsCancelRequest", Boolean.valueOf(IsCancelRequest));
        
    }
    
    /** Get IsCancelRequest.
    @return IsCancelRequest */
    public boolean isCancelRequest() 
    {
        return get_ValueAsBoolean("IsCancelRequest");
        
    }
    
    /** Error = E */
    public static final String ISPROCESSED_Error = X_Ref__IsImported.ERROR.getValue();
    /** No = N */
    public static final String ISPROCESSED_No = X_Ref__IsImported.NO.getValue();
    /** Yes = Y */
    public static final String ISPROCESSED_Yes = X_Ref__IsImported.YES.getValue();
    /** Set IsProcessed.
    @param IsProcessed IsProcessed */
    public void setIsProcessed (String IsProcessed)
    {
        if (IsProcessed == null) throw new IllegalArgumentException ("IsProcessed is mandatory");
        if (!X_Ref__IsImported.isValid(IsProcessed));
        
        set_Value ("IsProcessed", IsProcessed);
        
    }
    
    /** Get IsProcessed.
    @return IsProcessed */
    public String getIsProcessed() 
    {
        return (String)get_Value("IsProcessed");
        
    }
    
    /** Set IsValidatedRequest.
    @param IsValidatedRequest IsValidatedRequest */
    public void setIsValidatedRequest (boolean IsValidatedRequest)
    {
        set_Value ("IsValidatedRequest", Boolean.valueOf(IsValidatedRequest));
        
    }
    
    /** Get IsValidatedRequest.
    @return IsValidatedRequest */
    public boolean isValidatedRequest() 
    {
        return get_ValueAsBoolean("IsValidatedRequest");
        
    }
    
    /** Set Line No.
    @param Line Unique line for this document */
    public void setLine (int Line)
    {
        set_ValueNoCheck ("Line", Integer.valueOf(Line));
        
    }
    
    /** Get Line No.
    @return Unique line for this document */
    public int getLine() 
    {
        return get_ValueAsInt("Line");
        
    }
    
    /** Set Product Category.
    @param M_Product_Category_ID Category of a Product */
    public void setM_Product_Category_ID (int M_Product_Category_ID)
    {
        if (M_Product_Category_ID <= 0) set_Value ("M_Product_Category_ID", null);
        else
        set_Value ("M_Product_Category_ID", Integer.valueOf(M_Product_Category_ID));
        
    }
    
    /** Get Product Category.
    @return Category of a Product */
    public int getM_Product_Category_ID() 
    {
        return get_ValueAsInt("M_Product_Category_ID");
        
    }
    
    /** Set Product.
    @param M_Product_ID Product, Service, Item */
    public void setM_Product_ID (int M_Product_ID)
    {
        if (M_Product_ID <= 0) set_Value ("M_Product_ID", null);
        else
        set_Value ("M_Product_ID", Integer.valueOf(M_Product_ID));
        
    }
    
    /** Get Product.
    @return Product, Service, Item */
    public int getM_Product_ID() 
    {
        return get_ValueAsInt("M_Product_ID");
        
    }
    
    /** Set POReceiptNO.
    @param POReceiptNO POReceiptNO */
    public void setPOReceiptNO (String POReceiptNO)
    {
        set_ValueNoCheck ("POReceiptNO", POReceiptNO);
        
    }
    
    /** Get POReceiptNO.
    @return POReceiptNO */
    public String getPOReceiptNO() 
    {
        return (String)get_Value("POReceiptNO");
        
    }
    
    /** Set ProcessComment.
    @param ProcessComment ProcessComment */
    public void setProcessComment (String ProcessComment)
    {
        set_Value ("ProcessComment", ProcessComment);
        
    }
    
    /** Get ProcessComment.
    @return ProcessComment */
    public String getProcessComment() 
    {
        return (String)get_Value("ProcessComment");
        
    }
    
    /** Set Process Now.
    @param Processing Process Now */
    public void setProcessing (boolean Processing)
    {
        set_Value ("Processing", Boolean.valueOf(Processing));
        
    }
    
    /** Get Process Now.
    @return Process Now */
    public boolean isProcessing() 
    {
        return get_ValueAsBoolean("Processing");
        
    }
    
    /** Set Product_Created_ID.
    @param Product_Created_ID Product_Created_ID */
    public void setProduct_Created_ID (int Product_Created_ID)
    {
        if (Product_Created_ID <= 0) set_Value ("Product_Created_ID", null);
        else
        set_Value ("Product_Created_ID", Integer.valueOf(Product_Created_ID));
        
    }
    
    /** Get Product_Created_ID.
    @return Product_Created_ID */
    public int getProduct_Created_ID() 
    {
        return get_ValueAsInt("Product_Created_ID");
        
    }
    
    /** Set Product_Price.
    @param Product_Price Product_Price */
    public void setProduct_Price (java.math.BigDecimal Product_Price)
    {
        set_Value ("Product_Price", Product_Price);
        
    }
    
    /** Get Product_Price.
    @return Product_Price */
    public java.math.BigDecimal getProduct_Price() 
    {
        return get_ValueAsBigDecimal("Product_Price");
        
    }
    
    /** Set PurchaseOrderNO.
    @param PurchaseOrderNO PurchaseOrderNO */
    public void setPurchaseOrderNO (String PurchaseOrderNO)
    {
        set_ValueNoCheck ("PurchaseOrderNO", PurchaseOrderNO);
        
    }
    
    /** Get PurchaseOrderNO.
    @return PurchaseOrderNO */
    public String getPurchaseOrderNO() 
    {
        return (String)get_Value("PurchaseOrderNO");
        
    }
    
    /** Set Quantity.
    @param Quantity Quantity */
    public void setQuantity (java.math.BigDecimal Quantity)
    {
        if (Quantity == null) throw new IllegalArgumentException ("Quantity is mandatory.");
        set_Value ("Quantity", Quantity);
        
    }
    
    /** Get Quantity.
    @return Quantity */
    public java.math.BigDecimal getQuantity() 
    {
        return get_ValueAsBigDecimal("Quantity");
        
    }
    
    /** Set RequisitionNO.
    @param RequisitionNO RequisitionNO */
    public void setRequisitionNO (String RequisitionNO)
    {
        set_ValueNoCheck ("RequisitionNO", RequisitionNO);
        
    }
    
    /** Get RequisitionNO.
    @return RequisitionNO */
    public String getRequisitionNO() 
    {
        return (String)get_Value("RequisitionNO");
        
    }
    
    /** Set Marque.
    @param Y_Marque_ID Marque */
    public void setY_Marque_ID (int Y_Marque_ID)
    {
        if (Y_Marque_ID <= 0) set_Value ("Y_Marque_ID", null);
        else
        set_Value ("Y_Marque_ID", Integer.valueOf(Y_Marque_ID));
        
    }
    
    /** Get Marque.
    @return Marque */
    public int getY_Marque_ID() 
    {
        return get_ValueAsInt("Y_Marque_ID");
        
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
    
    /** Set Activité.
    @param Z_PosWfActivity_ID Activité */
    public void setZ_PosWfActivity_ID (int Z_PosWfActivity_ID)
    {
        if (Z_PosWfActivity_ID < 1) throw new IllegalArgumentException ("Z_PosWfActivity_ID is mandatory.");
        set_ValueNoCheck ("Z_PosWfActivity_ID", Integer.valueOf(Z_PosWfActivity_ID));
        
    }
    
    /** Get Activité.
    @return Activité */
    public int getZ_PosWfActivity_ID() 
    {
        return get_ValueAsInt("Z_PosWfActivity_ID");
        
    }
    
    /** Set Z_ProdDescription.
    @param Z_ProdDescription Z_ProdDescription */
    public void setZ_ProdDescription (String Z_ProdDescription)
    {
        set_Value ("Z_ProdDescription", Z_ProdDescription);
        
    }
    
    /** Get Z_ProdDescription.
    @return Z_ProdDescription */
    public String getZ_ProdDescription() 
    {
        return (String)get_Value("Z_ProdDescription");
        
    }
    
    /** Set Z_ReferenceArt.
    @param Z_ReferenceArt Z_ReferenceArt */
    public void setZ_ReferenceArt (String Z_ReferenceArt)
    {
        set_Value ("Z_ReferenceArt", Z_ReferenceArt);
        
    }
    
    /** Get Z_ReferenceArt.
    @return Z_ReferenceArt */
    public String getZ_ReferenceArt() 
    {
        return (String)get_Value("Z_ReferenceArt");
        
    }
    
    /** Set Z_S_Famille_ID.
    @param Z_S_Famille_ID Z_S_Famille_ID */
    public void setZ_S_Famille_ID (int Z_S_Famille_ID)
    {
        if (Z_S_Famille_ID <= 0) set_Value ("Z_S_Famille_ID", null);
        else
        set_Value ("Z_S_Famille_ID", Integer.valueOf(Z_S_Famille_ID));
        
    }
    
    /** Get Z_S_Famille_ID.
    @return Z_S_Famille_ID */
    public int getZ_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_Famille_ID");
        
    }
    
    /** Set Z_S_S_Famille_ID.
    @param Z_S_S_Famille_ID Z_S_S_Famille_ID */
    public void setZ_S_S_Famille_ID (int Z_S_S_Famille_ID)
    {
        if (Z_S_S_Famille_ID <= 0) set_Value ("Z_S_S_Famille_ID", null);
        else
        set_Value ("Z_S_S_Famille_ID", Integer.valueOf(Z_S_S_Famille_ID));
        
    }
    
    /** Get Z_S_S_Famille_ID.
    @return Z_S_S_Famille_ID */
    public int getZ_S_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_S_Famille_ID");
        
    }
    
    /** Set Z_S_S_S_Famille_ID.
    @param Z_S_S_S_Famille_ID Z_S_S_S_Famille_ID */
    public void setZ_S_S_S_Famille_ID (int Z_S_S_S_Famille_ID)
    {
        if (Z_S_S_S_Famille_ID <= 0) set_Value ("Z_S_S_S_Famille_ID", null);
        else
        set_Value ("Z_S_S_S_Famille_ID", Integer.valueOf(Z_S_S_S_Famille_ID));
        
    }
    
    /** Get Z_S_S_S_Famille_ID.
    @return Z_S_S_S_Famille_ID */
    public int getZ_S_S_S_Famille_ID() 
    {
        return get_ValueAsInt("Z_S_S_S_Famille_ID");
        
    }
    
    /** Set Transaction Message.
    @param Z_TransactionMsg_ID Transaction Message */
    public void setZ_TransactionMsg_ID (int Z_TransactionMsg_ID)
    {
        if (Z_TransactionMsg_ID < 1) throw new IllegalArgumentException ("Z_TransactionMsg_ID is mandatory.");
        set_ValueNoCheck ("Z_TransactionMsg_ID", Integer.valueOf(Z_TransactionMsg_ID));
        
    }
    
    /** Get Transaction Message.
    @return Transaction Message */
    public int getZ_TransactionMsg_ID() 
    {
        return get_ValueAsInt("Z_TransactionMsg_ID");
        
    }
    
    
}
