package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;

import org.compiere.model.MOrder;
import org.compiere.util.DB;

import com.audaxis.compiere.process.SvrProcessExtended;

public class TestchangePart extends SvrProcessExtended {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub

	}

	@Override
	protected String doIt() throws Exception {

		String documentno = "GI-C-93-13-33754-001";
		String ptFrom = "BERMABRU 11232797";
		String ptTo = "BERMABRU 3170-0006";
		
		int oid = DB.getSQLValue(get_Trx(), "select c_order_id from c_order where documentno = ? ", documentno);
		int ptf = DB.getSQLValue(get_Trx(), "select m_product_id from m_product where value = ? ", ptFrom);
		int ptt = DB.getSQLValue(get_Trx(), "select m_product_id from m_product where value = ? ", ptTo);
		
		MOrder o = new MOrder(getCtx(), oid, get_Trx());
		
//		o.addPart(ptf, BigDecimal.TEN);
		
		
		o.changePart(0,ptf, ptt);
		
		
		
		
		
		return null;
	}

}
