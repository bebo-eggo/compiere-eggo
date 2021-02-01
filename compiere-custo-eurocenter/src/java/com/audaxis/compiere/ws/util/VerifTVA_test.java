package com.audaxis.compiere.ws.util;
import java.util.HashMap;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class VerifTVA_test {

	public static void main(String[] args) {
		try {			
			CallWSUtil wsUtil = CallWSUtil.getInstance("WS_VerifTVA.properties","UTF-8");
			
			HashMap<String, String> postParameters = new HashMap<String, String>();
			postParameters.put("memberStateCode","BE");
			postParameters.put("number","0473965556");
			
			Document doc = wsUtil.postDOM(null, postParameters);
			Element elResponse = doc.getElementById("vatResponseFormTable");
			if(elResponse.getElementsByClass("invalidStyle") != null && elResponse.getElementsByClass("invalidStyle").size() > 0){
				System.out.println("N° de TVA non valide");	
			}else if(elResponse.getElementsByClass("validStyle") != null && elResponse.getElementsByClass("validStyle").size() > 0){
				System.out.println("N° de TVA valide");
				Elements resultForm = elResponse.getElementsByTag("td");
				for(int i=0;i<resultForm.size();i++){
					if("Name".equals(resultForm.get(i).html()) && "labelStyle".equals(resultForm.get(i).attr("class"))){
						i++;
						System.out.println("Name="+resultForm.get(i).html());
					}else if("Address".equals(resultForm.get(i).html()) && "labelStyle".equals(resultForm.get(i).attr("class"))){
						i++;
						String completeAddress = resultForm.get(i).html();
						String[] adresses = completeAddress.split("<br>");
						if(adresses.length > 0){
							System.out.println("Address="+adresses[0]);
							String[] postal_city = adresses[1].split(" ");
							if(postal_city.length > 0){
								System.out.println("CP="+postal_city[0]);
								System.out.println("City="+postal_city[1]);
							}
						}
					}
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
