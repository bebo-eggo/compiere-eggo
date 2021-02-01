package com.audaxis.compiere.report;

import java.io.File;

import org.compiere.model.MPInstance;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.ProcessInfoUtil;
import org.compiere.util.Ctx;
import org.compiere.util.DB;

import ru.compiere.report.RusReportStarter;

import com.audaxis.compiere.util.ProcessUtils;

public class BalanceV2Report extends RusReportStarter implements ReportServer{

	protected boolean p_OrderByType;
	
	protected void prepare(ProcessInfo pi) {
		prepare(pi.getParameter());
	}
	//Evolution #28279   Jasper - Balance Générale version 2
	protected void prepare() {
		prepare(getParameter());
	}

	private void prepare(ProcessInfoParameter[] para)
	{
		if (para == null)
			return;
		
		for (ProcessInfoParameter element : para) {
			if ("OrderByType".equalsIgnoreCase(element.getParameterName()))
				p_OrderByType ="Y".equalsIgnoreCase((String)element.getParameter());
		}
	}

	@Override
	public String doIt() throws Exception {
		startReport(getCtx(), getProcessInfo(), false);
		return null;
	}

	public File startReport(Ctx ctx, ProcessInfo pi, boolean IsDirectPrint) {
		ProcessInfoUtil.setParameterFromDB(pi);
		prepare(pi);
		
		int process_id=DB.getSQLValue(get_Trx(), "select ad_process_id from ad_process where value='"+((p_OrderByType)?"Y_BalanceByType":"Y_Balance")+"'");
		MPInstance pinstance = new MPInstance(ctx, process_id, 0);
		pinstance.save();
		int i=1;

		if(pi.getParameter() != null){
			for(ProcessInfoParameter pr : pi.getParameter()){
				ProcessUtils.setParameterInstance(pinstance.getAD_PInstance_ID(), i*10, pr);
				i++;
			}
		}
		ProcessInfo piNew=new ProcessInfo("GeneralBalance", process_id);
		piNew.setAD_PInstance_ID(pinstance.getAD_PInstance_ID());
		return super.startReport(ctx, piNew, IsDirectPrint);
	}
}
