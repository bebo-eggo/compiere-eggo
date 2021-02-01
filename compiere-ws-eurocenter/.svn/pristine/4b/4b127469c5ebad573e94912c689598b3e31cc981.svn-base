package com.audaxis.erp.json;

import com.audaxis.erp.json.Base;
import com.fasterxml.jackson.annotation.JsonProperty;

public class BPartnerAddress extends Base<BPartnerAddress> {
	

	private static final long serialVersionUID = 1L;

	@JsonProperty("address1")
	public String address1;
	
	@JsonProperty("address2")
	public String address2;
	
	@JsonProperty("address3")
	public String address3;
	
	@JsonProperty("address4")
	public String address4;
	
	@JsonProperty("postal")
	public String postal;
	
	@JsonProperty("city")
	public String city;
	
	@JsonProperty("country")
	public String country;
	
	@JsonProperty("IsShipTo")
	public String IsShipTo;
	
	@JsonProperty("IsBillTo")
	public String IsBillTo;

	@Override
	public String getID() {
		String ret = country + "|" + city + "|" + postal + "|" + address1;
		return ret;
	}

}
