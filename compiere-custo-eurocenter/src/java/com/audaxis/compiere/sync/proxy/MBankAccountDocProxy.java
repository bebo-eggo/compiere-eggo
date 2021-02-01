package com.audaxis.compiere.sync.proxy;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.BasicProxy;
import com.audaxis.compiere.model.MBankAccountDoc;

public class MBankAccountDocProxy extends BasicProxy<MBankAccountDoc> {

	public MBankAccountDocProxy(MBankAccountDoc po) {
		super(po);
	}
	
    public void setC_BankAccount_To_ID (int C_BankAccount_To_ID ) {
        getPO().set_Value ("C_BankAccount_To_ID ", Integer.valueOf(C_BankAccount_To_ID ));
        
    }
    
    public int getC_BankAccount_To_ID () {
        return getPO().get_ValueAsInt("C_BankAccount_To_ID ");
    }
    

    
    public void setIsBankTftDetail (boolean IsBankTftDetail)
    {
    	getPO().set_Value ("XX_BankTftDetail", Boolean.valueOf(IsBankTftDetail));
        
    }
    
    /** Get Paid.
    @return The document is paid */
    public boolean isBankTftDetail() 
    {
        return getPO().get_ValueAsBoolean("XX_BankTftDetail");
        
    }
    
    public static synchronized MBankAccountDoc getFromSub(Ctx ctx,
            int bankAccount,  int zsub, Trx trxName) throws SQLException
        {
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            
            try
            {
            	ps = DB.prepareStatement("SELECT * FROM C_BankAccountDoc d where d.C_BankAccount_ID=? and d.ZSubPaymentRule_ID=?",
                        null);

                ps.setInt(1, bankAccount);
                ps.setInt(2, zsub);

                rs = ps.executeQuery();

                if (rs.next())
                {
                    MBankAccountDoc out = new MBankAccountDoc(ctx, rs, trxName);
                    ps.close();
                    rs.close();

                    return out;
                }

            }
            catch (SQLException e)
            {
                throw e;
            } finally {
            	Util.closeCursor(ps, rs);
            }

            return null;
        }

}
