package com.audaxis.erp.json;

import com.audaxis.erp.json.Base;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class BPartnerContact extends Base<BPartnerContact> {
	

	private static final long serialVersionUID = 1L;

	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("name")
	public String name;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("name2")
	public String name2;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("greeting")
	public String greeting;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("Email")
	public String Email;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("phone")
	public String phone;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("phone2")
	public String phone2;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("isDefault")
	public String isDefault;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("IsDirect")
	public String IsDirect;
	
	@JsonProperty("IdContact_DC")
	public String IdContact_DC;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("ad_user_id")
	public String ad_user_id;

	@Override
	public String getID() {
		String ret = ad_user_id;
		return ret;
	}

}
