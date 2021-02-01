package org.compiere.model;

import java.sql.ResultSet;

import org.apache.commons.beanutils.DynaClass;
import org.compiere.framework.PO;
import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.framework.VO;
import org.compiere.util.Ctx;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Trx;

public class X_C_BankAccountDoc_Trl extends POExtended implements POInterface {

	public static final int Table_ID;
	 static
	    {
	        Table_ID = get_Table_ID("C_BankAccountDoc_Trl");
	        
	    }
	    ;
	    
	    /** TableName=ZSubPaymentRule_Trl */
	    public static final String Table_Name="C_BankAccountDoc_Trl";
	    
	    /** Set Language.
	    @param AD_Language Language for this entity */
	    public void setAD_Language (String AD_Language)
	    {
	        set_ValueNoCheck ("AD_Language", AD_Language);
	        
	    }
	    
	    /** Get Language.
	    @return Language for this entity */
	    public String getAD_Language() 
	    {
	        return (String)get_Value("AD_Language");
	        
	    }
	    
	    /** Get Record ID/ColumnName
	    @return ID/ColumnName pair */
	    public KeyNamePair getKeyNamePair() 
	    {
	        return new KeyNamePair(get_ID(), String.valueOf(getAD_Language()));
	        
	    }
	    
	    /** Set Translated.
	    @param IsTranslated This column is translated */
	    public void setIsTranslated (boolean IsTranslated)
	    {
	        set_Value ("IsTranslated", Boolean.valueOf(IsTranslated));
	        
	    }
	    
	    /** Get Translated.
	    @return This column is translated */
	    public boolean isTranslated() 
	    {
	        return get_ValueAsBoolean("IsTranslated");
	        
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
	    
	    /** Set Description.
	    @param Name Alphanumeric identifier of the entity */
	    public void setDescription (String Description)
	    {
	        set_Value ("Description", Description);
	        
	    }
	    
	    /** Get Description.
	    @return Alphanumeric identifier of the entity */
	    public String getDescription() 
	    {
	        return (String)get_Value("Description");
	        
	    }
	    
	    
	    
	    /** Set Sub Payment Rule.
	    @param ZSubPaymentRule_ID Sub Payment Rule */
	    public void setC_BankAccountDoc_ID (int C_BankAccountDoc_ID)
	    {
	        if (C_BankAccountDoc_ID < 1) throw new IllegalArgumentException ("C_BankAccountDoc_ID is mandatory.");
	        set_ValueNoCheck ("C_BankAccountDoc_ID", Integer.valueOf(C_BankAccountDoc_ID));
	        
	    }
	    
	    /** Get Sub Payment Rule.
	    @return Sub Payment Rule */
	    public int getC_BankAccountDoc_ID() 
	    {
	        return get_ValueAsInt("C_BankAccountDoc_ID");
	        
	    }

	public X_C_BankAccountDoc_Trl(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_C_BankAccountDoc_Trl(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	 @Override 
	 public int get_Table_ID()
	    {
	        return Table_ID;
	        
	    }
	
	

}
