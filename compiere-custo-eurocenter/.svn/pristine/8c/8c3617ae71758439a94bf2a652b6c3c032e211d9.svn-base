package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;

public class MPosOrderPayment extends X_I_PosOrderPayment {
	/** Logger for class MPosOrderPayment */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPosOrderPayment.class);

    public static MPosOrderPayment get(Ctx ctx, int I_PosOrderPayment_ID,int ad_org_id, Trx trx) {
    	  MPosOrderPayment retValue = null;
    	  String sql = "SELECT * FROM I_PosOrderPayment WHERE I_PosOrderPayment_ID=? AND ad_org_id=?";
    	  PreparedStatement pstmt = null;
    	  ResultSet rs =null;
    	  try
    	  {
    	   pstmt = DB.prepareStatement (sql, trx);
    	   pstmt.setInt (1, I_PosOrderPayment_ID);
    	   pstmt.setInt (2, ad_org_id);
    	   rs = pstmt.executeQuery ();
    	   if (rs.next ())
    	   {
    	    retValue = new MPosOrderPayment (ctx, rs, trx);
    	   }
    	  }
    	  catch (Exception e)
    	  {
    	   log.log (Level.SEVERE, sql, e);
    	  }finally{
  			Util.closeCursor(pstmt, rs);
  		}
    	  return retValue;
    	 }

	public MPosOrderPayment(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

}
