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
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.framework.*;
import org.compiere.util.*;

import com.audaxis.compiere.db.Util;
/** Generated Model for XX_REMB_SELECTION
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_REMB_SELECTION extends POExtended implements POInterface
{
    @Override
	protected boolean beforeSave(boolean newRecord) {
    	if(getDateTrx()==null)
    		setDateTrx(new Timestamp(System.currentTimeMillis()));
    	if(getC_Currency_ID()==0)
    		setC_Currency_ID(102);
		return super.beforeSave(newRecord);
	}
	/** Standard Constructor
    @param ctx context
    @param XX_REMB_SELECTION_ID id
    @param trx transaction
    */
    public X_XX_REMB_SELECTION (Ctx ctx, int XX_REMB_SELECTION_ID, Trx trx)
    {
        super (ctx, XX_REMB_SELECTION_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_REMB_SELECTION_ID == 0)
        {
            setC_BankAccount_ID (0);
            setC_DocType_ID (0);
            setProcessed (false);
            setXX_REMB_SELECTION_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_REMB_SELECTION (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27821825825789L;
    /** AD_Table_ID=1007485 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_REMB_SELECTION");
        
    }
    ;
    
    /** TableName=XX_REMB_SELECTION */
    public static final String Table_Name="XX_REMB_SELECTION";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set Bank Account.
    @param C_BankAccount_ID Account at the Bank */
    public void setC_BankAccount_ID (int C_BankAccount_ID)
    {
        if (C_BankAccount_ID < 1) throw new IllegalArgumentException ("C_BankAccount_ID is mandatory.");
        set_Value ("C_BankAccount_ID", Integer.valueOf(C_BankAccount_ID));
        
    }
    
    /** Get Bank Account.
    @return Account at the Bank */
    public int getC_BankAccount_ID() 
    {
        return get_ValueAsInt("C_BankAccount_ID");
        
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
    
    /** Set Name.
    @param Name Alphanumeric identifier of the entity */
    public void setName (String Name)
    {
        set_Value ("Name", Name);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getName() 
    {
        return (String)get_Value("Name");
        
    }
    
    /** Set Name.
    @param Name Alphanumeric identifier of the entity */
    public void setDocumentNo (String DocumentNo)
    {
        set_Value ("DocumentNo", DocumentNo);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getDocumentNo() 
    {
        return (String)get_Value("DocumentNo");
        
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
        set_Value ("Processing2", Boolean.valueOf(Processing));
        
    }
    
    /** Get Process Now.
    @return Process Now */
    public boolean isProcessing() 
    {
        return get_ValueAsBoolean("Processing2");
        
    }
    
    /** Set Sélection rembourssements clients.
    @param XX_REMB_SELECTION_ID Sélection rembourssements clients */
    public void setXX_REMB_SELECTION_ID (int XX_REMB_SELECTION_ID)
    {
        if (XX_REMB_SELECTION_ID < 1) throw new IllegalArgumentException ("XX_REMB_SELECTION_ID is mandatory.");
        set_ValueNoCheck ("XX_REMB_SELECTION_ID", Integer.valueOf(XX_REMB_SELECTION_ID));
        
    }
    
    /** Get Sélection rembourssements clients.
    @return Sélection rembourssements clients */
    public int getXX_REMB_SELECTION_ID() 
    {
        return get_ValueAsInt("XX_REMB_SELECTION_ID");
        
    }
    
    /** Set Export.
    @param ZExport Export */
    public void setZExport (String ZExport)
    {
        set_Value ("ZExport", ZExport);
        
    }
    
    /** Get Export.
    @return Export */
    public String getZExport() 
    {
        return (String)get_Value("ZExport");
        
    }
	@Override
	public String toString() {
		return getDocumentNo();
	}
    
	public void setZSubPaymentRule_ID (int ZSubPaymentRule_ID)
    {
        if (ZSubPaymentRule_ID < 0) throw new IllegalArgumentException ("ZSubPaymentRule_ID is mandatory.");
        set_Value ("ZSubPaymentRule_ID", Integer.valueOf(ZSubPaymentRule_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getZSubPaymentRule_ID() 
    {
        return get_ValueAsInt("ZSubPaymentRule_ID");
        
    }
    
    public ArrayList<X_XX_REMB_SEL_LIGNE> getXX_REMB_SEL_LIGNE()
    {
    	ArrayList<X_XX_REMB_SEL_LIGNE> ret = new ArrayList<X_XX_REMB_SEL_LIGNE>();
    	String sql = "Select * from XX_REMB_SEL_LIGNE where C_Payment_ID is not null and XX_REMB_SELECTION_ID = ? and IsActive = 'Y' ";
		PreparedStatement pstmt =  null;
		ResultSet rs = null;
		int index = 1;
        
		int nbRemb = 0;
        try
        {
        	pstmt = DB.prepareStatement(sql, get_Trx());
        	pstmt.setInt(index++, getXX_REMB_SELECTION_ID());
    		rs = pstmt.executeQuery();
           
            while (rs.next())
            {
            	ret.add(new X_XX_REMB_SEL_LIGNE(getCtx(), rs, get_Trx()))	;
            }
        }
        catch (Exception e)
        {
            log.log(Level.SEVERE, "doIt - " + sql, e);
        }
        finally {
			Util.closeCursor(pstmt, rs);
		}
    	return ret;
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
    
    /** Set Currency.
    @param C_Currency_ID The Currency for this record */
    public void setC_Currency_ID (int C_Currency_ID)
    {
        if (C_Currency_ID <= 0) set_Value ("C_Currency_ID", null);
        else
        set_Value ("C_Currency_ID", Integer.valueOf(C_Currency_ID));
        
    }
    
    /** Get Currency.
    @return The Currency for this record */
    public int getC_Currency_ID() 
    {
        return get_ValueAsInt("C_Currency_ID");
        
    }
}
