package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.model.MOrder;
import org.compiere.model.X_C_Order;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

public class DocActionTmpTable extends SvrProcess {

	String p_DocAction;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if(name.equals("DocAction"))
				p_DocAction = (String)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String sql = "Select C_Order_ID from ZT_CORRECTOV where AD_Client_ID = ? and C_Order_ID = 2886625 ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_Trx());
			pstmt.setInt(1, this.getAD_Client_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				int C_Order_ID = rs.getInt(1);
				MOrder mo = new MOrder(getCtx(), C_Order_ID, get_Trx());
				//mo.setDocAction(p_DocAction==null?X_C_Order.DOCACTION_Close:p_DocAction);
				//mo.save();
				if ( ! DocumentEngine.processIt(mo, p_DocAction) )
					throw new CompiereStateException("Could not process order");
				mo.setDocStatus(X_C_Order.DOCSTATUS_Closed);
				mo.setDocAction(X_C_Order.DOCACTION_None);
				mo.save();
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, "BP - " + sql.toString(), e);
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		return null;
	}

}
