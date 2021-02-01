package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_ZT_DAOAExport extends POExtended implements POInterface {

	
    public static final int Table_ID;
    static
    {
        Table_ID = get_Table_ID("ZT_DAOAExport");
        
    }
    ;
    
    /** TableName=Z_OrderShip */
    public static final String Table_Name="ZT_DAOAExport";
    
	public X_ZT_DAOAExport(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_ZT_DAOAExport(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	@Override
	public int get_Table_ID() {
		// TODO Auto-generated method stub
		return Table_ID;
	}

	/** Set Order.
    @param M_Requisition_ID Order */
    public void setM_Requisition_ID (int M_Requisition_ID)
    {
        if (M_Requisition_ID < 1) throw new IllegalArgumentException ("M_Requisition_ID is mandatory.");
        set_ValueNoCheck ("M_Requisition_ID", Integer.valueOf(M_Requisition_ID));
        
    }
    
    /** Get Order.
    @return Order */
    public int getM_Requisition_ID() 
    {
        return get_ValueAsInt("M_Requisition_ID");
        
    }
    
	/** Set AD_PInstance_ID.
    @param AD_PInstance_ID */
    public void setAD_PInstance_ID (int AD_PInstance_ID)
    {
        if (AD_PInstance_ID < 1) throw new IllegalArgumentException ("AD_PInstance_ID is mandatory.");
        set_ValueNoCheck ("AD_PInstance_ID", Integer.valueOf(AD_PInstance_ID));
        
    }
    
    /** Get AD_PInstance_ID.
    @return AD_PInstance_ID */
    public int getAD_PInstance_ID() 
    {
        return get_ValueAsInt("AD_PInstance_ID");
        
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
