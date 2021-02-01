package com.audaxis.compiere.pos.process;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MMessage;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;


import org.jfree.util.Log;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MPosWfActivity;
import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;


/**
 * processus d'import POS
 * 
 * @author jbr
 * 
 */
public class TransactionMessageLauncher extends SvrProcessExtended{

	private int nbrErr = 0;
	private int nbrOk = 0;
	private boolean p_ResetError;
	private boolean p_StopRunningProcess;
	private int AD_Client_ID = 0;


	@Override
	protected void prepare() {
		//PosCtx.CLIENTCHECK = " and ad_client_id = " + MClientProxy.getClientCheck(getAD_Client_ID());//MERGE
		//PosCtx.ad_client_id = getCtx().getAD_Client_ID();
		
		// Check Process Running
		int processID = getProcessInfo().getAD_Process_ID();
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("ResetError")){
				p_ResetError = "Y".equals(para[i].getParameter());
			}
			else if (name.equals("StopProcess")){
				p_StopRunningProcess = "Y".equals(para[i].getParameter());
			}
			else if(name.equals("AD_Client_ID"))
				AD_Client_ID   = getParameterAsInt("AD_Client_ID");
			else
				log.severe("prepare - Unknown Parameter: " + name);
		}
		
		if (!p_StopRunningProcess) {
			int no = DB.getSQLValue(get_Trx(), "select count(*) from AD_PINSTANCE where ISPROCESSING = 'Y' and AD_Process_ID = ? " , processID );
			if (no > 1 )
				throw new CompiereException("Process Already Running ! " );
		}else{
			int imsg = DB.getSQLValue(get_Trx(), "Select count(*) from ad_message where value = 'StopTransactionMessage'");
			if (imsg < 1 ) {
				MMessage msg = new MMessage(getCtx(), 0, get_Trx());
				msg.setClientOrg(getCtx().getAD_Client_ID(), getCtx().getAD_Org_ID());
				msg.setValue("StopTransactionMessage");
				msg.setMsgText("YES");
				msg.save(get_Trx());
			} else {
				int no = DB.executeUpdate("update ad_message set msgtext = 'YES' where value = 'StopTransactionMessage' ", get_Trx());
			}	
		}
		if (MPosWfActivity.getREJECTED_ACTION_ACTIVITY_ID() < 1) throw new CompiereException("Message POS_ACTIVITY_ACTION_CANCEL_VALUE non défini ");  
	}

	@Override
	protected String doIt() throws Exception {
		
		if (!p_StopRunningProcess)
		{
			if (p_ResetError)	resetError(AD_Client_ID);  // Reset Err
			validMessageReceivedByOtheWH(AD_Client_ID);    // Valid Message Received By Other WH
			loadMessages(AD_Client_ID);  // Process 
			log.warning("TransctionMessage process terminated, Processed : " + nbrOk + " Error : " + nbrErr);
			return "TransctionMessage process terminated, Processed : " + nbrOk + " Error : " + nbrErr;
		}
		else{
			log.warning("TransactionMessage Stop Process Asked");
			return "TransactionMessage Stop Process Asked";
		}
	}

	

	/**
	 * Reset Error If Flagged
	 */
	private void resetError(int AD_Client_ID)
	{
		String sql0 = "UPDATE Z_TransactionMsg SET IsProcessed='N', ErrorMsg= '' WHERE isActive = 'Y' and IsProcessed = 'E' and AD_Client_ID = ? ";
		int no = DB.executeUpdate(sql0.toString(),AD_Client_ID,get_Trx());
		get_Trx().commit();
	}//	process
	
	/**
	 * Reset StopProcess if Stop is Activated
	 */
	private void resetStopProcess()
	{
		int no = DB.executeUpdate("update ad_message set msgtext = 'NO' where value = 'StopTransactionMessage'",  get_Trx());
	}//	process


	private void validMessageReceivedByOtheWH(int AD_Client_ID)
	{
		TransactionMessageProcessor ut = new TransactionMessageProcessor();
		String sql = 
		"select tr.Z_TransactionMsg_ID , tr.ad_org_id, tr.ad_orgtrx_id, tr.ad_orgto_id " +
		"   from Z_TransactionMsg tr " +
		"   inner join Z_POSWFACTIVITY act on (act.z_poswfactivity_id = tr.z_poswfactivity_id) " +
		"   inner join Z_TransactionMsg msgInit on (msgInit.Z_TransactionMsg_ID = tr.InitialMsgID) " +
		"      WHERE tr.isActive = 'Y'  and ( tr.isValidatedrequest = 'Y' or  tr.isCancelRequest = 'Y' ) " +
		"      and tr.AD_Client_ID = ? " +
		"   and act.Z_PosWfActivity_ID = ?  " +
		"	and msgInit.Z_PosWfActivity_ID <> ?" +
		"      order by tr.Z_PosWfActivity_id " ;
		
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), null);
			pst.setInt(1, AD_Client_ID);
			pst.setInt(2, MPosWfActivity.getCONFIRM_FORM_OTHER_WH_ACTIVITY());
			pst.setInt(3, MPosWfActivity.getCOMPLETED_ACTIVITY());
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				try
				{
					//  DO LOAD TICKET
					if (ut.ProcessConfirmMsgFromOtherWH(getCtx(), rs.getInt(1),get_Trx())){ 
						nbrOk++;
						get_Trx().commit();
					}
					else { 
						nbrErr++;
						get_Trx().rollback();
					}
				}catch (Exception e){
					log.log(Level.SEVERE, e.getMessage());
						get_Trx().rollback();
						Object[] params = {"E",e.getMessage(),rs.getInt(1)};
						int no = DB.executeUpdate("update Z_TransactionMsg set IsProcessed = ?, ErrorMsg = ? WHERE Z_TransactionMsg_ID = ? ", params, get_Trx());
						get_Trx().commit();
				}				
				finally{
				}
			}

		}catch (Exception e){
			log.log(Level.SEVERE, e.getMessage());
			throw new CompiereException(e.getMessage());
		}				
			finally{
			Util.closeCursor(pst, rs);
			}
	}

	private void loadMessages(int AD_Client_ID){
		
		TransactionMessageProcessor ut = new TransactionMessageProcessor();
		String sql = 
		"select tr.Z_TransactionMsg_ID , tr.ad_org_id, tr.ad_orgtrx_id, tr.ad_orgto_id " +
		"   from Z_TransactionMsg tr " +
		"	inner join z_poswfactivity act on act.z_poswfactivity_id=tr.z_poswfactivity_id" +
//		"   inner join Z_POSActionACTIVITY act on (act.z_poswfAction_ID = tr.z_poswfAction_id and act.z_poswfactivity_id = tr.z_poswfactivity_id) " +
		"      WHERE tr.isActive = 'Y' AND tr.IsProcessed = 'N'  and tr.AD_Client_ID = ? " +
//		"      and ( ( (tr.ad_orgtrx_id = ? AND tr.ad_org_id = tr.ad_orgtrx_id AND act.isvalidatedbyorgfrom = 'Y') or (tr.ad_orgto_id = ? AND tr.ad_org_id <> tr.ad_orgtrx_id AND act.isvalidatedbyorgto = 'Y') ) and ( tr.isvalidatedrequest = 'Y' or tr.iscancelrequest = 'Y' )  ) " +
		"      and ( act.Z_PosWfActivity_id <> ? ) " +
		"      and ( tr.isvalidatedrequest = 'Y' or tr.iscancelrequest = 'Y' ) " +
		"      order by tr.Z_PosWfActivity_id " ;
		
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), null);
//			pst.setInt(1, getCtx().getAD_Org_ID());
			pst.setInt(1, AD_Client_ID);
			pst.setInt(2, MPosWfActivity.getCOMPLETED_ACTIVITY());
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				// Leave is Stop Process was ON
				String doStop = DB.getSQLValueString(null, "select msgtext from ad_message where  value = 'StopTransactionMessage' and 1 = ? ", 1 );
				if (doStop != null && "YES".equalsIgnoreCase(doStop)){
					int no = DB.executeUpdate("update ad_message set msgtext = 'NO' where value = 'StopTransactionMessage' ", get_Trx());
					get_Trx().commit();
					break;
				}
				
				
				try
				{
					//  DO LOAD TICKET
					if (ut.ProcessMessage(getCtx(), rs.getInt(1),get_Trx())){ 
						nbrOk++;
						get_Trx().commit();
					}
					else { 
						nbrErr++;
						get_Trx().rollback();
					}
				}catch (Exception e){
					log.log(Level.SEVERE, e.getMessage());
						get_Trx().rollback();
						Object[] params = {"E",(e.getMessage()==null?"NPE":e.getMessage()),rs.getInt(1)};
						int no = DB.executeUpdate("update Z_TransactionMsg set IsProcessed = ?, ErrorMsg = ? WHERE Z_TransactionMsg_ID = ? ", params, get_Trx());
						nbrErr++;
						get_Trx().commit();
				}				
				finally{
				}
			}

		}catch (Exception e){
			log.log(Level.SEVERE, e.getMessage());
			throw new CompiereException(e.getMessage());
		}				
			finally{
			Util.closeCursor(pst, rs);
		}
	}
}