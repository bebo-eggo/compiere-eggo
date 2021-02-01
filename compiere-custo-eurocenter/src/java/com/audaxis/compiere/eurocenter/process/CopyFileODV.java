package com.audaxis.compiere.eurocenter.process;

import java.sql.Timestamp;
import java.util.GregorianCalendar;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.model.MOrderDownload;

public class CopyFileODV extends SvrProcess {

	private int Order_ID = 0;
	private int OrderDownload_ID = 0;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("C_OrderDownload_ID"))
				OrderDownload_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		Order_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		MOrder mo = new MOrder(getCtx(), Order_ID, get_Trx());
		MOrderDownload mod = new MOrderDownload(getCtx(), OrderDownload_ID, get_Trx());
		MOrderDownload newMod = new MOrderDownload(getCtx(), 0, get_Trx());
		newMod.set_Value("Description", mod.getDescription());
		newMod.set_Value("DateCreated", new GregorianCalendar());
		newMod.setC_Order_ID(Order_ID);
		newMod.setZ_FileType(mod.getZ_FileType());
		newMod.setName(mod.getName());
		newMod.setDownloadURL(mod.getDownloadURL());
		newMod.setAD_Org_ID(mo.getAD_Org_ID());
		if(newMod.save())
		{
			return "Copie/Copy OK"; 
		}else
			return "Copie/Copy KO"; 
		
	}

}
