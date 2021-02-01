package com.audaxis.compiere.pos.process;


import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MClient;
import org.compiere.model.MConversionType;
import org.compiere.model.MMessage;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgPOS;
import org.compiere.model.MPayment;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MPosOrder;
import com.audaxis.compiere.model.MPosOrderPayment;
import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;


/**
 * processus d'import POS
 * 
 * @author jbr
 * 
 */
public class PosInterfaceLauncher extends SvrProcessExtended{

	private int nbrErr = 0;
	private int nbrOk = 0;
	private int nbrChatErr = 0;
	private int nbrChatOk = 0;
	private int nbrTrxMsgOk = 0;
	private int nbrTrxMsgErr = 0;
	private boolean p_ResetError;
	private boolean p_StopRunningProcess;
	private int AD_Client_ID = 0;


	@Override
	protected void prepare() {
		//PosCtx.CLIENTCHECK = " and ad_client_id = " + getCtx().getAD_Client_ID();
		log.warning("PosInterfaceLauncher AD_Client_ID : "+getCtx().getAD_Client_ID());
//		PosCtx.setConstants(getCtx(),get_Trx());
		
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
				AD_Client_ID  = getParameterAsInt("AD_Client_ID");
			else
				log.severe("prepare - Unknown Parameter: " + name);
		}
		
