package com.audaxis.compiere.eurocenter.process;

import org.compiere.framework.PrintInfo;
import org.compiere.model.X_C_Invoice;
import org.compiere.print.ReportEngine;
import org.compiere.process.SvrProcess;


public class SavPrintChangeStatus extends SvrProcess {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected String doIt() throws Exception {
		//	Engine
//		PrintInfo info = new PrintInfo(
//			DocumentNo,
//			X_C_Invoice.Table_ID,
//			C_Invoice_ID,
//			C_BPartner_ID);
//		info.setCopies(copies);
//		ReportEngine re = new ReportEngine(getCtx(), format, query, info);
		return null;
	}

}
