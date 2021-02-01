package org.compiere.model;

import java.sql.ResultSet;

import org.apache.commons.beanutils.DynaClass;
import org.compiere.framework.PO;
import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.framework.VO;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_Z_SyncPriceLog extends POExtended implements POInterface {

	public X_Z_SyncPriceLog() {
		// TODO Auto-generated constructor stub
	}

	public X_Z_SyncPriceLog(Ctx ctx, VO vo) {
		super(ctx, vo);
		// TODO Auto-generated constructor stub
	}

	public X_Z_SyncPriceLog(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_Z_SyncPriceLog(Ctx ctx, PO source, int AD_Client_ID, int AD_Org_ID) {
		super(ctx, source, AD_Client_ID, AD_Org_ID);
		// TODO Auto-generated constructor stub
	}

	public X_Z_SyncPriceLog(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public X_Z_SyncPriceLog(Ctx ctx) {
		super(ctx);
		// TODO Auto-generated constructor stub
	}

	public X_Z_SyncPriceLog(DynaClass clazz) {
		super(clazz);
		// TODO Auto-generated constructor stub
	}

	/** AD_Table_ID=cccccccccccccc */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_SyncPriceLog");
        
    }
    ;
    
    /** TableName=Z_SynchoLevel */
    public static final String Table_Name="Z_SyncPriceLog";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    
    /** Set Z_SyncPriceLog_ID.
    @param Z_SyncPriceLog_ID Execution Schedule */
    public void setZ_SyncPriceLog_ID (int Z_SyncPriceLog_ID)
    {
        if (Z_SyncPriceLog_ID < 1) throw new IllegalArgumentException ("Z_SyncPriceLog_ID is mandatory.");
        set_Value ("Z_SyncPriceLog_ID", Integer.valueOf(Z_SyncPriceLog_ID));
        
    }
    
    /** Get Schedule.
    @return Execution Schedule */
    public int getZ_SyncPriceLog_ID()
    {
        return get_ValueAsInt("Z_SyncPriceLog_ID");
        
    }
    
    /** Set AD_PInstance_ID.
    @param AD_PInstance_ID */
    public void setAD_PInstance_ID (int AD_PInstance_ID)
    {
        if (AD_PInstance_ID < 1) throw new IllegalArgumentException ("AD_PInstance_ID is mandatory.");
        set_Value ("AD_PInstance_ID", Integer.valueOf(AD_PInstance_ID));
        
    }
    
    /** Get Schedule.
    @return Execution Schedule */
    public int getAD_PInstance_ID()
    {
        return get_ValueAsInt("AD_PInstance_ID");
        
    }
    
    /** Set Is IsUse.
    @param IsUse Is IsUse */
    public void setIsUse (boolean IsUse)
    {
        set_Value ("IsUse", Boolean.valueOf(IsUse));
        
    }
    
    /** Get Is Install.
    @return Is Install */
    public boolean isIsUse() 
    {
        return get_ValueAsBoolean("IsUse");
        
    }
    
    /** Set FileName.
    @param FileName FileName */
    public void setFileName (String FileName)
    {
        set_Value ("FileName", FileName);
        
    }
    
    /** Get FileName.
    @return FileName */
    public String getFileName() 
    {
        return (String)get_Value("FileName");
        
    }

}
