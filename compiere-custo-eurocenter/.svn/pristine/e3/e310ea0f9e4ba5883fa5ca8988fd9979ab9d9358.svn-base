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

import org.compiere.api.UICallout;
import org.compiere.framework.*;
import org.compiere.util.*;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.util.BankAccountValidator;
/** Generated Model for XX_REMB_CLIENTS
 *  @author Jorg Janke (generated) 
 *  @version Release 3.6.1 - $Id: GenerateModel.java 8757 2010-05-12 21:32:32Z nnayak $ */
public class X_XX_REMB_CLIENTS extends POExtended implements POInterface
{
    @Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
    	//CHECK BANKACCOUNT
    	if(isProcessed())
    		return true;
    	
    	//CheckDocTypeODV
    	MOrder mo = new MOrder(getCtx(), getC_Order_ID(), get_Trx());
    	MDocTypeInfo mdi = MDocTypeInfo.get(getCtx(), mo.getC_DocType_ID(), get_Trx());
    	if(mdi.isDevis())
    	{
    		log.saveError("Error", Msg.getMsg(getCtx(), "2YVU_DEVIS"));
    		return false;
    	}
    	if(getIBAN()==null || getIBAN().length()==0){
    		log.saveError("Error", Msg.getMsg(getCtx(), "2YVU_NO_IBAN"));
    		return false;
    	}
    	String country = getIBAN().toUpperCase().trim();
    	country = country.substring(0, 2);
    	boolean ok = BankAccountValidator.validateAccount(null, getIBAN().replace(" ", "").toUpperCase().trim(), country.toUpperCase());
    	if(!ok)
    	{
    		log.saveError("Error", Msg.getMsg(getCtx(), "2YVU_IBAN_BAD"));
    		return false;
    	}
    	try {
    		String BicOld = getBBAN();
			String BIC = IBanAPI.checkIBAN(getIBAN().replace(" ", ""));
			if(BIC == null && BicOld == null){
				log.saveError("Error", Msg.getMsg(getCtx(), "2YVU_IBAN_BAD"));
				return false;
			}
			setBBAN(BIC==null?BicOld:BIC);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	setIBAN(getIBAN().replace(" ", "").toUpperCase().trim());
    	if(getIBAN().length()>2 && getBBAN().length()>0)
    	{
    		int nb = getBBAN().length();
    		if( (nb<8 || nb>11)){
    			log.saveError("Error", Msg.getMsg(getCtx(), "2YVU_IBAN_BAD"));
			return false;}
    	}
    	setMONTANT(getMONTANT().abs());
		return super.beforeSave(newRecord);
	}
	/** Standard Constructor
    @param ctx context
    @param XX_REMB_CLIENTS_ID id
    @param trx transaction
    */
    public X_XX_REMB_CLIENTS (Ctx ctx, int XX_REMB_CLIENTS_ID, Trx trx)
    {
        super (ctx, XX_REMB_CLIENTS_ID, trx);
        
        /* The following are the mandatory fields for this object.
        
        if (XX_REMB_CLIENTS_ID == 0)
        {
            setC_Invoice_ID (0);
            setC_Order_ID (0);
            setMONTANT (Env.ZERO);
            setProcessed (false);
            setXX_REMB_CLIENTS_ID (0);
            
        }
        */
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_XX_REMB_CLIENTS (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27821809354789L;
    /** AD_Table_ID=1007484 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_REMB_CLIENTS");
        
    }
    ;
    
    /** TableName=XX_REMB_CLIENTS */
    public static final String Table_Name="XX_REMB_CLIENTS";
    
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
    
    /** Set Invoice.
    @param C_Invoice_ID Invoice Identifier */
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
    
    /** Set Order.
    @param C_Order_ID Order */
    public void setC_Order_ID (int C_Order_ID)
    {
        if (C_Order_ID < 1) throw new IllegalArgumentException ("C_Order_ID is mandatory.");
        set_Value ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    /** Set IBAN.
    @param IBAN International Bank Account Number */
    public void setIBAN (String IBAN)
    {
        set_Value ("IBAN", IBAN==null?IBAN:IBAN.replace(" ", "").toUpperCase());
        
    }
    
    /** Get IBAN.
    @return International Bank Account Number */
    public String getIBAN() 
    {
        return (String)get_Value("IBAN");
        
    }
    
    /** Set MONTANT.
    @param MONTANT MONTANT */
    public void setMONTANT (java.math.BigDecimal MONTANT)
    {
        if (MONTANT == null) throw new IllegalArgumentException ("MONTANT is mandatory.");
        set_Value ("MONTANT", MONTANT);
        
    }
    
    /** Get MONTANT.
    @return MONTANT */
    public java.math.BigDecimal getMONTANT() 
    {
        return get_ValueAsBigDecimal("MONTANT");
        
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
    
    /** Set Rembourssements Clients.
    @param XX_REMB_CLIENTS_ID Rembourssements Clients */
    public void setXX_REMB_CLIENTS_ID (int XX_REMB_CLIENTS_ID)
    {
        if (XX_REMB_CLIENTS_ID < 1) throw new IllegalArgumentException ("XX_REMB_CLIENTS_ID is mandatory.");
        set_ValueNoCheck ("XX_REMB_CLIENTS_ID", Integer.valueOf(XX_REMB_CLIENTS_ID));
        
    }
    
    /** Get Rembourssements Clients.
    @return Rembourssements Clients */
    public int getXX_REMB_CLIENTS_ID() 
    {
        return get_ValueAsInt("XX_REMB_CLIENTS_ID");
        
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
    
    public void setC_BPartner_ID (int C_BPartner_ID)
    {
        set_Value ("C_BPartner_ID", Integer.valueOf(C_BPartner_ID));
        
    }
    
    public int getC_BPartner_ID() 
    {
        return get_ValueAsInt("C_BPartner_ID");
        
    }
    
    @UICallout public void setIBAN (String oldIBAN, 
			String newIBAN, int windowNo) throws Exception
			{
		if (newIBAN == null || newIBAN.length() == 0)
		{
			set_ValueNoCheck("IBAN", null);
			return;
		}
		
		String country = getIBAN().toUpperCase().trim();
    	country = country.substring(0, 2);
    	boolean ok = BankAccountValidator.validateAccount(null, getIBAN().replace(" ", "").toUpperCase().trim(), country.toUpperCase());
    	if(!ok)
    	{
    		log.saveError("Error", Msg.getMsg(getCtx(), "2YVU_IBAN_BAD"));
    		return;
    	}
    	try {
    		String BicOld = getBBAN();
			String BIC = IBanAPI.checkIBAN(getIBAN().replace(" ", ""));
			if(BIC == null && BicOld == null){
				log.saveError("Error", Msg.getMsg(getCtx(), "2YVU_IBAN_BAD"));
				return;
			}
			setBBAN(BIC==null?BicOld:BIC);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	set_ValueNoCheck("IBAN", getIBAN().replace(" ", "").toUpperCase().trim());
	}
}
