package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.model.X_C_DocTypeInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MDocTypeInfo extends X_C_DocTypeInfo {

	public MDocTypeInfo(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public MDocTypeInfo(Ctx ctx, int C_DocTypeInfo_ID, Trx trx) {
		super(ctx, C_DocTypeInfo_ID, trx);
		// TODO Auto-generated constructor stub
	}

	/** Logger for class MOrgInfo */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MOrgInfo.class);
    
	/** Static Logger					*/
	private static CLogger		s_log = CLogger.getCLogger (MDocType.class);
	
	/**
	 * 	Load Constructor
	 *	@param ctx context
	 *	@param AD_Org_ID id
	 *	@param p_trx transaction
	 *	@return Org Info
	 */
	public static MDocTypeInfo get (Ctx ctx, int C_DocType_ID, Trx p_trx)
	{
		MDocTypeInfo retValue = null;
		String sql = "SELECT * FROM C_DocTypeInfo WHERE C_DocType_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, p_trx);
			pstmt.setInt(1, C_DocType_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
				retValue = new MDocTypeInfo (ctx, rs, null);
		}
		catch (Exception e) {
			s_log.log(Level.SEVERE, sql, e);
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}

		return retValue;
	}	//	get	
	
	/** Z_CompletOA
    @param IZ_CompletOA */
    public void setZ_CompletOA(boolean Z_CompletOA)
    {
        set_Value ("Z_CompletOA", Boolean.valueOf(Z_CompletOA));
        
    }
    
    /** Get RZ_CompletOA
    @return Z_CompletOA */
    public boolean isZ_CompletOA() 
    {
        return get_ValueAsBoolean("Z_CompletOA");
        
    }
    
    /** isOADA
    @param isOADA */
    public void setIsOADA(boolean IsOADA)
    {
        set_Value ("XX_IsOADA", Boolean.valueOf(IsOADA));
        
    }
    
    /** Get isOADA
    @return isOADA */
    public boolean isOADA() 
    {
        return get_ValueAsBoolean("XX_IsOADA");
        
    }
    
    /** Set XX_DocType_DA_ID.
    @param XX_DocType_DA_ID */
    public void setXX_DocType_DA_ID (int setXX_DocType_DA_ID)
    {
        if (setXX_DocType_DA_ID <= 0) set_Value ("XX_DocType_DA_ID", null);
        else
        set_Value ("XX_DocType_DA_ID", Integer.valueOf(setXX_DocType_DA_ID));
        
    }
    
    /** Get XX_DocType_DA_ID.
    @return XX_DocType_DA_ID */
    public int getXX_DocType_DA_ID() 
    {
        return get_ValueAsInt("XX_DocType_DA_ID");
        
    }
    
	public static int getDocTypeDevisByStore(Ctx ctx, int DoctypeStore_ID, Trx trx)
	{
		return DB.getSQLValue(trx, "Select C_DOCTYPE_ID from C_DOCTYPEINFO where C_DOCTYPE_STORE_ID = ? and ISDEVIS = 'Y' ", DoctypeStore_ID);
	}
	
	public void setIsEventLog(boolean isEventLog)
    {
        set_Value ("isEventLog", Boolean.valueOf(isEventLog));
        
    }
    
    /** Get isOADA
    @return isOADA */
    public boolean isEventLog() 
    {
        return get_ValueAsBoolean("isEventLog");
        
    }
    
    public void setXX_ChargeTNP_ID (int XX_ChargeTNP_ID)
    {
        set_Value ("XX_ChargeTNP_ID", Integer.valueOf(XX_ChargeTNP_ID));
        
    }
    
    public int getXX_ChargeTNP_ID() 
    {
        return get_ValueAsInt("XX_ChargeTNP_ID");
        
    }
    
    public void setXX_DocTypeTNP_ID (int XX_DocTypeTNP_ID)
    {
        set_Value ("XX_DocTypeTNP_ID", Integer.valueOf(XX_DocTypeTNP_ID));
        
    }
    
    public int getXX_DocTypeTNP_ID() 
    {
        return get_ValueAsInt("XX_DocTypeTNP_ID");
        
    }
    
    public void setIsTNPAuto(boolean XX_IsTNPAuto)
    {
        set_Value ("XX_IsTNPAuto", Boolean.valueOf(XX_IsTNPAuto));
        
    }
    
    public boolean IsTNPAuto() 
    {
        return get_ValueAsBoolean("XX_IsTNPAuto");
        
    }
    
    public void setIsProcure(boolean IsProcure)
    {
        set_Value ("IsProcure", Boolean.valueOf(IsProcure));
        
    }
    
    public boolean isProcure() 
    {
        return get_ValueAsBoolean("IsProcure");
        
    }
    
    public void setM_Product_ID (int M_Product_ID)
    {
        if (M_Product_ID <= 0) set_Value ("M_Product_ID", null);
        else
        set_Value ("M_Product_ID", Integer.valueOf(M_Product_ID));
        
    }
    
    public int getM_Product_ID() 
    {
        return get_ValueAsInt("M_Product_ID");
        
    }
    
    public void setDocStatus (String newStatus) {
    	set_Value("DocStatus", newStatus);
	}
	public String getDocStatus() {
		return (String)get_Value("DocStatus");
	}
	
	public void setIsOAFileMandatory(boolean IsOAFileMandatory)
    {
        set_Value ("IsOAFileMandatory", Boolean.valueOf(IsOAFileMandatory));
        
    }
    
    public boolean IsOAFileMandatory() 
    {
        return get_ValueAsBoolean("IsOAFileMandatory");
        
    }
    
    public void setBPartnerSN_ID (int BPartnerSN_ID)
    {
        if (BPartnerSN_ID <= 0) set_Value ("BPartnerSN_ID", null);
        else
        set_Value ("BPartnerSN_ID", Integer.valueOf(BPartnerSN_ID));
        
    }
    
    public int getBPartnerSN_ID() 
    {
        return get_ValueAsInt("BPartnerSN_ID");
        
    }
    
    public void setUserSN_ID (int UserSN_ID)
    {
        if (UserSN_ID <= 0) set_Value ("UserSN_ID", null);
        else
        set_Value ("UserSN_ID", Integer.valueOf(UserSN_ID));
        
    }
    
    public int getUserSN_ID() 
    {
        return get_ValueAsInt("UserSN_ID");
        
    }
    
    public void setIs_StoreSN(boolean Is_StoreSN)
    {
        set_Value ("Is_StoreSN", Boolean.valueOf(Is_StoreSN));
        
    }
    
    public boolean Is_StoreSN() 
    {
        return get_ValueAsBoolean("Is_StoreSN");
        
    }
}
