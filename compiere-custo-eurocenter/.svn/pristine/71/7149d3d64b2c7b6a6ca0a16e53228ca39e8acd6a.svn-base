package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.apache.commons.beanutils.DynaClass;
import org.compiere.framework.PO;
import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.framework.VO;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_Z_TypeOA extends POExtended implements POInterface {

	public X_Z_TypeOA() {
		// TODO Auto-generated constructor stub
	}

	public X_Z_TypeOA(Ctx ctx, VO vo) {
		super(ctx, vo);
		// TODO Auto-generated constructor stub
	}

	public X_Z_TypeOA(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_Z_TypeOA(Ctx ctx, PO source, int AD_Client_ID, int AD_Org_ID) {
		super(ctx, source, AD_Client_ID, AD_Org_ID);
		// TODO Auto-generated constructor stub
	}

	public X_Z_TypeOA(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public X_Z_TypeOA(Ctx ctx) {
		super(ctx);
		// TODO Auto-generated constructor stub
	}

	public X_Z_TypeOA(DynaClass clazz) {
		super(clazz);
		// TODO Auto-generated constructor stub
	}
	/** Serial Version No */
    private static final long serialVersionUID = 27639233882779L;
    /** Last Updated Timestamp 2013-01-02 07:36:06.0 */
    public static final long updatedMS = 1357108567000L;
    /** AD_Table_ID=1001895 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_TypeOA");
        
    }
    ;
    
    /** Set Z_TypeOA.
    @param Z_TypeOA_ID Z_TypeOA */
    public void setZ_TypeOA_ID (int Z_TypeOA_ID)
    {
        if (Z_TypeOA_ID < 1) throw new IllegalArgumentException ("Z_TypeOA_ID is mandatory.");
        set_ValueNoCheck ("Z_TypeOA_ID", Integer.valueOf(Z_TypeOA_ID));
        
    }
    
    /** Get Z_TypeOA.
    @return Z_TypeOA */
    public int getZ_TypeOA_ID() 
    {
        return get_ValueAsInt("Z_TypeOA_ID");
        
    }
    
    /** TableName=Z_TypeOA */
    public static final String Table_Name="Z_TypeOA";

	@Override
	public int get_Table_ID() {
		// TODO Auto-generated method stub
		return Table_ID;
	}
	
	/** Set IsDefault.
    @param IsDefault IsDefault */
    public void setIsDefault (boolean IsDefault)
    {
        set_Value ("IsDefault", Boolean.valueOf(IsDefault));
        
    }
    
    /** Get IsDefault.
    @return IsDefault */
    public boolean isDefault() 
    {
        return get_ValueAsBoolean("IsDefault");
        
    }
    
    /** Set Name.
    @param Name Alphanumeric identifier of the entity */
    public void setName (String Name)
    {
        if (Name == null) throw new IllegalArgumentException ("Name is mandatory.");
        set_Value ("Name", Name);
        
    }
    
    /** Get Name.
    @return Alphanumeric identifier of the entity */
    public String getName() 
    {
        return (String)get_Value("Name");
        
    }
    
    /** Set Search Key.
    @param Value Search key for the record in the format required - must be unique */
    public void setValue (String Value)
    {
        if (Value == null) throw new IllegalArgumentException ("Value is mandatory.");
        set_Value ("Value", Value);
        
    }
    
    /** Get Search Key.
    @return Search key for the record in the format required - must be unique */
    public String getValue() 
    {
        return (String)get_Value("Value");
        
    }
    
    /** Set Name.
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
    
    /** Set Z_StatusPlan.
    @param Z_StatusPlan */
    public void setZ_StatusPlan (String Z_StatusPlan)
    {
        set_Value ("Z_StatusPlan", Z_StatusPlan);
        
    }
    
    /** Get Z_StatusPlan.
    @return Z_StatusPlan */
    public String getZ_StatusPlan() 
    {
        return (String)get_Value("Z_StatusPlan");
        
    }

}
