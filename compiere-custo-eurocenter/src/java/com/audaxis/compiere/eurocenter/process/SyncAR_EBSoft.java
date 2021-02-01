package com.audaxis.compiere.eurocenter.process;

import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfo;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.process.SvrProcessExtended;

public class SyncAR_EBSoft extends SvrProcessExtended{

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		//RUN getInfosEBSoft
		int m_Process_ID = 0;
		m_Process_ID = DB.getSQLValue(get_Trx(), "select max(ad_process_id) from ad_process where IsActive = 'Y' and classname like '%CtrlDatePoseODV%' "); 
		
		MProcess process = new MProcess(getCtx(), m_Process_ID, get_Trx());
        MPInstance instance = new MPInstance(getCtx(), m_Process_ID, -1);
        if (!instance.save()) {
            addLog("Process No Instance");
            return Msg.getMsg(getCtx(), "ProcessFailed");
        }
        ProcessInfo processInfo = new ProcessInfo("CtrlDatePoseODV",
                m_Process_ID);
        processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
        
        process.processIt(processInfo, get_Trx());
        if (processInfo.isError()) {
            addLog(processInfo.getSummary());
            get_Trx().rollback();
            return Msg.getMsg(getCtx(), "CtrlDatePoseODV KO");
        }
        
        //
        String SQL = "TRUNCATE TABLE XT_CORR_AR_EBSOFT";
        DB.executeUpdate(SQL,get_Trx());
        SQL = "INSERT INTO XT_CORR_AR_EBSOFT "+ 
        		"select AR_SMILE, C_ORDER_ID, DOCUMENTNO, POREFERENCE, null, null, null,null,null,1000000,0  "+
        		"from ( "+
        		"Select XT_DATEPOSE_EBSOFT.AR as AR_EBSOFT,getLastAR_ODV(co.C_Order_ID)  as AR_SMILE,co.C_Order_ID,co.DOCumentNo "+
        		",co.poreference, "+
        		"getRef_List_Data(1001293,co.z_orderstepstatus, 'fr_FR') as Flux,case when xt_datepose_ebsoft.numerodocument is null then 'N' else 'Y' end as IN_EBSOFT, "+
        		"IsCheckByEBSoft( co.C_DocType_ID,getRef_List_Data(1001293,co.z_orderstepstatus, 'fr_FR')) as TO_EBSOFT,cb.Value as Monteur, co.DatePose, "+
        		"TO_DATE(xt_datepose_ebsoft.datepose,'YYYY-MM-DD') as DatePoseEBSoft,xt_datepose_ebsoft.datepose as datex, co.z_datelivrcli, "+
        		"TO_DATE(xt_datepose_ebsoft.datelivraison,'YYYY-MM-DD') as DateLIVEBSoft ,co.xx_semrec , TO_DATE(xt_datepose_ebsoft.datereception,'YYYY-MM-DD') as DateRECPEBSoft, co.AD_Client_ID "+
        		"from C_Order co "+
        		"inner join XT_DATEPOSE_EBSOFT on XT_DATEPOSE_EBSOFT.C_ORDER_ID = co.C_ORDER_ID "+
        		"left join C_BPartner cb on cb.c_bpartner_id = co.monteur_id "+
        		"where not exists (select 1 from xx_wseventlog where xx_wseventlog.record_ID = co.C_order_ID and xx_wseventlog.processed = 'N' and xx_wseventlog.xx_wseggo_id in (1000100,1000105)) "+
        		"and co.Z_OrderStepStatus not in ('38') "+
        		"union "+
        		"Select XT_DATEPOSE_EBSOFT.AR as AR_EBSOFT, getLastAR_ODV(co.C_Order_ID)  as AR_SMILE,co.C_Order_ID,co.DOCumentNo "+
        		",co.poreference, "+
        		"getRef_List_Data(1001293,co.z_orderstepstatus, 'fr_FR') as Flux,case when xt_datepose_ebsoft.numerodocument is null then 'N' else 'Y' end as IN_EBSOFT, "+
        		"IsCheckByEBSoft( co.C_DocType_ID,getRef_List_Data(1001293,co.z_orderstepstatus, 'fr_FR')) as TO_EBSOFT,cb.Value as Monteur, co.DatePose, "+
        		"TO_DATE(xt_datepose_ebsoft.datepose,'YYYY-MM-DD') as DatePoseEBSoft,xt_datepose_ebsoft.datepose as datex, co.z_datelivrcli, "+
        		"TO_DATE(xt_datepose_ebsoft.datelivraison,'YYYY-MM-DD') as DateLIVEBSoft ,co.xx_semrec , TO_DATE(xt_datepose_ebsoft.datereception,'YYYY-MM-DD') as DateRECPEBSoft, co.AD_Client_ID "+
        		"from C_Order co "+
        		"inner join c_doctypeinfo cdi on cdi.c_doctype_id = co.c_doctype_id and cdi.isdevis ='N' "+
        		"left join XT_DATEPOSE_EBSOFT on XT_DATEPOSE_EBSOFT.C_ORDER_ID = co.C_ORDER_ID "+
        		"left join C_BPartner cb on cb.c_bpartner_id = co.monteur_id "+
        		"where  "+
        		"not exists (select 1 from xx_wseventlog where xx_wseventlog.record_ID = co.C_order_ID and xx_wseventlog.processed = 'N' and xx_wseventlog.xx_wseggo_id in (1000100,1000105)) and co.Z_OrderStepStatus not in ('38') and "+
        		"trunc(co.datepose) BETWEEN trunc(Sysdate) and trunc(Sysdate+6222) and co.docstatus in ('IP','CO','CL','IN')  and not exists (select 1 from C_Order co2 "+
        		"inner join XT_DATEPOSE_EBSOFT xx2 on xx2.C_ORDER_ID = co2.C_ORDER_ID "+
        		"where co2.C_ORDER_ID = co.C_ORDER_ID ))tt  "+
        		"where ((AR_EBSOFT<>AR_SMILE and AR_SMILE is not null and AR_EBSOFT is not null) or (AR_EBSOFT is null and AR_SMILE is not null)) and "+
        		"TO_EBSOFT = 'Y' and tt.AD_Client_ID = 1000000";
        
