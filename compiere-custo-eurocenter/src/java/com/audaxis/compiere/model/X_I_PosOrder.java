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
/** Generated Model for I_PosOrder
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_I_PosOrder extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param I_PosOrder_ID id
    @param trx transaction
    */
    public X_I_PosOrder (Ctx ctx, int I_PosOrder_ID, Trx trx)
    {
        super (ctx, I_PosOrder_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (I_PosOrder_ID == 0)
        {
            setC_BPartner_ID (0);
            setC_BPartner_Location_ID (0);
            setC_DocTypeTarget_ID (0);
            setDateOrdered (new Timestamp(System.currentTimeMillis()));	// @#Date@
            setDocumentNo (null);
            setGrandTotal (Env.ZERO);
            setI_IsImported (null);	// N
            setI_PosOrder_ID (0);
            setSalesRep_ID (0);
            setZ_PosNbr (null);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_I_PosOrder (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27620595322789L;
    /** Last Updated Timestamp 2012-05-31 15:13:26.0 */
    public static final long updatedMS = 1338470006000L;
    /** AD_Table_ID=1000645 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("I_PosOrder");
        
    }
    ;
    
    /** TableName=I_PosOrder */
    public static final String Table_Name="I_PosOrder";
    
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
    
    /** Set Partner Location.
    @param C_BPartner_Location_ID Identifies the (ship to) address for this Business Partner */
    public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
    {
        if (C_BPartner_Location_ID < 1) throw new IllegalArgumentException ("C_BPartner_Location_ID is mandatory.");
        set_Value ("C_BPartner_Location_ID", Integer.valueOf(C_BPartner_Location_ID));
        
    }
    
    /** Get Partner Location.
    @return Identifies the (ship to) address for this Business Partner */
    public int getC_BPartner_Location_ID() 
    {
        return get_ValueAsInt("C_BPartner_Location_ID");
        
    }
    
    /** Set Target Doc Type.
    @param C_DocTypeTarget_ID Target document type for documents */
    public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
    {
        if (C_DocTypeTarget_ID < 1) throw new IllegalArgumentException ("C_DocTypeTarget_ID is mandatory.");
        set_Value ("C_DocTypeTarget_ID", Integer.valueOf(C_DocTypeTarget_ID));
        
    }
    
    /** Get Target Doc Type.
    @return Target document type for documents */
    public int getC_DocTypeTarget_ID() 
    {
        return get_ValueAsInt("C_DocTypeTarget_ID");
        
    }
    
    /** Set Order.
    @param C_Order_ID Order */
    public void setC_Order_ID (int C_Order_ID)
    {
        if (C_Order_ID <= 0) set_ValueNoCheck ("C_Order_ID", null);
        else
        set_ValueNoCheck ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    /** Set Date Ordered.
    @param DateOrdered Date of Order */
    public void setDateOrdered (Timestamp DateOrdered)
    {
        if (DateOrdered == null) throw new IllegalArgumentException ("DateOrdered is mandatory.");
        set_Value ("DateOrdered", DateOrdered);
        
    }
    
    /** Get Date Ordered.
    @return Date of Order */
    public Timestamp getDateOrdered() 
    {
        return (Timestamp)get_Value("DateOrdered");
        
    }
    
    /** Get Record ID/ColumnName
    @return ID/ColumnName pair */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getDateOrdered()));
        
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
    
    /** Set Grand Total.
    @param GrandTotal Total amount of document */
    public void setGrandTotal (java.math.BigDecimal GrandTotal)
    {
        if (GrandTotal == null) throw new IllegalArgumentException ("GrandTotal is mandatory.");
        set_Value ("GrandTotal", GrandTotal);
        
    }
    
    /** Get Grand Total.
    @return Total amount of document */
    public java.math.BigDecimal getGrandTotal() 
    {
        return get_ValueAsBigDecimal("GrandTotal");
        
    }
    
    /** Set Import Error Message.
    @param I_ErrorMsg Messages generated from import process */
    public void setI_ErrorMsg (String I_ErrorMsg)
    {
        set_Value ("I_ErrorMsg", I_ErrorMsg);
        
    }
    
    /** Get Import Error Message.
    @return Messages generated from import process */
    public String getI_ErrorMsg() 
    {
        return (String)get_Value("I_ErrorMsg");
        
    }
    
    /** Error = E */
    public static final String I_ISIMPORTED_Error = "E";
    /** No = N */
    public static final String I_ISIMPORTED_No = "N";
    /** Yes = Y */
    public static final String I_ISIMPORTED_Yes = "Y";
    /** Set Imported.
    @param I_IsImported Has this import been processed? */
    public void setI_IsImported (String I_IsImported)
    {
        if (I_IsImported == null) throw new IllegalArgumentException ("I_IsImported is mandatory");
       set_Value ("I_IsImported", I_IsImported);
        
    }
    
    /** Get Imported.
    @return Has this import been processed? */
    public String getI_IsImported() 
    {
        return (String)get_Value("I_IsImported");
        
    }
    
    /** Set I_PosOrder_ID.
    @param I_PosOrder_ID I_PosOrder_ID */
    public void setI_PosOrder_ID (int I_PosOrder_ID)
    {
        if (I_PosOrder_ID < 1) throw new IllegalArgumentException ("I_PosOrder_ID is mandatory.");
        set_ValueNoCheck ("I_PosOrder_ID", Integer.valueOf(I_PosOrder_ID));
        
    }
    
    /** Get I_PosOrder_ID.
    @return I_PosOrder_ID */
    public int getI_PosOrder_ID() 
    {
        return get_ValueAsInt("I_PosOrder_ID");
        
    }
    
    /** Set Priority.
    @param Priority Indicates if this request is of a high, medium or low priority. */
    public void setPriority (int Priority)
    {
        set_Value ("Priority", Integer.valueOf(Priority));
        
    }
    
    /** Get Priority.
    @return Indicates if this request is of a high, medium or low priority. */
    public int getPriority() 
    {
        return get_ValueAsInt("Priority");
        
    }
    
    /** Set Processed.
    @param Processed The document has been processed */
    public void setProcessed (boolean Processed)
    {
        set_ValueNoCheck ("Processed", Boolean.valueOf(Processed));
        
    }
    
    /** Get Processed.
    @return The document has been processed */
    public boolean isProcessed() 
    {
        return get_ValueAsBoolean("Processed");
        
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
    
    /** Set Representative.
    @param SalesRep_ID Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative... */
    public void setSalesRep_ID (int SalesRep_ID)
    {
        if (SalesRep_ID < 1) throw new IllegalArgumentException ("SalesRep_ID is mandatory.");
        set_Value ("SalesRep_ID", Integer.valueOf(SalesRep_ID));
        
    }
    
    /** Get Representative.
    @return Company Agent like Sales Representative, Purchase Agent, and Customer Service Representative... */
    public int getSalesRep_ID() 
    {
        return get_ValueAsInt("SalesRep_ID");
        
    }
    
    /** Set No de Caisse.
    @param Z_PosNbr No de Caisse */
    public void setZ_PosNbr (String Z_PosNbr)
    {
        if (Z_PosNbr == null) throw new IllegalArgumentException ("Z_PosNbr is mandatory.");
        set_Value ("Z_PosNbr", Z_PosNbr);
        
    }
    
    /** Get No de Caisse.
    @return No de Caisse */
    public String getZ_PosNbr() 
    {
        return (String)get_Value("Z_PosNbr");
        
    }
    
    public void setVendorID(int vendorId)
    {
        set_Value ("Vendor_ID", Integer.valueOf(vendorId));        
    }
    
    public int getVendorID() 
    {
        return get_ValueAsInt("Vendor_ID");
        
    }
    
    /** Set Description.
    @param Description2 Optional short description of the record */
    public void setDescription2 (String Description2)
    {
        set_Value ("Description2", Description2);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getDescription2() 
    {
        return (String)get_Value("Description2");
        
    }
    
}
