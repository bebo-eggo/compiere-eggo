package com.audaxis.compiere.eurocenter.ws;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_WSEventLog extends POExtended implements POInterface{

	public X_WSEventLog(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_WSEventLog(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -5803607548881720034L;

	public X_WSEventLog() {
		// TODO Auto-generated constructor stub
	}

	public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XX_WSEventLog");
        
    }
    ;
    
    /** TableName=Z_OrderMargin */
    public static final String Table_Name="XX_WSEventLog";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    
    public void setStatusCode (String statusCode)
    {
        set_ValueNoCheck ("StatusCode", statusCode);
        
    }

    public String getStatusCode() 
    {
        return (String)get_Value("StatusCode");
        
    }
    
    public void setRecord_ID (int Record_ID)
    {
        set_ValueNoCheck ("Record_ID", Integer.valueOf(Record_ID));
        
    }
    
    public int getRecord_ID() 
    {
        return get_ValueAsInt("Record_ID");
        
    }
    
    public void setXX_WSEggo_ID (int XX_WSEggo_ID)
    {
        set_ValueNoCheck ("XX_WSEggo_ID", Integer.valueOf(XX_WSEggo_ID));
        
    }
    
    public int getXX_WSEggo_ID() 
    {
        return get_ValueAsInt("XX_WSEggo_ID");
        
    }
    
    public void setWSBody (String WSBody)
    {
        set_Value ("XX_WSBody", WSBody);
        
    }
    
    public String getWSBody() 
    {
        return (String)get_Value("XX_WSBody");
        
    }
    
    public void setURLWS (String URLWS)
    {
        set_Value ("XX_URLWS", URLWS);
        
    }
    
    public String getURLWS() 
    {
        return (String)get_Value("XX_URLWS");
        
    }
    
    public void setTryTime (Timestamp XX_TryTime)
    {
        set_ValueNoCheck ("XX_TryTime", XX_TryTime);
        
    }
    
    public Timestamp getTryTime() 
    {
        return (Timestamp)get_Value("XX_TryTime");
        
    }
    
    public void setRunsMax (int RunsMax)
    {
        set_Value ("RunsMax", Integer.valueOf(RunsMax));
        
    }
    
    public int getRunsMax() 
    {
        return get_ValueAsInt("RunsMax");
        
    }
    
    public void setCounter (int Counter)
    {
        set_Value ("Counter", Integer.valueOf(Counter));
        
    }
    
    public int getCounter() 
    {
        return get_ValueAsInt("Counter");
        
    }
    public void setProcessed (boolean Processed)
    {
        set_ValueNoCheck ("Processed", Boolean.valueOf(Processed));
        
    }
    
    /** Get Processed.
    @return The document has been processed */
    public boolean isProcessed() 
    {
        return get_ValueAsBoolean("Processed");
        
    }

}
