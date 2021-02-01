package com.audaxis.compiere.eurocenter.ws;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.logging.Level;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Trx;

import com.google.gson.Gson;

public class ProcessWS extends SvrProcess {

	private static CLogger log = CLogger.getCLogger(ProcessWS.class); 
	private boolean p_forcer = false;
	private int p_record_ID = 0;

	Client client = ClientBuilder.newClient();
	
	public ProcessWS() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("Forcer"))
				p_forcer = ((String)element.getParameter()).equals("Y");
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_record_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		MWSEventLog wse = new MWSEventLog(getCtx(), p_record_ID, get_Trx());
		int nb = wse.getCounter();
		X_WSEggo we = new X_WSEggo(getCtx(), wse.getXX_WSEggo_ID(), get_Trx());
		if((p_forcer || !wse.isProcessed()) && wse.getWSBody() == null)
		{
			try{
				Response rep = setFluxProject(wse.getURLWS());
				String ret = rep.readEntity(String.class);
				wse.setTryTime(new Timestamp(System.currentTimeMillis()));
				
				if(ret.equals(we.getXX_ReturnOK())){
					wse.setProcessed(true);
					wse.setStatusCode(we.getXX_ReturnOK());
				}else
					wse.setStatusCode(ret);
			}catch (Exception e) {
				wse.setStatusCode(e.toString());
			}finally {
				wse.setCounter(++nb);
				wse.save();
			}
		}
		if((p_forcer || !wse.isProcessed()) && wse.getWSBody() != null)
		{
			String bodyx = wse.getWSBody();
			if(bodyx.startsWith("\""))
				bodyx = bodyx.substring(1, bodyx.length());
			if(bodyx.endsWith("\""))
				bodyx = bodyx.substring(0, bodyx.length()-1);
			StringEntity entity = new StringEntity(bodyx,
	                ContentType.APPLICATION_JSON);
	        try{
	        HttpPost request = new HttpPost(wse.getURLWS());
	        request.setEntity(entity);
	        HttpResponse response = sendBody(request);
	        if(response==null){
	        	wse.setStatusCode("Impossible d'envoyer l'information");
	        	wse.setTryTime(new Timestamp(System.currentTimeMillis()));
	        	wse.setCounter(++nb);
				wse.save();
				return null;
	        }
	        String content = EntityUtils.toString(response.getEntity());
	        Gson gson = new Gson();
	        wse.setTryTime(new Timestamp(System.currentTimeMillis()));
			//wse.setCounter(++nb);
	        AttachFileNotificationReturn ret = gson.fromJson(content, AttachFileNotificationReturn.class);
	        if(ret.isSuccess())
	        	wse.setProcessed(true);
	        wse.setStatusCode(""+ret.isSuccess());
	        }catch (Exception e) {
				wse.setStatusCode(e.toString());
			}finally {
				wse.setCounter(++nb);
				wse.save();
			}
		}
		return null;
	}

	private Response setFluxProject(String REST_URIX) {
		//log.warning(REST_URIX);
		return client
	      .target(REST_URIX)
	      .request(MediaType.APPLICATION_XML)
	      .post(Entity.entity(null, MediaType.APPLICATION_XML));
	}
	
	private HttpResponse sendBody(HttpPost request)
	{
		HttpClient httpClient = HttpClientBuilder.create().build();
		HttpResponse response = null;
		try {
			response = httpClient.execute(request);
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return response;
	}
	
}
