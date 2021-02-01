package com.audaxis.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_XT_Order_Bonus extends POExtended implements POInterface{

	public X_XT_Order_Bonus(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_XT_Order_Bonus(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XT_ORDER_BONUS");
        
    }
    ;
    
    /** TableName=Z_OrderStep */
    public static final String Table_Name="XT_ORDER_BONUS";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
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
    
    /** Set Action date.
    @param DateAction Action date */
    public void setDateAction (Timestamp DateAction)
    {
        set_Value ("DateAction", DateAction);
        
    }
    
    /** Get Action date.
    @return Action date */
    public Timestamp getDateAction() 
    {
        return (Timestamp)get_Value("DateAction");
        
    }
    
    public void setIsXX_IsBonus (boolean XX_IsBonus)
    {
        set_Value ("XX_IsBonus", Boolean.valueOf(XX_IsBonus));
        
    }
    
    public boolean isXX_IsBonus() 
    {
        return get_ValueAsBoolean("XX_IsBonus");
        
    }
    
    public void setXX_BonusDate (Timestamp XX_BonusDate)
    {
        set_Value ("XX_BonusDate", XX_BonusDate);
        
    }
    
    public Timestamp getXX_BonusDate() 
    {
        return (Timestamp)get_Value("XX_BonusDate");
        
    }
}