        DB.executeUpdate(SQL,get_Trx());
        
        SQL = "update XT_CORR_AR_EBSOFT set NBOA_AR = (select count(1) from z_poacknoledgment where z_arnumber = AR_SMILE)";
        DB.executeUpdate(SQL,get_Trx());
        
        SQL = "update XT_CORR_AR_EBSOFT set orther_oa = (select DOCUMENTNO from C_Order where C_Order_ID = (select C_Order_ID from z_poacknoledgment where z_arnumber = AR_SMILE )) where NBOA_AR = 1";
        DB.executeUpdate(SQL,get_Trx());
        		
        SQL = "update XT_CORR_AR_EBSOFT set OA_AR_SMILE = (select MAX(DOCUMENTNO) from C_Order where C_BPartner_ID = 1054183 and ref_Order_ID = XT_CORR_AR_EBSOFT.C_Order_ID)";
        DB.executeUpdate(SQL,get_Trx());
        
        SQL = "update XT_CORR_AR_EBSOFT set DB_EBSOFT_DOUBLON = (select count(1) from xt_datepose_ebsoft where xt_corr_ar_ebsoft.documentno = xt_datepose_ebsoft.numerodocument group by numerodocument )";
        DB.executeUpdate(SQL,get_Trx());
        
        SQL = "Insert into XX_WSEVENTLOG (AD_CLIENT_ID,AD_ORG_ID,COUNTER,CREATED,CREATEDBY,ISACTIVE,PROCESSED,PROCESSING,RUNSMAX,STATUSCODE,UPDATED,UPDATEDBY, "+
        		"XX_TRYTIME,XX_URLWS,XX_WSBODY,XX_WSEGGO_ID,XX_WSEVENTLOG_ID,RECORD_ID,EVENTTYPE,WS_BODY2)  select cox.AD_Client_ID,'0','0',SYSDATE, "+
        		"'100','Y','N','N','3',null,SYSDATE,'0',null,'http://soa.eggo.intra:8080/REST/WEBHOOK/smile/updateOrder', "+
        		"'{\"c_order_id\":\"'||cox.C_Order_ID||'\",\"documentno\":\"'||cox.DOCumentNo||'\",\"poreference\":\"'||cox.poreference||'\",\"issotrx\":\"Y\",\"action\":\"UPDATE\"}',case when cox.AD_Client_ID=1000024 then 1000105 else 1000100 end,ad_sequence_nextno2('XX_WSEventLog',0),cox.C_Order_ID,'UPDATE',null "+
        		"from XT_CORR_AR_EBSOFT xx "+
        		" inner join C_Order cox on cox.c_order_id = xx.c_order_id where  "+
        		"xx.orther_oa = xx.oa_ar_smile and xx.nboa_ar = 1 and (DB_EBSOFT_DOUBLON = 1 OR DB_EBSOFT_DOUBLON is null)";
        DB.executeUpdate(SQL,get_Trx());
        
        
        SQL = "Insert into XX_WSEVENTLOG (AD_CLIENT_ID,AD_ORG_ID,COUNTER,CREATED,CREATEDBY,ISACTIVE,PROCESSED,PROCESSING,RUNSMAX,STATUSCODE,UPDATED,UPDATEDBY, "+
        		"XX_TRYTIME,XX_URLWS,XX_WSBODY,XX_WSEGGO_ID,XX_WSEVENTLOG_ID,RECORD_ID,EVENTTYPE,WS_BODY2) "+
        		"select cox.ad_client_id,0,0,sysdate, 100, 'Y', 'N', 'N', 3,null, sysdate,100, null, 'http://soa.eggo.intra:8080/REST/WEBHOOK/smile/updateOrder',  "+
        		"'{\"c_order_id\":\"'||cox.C_Order_ID||'\",\"documentno\":\"'||cox.DOCumentNo||'\",\"poreference\":\"'||cox.poreference||'\",\"issotrx\":\"N\",\"action\":\"UPDATE\"}',  "+
        		"case when cox.AD_Client_ID=1000024 then 1000105 else 1000100 end, ad_sequence_nextno2('XX_WSEventLog',0),cox.C_Order_ID, 'UPDATE',null from XT_CORR_AR_EBSOFT xx "+
        		 "inner join C_Order cox on cox.DOCUMENTNO = xx.orther_oa where xx.orther_oa = xx.oa_ar_smile and xx.nboa_ar = 1 and (DB_EBSOFT_DOUBLON = 1 OR DB_EBSOFT_DOUBLON is null)";
        DB.executeUpdate(SQL,get_Trx());
        
