package com.audaxis.erp.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.util.concurrent.TimeUnit;

import javax.net.ssl.HttpsURLConnection;

import org.compiere.util.Msg;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.SetRequestUrbantzResult;

import scala.util.parsing.json.JSONObject;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class RequestUrbantzService extends CompiereSessionFullService implements IRequestUrbantzService {

	@Override
	public SetRequestUrbantzResult requestUrbantz(String url, String restType, String body) throws IOException, InterruptedException {
		
		
		String ret = "";
		SetRequestUrbantzResult responseJsonObject= new SetRequestUrbantzResult();
		
		String msg = Msg.getMsg(getCtx(), "UrbantzInfos");
		if(msg.toUpperCase().equals("UrbantzInfos".toUpperCase()))
		{
			responseJsonObject.errorType = "Message UrbantzInfos non d�fini";
		}
		String[] urbString = msg.split(";");
		
		String Token = urbString[0];
		String ApiKey = urbString[1];
		String ApiSecret = urbString[2];
		
		URL myurl = new URL(url);
		//URL myurl = new URL(urlTest);
		HttpsURLConnection con = (HttpsURLConnection)myurl.openConnection();

		con.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
		con.setRequestProperty("Accept", "application/json");
		con.setRequestProperty("cache-control", "no-cache");
		con.setRequestProperty("postman-token", Token);
		con.setRequestProperty("x-api-key", ApiKey);
		con.setRequestProperty("x-api-secret", ApiSecret);
		con.setRequestMethod(restType);
		try{
			if(restType.equals("GET"))
			{
			
			
				BufferedReader in=new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
				String inputLine = "";
				while ((inputLine = in.readLine()) != null)
				{ 
					ret+=inputLine;
				}
			
			
			}
			else if(restType.toUpperCase().equals("POST"))
			{   
				con.setDoOutput(true);
				try(OutputStream os = con.getOutputStream()) {
                   byte[] input = body.getBytes("utf-8");
                   os.write(input, 0, input.length);    
				}
				con.connect();
				
				boolean Totry = true;
				int nb = 0;
				while(Totry) {
					try(BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) 
					{
						StringBuilder response = new StringBuilder();
						String responseLine = "";
						while ((responseLine = br.readLine()) != null) {
							response.append(responseLine.trim());
						}
						ret=response.toString();
						Totry = false;
					}catch (Exception e) {
						// TODO: handle exception
						Totry = true;
						if(nb==3)
							Totry = false;
						TimeUnit.SECONDS.sleep(3);
						nb++;
					}
				}
			}
			else 
				responseJsonObject.errorType = "restType non support�";
		}
		catch(IOException e){
            e.printStackTrace();
            responseJsonObject.errorType = e.getMessage();
        }
        finally{
            responseJsonObject.responseCode = ( String.valueOf(con.getResponseCode()));
            responseJsonObject.responseMessage = ( con.getResponseMessage());
            responseJsonObject.responseBody = (ret);
            
        }
		return responseJsonObject;
	}
	
	
}
