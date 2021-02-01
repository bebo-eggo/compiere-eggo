import com.audaxis.erp.ws.LocalHttpResolver;


public class TestCreateOrder {

	public static void main(String[] args) {
		try {
			String session_id = "15729696";

			String url = "createModifyAddress";
			//String url = "getAllCountries";
			
//			LocalHttpResolver lhr = new LocalHttpResolver("http://osgws:8180/ws/");
			//LocalHttpResolver lhr = new LocalHttpResolver("http://172.28.20.233:8180/ws/");
			LocalHttpResolver lhr = new LocalHttpResolver("http://172.28.20.225:7080/ws/");
			String order = getOrder();
			
			String result = lhr.httpPostString(url+ "?X-SessionId="+session_id, order);
			System.out.println(result);
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}

	private static String getOrder() {
		return 
//				"{"
//				+"\"cust_id\":\"123\""
//				+ "}";
		
//		"{"
//			+"\"comments\": \"order comment\","
//			+"\"cust_id\": \"1008748\","
//			+"\"shipping_address\": \"1408320\","
//			+"\"date\": \"2015-01-28\","
//			+"\"requested_date\": \"2015-01-28\","
//			+"\"pricelist\": \"1000147\","
//			+"\"currency\": \"EUR\","
//			+"\"lines\": [ {"
//			+"\"item_id\": 1000047,"
//			+"\"qty\": 1,"
//			+"\"price\": 5"
//			+"}"
//			+"]"
//			+"}";
				
				//Bbp adress (do not delete just comment it)
				
				"{\"cust_id\":\"1580903\",\"ref\":\"\",\"name\":\"Sohlbergs i Jönköbing AB\",\"name2\":\"name2\",\"full_description\":\"\",\"address\":{\"zipCode\":\"25000\",\"city\":\"Finmekanik\",\"country\":\"France\",\"country_id\":\"102\",\"street\":[\"33010\",\"Bredaréàyd AB\",\"Heligsjàvégen 3\",\"12\"]}}";
	}
	
	
	public static String getAdress(){
		return null;
		
	}
}
