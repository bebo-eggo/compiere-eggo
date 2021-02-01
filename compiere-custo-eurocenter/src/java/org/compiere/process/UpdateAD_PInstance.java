package org.compiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.util.DB;

public class UpdateAD_PInstance extends SvrProcess {

	private int AD_PInstance_ID;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_PInstance_ID"))
				AD_PInstance_ID = element.getParameterAsInt();
			else 
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		if(AD_PInstance_ID>0)
			return "Nb AD_PInstance modifiés : "+DB.executeUpdate("UPDATE AD_PInstance set ISPROCESSING = 'N' where AD_PINSTANCE_ID = ? and ISPROCESSING = 'Y'",AD_PInstance_ID, get_Trx());
		else
			return "Nb AD_PInstance modifiés : "+DB.executeUpdate("UPDATE AD_PInstance set ISPROCESSING = 'N' where trunc(updated) = trunc(sysdate-1) and ISPROCESSING = 'Y'", get_Trx());
	}

}
