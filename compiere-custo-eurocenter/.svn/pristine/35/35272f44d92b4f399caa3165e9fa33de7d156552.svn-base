package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.compiere.model.MOrderLine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MOrderLinePosAction extends X_Z_OrderLinePosAction {
	private MOrderLine			m_parent = null;

	public MOrderLinePosAction(Ctx ctx, int Z_OrderLinePosAction_ID, Trx trx) {
		super(ctx, Z_OrderLinePosAction_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrderLinePosAction(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MOrderLine getParent()
	{
		if ((m_parent == null)
			|| (m_parent.get_Trx() != get_Trx()))
			m_parent = new MOrderLine(getCtx(), getC_OrderLine_ID(), get_Trx());
		return m_parent;
	}	//	getParent

	public static MOrderLinePosAction getOrderLinePosAction (Ctx ctx, int C_ORDERLINE_ID, int Z_POSWFACTION_ID,Trx trx)
	{
		MOrderLinePosAction ret = null;
		int ID = DB.getSQLValue(trx, "Select Z_ORDERLINEPOSACTION_ID from Z_ORDERLINEPOSACTION where C_OrderLine_ID = ? and Z_POSWFACTION_ID = ?", C_ORDERLINE_ID, Z_POSWFACTION_ID);
		if (ID>0)
			ret = new MOrderLinePosAction(ctx, ID, trx);
		return ret;
	}

}
