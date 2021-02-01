package com.audaxis.compiere.eurocenter.ws;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_WSEggo extends POExtended implements POInterface{

	public X_WSEggo(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_WSEggo(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -5803607548881720035L;

	public X_WSEggo() {
		// TODO Auto-generated constructor stub
	}

	public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_WSEggo");
        
    }
    ;
    
    /** TableName=Z_OrderMargin */
    public static final String Table_Name="XX_WSEggo";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    
    public void setXX_WSName (String XX_WSName)
    {
        set_ValueNoCheck ("XX_WSName", XX_WSName);
        
    }

    public String getXX_WSName() 
    {
        return (String)get_Value("XX_WSName");
        
    }
    
    public void setXX_WSEggo_ID (int XX_WSEggo_ID)
    {
        set_ValueNoCheck ("XX_WSEggo_ID", Integer.valueOf(XX_WSEggo_ID));
        
    }
    
    public int getXX_WSEggo_ID() 
    {
        return get_ValueAsInt("XX_WSEggo_ID");
        
    }
    
    public void setXX_ReturnOK (String XX_ReturnOK)
    {
        set_Value ("XX_ReturnOK", XX_ReturnOK);
        
    }
    
    public String getXX_ReturnOK() 
    {
        return (String)get_Value("XX_ReturnOK");
        
    }
    
    public void setURLWS (String URLWS)
    {
        set_Value ("XX_URLWS", URLWS);
        
    }
    
    public String getURLWS() 
    {
        return (String)get_Value("XX_URLWS");
        
    }
    
    public void setRunsMax (int RunsMax)
    {
        set_Value ("RunsMax", Integer.valueOf(RunsMax));
        
    }
    
    public int getRunsMax() 
    {
        return get_ValueAsInt("RunsMax");
        
    }
}
