package com.audaxis.compiere.eurocenter.util;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MCountry;
import org.compiere.model.MInOut;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.util.CompiereException;

public class OrderUtil {
	
	
	private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(OrderUtil.class);

	public OrderUtil() {
		// TODO Auto-generated constructor stub
	}
	
	public static String getRefOAInterne(Ctx ctx, MOrder oa, Trx trx)
	{
		MClient mc = new MClient(ctx, oa.getAD_Client_ID(), trx);
		MLocation ml = new MLocation(ctx, mc.get_ValueAsInt("C_Location_ID"), trx);
		MCountry mcc = new MCountry(ctx, ml.getC_Country_ID(), trx);
		String ref = null;
		MBPartner mb = new MBPartner(ctx, oa.getC_BPartner_ID(), trx);
		ref = mb.getName().substring(0, mb.getName().length()<4? mb.getName().length():4);
		ref = ref+"-S";
		Calendar cal = Calendar.getInstance();
		cal.setTime(oa.getDatePromised());
		int week = cal.get(Calendar.WEEK_OF_YEAR);
		ref = ref+""+week;
		ref = ref+"-"+mcc.getCountryCode().substring(0,1);
		ref = ref+"-";
		Object[] params = {oa.getC_BPartner_ID(), (week<10?"0"+week:week),mcc.getCountryCode().substring(0,1)};
		int no = DB.getSQLValue(trx,"Select MAX(DOCNO) from XX_OA_NO where C_BPartner_ID = ? and XX_NoWeek = ?  and CountryCode = ? ",params );
		if(no<=0)
			no = 1;
		ref = ref+""+(no++);
		String insert = "INSERT INTO XX_OA_NO (AD_CLIENT_ID,AD_ORG_ID,C_BPARTNER_ID,COUNTRYCODE,CREATED,CREATEDBY,DOCNO,ISACTIVE,UPDATED,UPDATEDBY,	XX_NOWEEK,XX_OA_NO_ID) "
				+ "values (?,0,?,?,sysdate,?,?,'Y',sysdate,?,?,AD_SEQUENCE_NEXTNO2('XX_OA_NO',0) )";
		Object[] params2 = {oa.getAD_Client_ID(),oa.getC_BPartner_ID(),mcc.getCountryCode().substring(0,1), ctx.getAD_User_ID(),no,ctx.getAD_User_ID(),(week<10?"0"+week:week)  };
		DB.executeUpdate(insert, params2, trx);
		return ref;
	}

	public static String  genInvOderShip (Ctx ctx, MOrder ord, Trx trx){
		MDocTypeInfo dti = MDocTypeInfo.get(ctx, ord.getC_DocTypeTarget_ID(), trx);
//		EggoCtx.setConstants();
		if (dti != null && dti.isCuisine() &&  (dti.isDirect() //MERGE
				|| dti.isExpo() //MERGE
				|| dti.isStore() //MERGE
				|| dti.isSAV() //MERGE
				//|| ord.getC_DocTypeTarget_ID() == getCtx().getContextAsInt("#TYPEDOC_VENTESAV_P_ID") //MERGE
				//|| ord.getC_DocTypeTarget_ID() == getCtx().getContextAsInt("#TYPEDOC_VENTEOLDSAV_ID") //MERGE
				|| dti.isPlacard())) //MERGE
		{
			
			String facG = "";
			int m_Process_ID = DB.getSQLValue(trx, "select max(ad_process_id) from ad_process where classname like '%InvoiceOrderShipment%' "); 
	        MProcess process = new MProcess(ctx, m_Process_ID,trx);
	        MPInstance instance = new MPInstance(ctx, m_Process_ID, -1);
	        if (!instance.save()) {
	        	log.warning("InvoiceOrderShipment Process No Instance");
	            return Msg.getMsg(ctx, "ProcessFailed");
	        }
	        ProcessInfo processInfo = new ProcessInfo("Generate Invoice from Shipment",
	                m_Process_ID);
	        processInfo.setAD_PInstance_ID(instance.getAD_PInstance_ID());
	        List<ProcessInfoParameter> pipList = new ArrayList<ProcessInfoParameter>();
	        ProcessInfoParameter pip1 = new ProcessInfoParameter("C_Order_ID", ord.getC_Order_ID(),
	                null, null, null);
	        pipList.add(pip1);
	        ProcessInfoParameter[] parameters = (ProcessInfoParameter[]) pipList
	                .toArray(new ProcessInfoParameter[pipList.size()]);
	        processInfo.setParameter(parameters);
	        process.processIt(processInfo, trx);
	        if (processInfo.isError()) {
	        	log.warning(processInfo.getSummary());
	            return Msg.getMsg(ctx, "ProcessFailed");
	        }

	        int[] ids = processInfo.getIDs();
	        if (ids == null || ids.length == 0)
	        	facG = "Process OK";

		}
		//Appel Processus GenerateInvProm
		int AD_Process_ID = DB.getSQLValue(trx,"select ad_process_id from ad_process where value ='GenerateInvoiceProm' ");
		ProcessStarter pstart = new ProcessStarter(ctx, AD_Process_ID, trx);
    	pstart.addParameter("C_Order_ID", ord.getC_Order_ID(), null);
    	try {
			pstart.start();
    	}
	 catch (Exception e) {
		throw new CompiereException("Le processus Creation Facture Prom/NC est en echec");
	}
    	return "Process OK";
	}
	
	public BigDecimal getOAFilesSize(int order_ID)
	{
		BigDecimal ret = Env.ZERO;
		
		
		
		return ret;
		
	}
}
