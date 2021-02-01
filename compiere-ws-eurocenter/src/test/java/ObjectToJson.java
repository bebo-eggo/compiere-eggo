

import com.audaxis.erp.json.Address;
import com.audaxis.erp.json.PartnerAddress;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


/**
 * 
 * convert Object to a json file to use it on TestClass;
 * @author administrator
 *
 */

public class ObjectToJson {

	public static void main(String[] args) {

		System.out.println("JSON File : \n" + getBPadress());
		
		System.out.println("TEST JSON File : \n" + getBPadress().replace("\"", "\\\""));
		
		//System.out.println(getBPartnerRequest());
		
	
	}


	public static String getBPadress(){
		
		ObjectMapper mapper = new ObjectMapper();

		PartnerAddress bpa = new PartnerAddress();
		bpa.cust_id = "1580903";
		bpa.name = "Sohlbergs i Jönköbing AB";
		bpa.name2 = "name2";
		bpa.ref = "";
		bpa.full_description = "";
		
		Address adress = new Address();
		adress.zipCode = "25000";
		adress.city = "Finmekanik";
		adress.country = "France";
		adress.country_id = "102";
		adress.street = new String []{"33010","Bredaréàyd AB","Heligsjàvégen 3","12"};
		
		
		bpa.address = adress;
		

		

		String jsonInString = "";
		
		try {
			jsonInString = mapper.writeValueAsString(bpa);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return jsonInString;
	}
}
	