        SQL = "Insert into XX_WSEVENTLOG (AD_CLIENT_ID,AD_ORG_ID,COUNTER,CREATED,CREATEDBY,ISACTIVE,PROCESSED,PROCESSING,RUNSMAX,STATUSCODE,UPDATED,UPDATEDBY, "+
        		"XX_TRYTIME,XX_URLWS,XX_WSBODY,XX_WSEGGO_ID,XX_WSEVENTLOG_ID,RECORD_ID,EVENTTYPE,WS_BODY2)  "+
        		"select cox.ad_client_id,0,0,sysdate, 100, 'Y', 'N', 'N', 3,null, sysdate,100, null, 'http://soa.eggo.intra:8080/REST/WEBHOOK/smile/receptionAccuseReception', "+
        		"'{\"c_order_id\":\"'||zp.c_order_id||'\",\"documentno\":\"'||cox.documentno||'\",\"poreference\":\"'||cox.poreference||'\",\"arnumber\":\"'||AR_SMILE||'\",\"arnew\":\"Y\",\"armain\":\"'||zp.z_armain||'\", "+
        		"\"aramt\":\"'||zp.z_aramt||'\",\"ardate\":\"'||TO_CHAR(zp.z_ardate,'YYYY-MM-DD' )||' 00:00:00.0\",\"arsem\":\"'||zp.xx_semar||'\"}',1000203,ad_sequence_nextno2('XX_WSEventLog',0),zp.z_poacknoledgment_id,'UPDATE',null "+
        		"from XT_CORR_AR_EBSOFT xx "+
        		"inner join z_poacknoledgment zp on zp.z_arnumber = xx.AR_SMILE "+
        		"inner join C_Order cox on cox.C_order_ID = zp.c_order_id where xx.nboa_ar = 1 and (DB_EBSOFT_DOUBLON = 1 OR DB_EBSOFT_DOUBLON is null)";
        DB.executeUpdate(SQL,get_Trx());
        
        SQL = "UPDATE XT_CORR_AR_EBSOFT set AD_Client_ID  = 1000000, AD_Org_ID = 0";
        DB.executeUpdate(SQL,get_Trx());
        
        
		return "OK";
	}

}
