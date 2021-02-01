package com.audaxis.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_ZT_ExpedTranft extends POExtended implements POInterface {

	
    public static final int Table_ID;
    static
    {
        Table_ID = get_Table_ID("ZT_ExpedTranft");
        
    }
    ;
    
    /** TableName=X_ZT_ExpedTranft */
    public static final String Table_Name="ZT_ExpedTranft";
    
	public X_ZT_ExpedTranft(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_ZT_ExpedTranft(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	@Override
	public int get_Table_ID() {
		// TODO Auto-generated method stub
		return Table_ID;
	}

	/** Set Order.
    @param M_Movement_ID Order */
    public void setM_Movement_ID (int M_Movement_ID)
    {
        if (M_Movement_ID < 1) throw new IllegalArgumentException ("M_Movement_ID is mandatory.");
        set_ValueNoCheck ("M_Movement_ID", Integer.valueOf(M_Movement_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getM_Movement_ID() 
    {
        return get_ValueAsInt("M_Movement_ID");
        
    }
    
    /** Get ZT_ExpedTranft.
    @return ZT_ExpedTranft */
    public int getZT_ExpedTranft_ID() 
    {
        return get_ValueAsInt("ZT_ExpedTranft_ID");
        
    }
    
    /** Set Order.
    @param M_Movement_ID Order */
    public void setM_MovementLine_ID (int M_MovementLine_ID)
    {
        if (M_MovementLine_ID < 1) throw new IllegalArgumentException ("M_MovementLine_ID is mandatory.");
        set_ValueNoCheck ("M_MovementLine_ID", Integer.valueOf(M_MovementLine_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getM_MovementLine_ID() 
    {
        return get_ValueAsInt("M_MovementLine_ID");
        
    }
    
	/** Set V_PInstance_ID.
    @param V_PInstance_ID */
    public void setV_PInstance_ID (int V_PInstance_ID)
    {
        if (V_PInstance_ID < 1) throw new IllegalArgumentException ("V_PInstance_ID is mandatory.");
        set_ValueNoCheck ("V_PInstance_ID", Integer.valueOf(V_PInstance_ID));
        
    }
    
    /** Get V_PInstance_ID.
    @return V_PInstance_ID */
    public int getV_PInstance_ID() 
    {
        return get_ValueAsInt("V_PInstance_ID");
        
    }
    
    /** Set AD_User_ID.
    @param AD_User_ID */
    public void setAD_User_ID (int AD_User_ID)
    {
        if (AD_User_ID < 1) throw new IllegalArgumentException ("AD_User_ID is mandatory.");
        set_ValueNoCheck ("AD_User_ID", Integer.valueOf(AD_User_ID));
        
    }
    
    /** Get AD_User_ID.
    @return AD_User_ID */
    public int getAD_User_ID() 
    {
        return get_ValueAsInt("AD_User_ID");
        
    }
    
    /** Set ZNumRecord.
    @param ZNumRecord */
    public void setZNumRecord (int ZNumRecord)
    {
        set_ValueNoCheck ("ZNumRecord", Integer.valueOf(ZNumRecord));
        
    }
    
    /** Get ZNumRecord.
    @return ZNumRecord */
    public int getZNumRecord() 
    {
        return get_ValueAsInt("ZNumRecord");
        
    }
    
    /** Set MovementDate.
    @param MovementDate MovementDate */
    public void setMovementDate (Timestamp MovementDate)
    {
        set_Value ("MovementDate", MovementDate);
        
    }
    
    /** Get MovementDate.
    @return MovementDate */
    public Timestamp getMovementDate() 
    {
        return (Timestamp)get_Value("MovementDate");
        
    }
    
    
}
