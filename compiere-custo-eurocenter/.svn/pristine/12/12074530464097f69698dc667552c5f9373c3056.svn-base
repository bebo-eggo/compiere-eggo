package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.logging.Level;

import org.compiere.model.MOrder;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;

import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;

public class PrepareOrderCA extends SvrProcessExtended {

	private Timestamp m_date_From = null;
	private Timestamp m_date_To = null;
	private int docType = 0;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("DateOrdered"))
			{
				m_date_From = ((Timestamp)element.getParameter());
				m_date_To = ((Timestamp)element.getParameter_To());
			}
			else if (name.equals("C_DoctypeTarget_ID"))
			{
				docType = element.getParameterAsInt();
			}
		}
	}

	@Override
	protected String doIt() throws Exception {

/*		
		String documentno = "GI-C-93-13-33754-001";
		String ptFrom = "BERMABRU 11232797";
		String ptTo = "BERMABRU 3170-0006";
		
		int oid = DB.getSQLValue(get_Trx(), "select c_order_id from c_order where documentno = ? ", documentno);
		int ptf = DB.getSQLValue(get_Trx(), "select m_product_id from m_product where value = ? ", ptFrom);
		int ptt = DB.getSQLValue(get_Trx(), "select m_product_id from m_product where value = ? ", ptTo);
		
		MOrder o = new MOrder(getCtx(), oid, get_Trx());
		
//		o.addPart(ptf, BigDecimal.TEN);
		
		
		o.changePart(0,ptf, ptt);
*/
		
		int no = DB.executeUpdate("delete from T_OrderVal" , get_Trx());
		
		SimpleDateFormat  simpleFormat = new SimpleDateFormat("dd/MM/yyyy");
		String df = simpleFormat.format(m_date_From);	
		String dt = simpleFormat.format(m_date_To);	
		
 
		
		String sql =
				"insert into t_orderval " +
				" select c_order_id," +
				" getamtorderto(c_order_id,trunc(to_date('" + dt + "','dd/mm/yyyy'))) - getamtorderfrom(c_order_id,trunc(to_date('" + df + "','dd/mm/yyyy'))) " +
				" from z_ordermargin  " +
				" where c_order_id in " +
				" (select distinct(om.c_order_id) " +
				" from z_ordermargin om " +
				" inner join c_order o on o.c_order_id = om.c_order_id " +
				" where trunc(om.created) >= trunc(to_date('" + df + "','dd/mm/yyyy')) " +
				"  and   trunc(om.created) <= trunc(to_date('" + dt + "','dd/mm/yyyy')) "  ;
		
				if (docType > 0 ) sql = sql + "  and   o.c_doctypetarget_id =  " + docType  ;
				
				sql = sql + "  ) ";

		
		DB.executeUpdate(sql,  get_Trx());
		return null;
	}

}
