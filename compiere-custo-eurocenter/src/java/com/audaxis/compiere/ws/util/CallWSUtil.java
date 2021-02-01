package com.audaxis.compiere.ws.util;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Properties;

import org.codehaus.jackson.map.ObjectMapper;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class CallWSUtil {

	private static CallWSUtil instance;

	private Properties wsProperties;
	private final String ENCODING;


	public static CallWSUtil getInstance(String wsPropertiesFileName,String wsEncoding) throws Exception {
		if (null == instance) {
			instance = new CallWSUtil(wsPropertiesFileName,wsEncoding);
		}
		return instance;
	}

	public CallWSUtil(String wsPropertiesFileName,String wsEncoding) throws Exception {
		this.ENCODING = wsEncoding;
		if(System.getProperty("COMPIERE_HOME") == null || System.getProperty("COMPIERE_HOME").isEmpty()){
			throw new Exception("La variable COMPIERE_HOME n'est pas renseigné dans les paramètres JVM");
		}

		wsProperties = new Properties();
		FileInputStream fis = null;
		try{
			fis = new FileInputStream(System.getProperty("COMPIERE_HOME")+File.separator+wsPropertiesFileName);
			wsProperties.load(fis);

			if(this.wsProperties.getProperty("URI") == null || ((String)this.wsProperties.getProperty("URI")).isEmpty()){
				throw new Exception("La propriété \"URI\" est obligatoire : représente l'hôte du WS");	
			}

		}catch(FileNotFoundException e){
			throw new Exception("Le fichier \""+System.getProperty("COMPIERE_HOME")+File.separator+wsPropertiesFileName+"\" n'existe pas : "+e.getMessage());
		}catch(IOException e){
			throw new Exception("Impossible de charger le fichier (veuillez respecter le format Properties) : "+e.getMessage());
		}finally {
			if(fis != null){
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public <T> T getJSON(String ressourceURI,HashMap<String, String> getParameters,Class<T> pojoClass) throws Exception{
		String uri= verifyURI(this.wsProperties.getProperty("URI"), ressourceURI);

		HttpURLConnection connection = null;
		T returnedPOJO = null;
		try {
			if(getParameters != null && getParameters.size() > 0){
				uri+=convertParametersToString(getParameters,"GET");
			}
			System.out.println("WS URL (method=GET) = "+uri);					
			URL url = new URL(uri);
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			InputStream is = connection.getInputStream();
			returnedPOJO = convertJsonToPOJO(is,pojoClass);
		}catch (IOException e) {
			throw new Exception("Erreur lors de l'appel WS ("+uri+") : "+e.getMessage());
		}finally{
			if(connection != null){
				connection.disconnect();
			}
		}

		return returnedPOJO;
	}

	public <T> T postJSON(String ressourceURI,HashMap<String, String> getParameters,HashMap<String, String> postParameters,Class<T> pojoClass) throws Exception{
		String uri= verifyURI(this.wsProperties.getProperty("URI"), ressourceURI);
		
		HttpURLConnection connection = null;
		T returnedPOJO = null;
		try {
			if(getParameters != null && getParameters.size() > 0){
				uri+=convertParametersToString(getParameters,"GET");
			}

			System.out.println("WS URL (method=POST) = "+uri);
			URL url = new URL(uri);
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type","application/x-www-form-urlencoded"); 
			connection.setRequestProperty("charset",this.ENCODING);
			if(postParameters != null && postParameters.size() > 0){
				String postParamStr = convertParametersToString(postParameters,"POST");
				byte[] postData       = postParamStr.getBytes(this.ENCODING);
				connection.setDoOutput(true);
				connection.setRequestProperty("Content-Length",Integer.toString(postData.length));
				DataOutputStream dos = null;
				try{
					dos = new DataOutputStream(connection.getOutputStream());
					dos.write(postData);
				}catch(IOException e){
					throw new Exception("Erreur lors de l'écriture des paramètres POST ("+uri+") : "+e.getMessage());
				}finally {
					if(dos != null){
						try {
							dos.close();
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			}
			InputStream is = connection.getInputStream();
			returnedPOJO = convertJsonToPOJO(is,pojoClass);
		}catch (IOException e) {
			throw new Exception("Erreur lors de l'appel WS ("+uri+") : "+e.getMessage());
		}finally{
			if(connection != null){
				connection.disconnect();
			}
		}

		return returnedPOJO;
	}
	
	public Document postDOM(HashMap<String, String> getParameters,HashMap<String, String> postParameters) throws Exception{
		String uri= this.wsProperties.getProperty("URI");
		
		HttpURLConnection connection = null;
		Document document = null;
		try {
			if(getParameters != null && getParameters.size() > 0){
				uri+=convertParametersToString(getParameters,"GET");
			}

			System.out.println("WS URL (method=POST) = "+uri);
			URL url = new URL(uri);
			connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type","application/x-www-form-urlencoded"); 
			connection.setRequestProperty("charset",this.ENCODING);
			if(postParameters != null && postParameters.size() > 0){
				String postParamStr = convertParametersToString(postParameters,"POST");
				byte[] postData       = postParamStr.getBytes(this.ENCODING);
				connection.setDoOutput(true);
				connection.setRequestProperty("Content-Length",Integer.toString(postData.length));
				DataOutputStream dos = null;
				try{
					dos = new DataOutputStream(connection.getOutputStream());
					dos.write(postData);
				}catch(IOException e){
					throw new Exception("Erreur lors de l'écriture des paramètres POST ("+uri+") : "+e.getMessage());
				}finally {
					if(dos != null){
						try {
							dos.close();
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			}
			InputStream is = connection.getInputStream();
			
			document = convertHTMLToDOM(is);
		}catch (IOException e) {
			throw new Exception("Erreur lors de l'appel WS ("+uri+") : "+e.getCause());
		}finally{
			if(connection != null){
				connection.disconnect();
			}
		}

		return document;
	}
	
	public String getProperty(String key){
		return this.wsProperties.getProperty(key);
	}
	
	private String verifyURI(String uri,String ressource){
		if(!uri.endsWith("/") && !ressource.startsWith("/")){
			uri +="/";
		}
		if(uri.endsWith("/") && ressource.startsWith("/")){
			uri = uri.substring(0,uri.length()-1);
		}
		uri+=ressource;
		
		return uri;
	}

	private String convertParametersToString(HashMap<String, String> parameters,String method) throws UnsupportedEncodingException{
		String paramStr ="";
		int nbParam = 0;
		for (Entry<String,String> param : parameters.entrySet()) {
			if(param.getKey() != null && !param.getKey().isEmpty() && param.getValue() != null && !param.getValue().isEmpty()){
				if(nbParam > 0)
					paramStr+="&";
				else if("GET".equals(method))
					paramStr+="?";
				paramStr+= URLEncoder.encode(param.getKey(), this.ENCODING)+"="+URLEncoder.encode(param.getValue(), this.ENCODING);
				nbParam++;
			}
		}

		return paramStr;
	}

	private <T> T convertJsonToPOJO(InputStream json,Class<T> clazz) throws IOException{
		ObjectMapper mapper = new ObjectMapper();
		T pojo = mapper.readValue(json, clazz);
		return pojo;
	}
	
	private Document convertHTMLToDOM(InputStream is) throws IOException{
		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        StringBuilder out = new StringBuilder();
        String line;
        try{
        	while ((line = reader.readLine()) != null) {
        		out.append(line);
        	}
        }finally{
        	reader.close();	
        }
		Document doc = Jsoup.parse(out.toString());
		return doc;
	}
}
