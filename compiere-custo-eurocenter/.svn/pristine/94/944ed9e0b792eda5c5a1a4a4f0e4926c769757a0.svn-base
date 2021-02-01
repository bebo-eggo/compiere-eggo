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
/** Generated Model for XX_BP_MATCHING
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_BP_MATCHING extends POExtended implements POInterface
{
    /** Standard Constructor
    @param ctx context
    @param XX_BP_MATCHING_ID id
    @param trx transaction
    */
    public X_XX_BP_MATCHING (Ctx ctx, int XX_BP_MATCHING_ID, Trx trx)
    {
        super (ctx, XX_BP_MATCHING_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_BP_MATCHING_ID == 0)
        {
            setDateAcct (new Timestamp(System.currentTimeMillis()));
            setProcessed (false);
            setValidFrom (Env.ZERO);
            setValidTo (Env.ZERO);
            setXX_BP_MATCHING_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_BP_MATCHING (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27825344253789L;
    /** AD_Table_ID=1007588 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_BP_MATCHING");
        
    }
    ;
    
    /** TableName=XX_BP_MATCHING */
    public static final String Table_Name="XX_BP_MATCHING";
    
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
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setDescription (String Description)
    {
        set_Value ("Description", Description);
        
    }
    
    public void setDescription2 (String Description)
    {
    	String des = getDescription();
    	if(des==null)
    		 set_Value ("Description", Description);
    	else
    	{
    		String OldDes =des;
    		set_Value ("Description", Description+"\n"+OldDes);
    	}
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getDescription() 
    {
        return (String)get_Value("Description");
        
    }
    
    /** Set Document No.
    @param DocumentNo Document sequence number of the document */
    public void setDocumentNo (String DocumentNo)
    {
        set_Value ("DocumentNo", DocumentNo);
        
    }
    
    /** Get Document No.
    @return Document sequence number of the document */
    public String getDocumentNo() 
    {
        return (String)get_Value("DocumentNo");
        
    }
    
    /** Set Generate List.
    @param GenerateList Generate List */
    public void setGenerateList (String GenerateList)
    {
        set_Value ("GenerateList", GenerateList);
        
    }
    
    /** Get Generate List.
    @return Generate List */
    public String getGenerateList() 
    {
        return (String)get_Value("GenerateList");
        
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
    
    /** Set Valid from.
    @param ValidFrom Valid from including this date (first day) */
    public void setValidFrom (java.math.BigDecimal ValidFrom)
    {
        if (ValidFrom == null) throw new IllegalArgumentException ("ValidFrom is mandatory.");
        set_Value ("ValidFrom", ValidFrom);
        
    }
    
    /** Get Valid from.
    @return Valid from including this date (first day) */
    public java.math.BigDecimal getValidFrom() 
    {
        return get_ValueAsBigDecimal("ValidFrom");
        
    }
    
    /** Set Valid to.
    @param ValidTo Valid to including this date (last day) */
    public void setValidTo (java.math.BigDecimal ValidTo)
    {
        if (ValidTo == null) throw new IllegalArgumentException ("ValidTo is mandatory.");
        set_Value ("ValidTo", ValidTo);
        
    }
    
    /** Get Valid to.
    @return Valid to including this date (last day) */
    public java.math.BigDecimal getValidTo() 
    {
        return get_ValueAsBigDecimal("ValidTo");
        
    }
    
    /** Set XX_BP_MATCHING.
    @param XX_BP_MATCHING_ID XX_BP_MATCHING */
    public void setXX_BP_MATCHING_ID (int XX_BP_MATCHING_ID)
    {
        if (XX_BP_MATCHING_ID < 1) throw new IllegalArgumentException ("XX_BP_MATCHING_ID is mandatory.");
        set_ValueNoCheck ("XX_BP_MATCHING_ID", Integer.valueOf(XX_BP_MATCHING_ID));
        
    }
    
    /** Get XX_BP_MATCHING.
    @return XX_BP_MATCHING */
    public int getXX_BP_MATCHING_ID() 
    {
        return get_ValueAsInt("XX_BP_MATCHING_ID");
        
    }
    
    
}
