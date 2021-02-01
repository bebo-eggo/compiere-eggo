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
/** Generated Model for Z_BankTransfert
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_Z_BankTransfert extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param Z_BankTransfert_ID id
    @param trx transaction
    */
    public X_Z_BankTransfert (Ctx ctx, int Z_BankTransfert_ID, Trx trx)
    {
        super (ctx, Z_BankTransfert_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (Z_BankTransfert_ID == 0)
        {
            setAD_OrgTo_ID (0);	// @#AD_Org_ID@
            setC_Currency_ID (0);
            setC_DocType_ID (0);
            setC_DocTypeTo_ID (0);
            setDateAcct (new Timestamp(System.currentTimeMillis()));	// @#Date@
            setDateTrx (new Timestamp(System.currentTimeMillis()));	// @#Date@
            setDocAction (null);	// CO
            setDocStatus (null);	// DR
            setDocumentNo (null);
            setDueDate (new Timestamp(System.currentTimeMillis()));	// @#Date@
            setProcessed (false);	// N
            setZ_BankTransfert_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_BankTransfert (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27632423121789L;
    /** Last Updated Timestamp 2012-10-15 11:43:25.0 */
    public static final long updatedMS = 1350297805000L;
    /** AD_Table_ID=1001257 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_BankTransfert");
        
    }
    ;
    
    /** TableName=Z_BankTransfert */
    public static final String Table_Name="Z_BankTransfert";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Organization.
    @param AD_OrgTo_ID Organizational entity within Tenant */
    public void setAD_OrgTo_ID (int AD_OrgTo_ID)
    {
        if (AD_OrgTo_ID < 1) throw new IllegalArgumentException ("AD_OrgTo_ID is mandatory.");
        set_Value ("AD_OrgTo_ID", Integer.valueOf(AD_OrgTo_ID));
        
    }
    
    /** Get Organization.
    @return Organizational entity within Tenant */
    public int getAD_OrgTo_ID() 
    {
        return get_ValueAsInt("AD_OrgTo_ID");
        
    }
    
    /** Set Bank Account.
    @param C_BankAccount_From_ID Account at the Bank */
    public void setC_BankAccount_From_ID (int C_BankAccount_From_ID)
    {
        if (C_BankAccount_From_ID <= 0) set_Value ("C_BankAccount_From_ID", null);
        else
        set_Value ("C_BankAccount_From_ID", Integer.valueOf(C_BankAccount_From_ID));
        
    }
    
    /** Get Bank Account.
    @return Account at the Bank */
    public int getC_BankAccount_From_ID() 
    {
        return get_ValueAsInt("C_BankAccount_From_ID");
        
    }
    
    /** Set Bank Account.
    @param C_BankAccount_To_ID Account at the Bank */
    public void setC_BankAccount_To_ID (int C_BankAccount_To_ID)
    {
        if (C_BankAccount_To_ID <= 0) set_Value ("C_BankAccount_To_ID", null);
        else
        set_Value ("C_BankAccount_To_ID", Integer.valueOf(C_BankAccount_To_ID));
        
    }
    
    /** Get Bank Account.
    @return Account at the Bank */
    public int getC_BankAccount_To_ID() 
    {
        return get_ValueAsInt("C_BankAccount_To_ID");
        
    }
    
    /** Set Charge.
    @param C_Charge_ID Additional document charges */
    public void setC_Charge_ID (int C_Charge_ID)
    {
        if (C_Charge_ID <= 0) set_Value ("C_Charge_ID", null);
        else
        set_Value ("C_Charge_ID", Integer.valueOf(C_Charge_ID));
        
    }
    
    /** Get Charge.
    @return Additional document charges */
    public int getC_Charge_ID() 
    {
        return get_ValueAsInt("C_Charge_ID");
        
    }
    
    /** Set Charge.
    @param C_ChargeTo_ID Additional document charges */
    public void setC_ChargeTo_ID (int C_ChargeTo_ID)
    {
        if (C_ChargeTo_ID <= 0) set_Value ("C_ChargeTo_ID", null);
        else
        set_Value ("C_ChargeTo_ID", Integer.valueOf(C_ChargeTo_ID));
        
    }
    
    /** Get Charge.
    @return Additional document charges */
    public int getC_ChargeTo_ID() 
    {
        return get_ValueAsInt("C_ChargeTo_ID");
        
    }
    
    /** Set Currency.
    @param C_Currency_ID The Currency for this record */
    public void setC_Currency_ID (int C_Currency_ID)
    {
        if (C_Currency_ID < 1) throw new IllegalArgumentException ("C_Currency_ID is mandatory.");
        set_Value ("C_Currency_ID", Integer.valueOf(C_Currency_ID));
        
    }
    
    /** Get Currency.
    @return The Currency for this record */
    public int getC_Currency_ID() 
    {
        return get_ValueAsInt("C_Currency_ID");
        
    }
    
    /** Set Type d'Operation.
    @param C_DocTypeFrom_ID Type d'Operation */
    public void setC_DocTypeFrom_ID (int C_DocTypeFrom_ID)
    {
        if (C_DocTypeFrom_ID <= 0) set_Value ("C_DocTypeFrom_ID", null);
        else
        set_Value ("C_DocTypeFrom_ID", Integer.valueOf(C_DocTypeFrom_ID));
        
    }
    
    /** Get Type d'Operation.
    @return Type d'Operation */
    public int getC_DocTypeFrom_ID() 
    {
        return get_ValueAsInt("C_DocTypeFrom_ID");
        
    }
    
    /** Set Document Type.
    @param C_DocType_ID Document type or rules */
    public void setC_DocType_ID (int C_DocType_ID)
    {
        if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
        set_Value ("C_DocType_ID", Integer.valueOf(C_DocType_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getC_DocType_ID() 
    {
        return get_ValueAsInt("C_DocType_ID");
        
    }
    
    /** Set Document Type.
    @param C_DocTypeTo_ID Document type or rules */
    public void setC_DocTypeTo_ID (int C_DocTypeTo_ID)
    {
        if (C_DocTypeTo_ID < 1) throw new IllegalArgumentException ("C_DocTypeTo_ID is mandatory.");
        set_Value ("C_DocTypeTo_ID", Integer.valueOf(C_DocTypeTo_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getC_DocTypeTo_ID() 
    {
        return get_ValueAsInt("C_DocTypeTo_ID");
        
    }
    
    /** Set Account Date.
    @param DateAcct General Ledger Date */
    public void setDateAcct (Timestamp DateAcct)
    {
        if (DateAcct == null) throw new IllegalArgumentException ("DateAcct is mandatory.");
        set_Value ("DateAcct", DateAcct);
        
    }
    
    /** Get Account Date.
    @return General Ledger Date */
    public Timestamp getDateAcct() 
    {
        return (Timestamp)get_Value("DateAcct");
        
    }
    
    /** Set Transaction Date.
    @param DateTrx Transaction Date */
    public void setDateTrx (Timestamp DateTrx)
    {
        if (DateTrx == null) throw new IllegalArgumentException ("DateTrx is mandatory.");
        set_Value ("DateTrx", DateTrx);
        
    }
    
    /** Get Transaction Date.
    @return Transaction Date */
    public Timestamp getDateTrx() 
    {
        return (Timestamp)get_Value("DateTrx");
        
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
    
    /** <None> = -- */
    public static final String DOCACTION_None = X_Ref__Document_Action.NONE.getValue();
    /** Approve = AP */
    public static final String DOCACTION_Approve = X_Ref__Document_Action.APPROVE.getValue();
    /** Close = CL */
    public static final String DOCACTION_Close = X_Ref__Document_Action.CLOSE.getValue();
    /** Complete = CO */
    public static final String DOCACTION_Complete = X_Ref__Document_Action.COMPLETE.getValue();
    /** Invalidate = IN */
    public static final String DOCACTION_Invalidate = X_Ref__Document_Action.INVALIDATE.getValue();
    /** Post = PO */
    public static final String DOCACTION_Post = X_Ref__Document_Action.POST.getValue();
    /** Prepare = PR */
    public static final String DOCACTION_Prepare = X_Ref__Document_Action.PREPARE.getValue();
    /** Reverse - Accrual = RA */
    public static final String DOCACTION_Reverse_Accrual = X_Ref__Document_Action.REVERSE__ACCRUAL.getValue();
    /** Reverse - Correct = RC */
    public static final String DOCACTION_Reverse_Correct = X_Ref__Document_Action.REVERSE__CORRECT.getValue();
    /** Re-activate = RE */
    public static final String DOCACTION_Re_Activate = X_Ref__Document_Action.RE__ACTIVATE.getValue();
    /** Reject = RJ */
    public static final String DOCACTION_Reject = X_Ref__Document_Action.REJECT.getValue();
    /** Void = VO */
    public static final String DOCACTION_Void = X_Ref__Document_Action.VOID.getValue();
    /** Wait Complete = WC */
    public static final String DOCACTION_WaitComplete = X_Ref__Document_Action.WAIT_COMPLETE.getValue();
    /** Unlock = XL */
    public static final String DOCACTION_Unlock = X_Ref__Document_Action.UNLOCK.getValue();
    /** Set Document Action.
    @param DocAction The targeted status of the document */
    public void setDocAction (String DocAction)
    {
        if (DocAction == null) throw new IllegalArgumentException ("DocAction is mandatory");
        if (!X_Ref__Document_Action.isValid(DocAction));
        
        set_Value ("DocAction", DocAction);
        
    }
    
    /** Get Document Action.
    @return The targeted status of the document */
    public String getDocAction() 
    {
        return (String)get_Value("DocAction");
        
    }
    
    /** Unknown = ?? */
    public static final String DOCSTATUS_Unknown = X_Ref__Document_Status.UNKNOWN.getValue();
    /** Approved = AP */
    public static final String DOCSTATUS_Approved = X_Ref__Document_Status.APPROVED.getValue();
    /** Closed = CL */
    public static final String DOCSTATUS_Closed = X_Ref__Document_Status.CLOSED.getValue();
    /** Completed = CO */
    public static final String DOCSTATUS_Completed = X_Ref__Document_Status.COMPLETED.getValue();
    /** Drafted = DR */
    public static final String DOCSTATUS_Drafted = X_Ref__Document_Status.DRAFTED.getValue();
    /** Invalid = IN */
    public static final String DOCSTATUS_Invalid = X_Ref__Document_Status.INVALID.getValue();
    /** In Progress = IP */
    public static final String DOCSTATUS_InProgress = X_Ref__Document_Status.IN_PROGRESS.getValue();
    /** Not Approved = NA */
    public static final String DOCSTATUS_NotApproved = X_Ref__Document_Status.NOT_APPROVED.getValue();
    /** Reversed = RE */
    public static final String DOCSTATUS_Reversed = X_Ref__Document_Status.REVERSED.getValue();
    /** Voided = VO */
    public static final String DOCSTATUS_Voided = X_Ref__Document_Status.VOIDED.getValue();
    /** Waiting Confirmation = WC */
    public static final String DOCSTATUS_WaitingConfirmation = X_Ref__Document_Status.WAITING_CONFIRMATION.getValue();
    /** Waiting Payment = WP */
    public static final String DOCSTATUS_WaitingPayment = X_Ref__Document_Status.WAITING_PAYMENT.getValue();
    /** Set Document Status.
    @param DocStatus The current status of the document */
    public void setDocStatus (String DocStatus)
    {
        if (DocStatus == null) throw new IllegalArgumentException ("DocStatus is mandatory");
        if (!X_Ref__Document_Status.isValid(DocStatus));
        
        set_Value ("DocStatus", DocStatus);
        
    }
    
    /** Get Document Status.
    @return The current status of the document */
    public String getDocStatus() 
    {
        return (String)get_Value("DocStatus");
        
    }
    
    /** Set Document No.
    @param DocumentNo Document sequence number of the document */
    public void setDocumentNo (String DocumentNo)
    {
        if (DocumentNo == null) throw new IllegalArgumentException ("DocumentNo is mandatory.");
        set_Value ("DocumentNo", DocumentNo);
        
    }
    
    /** Get Document No.
    @return Document sequence number of the document */
    public String getDocumentNo() 
    {
        return (String)get_Value("DocumentNo");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getDocumentNo());
        
    }
    
    /** Set Due Date.
    @param DueDate Date when the payment is due */
    public void setDueDate (Timestamp DueDate)
    {
        if (DueDate == null) throw new IllegalArgumentException ("DueDate is mandatory.");
        set_Value ("DueDate", DueDate);
        
    }
    
    /** Get Due Date.
    @return Date when the payment is due */
    public Timestamp getDueDate() 
    {
        return (Timestamp)get_Value("DueDate");
        
    }
    
    /** Set Payment amount.
    @param PayAmt Amount being paid */
    public void setPayAmt (java.math.BigDecimal PayAmt)
    {
        set_Value ("PayAmt", PayAmt);
        
    }
    
    /** Get Payment amount.
    @return Amount being paid */
    public java.math.BigDecimal getPayAmt() 
    {
        return get_ValueAsBigDecimal("PayAmt");
        
    }
    
    /** Set Processed.
    @param Processed The document has been processed */
    public void setProcessed (boolean Processed)
    {
        set_Value ("Processed", Boolean.valueOf(Processed));
        
    }
    
    /** Get Processed.
    @return The document has been processed */
    public boolean isProcessed() 
    {
        return get_ValueAsBoolean("Processed");
        
    }
    
    /** Set Transfert de compte.
    @param Z_BankTransfert_ID Transfert de compte */
    public void setZ_BankTransfert_ID (int Z_BankTransfert_ID)
    {
        if (Z_BankTransfert_ID < 1) throw new IllegalArgumentException ("Z_BankTransfert_ID is mandatory.");
        set_ValueNoCheck ("Z_BankTransfert_ID", Integer.valueOf(Z_BankTransfert_ID));
        
    }
    
    /** Get Transfert de compte.
    @return Transfert de compte */
    public int getZ_BankTransfert_ID() 
    {
        return get_ValueAsInt("Z_BankTransfert_ID");
        
    }
    
    /** Set Préparation Paiement.
    @param Z_PreparePayment Préparation Paiement */
    public void setZ_PreparePayment (String Z_PreparePayment)
    {
        set_Value ("Z_PreparePayment", Z_PreparePayment);
        
    }
    
    /** Get Préparation Paiement.
    @return Préparation Paiement */
    public String getZ_PreparePayment() 
    {
        return (String)get_Value("Z_PreparePayment");
        
    }
    
    /** Set Sub Payment Rule.
    @param ZSubPaymentRule_ID Sub Payment Rule */
    public void setZSubPaymentRule_ID (int ZSubPaymentRule_ID)
    {
        if (ZSubPaymentRule_ID <= 0) set_Value ("ZSubPaymentRule_ID", null);
        else
        set_Value ("ZSubPaymentRule_ID", Integer.valueOf(ZSubPaymentRule_ID));
        
    }
    
    /** Get Sub Payment Rule.
    @return Sub Payment Rule */
    public int getZSubPaymentRule_ID() 
    {
        return get_ValueAsInt("ZSubPaymentRule_ID");
        
    }
    
    /** Set Sub Payment Rule.
    @param ZSubPaymentRuleTo_ID Sub Payment Rule */
    public void setZSubPaymentRuleTo_ID (int ZSubPaymentRuleTo_ID)
    {
        if (ZSubPaymentRuleTo_ID <= 0) set_Value ("ZSubPaymentRuleTo_ID", null);
        else
        set_Value ("ZSubPaymentRuleTo_ID", Integer.valueOf(ZSubPaymentRuleTo_ID));
        
    }
    
    /** Get Sub Payment Rule.
    @return Sub Payment Rule */
    public int getZSubPaymentRuleTo_ID() 
    {
        return get_ValueAsInt("ZSubPaymentRuleTo_ID");
        
    }
    
    /** Set N° Virement.
    @param Z_VirementIn_ID Le n° de l?enregistrement « IN » créé dans C_Payment. */
    public void setZ_VirementIn_ID (int Z_VirementIn_ID)
    {
        if (Z_VirementIn_ID <= 0) set_Value ("Z_VirementIn_ID", null);
        else
        set_Value ("Z_VirementIn_ID", Integer.valueOf(Z_VirementIn_ID));
        
    }
    
    /** Get N° Virement.
    @return Le n° de l?enregistrement « IN » créé dans C_Payment. */
    public int getZ_VirementIn_ID() 
    {
        return get_ValueAsInt("Z_VirementIn_ID");
        
    }
    
    /** Set N° Virement.
    @param Z_VirementOut_ID Le n° de l?enregistrement « OUT » créé dans C_Payment. */
    public void setZ_VirementOut_ID (int Z_VirementOut_ID)
    {
        if (Z_VirementOut_ID <= 0) set_Value ("Z_VirementOut_ID", null);
        else
        set_Value ("Z_VirementOut_ID", Integer.valueOf(Z_VirementOut_ID));
        
    }
    
    /** Get N° Virement.
    @return Le n° de l?enregistrement « OUT » créé dans C_Payment. */
    public int getZ_VirementOut_ID() 
    {
        return get_ValueAsInt("Z_VirementOut_ID");
        
    }
    
    
}
