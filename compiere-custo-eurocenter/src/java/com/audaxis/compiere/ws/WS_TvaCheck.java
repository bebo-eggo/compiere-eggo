package com.audaxis.compiere.ws;

import java.util.HashMap;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.audaxis.compiere.ws.pojo.CheckTVA;
import com.audaxis.compiere.ws.util.CallWSUtil;

public class WS_TvaCheck {

	public static CheckTVA check(String noTva) throws Exception{
		CheckTVA response = null;
		String countryCode = noTva.substring(0, 2);
		String tva = noTva.substring(2, noTva.length());
		
		CallWSUtil wsUtil = CallWSUtil.getInstance("WS_VerifTVA.properties","UTF-8");

		HashMap<String, String> postParameters = new HashMap<String, String>();
		postParameters.put("memberStateCode",countryCode);
		postParameters.put("number",tva);

		Document doc = wsUtil.postDOM(null, postParameters);
		Element elResponse = doc.getElementById("vatResponseFormTable");
		if(elResponse.getElementsByClass("invalidStyle") != null && elResponse.getElementsByClass("invalidStyle").size() > 0){
			System.out.println("N° de TVA non valide");	
		}else if(elResponse.getElementsByClass("validStyle") != null && elResponse.getElementsByClass("validStyle").size() > 0){
			System.out.println("N° de TVA valide");
			Elements resultForm = elResponse.getElementsByTag("td");
			for(int i=0;i<resultForm.size();i++){
				if("Name".equals(resultForm.get(i).html()) && "labelStyle".equals(resultForm.get(i).attr("class"))){
					if(response == null){
						response = new CheckTVA();
					}
					i++;
					response.setName(resultForm.get(i).html());
					
				}else if("Address".equals(resultForm.get(i).html()) && "labelStyle".equals(resultForm.get(i).attr("class"))){
					i++;
					String completeAddress = resultForm.get(i).html();
					String[] adresses = completeAddress.split("<br>");
					if(adresses.length > 0){
						if(response == null){
							response = new CheckTVA();
						}
						response.setAddress(adresses[0]);
						String[] postal_city = adresses[1].split(" ");
						if(postal_city.length > 0){
							response.setPostal(postal_city[0]);
							response.setCity(postal_city[1]);
						}
					}
				}
			}
		}
		return response;
	}
}
