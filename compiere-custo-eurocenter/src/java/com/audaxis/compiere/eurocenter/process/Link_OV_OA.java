package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.util.CompiereException;

public class Link_OV_OA extends SvrProcess {

	private int p_Z_OrderLine_ID = 0;
	private int record_ID = 0;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("Z_OrderLine_ID"))
				p_Z_OrderLine_ID = ((BigDecimal) element.getParameter())
						.intValue();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		//Vérifier que la ligne n'est pas lié OV_LINKED_W_OV
		record_ID = getRecord_ID();
		int Ref_OrderLine_ID = DB.getSQLValue(get_Trx(), "Select MAX(NVL(REF_OrderLine_ID,0)) FROM C_ORDERLINE where C_ORDERLINE_ID = ? ", record_ID);
		if(Ref_OrderLine_ID>0)
		{
			String ref = DB.getSQLValueString(get_Trx(), "Select co.DOCUMENTNO ||' - '||C_ORderLine.Line  from C_ORderLine inner join C_ORDER co on co.C_ORDER_ID = C_ORderLine.C_ORDER_ID where C_ORDERLINE_ID =  = ? ", Ref_OrderLine_ID);
			String OV_LINKED_W_OV = Msg.getMsg(getCtx(), "OV_LINKED_W_OV");
			OV_LINKED_W_OV = OV_LINKED_W_OV.replace("$OVINFO$", ref);
			throw new CompiereException(OV_LINKED_W_OV);
		}
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		Object[] params = {p_Z_OrderLine_ID,getAD_User_ID(),record_ID};
		int no = DB.executeUpdate("UPDATE C_OrderLine set REF_ORDERLINE_ID = ?, updated = sysdate, updatedBy = ? where C_OrderLine_ID = ? ", params, get_Trx());
		ArrayList<String> retList = new ArrayList<String>();
		String retMSG = Msg.getMsg(getCtx(),
				"LINK_OV_OA_INFO");
		StringTokenizer st=new StringTokenizer(retMSG,";");
		while ( st.hasMoreTokens() ) {
			retList.add(st.nextToken().toString());
		}
		String ret = "";
		if(no>0)
			ret = retList.get(0);
		else
			ret = retList.get(1);
		return ret;
	}

}
