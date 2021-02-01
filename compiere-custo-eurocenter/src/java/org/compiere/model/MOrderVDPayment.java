package org.compiere.model;

import java.math.BigDecimal;
import java.sql.ResultSet;

import org.compiere.common.CompiereStateException;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

public class MOrderVDPayment extends X_Z_OrderVDPayment {
	
	@Override
	protected boolean beforeDelete() {
		// TODO Auto-generated method stub
		if(getC_Payment_ID()!=0)
			throw new CompiereStateException(Msg.translate(getCtx(), "EGGO_NO_DEL_PAIMENT"));
		return super.beforeDelete();
	}

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}

	/** Parent					*/
	private MOrder			m_parent = null;


	public MOrderVDPayment(Ctx ctx, int Z_OrderVDPayment_ID, Trx trx) {
		super(ctx, Z_OrderVDPayment_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrderVDPayment(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public BigDecimal getTotalAmt() {
		// TODO Auto-generated method stub
		BigDecimal totAmt = DB.getSQLValueBD(get_Trx(), "select NVL(sum(payAmt),0) from Z_OrderVDPayment Where C_Order_ID = ? ", getC_Order_ID());
		return totAmt;
	}
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MOrder getParent()
	{
		if ((m_parent == null)
			|| (m_parent.get_Trx() != get_Trx()))
			m_parent = new MOrder(getCtx(), getC_Order_ID(), get_Trx());
		return m_parent;
	}	//	getParent


}
