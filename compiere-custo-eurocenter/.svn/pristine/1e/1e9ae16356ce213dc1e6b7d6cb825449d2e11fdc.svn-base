package com.audaxis.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_XX_TAUX_QLT_HISTO extends POExtended implements POInterface {

	public X_XX_TAUX_QLT_HISTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public X_XX_TAUX_QLT_HISTO(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_XX_TAUX_QLT_HISTO(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_TAUX_QLT_HISTO");
        
    }
    ;
    
    /** TableName=XX_TAUX_QLT_HISTO */
    public static final String Table_Name="XX_TAUX_QLT_HISTO";


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public int get_Table_ID() {
		// TODO Auto-generated method stub
		return Table_ID;
	}
	
	/** Set Order.
    @param C_Order_ID Order */
    public void setC_Order_ID (int C_Order_ID)
    {
        if (C_Order_ID < 1) throw new IllegalArgumentException ("C_Order_ID is mandatory.");
        set_ValueNoCheck ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    /** Set ChangeDate.
    @param ChangeDate Date */
    public void setChangeDate (Timestamp ChangeDate)
    {
        set_ValueNoCheck ("ChangeDate", ChangeDate);
        
    }
    
    /** Get ChangeDate.
    @return Date ChangeDate*/
    public Timestamp getChangeDate() 
    {
        return (Timestamp)get_Value("ChangeDate");
        
    }
    

    public void setXX_SAV_Date (Timestamp XX_SAV_Date)
    {
        set_ValueNoCheck ("XX_SAV_Date", XX_SAV_Date);
        
    }
    

    public Timestamp getXX_SAV_Date() 
    {
        return (Timestamp)get_Value("XX_SAV_Date");
        
    }
    
    public String getXX_IsSAV() 
    {
        return get_ValueAsString("XX_IsSAV");
        
    }
    
    public void setXX_IsSAV(String XX_IsSAV) 
    {
    	 set_Value ("XX_IsSAV", XX_IsSAV);
        
    }
	
}
