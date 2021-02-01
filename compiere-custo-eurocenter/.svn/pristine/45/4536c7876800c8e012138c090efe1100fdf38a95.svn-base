package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.model.X_Ref__Document_Status;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_Z_P_REF_TRFT extends POExtended implements POInterface {

	/** Standard Constructor
    @param ctx context
    @param Z_P_REF_TRFT_ID id
    @param trx transaction
    */
    public X_Z_P_REF_TRFT (Ctx ctx, int Z_P_REF_TRFT_ID, Trx trx)
    {
        super (ctx, Z_P_REF_TRFT_ID, trx);
        
    }
    /** Load Constructor 
    @param ctx context
    @param rs result set 
    @param trx transaction
    */
    public X_Z_P_REF_TRFT (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
    /** Serial Version No */
    private static final long serialVersionUID = 27638635813789L;
    /** Last Updated Timestamp 2012-12-26 09:28:17.0 */
    public static final long updatedMS = 1356510497000L;
    /** AD_Table_ID=1001794 */
    public static final int Table_ID;
    
    static
    {
        Table_ID = get_Table_ID("Z_P_REF_TRFT");
        
    }
    ;
    
    /** TableName=Z_P_REF_TRFT */
    public static final String Table_Name="Z_P_REF_TRFT";
    
    /**
     *  Get AD Table ID.
     *  @return AD_Table_ID
     */
    @Override public int get_Table_ID()
    {
        return Table_ID;
        
    }
    
    /** Set Z_P_REF_TRFT.
    @param Z_P_REF_TRFT_ID Z_P_REF_TRFT */
    public void setZ_TypeEcheance_ID (int Z_P_REF_TRFT_ID)
    {
        if (Z_P_REF_TRFT_ID < 1) throw new IllegalArgumentException ("Z_P_REF_TRFT_ID is mandatory.");
        set_ValueNoCheck ("Z_P_REF_TRFT_ID", Integer.valueOf(Z_P_REF_TRFT_ID));
        
    }
    
    /** Get Z_P_REF_TRFT.
    @return Z_P_REF_TRFT */
    public int getZ_P_REF_TRFT_ID() 
    {
        return get_ValueAsInt("Z_P_REF_TRFT_ID");
        
    }
    
    /** Set IsAbleToCancel.
    @param IsAbleToCancel IsAbleToCancel */
    public void setIsAbleToCancel (boolean IsAbleToCancel)
    {
        set_Value ("IsAbleToCancel", Boolean.valueOf(IsAbleToCancel));
        
    }
    
    /** Get IsAbleToCancel.
    @return IsAbleToCancel */
    public boolean IsAbleToCancel() 
    {
        return get_ValueAsBoolean("IsAbleToCancel");
        
    }
    
    /** Set IsInTransit.
    @param IsAbleToCancel IsInTransit */
    public void setIsInTransit (boolean IsInTransit)
    {
        set_Value ("IsInTransit", Boolean.valueOf(IsInTransit));
        
    }
    
    /** Get IsInTransit.
    @return IsInTransit */
    public boolean IsInTransit() 
    {
        return get_ValueAsBoolean("IsInTransit");
        
    }
    
    /** Set Document Type.
    @param C_DocType_ID Document type or rules */
    public void setC_DocType_ID (int C_DocType_ID)
    {
        if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
        set_ValueNoCheck ("C_DocType_ID", Integer.valueOf(C_DocType_ID));
        
    }
    
    /** Get Document Type.
    @return Document type or rules */
    public int getC_DocType_ID() 
    {
        return get_ValueAsInt("C_DocType_ID");
        
    }
    
    /** Set Document Status.
    @param DocStatus The current status of the document */
    public void setDocStatus (String DocStatus)
    {
        if (DocStatus == null) throw new IllegalArgumentException ("DocStatus is mandatory");
        if (!X_Ref__Document_Status.isValid(DocStatus));
        
        set_Value ("DocStatus", DocStatus);
        
    }
    
    /** Get Document Status.
    @return The current status of the document */
    public String getDocStatus() 
    {
        return (String)get_Value("DocStatus");
        
    }
}
