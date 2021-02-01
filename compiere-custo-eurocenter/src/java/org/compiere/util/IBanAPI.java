package org.compiere.util;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
 
 
public class IBanAPI {
	
//private String IBAN = null;
 
    private final String USER_AGENT = "API Client/1.0";
    
    public static String checkIBAN(String IBAN)throws Exception {
		
    	IBanAPI http = new IBanAPI();
    	String ret = http.sendPost(IBAN);
    	return ret;
    	
    }
 
    // HTTP POST request
    private String sendPost(String IBAN) throws Exception {
    	
    	if(IBAN==null)
    		return null;
 
        String urlToBBAN = "https://www.ibanbic.be/IBANBIC.asmx/BBANtoBIC";
        String urlToTest = "https://www.ibanbic.be/IBANBIC.asmx/Version";
        URL siteURL = new URL(urlToTest);
		HttpURLConnection connection = (HttpURLConnection) siteURL.openConnection();
		connection.setRequestMethod("GET");
		connection.setConnectTimeout(3000);
		connection.connect();

		int code = connection.getResponseCode();
		if (code != 200) {
			return null;
		}
        
        // URL obj = new URL(url);
        //HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
        
        HttpClient client = new DefaultHttpClient();
		HttpPost post = new HttpPost(urlToBBAN);

        //add reuqest header
        //con.setRequestMethod("POST");
		post.setHeader("User-Agent", USER_AGENT);
      //con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");
        List<NameValuePair> urlParameters = new ArrayList<NameValuePair>();
		urlParameters.add(new BasicNameValuePair("value", IBAN));

		post.setEntity(new UrlEncodedFormEntity(urlParameters));
 
        // Send post request
		HttpResponse response = client.execute(post);
		if(!response.getStatusLine().getReasonPhrase().equals("OK"))
		{
			return null;
		}
        //System.out.println("\nSending 'POST' request to URL : " + url);
        //System.out.println("Post parameters : " + urlParameters);
        //System.out.println("Response Code : " + responseCode);
		
		BufferedReader rd = new BufferedReader(
                new InputStreamReader(response.getEntity().getContent()));
		
		StringBuffer result = new StringBuffer();
		String line = "";
		while ((line = rd.readLine()) != null) {
			result.append(line);
		}
		String ret =  result.toString().substring(0,result.toString().indexOf("</string>"));
		ret = ret.substring(ret.lastIndexOf(">")+1, ret.length());
		
        //print result
		if(ret!=null && ret.trim().length()>0)
			     return(ret.replace(" ", ""));
		else 
			return null;
 
    }
 
}