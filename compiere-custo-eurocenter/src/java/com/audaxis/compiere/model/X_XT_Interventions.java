package com.audaxis.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_XT_Interventions extends POExtended implements POInterface{

	public X_XT_Interventions(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public X_XT_Interventions(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("XT_Interventions");
        
    }
    ;
    
    /** TableName=Z_OrderStep */
    public static final String Table_Name="XT_Interventions";
    
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
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setDescription (String Description)
    {
        set_Value ("Description", Description);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getDescription() 
    {
        return (String)get_Value("Description");
        
    }
    
    /** Set Date From.
    @param DateFrom Starting date for a range */
    public void setDateFrom (Timestamp DateFrom)
    {
        if (DateFrom == null) throw new IllegalArgumentException ("DateFrom is mandatory.");
        set_Value ("DateFrom", DateFrom);
        
    }
    
    /** Get Date From.
    @return Starting date for a range */
    public Timestamp getDateFrom() 
    {
        return (Timestamp)get_Value("DateFrom");
        
    }
    
    /** Set Date To.
    @param DateTo End date of a date range */
    public void setDateTo (Timestamp DateTo)
    {
        if (DateTo == null) throw new IllegalArgumentException ("DateTo is mandatory.");
        set_Value ("DateTo", DateTo);
        
    }
    
    /** Get Date To.
    @return End date of a date range */
    public Timestamp getDateTo() 
    {
        return (Timestamp)get_Value("DateTo");
        
    }
    
    /** Set Task Type.
    @param TaskType Type of Project Task */
    public void setTaskType (String TaskType)
    {
        set_Value ("TaskType", TaskType);
        
    }
    
    /** Get Task Type.
    @return Type of Project Task */
    public String getTaskType() 
    {
        return (String)get_Value("TaskType");
        
    }
    
    /** Set Vendor.
    @param Vendor_ID The Vendor of the product/service */
    public void setVendor_ID (int Vendor_ID)
    {
        if (Vendor_ID < 1) throw new IllegalArgumentException ("Vendor_ID is mandatory.");
        set_Value ("Vendor_ID", Integer.valueOf(Vendor_ID));
        
    }
    
    /** Get Vendor.
    @return The Vendor of the product/service */
    public int getVendor_ID() 
    {
        return get_ValueAsInt("Vendor_ID");
        
    }
    
    public void setZ_Interventions_ID (int Z_Interventions_ID)
    {
        if (Z_Interventions_ID < 1) throw new IllegalArgumentException ("Z_Interventions_ID is mandatory.");
        set_ValueNoCheck ("Z_Interventions_ID", Integer.valueOf(Z_Interventions_ID));
        
    }
    
    public int getZ_Interventions_ID() 
    {
        return get_ValueAsInt("Z_Interventions_ID");
        
    }
    
    public void setIsXX_AM (boolean XX_AM)
    {
        set_Value ("XX_AM", Boolean.valueOf(XX_AM));
        
    }
    
    public boolean isXX_AM() 
    {
        return get_ValueAsBoolean("XX_AM");
        
    }
    
    public void setIsXX_PM (boolean XX_PM)
    {
        set_Value ("XX_PM", Boolean.valueOf(XX_PM));
        
    }
    
    public boolean isXX_PM() 
    {
        return get_ValueAsBoolean("XX_PM");
        
    }
    
    public void setIsXX_IsSecVendor (boolean XX_IsSecVendor)
    {
        set_Value ("XX_IsSecVendor", Boolean.valueOf(XX_IsSecVendor));
        
    }
    
    public boolean isXX_IsSecVendor() 
    {
        return get_ValueAsBoolean("XX_IsSecVendor");
        
    }
    
    public void setXX_Ressource (String XX_Ressource)
    {
        set_Value ("XX_Ressource", XX_Ressource);
        
    }
    
    public String getXX_Ressource() 
    {
        return (String)get_Value("XX_Ressource");
        
    }
    
    public void setXX_Hours (java.math.BigDecimal XX_Hours)
    {
        set_Value ("XX_Hours", XX_Hours);
        
    }
    
    public java.math.BigDecimal getXX_Hours() 
    {
        return get_ValueAsBigDecimal("XX_Hours");
        
    }
}