		if (!p_StopRunningProcess) {
			int no = DB.getSQLValue(get_Trx(), "select count(*) from AD_PINSTANCE where ISPROCESSING = 'Y' and AD_Process_ID = ? " , processID );
			if (no > 1 )
				throw new CompiereException("Process Already Running ! " );
		}else{
			int imsg = DB.getSQLValue(get_Trx(), "Select count(*) from ad_message where value = 'StopPosInterface'");
			if (imsg < 1 ) {
				MMessage msg = new MMessage(getCtx(), 0, get_Trx());
				msg.setClientOrg(getCtx().getAD_Client_ID(), getCtx().getAD_Org_ID());
				msg.setValue("StopPosInterface");
				msg.setMsgText("YES");
				msg.save(get_Trx());
			} else {
				int no = DB.executeUpdate("update ad_message set msgtext = 'YES' where value = 'StopPosInterface' ", get_Trx());
			}	
		}
	}

	@Override
	protected String doIt() throws Exception {
		if (!p_StopRunningProcess)
		{
			if (p_ResetError)	resetError(AD_Client_ID);  // Reset Err
			loadTrxMsg(AD_Client_ID);
			processWEBMsg(AD_Client_ID);
			loadTickets(AD_Client_ID);  // Process 
			loadChat(AD_Client_ID);
			log.warning("Ticket Processed : " + nbrOk + " Ticket Error : " + nbrErr +" - Chat Processed : " + nbrChatOk + " Chat Error : " + nbrChatErr +" - Msg Processed : " + nbrTrxMsgOk + " Msg Error : " + nbrTrxMsgErr);
			return "Ticket Processed : " + nbrOk + "Ticket Error : " + nbrErr +" - Chat Processed : " + nbrChatOk + "Chat Error : " + nbrChatErr +" - Msg Processed : " + nbrTrxMsgOk + "Msg Error : " + nbrTrxMsgErr;
		}
		else{
			log.warning("LoadTickets Stop Process Asked");
			return "LoadTickets Stop Process Asked";
		}
	}

	

	/**
	 * Reset Error If Flagged
	 */
	private void resetError(int AD_Client_ID)
	{
		MClient client = MClient.get(getCtx(), AD_Client_ID);
		MClientProxy clientProxy = new MClientProxy(client);
		Trx trx0 = Trx.get(String.valueOf(System.currentTimeMillis()));
		String sql0 = "UPDATE I_PosOrder SET I_IsImported='N', I_ErrorMsg= '' WHERE isActive = 'Y' and I_IsImported = 'E' " + clientProxy.getClientCheck();
		int no = DB.executeUpdate(sql0.toString(), trx0);

		if (trx0 != null) {
			trx0.commit();
			trx0.close();
		}
	}//	process
	
	/**
	 * Reset StopProcess if Stop is Activated
	 */
	private void resetStopProcess()
	{
		Trx trx0 = Trx.get(String.valueOf(System.currentTimeMillis()));
		int no = DB.executeUpdate("update ad_message set msgtext = 'NO' where value = 'StopPosInterface' ", get_Trx());
		if (trx0 != null) {
			trx0.commit();
			trx0.close();
		}
	}//	process



	private void loadTickets(int AD_Client_ID){
		MClient client = MClient.get(getCtx(), AD_Client_ID);
		MClientProxy clientProxy = new MClientProxy(client);
		PosInterfaceLoader ut = new PosInterfaceLoader();
		String sql = "select I_POSORDER_ID,AD_Org_ID from I_POSORDER WHERE isActive = 'Y' and I_IsImported = 'N' " +
				"and EXISTS (Select 1 from C_DOCTYPEINFO where C_DOCTYPEINFO.C_DOCTYPE_ID = I_POSORDER.C_DOCTYPETARGET_ID and C_DOCTYPEINFO.ISPOS = 'Y') " + clientProxy.getClientCheck()
		//+" and I_POSORDER_ID=2000157 "
// + " and DOCUMENTNO = 'DEVIS-01010124276664' "				
				+ "  order by priority desc,ad_org_id asc,I_POSORDER_ID asc,created asc, Z_ORIGORDER DESC ";
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				// Leave is Stop Process was ON
				String doStop = DB.getSQLValueString(null, "select msgtext from ad_message where  value = 'StopPosInterface' and 1 = ? ", 1 );
				if (doStop != null && "YES".equalsIgnoreCase(doStop)){
					int no = DB.executeUpdate("update ad_message set msgtext = 'NO' where value = 'StopPosInterface' ", get_Trx());
					get_Trx().commit();
					break;
				}
				
				
				try
				{
					//  DO LOAD TICKET
					MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), rs.getInt(2),get_Trx());
					if (ut.LoadTicket(orgPOS, getCtx(), rs.getInt(1),rs.getInt(2),get_Trx())){ 
						nbrOk++;
						get_Trx().commit();
					}
					else { 
						nbrErr++;
						get_Trx().rollback();
					}
				}catch (Exception e){
//						e.printStackTrace();
						log.log(Level.SEVERE, e.getMessage());
						get_Trx().rollback();
						String msg = null; 
						if (e.getMessage()==null) msg =  "NPE";
						else msg = e.getMessage();
						Object[] params = {"E",msg,rs.getInt(1),rs.getInt(2)};
						
						int no = DB.executeUpdate("update I_POSOrder set I_IsImported = ?, I_ErrorMsg = ? WHERE I_POSOrder_ID = ? AND AD_Org_ID=?" + clientProxy.getClientCheck() , params, get_Trx());
						get_Trx().commit();
						nbrErr++;
				}				
				finally{
				}
			}
			//Import Payment Not Imported for Complete Order
			//GetOrder Not Pay
			MPosOrder[] pos = MPosOrder.getPosOrderNotImpPayment(getCtx(), get_Trx());
			for (int j = 0; j < pos.length; j++) {
				MPosOrder po = pos[j];
				MOrder mo = new MOrder(getCtx(),po.getC_Order_ID(), get_Trx());
				MPosOrderPayment[] posOrderPayments = MPosOrder.getPaymentsForOrder(getCtx(), po, get_Trx());
				MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), po.getAD_Org_ID(), get_Trx());
			for (int i = 0; i < posOrderPayments.length; i++) {
					MPosOrderPayment posOrderPayment = posOrderPayments[i];
					if(posOrderPayment.get_ValueAsInt("C_Payment_ID") <= 0){
						try{
						MPosOrder.createdPayment(getCtx(),po, mo,posOrderPayment,get_Trx() );
						}catch (Exception e){
							
						}
					}
			}
			}
			get_Trx().commit();
		}catch (Exception e){
//			e.printStackTrace();
			log.log(Level.SEVERE, e.getMessage());
			throw new CompiereException(e.getMessage());
		}				
			finally{
			Util.closeCursor(pst, rs);
		}
	}
	
	private void loadChat(int AD_Client_ID){
		MClient client = MClient.get(getCtx(), AD_Client_ID);
		MClientProxy clientProxy = new MClientProxy(client);
		PosInterfaceLoader ut = new PosInterfaceLoader();
		String sql = "select I_PosChat_ID,AD_Org_ID from I_PosChat WHERE isActive = 'Y' and Processed = 'N' " + clientProxy.getClientCheck()  + "  order by created asc,ad_org_id asc,I_PosChat_ID asc";
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), get_Trx()); 
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				// Leave is Stop Process was ON
				String doStop = DB.getSQLValueString(null, "select msgtext from ad_message where  value = 'StopPosInterface' and 1 = ? ", 1 );
				if (doStop != null && "YES".equalsIgnoreCase(doStop)){
					int no = DB.executeUpdate("update ad_message set msgtext = 'NO' where value = 'StopPosInterface' ", get_Trx());
					get_Trx().commit();
					break;
				}
				
				int id = rs.getInt(1);
				int orgID = rs.getInt(2);
				try
				{
					if (ut.loadChat( getCtx(),id,orgID,get_Trx())){ 
						nbrChatOk++;
						get_Trx().commit();
					}
					else { 
						nbrChatErr++;
						get_Trx().rollback();
					}
				}catch (Exception e){
					log.log(Level.SEVERE, e.getMessage());
						get_Trx().rollback();
						Object[] params = {"N",e.getMessage(),id,orgID};
						int no = DB.executeUpdate("update I_PosChat set processed = ?, I_ErrorMsg = ? WHERE I_PosChat_ID = ? AND AD_Org_ID=?" + clientProxy.getClientCheck(), params, get_Trx());
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
	
	private void loadTrxMsg(int AD_Client_ID){
		MClient client = MClient.get(getCtx(), AD_Client_ID);
		MClientProxy clientProxy = new MClientProxy(client);
		PosInterfaceLoader ut = new PosInterfaceLoader();
		String sql = "select I_TrxMsg_ID,AD_Org_ID from I_TrxMsg WHERE isActive = 'Y' and I_IsImported = 'N' " + clientProxy.getClientCheck()
				+ " and i_posorderline_id > 0 "
 // + " and ad_org_id = 1000683 "				
				+ "  order by created asc,ad_org_id asc,I_TrxMsg_ID asc";
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				// Leave is Stop Process was ON
				String doStop = DB.getSQLValueString(null, "select msgtext from ad_message where  value = 'StopPosInterface' and 1 = ? ", 1 );
				if (doStop != null && "YES".equalsIgnoreCase(doStop)){
					int no = DB.executeUpdate("update ad_message set msgtext = 'NO', I_IsImported = 'Y' where value = 'StopPosInterface' ", get_Trx());
					get_Trx().commit();
					break;
				}
				
				int id = rs.getInt(1);
				int orgID = rs.getInt(2);
				try
				{
					MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), orgID, get_Trx());
					if (ut.loadTrxMsg(orgPOS,getCtx(),id,orgID,get_Trx())){ 
						nbrTrxMsgOk++;
						get_Trx().commit();
					}
					else { 
						nbrTrxMsgErr++;
						get_Trx().rollback();
					}
				}catch (Exception e){
					log.log(Level.SEVERE, e.getMessage());
						get_Trx().rollback();
						Object[] params = {"N",e.getMessage()==null?"null":e.getMessage(),id,orgID};
						int no = DB.executeUpdate("update I_TrxMsg set I_IsImported = ?, I_ErrorMsg = ? WHERE I_TrxMsg_ID = ? AND AD_Org_ID=?" + clientProxy.getClientCheck() , params, get_Trx());
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
	
	
	private void processWEBMsg(int AD_Client_ID){
		PosInterfaceLoader ut = new PosInterfaceLoader();
		String sql = "select ol.c_order_id,t.InvoiceIndx " 
				+ " from I_TrxMsg t " 
				+ " inner join c_orderline ol on ol.c_orderline_id = t.c_orderline_id "
				+ " WHERE t.isActive = 'Y' and t.I_IsImported = 'N' "   
				+ " and t.i_posorderline_id = 0 "
 // + " and t.ad_org_id = 1000683 "				 
				+ " group by ol.c_order_id,t.InvoiceIndx "
				;
		
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			rs = pst.executeQuery();
			while ( rs.next() )
			{
				int id = rs.getInt(1);
				try
				{
					MOrder ord = new MOrder(getCtx(), id, get_Trx());
					ut.shipInvoicePayWEBOrder(ord, rs.getInt(2),getCtx(), get_Trx()) ;
						nbrTrxMsgOk++;
						get_Trx().commit();
				}catch (Exception e){
					log.log(Level.SEVERE, e.getMessage());
						get_Trx().rollback();
						Object[] params = {"N",e.getMessage()==null?"null":e.getMessage(),id};
						int no = DB.executeUpdate("update I_TrxMsg set I_IsImported = ?, I_ErrorMsg = ? WHERE C_OrderLine_ID IN (SELECT c_orderline_id from c_orderline where c_order_id = ? ) AND I_IsImported = 'N'  " , params, get_Trx());
						get_Trx().commit();
						nbrTrxMsgErr++;
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