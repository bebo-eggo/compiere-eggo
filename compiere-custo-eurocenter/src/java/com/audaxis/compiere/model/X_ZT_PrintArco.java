package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_ZT_PrintArco extends POExtended implements POInterface {

	
    public static final int Table_ID;
    static
    {
        Table_ID = get_Table_ID("ZT_PrintArco");
        
    }
    ;
    
    /** TableName=Z_OrderShip */
    public static final String Table_Name="ZT_PrintArco";
    
	public X_ZT_PrintArco(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_ZT_PrintArco(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	@Override
	public int get_Table_ID() {
		// TODO Auto-generated method stub
		return Table_ID;
	}

	/** Set Order.
    @param C_Invoice_ID Order */
    public void setC_Invoice_ID (int C_Invoice_ID)
    {
        if (C_Invoice_ID < 1) throw new IllegalArgumentException ("C_Invoice_ID is mandatory.");
        set_ValueNoCheck ("C_Invoice_ID", Integer.valueOf(C_Invoice_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Invoice_ID() 
    {
        return get_ValueAsInt("C_Invoice_ID");
        
    }
    
	/** Set AD_Session_ID.
    @param AD_Session_ID */
    public void setAD_Session_ID (int AD_Session_ID)
    {
        if (AD_Session_ID < 1) throw new IllegalArgumentException ("AD_Session_ID is mandatory.");
        set_ValueNoCheck ("AD_Session_ID", Integer.valueOf(AD_Session_ID));
        
    }
    
    /** Get AD_Session_ID.
    @return AD_Session_ID */
    public int getAD_Session_ID() 
    {
        return get_ValueAsInt("AD_Session_ID");
        
    }
    
    /** Set User3_ID.
    @param User3_ID */
    public void setUser3_ID (int User3_ID)
    {
        if (User3_ID < 1) throw new IllegalArgumentException ("User3_ID is mandatory.");
        set_ValueNoCheck ("User3_ID", Integer.valueOf(User3_ID));
        
    }
    
    /** Get User3_ID.
    @return User3_ID */
    public int getUser3_ID() 
    {
        return get_ValueAsInt("User3_ID");
        
    }
}
