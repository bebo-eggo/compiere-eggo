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
/** Generated Model for XX_REMB_SEL_LIGNE
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_REMB_SEL_LIGNE extends POExtended implements POInterface
{
    @Override
	protected boolean beforeDelete() {

    	if(getXX_REMB_CLIENTS_ID()>0)
    	{
    		X_XX_REMB_CLIENTS cl = new X_XX_REMB_CLIENTS(getCtx(), getXX_REMB_CLIENTS_ID(), get_Trx());
    		cl.setName(null);
    		cl.setProcessed(false);
    		cl.save();
    	}
		return super.beforeDelete();
	}
	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		// TODO Auto-generated method stub
    	if(getXX_REMB_CLIENTS_ID()>0 && getC_Invoice_ID()>0)
    	{
    		X_XX_REMB_CLIENTS cli = new X_XX_REMB_CLIENTS(getCtx(), getXX_REMB_CLIENTS_ID(), get_Trx());
    		cli.setC_Invoice_ID(getC_Invoice_ID());
    		cli.save();
    	}
		return super.afterSave(newRecord, success);
	}
	/** Standard Constructor
    @param ctx context
    @param XX_REMB_SEL_LIGNE_ID id
    @param trx transaction
    */
    public X_XX_REMB_SEL_LIGNE (Ctx ctx, int XX_REMB_SEL_LIGNE_ID, Trx trx)
    {
        super (ctx, XX_REMB_SEL_LIGNE_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_REMB_SEL_LIGNE_ID == 0)
        {
            setXX_REMB_SELECTION_ID (0);
            setXX_REMB_SEL_LIGNE_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_REMB_SEL_LIGNE (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27821826064789L;
    /** AD_Table_ID=1007486 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_REMB_SEL_LIGNE");
        
    }
    ;
    
    /** TableName=XX_REMB_SEL_LIGNE */
    public static final String Table_Name="XX_REMB_SEL_LIGNE";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    /** Set BIC/Swift.
    @param BBAN Basic Bank Account Number */
    public void setBBAN (String BBAN)
    {
        set_Value ("BBAN", BBAN);
        
    }
    
    /** Get BIC/Swift.
    @return Basic Bank Account Number */
    public String getBBAN() 
    {
        return (String)get_Value("BBAN");
        
    }
    
    /** Set Payment.
    @param C_Payment_ID Payment identifier */
    public void setC_Payment_ID (int C_Payment_ID)
    {
        if (C_Payment_ID <= 0) set_Value ("C_Payment_ID", null);
        else
        set_Value ("C_Payment_ID", Integer.valueOf(C_Payment_ID));
        
    }
    
    /** Get Payment.
    @return Payment identifier */
    public int getC_Payment_ID() 
    {
        return get_ValueAsInt("C_Payment_ID");
        
    }
    
    /** Set IBAN.
    @param IBAN International Bank Account Number */
    public void setIBAN (String IBAN)
    {
        set_Value ("IBAN", IBAN);
        
    }
    
    /** Get IBAN.
    @return International Bank Account Number */
    public String getIBAN() 
    {
        return (String)get_Value("IBAN");
        
    }
    
    public void setAccountNo (String AccountNo)
    {
        set_Value ("AccountNo", AccountNo);
        
    }
    
    public String getAccountNo() 
    {
        return (String)get_Value("AccountNo");
        
    }
    
    /** Set MONTANT.
    @param MONTANT MONTANT */
    public void setMONTANT (java.math.BigDecimal MONTANT)
    {
        set_Value ("MONTANT", MONTANT);
        
    }
    
    /** Get MONTANT.
    @return MONTANT */
    public java.math.BigDecimal getMONTANT() 
    {
        return get_ValueAsBigDecimal("MONTANT");
        
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
    
    /** Set Ligne de rembourssements.
    @param XX_REMB_SEL_LIGNE_ID Ligne de rembourssements */
    public void setXX_REMB_SEL_LIGNE_ID (int XX_REMB_SEL_LIGNE_ID)
    {
        if (XX_REMB_SEL_LIGNE_ID < 1) throw new IllegalArgumentException ("XX_REMB_SEL_LIGNE_ID is mandatory.");
        set_ValueNoCheck ("XX_REMB_SEL_LIGNE_ID", Integer.valueOf(XX_REMB_SEL_LIGNE_ID));
        
    }
    
    /** Get Ligne de rembourssements.
    @return Ligne de rembourssements */
    public int getXX_REMB_SEL_LIGNE_ID() 
    {
        return get_ValueAsInt("XX_REMB_SEL_LIGNE_ID");
        
    }
    
    public void setXX_REMB_CLIENTS_ID (int XX_REMB_CLIENTS_ID)
    {
        if (XX_REMB_CLIENTS_ID < 1) throw new IllegalArgumentException ("XX_REMB_CLIENTS_ID is mandatory.");
        set_ValueNoCheck ("XX_REMB_CLIENTS_ID", Integer.valueOf(XX_REMB_CLIENTS_ID));
        
    }
    
    /** Get Sélection rembourssements clients.
    @return Sélection rembourssements clients */
    public int getXX_REMB_CLIENTS_ID() 
    {
        return get_ValueAsInt("XX_REMB_CLIENTS_ID");
        
    }
    
    public void setC_Invoice_ID (int C_Invoice_ID)
    {
        if (C_Invoice_ID < 1) throw new IllegalArgumentException ("C_Invoice_ID is mandatory.");
        set_Value ("C_Invoice_ID", Integer.valueOf(C_Invoice_ID));
        
    }
    
    /** Get Invoice.
    @return Invoice Identifier */
    public int getC_Invoice_ID() 
    {
        return get_ValueAsInt("C_Invoice_ID");
        
    }
    
    public void setC_BPartner_ID (int C_BPartner_ID)
    {
        set_Value ("C_BPartner_ID", Integer.valueOf(C_BPartner_ID));
        
    }
    
    public int getC_BPartner_ID() 
    {
        return get_ValueAsInt("C_BPartner_ID");
        
    }
    
    public void setC_Order_ID (int C_Order_ID)
    {
        set_Value ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
}
