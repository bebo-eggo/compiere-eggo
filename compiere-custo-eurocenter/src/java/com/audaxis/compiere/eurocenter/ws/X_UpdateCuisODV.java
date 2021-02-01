package com.audaxis.compiere.eurocenter.ws;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_UpdateCuisODV  extends POExtended implements POInterface{

	private String documentNo = null;
	private String poreference = null;
	private String mag_id = null;
	
	public X_UpdateCuisODV(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_UpdateCuisODV(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -5803607548881725434L;

	public X_UpdateCuisODV() {
		// TODO Auto-generated constructor stub
	}

	public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XT_Update_Cuis_ODV");
        
    }
    ;
    
    public static final String Table_Name="XT_Update_Cuis_ODV";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
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
    
    public void setTryTime (Timestamp XX_TryTime)
    {
        set_ValueNoCheck ("XX_TryTime", XX_TryTime);
        
    }
    
    public Timestamp getTryTime() 
    {
        return (Timestamp)get_Value("XX_TryTime");
        
    }
    
    public void setStatusCode (String statusCode)
    {
        set_ValueNoCheck ("StatusCode", statusCode);
        
    }

    public String getStatusCode() 
    {
        return (String)get_Value("StatusCode");
        
    }
    
    public void setC_Order_ID (int C_Order_ID)
    {
        set_ValueNoCheck ("C_Order_ID", Integer.valueOf(C_Order_ID));
        
    }
    
    public int getC_Order_ID() 
    {
        return get_ValueAsInt("C_Order_ID");
        
    }
    
    public void setC_OrderLine_ID (int C_OrderLine_ID)
    {
        set_ValueNoCheck ("C_OrderLine_ID", Integer.valueOf(C_OrderLine_ID));
        
    }
    
    public int getC_OrderLine_ID() 
    {
        return get_ValueAsInt("C_OrderLine_ID");
        
    }
    
    public void setXT_Update_Cuis_ODV_ID (int XT_Update_Cuis_ODV_ID)
    {
        set_ValueNoCheck ("XT_UPDATE_CUIS_ODV_ID", Integer.valueOf(XT_Update_Cuis_ODV_ID));
        
    }
    
    public int getXT_Update_Cuis_ODV_ID() 
    {
        return get_ValueAsInt("XT_UPDATE_CUIS_ODV_ID");
        
    }
    
    public void setDocumentNo (String DocumentNo)
    {
    	this.documentNo = DocumentNo;
        
    }

    public String getDocumentNo() 
    {
        return this.documentNo;
        
    }
    
    public void setPOReference (String POReference)
    {
    	this.poreference = POReference;
        
    }

    public String getPOReference() 
    {
        return this.poreference;
        
    }
    
    public String getMag_id() 
    {
        return this.mag_id;
        
    }
    
    public void setMag_id (String mag_id)
    {
    	this.mag_id = mag_id;
        
    }
    
}
