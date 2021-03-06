package com.audaxis.compiere.eurocenter.process;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Scanner;

import org.codehaus.jackson.map.ObjectMapper;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.ws.util.CallWSUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class CtrlDatePoseODV extends SvrProcessExtended {

	private int client_ID = 0;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		client_ID = getParameterAsInt("AD_Client_ID");
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String url = Msg.getMsg(getCtx(), "XX_URL_DATEPOSE");
		String jj = jsonGetRequest(url);
		//ObjectMapper mapper = new ObjectMapper();parseJSON(jj)
		//mapper.readValue(jj, DatesFromIntervalPose[].class);
		List<DatesFromIntervalPose> myObjects = parseJSON(jj);
	    int no = DB.executeUpdate("TRUNCATE TABLE XT_DATEPOSE_EBSOFT",get_Trx());
	    for (int i = 0; i < myObjects.size(); i++) {
	    	String ins = "INSERT INTO XT_DATEPOSE_EBSOFT (AR,NUMERODOCUMENT,ORDREVENTE,DATERECEPTION,DATEPOSE,DATELIVRAISON, AD_CLIENT_ID, AD_ORG_ID, AD_PINSTANCE_ID) "
	    			+ "values (?,?,?,?,?,?,?,?,?)";
	    	try {
	    	DB.executeUpdate(get_Trx(), ins, myObjects.get(i).getAr(), myObjects.get(i).getNumerodocument(), myObjects.get(i).getOrdrevente(),
	    			myObjects.get(i).getDatereception(), myObjects.get(i).getDatepose(), myObjects.get(i).getDatelivraison()==null?"0000-00-00":myObjects.get(i).getDatelivraison(), client_ID, 0, getAD_PInstance_ID());
	    	}
	    	catch (Exception e) {
				log.warning("AR: "+myObjects.get(i).getAr()+", DocNo: "+ myObjects.get(i).getNumerodocument()+",ODV:"+myObjects.get(i).getOrdrevente()+",DateRec:"+myObjects.get(i).getDatereception()+", DateP:"+myObjects.get(i).getDatepose()+",DateLiv:"+myObjects.get(i).getDatelivraison());
			}
	    	}
	    DB.executeUpdate("update XT_DATEPOSE_EBSOFT set C_ORDER_ID = (select max(C_ORDER_ID) from C_ORDER where isactive='Y' and c_order.Z_OrderStepStatus not in ('38') and  c_order.docstatus in ('IP','CO','CL','IN') and DocumentNo = TRIM(NUMERODOCUMENT) "
	    		+ "and C_Doctype_ID not in (1005179,1005100,1002593,1005096,1001674,1005097 ))", get_Trx());
	    DB.executeUpdate("update XT_DATEPOSE_EBSOFT set datelivraison = null where datelivraison = '0000-00-00'", get_Trx());
	    DB.executeUpdate("update XT_DATEPOSE_EBSOFT set datepose = null where datepose = '0000-00-00'", get_Trx());
	    DB.executeUpdate("update XT_DATEPOSE_EBSOFT set datereception = null where datereception = '0000-00-00'", get_Trx());
		
	    return "NB Lignes controlées : "+myObjects.size();
	}
	
	private static String jsonGetRequest(String urlQueryString) {
	    String json = null;
	    try {
	      URL url = new URL(urlQueryString);
	      HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	      connection.setDoOutput(true);
	      connection.setInstanceFollowRedirects(false);
	      connection.setRequestMethod("GET");
	      connection.setRequestProperty("Content-Type", "application/json");
	      connection.setRequestProperty("charset", "utf-8");
	      connection.connect();
	      InputStream inStream = connection.getInputStream();
	      json = streamToString(inStream); // input stream to string
	    
	    } catch (IOException ex) {
	      ex.printStackTrace();
	    }
	    return json;
	  }
	
	private static String streamToString(InputStream inputStream) {
	    String text = new Scanner(inputStream, "UTF-8").useDelimiter("\\Z").next();
	    return text;
	  }

	public class DatesFromIntervalPose {
		  public String ar;
		  public String numerodocument;
		  public String ordrevente;
		  public String datereception;
		  public String datepose;
		  public String datelivraison;
		
		  public DatesFromIntervalPose(String ar, String numerodocument, String ordrevente, String datereception,
					String datepose, String datelivraison) {
				super();
				this.ar = ar;
				this.numerodocument = numerodocument;
				this.ordrevente = ordrevente;
				this.datereception = datereception;
				this.datepose = datepose;
				this.datelivraison = datelivraison;
			}
		  
		  public DatesFromIntervalPose() {
			super();
			// TODO Auto-generated constructor stub
		}

		public String getAr() {
			return ar;
		}

		public void setAr(String ar) {
			this.ar = ar;
		}

		public String getNumerodocument() {
			return numerodocument;
		}

		public void setNumerodocument(String numerodocument) {
			this.numerodocument = numerodocument;
		}

		public String getOrdrevente() {
			return ordrevente;
		}

		public void setOrdrevente(String ordrevente) {
			this.ordrevente = ordrevente;
		}

		public String getDatereception() {
			return datereception;
		}

		public void setDatereception(String datereception) {
			this.datereception = datereception;
		}

		public String getDatepose() {
			return datepose;
		}

		public void setDatepose(String datepose) {
			this.datepose = datepose;
		}

		public String getDatelivraison() {
			return datelivraison;
		}

		public void setDatelivraison(String datelivraison) {
			this.datelivraison = datelivraison;
		}
	}
	
	private List<DatesFromIntervalPose> parseJSON(String yy)  {
	    Gson gson = new Gson();
	    Type type = new TypeToken<List<DatesFromIntervalPose>>(){}.getType();
	    List<DatesFromIntervalPose> contactList = gson.fromJson(yy, type);
	    return contactList;
	}
		  
}
