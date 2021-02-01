package com.audaxis.compiere.eurocenter.ws;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MOrder;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.db.Util;

public class CronWSLog extends SvrProcess {

	private int client_ID;
	public CronWSLog() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("AD_Client_ID"))
				client_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String sql = "Select * from XX_WSEventLog where processed = 'N' and AD_Client_ID = ? and RUNSMAX > COUNTER order by XX_WSEventLog_ID ASC ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<MWSEventLog> wses = new ArrayList<MWSEventLog>();
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, client_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MWSEventLog wse = new MWSEventLog(getCtx(), rs, get_Trx());
				wses.add(wse);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
			throw e;
		} finally {
			Util.closeCursor(pstmt, rs);
		}
		
		int m_Process_ID = DB.getSQLValue(get_Trx(), "select max(ad_process_id) from ad_process where classname like '%ProcessWS' "); 
		for (int i = 0; i < wses.size(); i++) {
			
			MProcess process = new MProcess(getCtx(), m_Process_ID, get_Trx());
			MPInstance instance = new MPInstance(getCtx(), m_Process_ID, -1);
			instance.setRecord_ID(wses.get(i).get_ID());
			if (!instance.save()) {
				addLog("Process No Instance");
				return Msg.getMsg(getCtx(), "ProcessFailed");
			}
			ProcessInfo processInfo = new ProcessInfo("Process WS",
					m_Process_ID);
			processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
			processInfo.setRecord_ID(wses.get(i).get_ID());
			List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
			ProcessInfoParameter pip1 = new ProcessInfoParameter("Forcer", "N",
					null, null, null);
			pipList.add(pip1);
			ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList
                .toArray(new ProcessInfoParameter[pipList.size()]);
			processInfo.setParameter(parameters);
			
			process.processIt(processInfo, get_Trx());
			if (processInfo.isError()) {
				addLog(processInfo.getSummary());
				get_Trx().rollback();
				return Msg.getMsg(getCtx(), "ProcessFailed");
			}
		}
		
		return wses.size()+" ws envoyés !";
	}

}
