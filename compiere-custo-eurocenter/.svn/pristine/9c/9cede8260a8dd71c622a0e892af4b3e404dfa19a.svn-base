package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MOrder;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MPosOrderLineAction extends X_I_PosOrderLineAction {
	/** Logger for class MPosOrderLineAction */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPosOrderLineAction.class);
	private MPosOrderLine			m_parent = null;

	 public static MPosOrderLineAction get(Ctx ctx, int I_PosOrderLineAction_ID,int ad_org_id, Trx trx) {
		  MPosOrderLineAction retValue = null;
		  String sql = "SELECT * FROM I_PosOrderLineAction WHERE I_PosOrderLineAction_ID=? AND ad_org_id=?";
		  PreparedStatement pstmt = null;
		  try
		  {
		   pstmt = DB.prepareStatement (sql, trx);
		   pstmt.setInt (1, I_PosOrderLineAction_ID);
		   pstmt.setInt (2, ad_org_id);
		   ResultSet rs = pstmt.executeQuery ();
		   if (rs.next ())
		   {
		    retValue = new MPosOrderLineAction (ctx, rs, trx);
		   }
		   rs.close ();
		   pstmt.close ();
		   pstmt = null;
		  }
		  catch (Exception e)
		  {
		   log.log (Level.SEVERE, sql, e);
		  }
		  try
		  {
		   if (pstmt != null)
		    pstmt.close ();
		   pstmt = null;
		  }
		  catch (Exception e)
		  {
		   pstmt = null;
		  }
		  return retValue;
		 }

	public MPosOrderLineAction(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public String getActionValue(){
		return DB.getSQLValueString(get_Trx(), "select value from Z_PosWfAction where Z_PosWfAction_ID = ? ", this.getZ_PosWfAction_ID());
	}
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MPosOrderLine getParent()
	{
		if ((m_parent == null)
			|| (m_parent.get_Trx() != get_Trx()))
			m_parent = MPosOrderLine.get(getCtx(), getI_PosOrderLine_ID(),getAD_Org_ID(),get_Trx());
		return m_parent;
	}	//	getParent

	public int getC_OrderLine_ID()
	{
		if ((m_parent == null)
			|| (m_parent.get_Trx() != get_Trx()))
			m_parent = MPosOrderLine.get(getCtx(), getI_PosOrderLine_ID(),getAD_Org_ID(),get_Trx());
		return m_parent.getC_OrderLine_ID();
	}	//	getParent

}
