package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.audaxis.erp.json.Base;
import com.fasterxml.jackson.annotation.JsonProperty;

public class BPartner extends Base<BPartner> {
	

	private static final long serialVersionUID = 1L;

	@JsonProperty("key")
	public String key;
	
	@JsonProperty("name")
	public String name;
	
	@JsonProperty("name2")
	public String name2;
	
	@JsonProperty("greeting")
	public String greeting;
	
	@JsonProperty("isSociete")
	public String isSociete;
	
	@JsonProperty("IDTVA")
	public String IDTVA;
	
	@JsonProperty("AD_Language")
	public String AD_Language;
	
	@JsonProperty("IsDirect")
	public String IsDirect;
	
	@JsonProperty("IdContact_DC")
	public String IdContact_DC;
	
	@JsonProperty("address_set")
	public Set<BPartnerAddress> address_set = new LinkedHashSet<>();
	
	@JsonProperty("contact_set")
	public Set<BPartnerContact> contact_set = new LinkedHashSet<>();
	
	@Override
	public String getID() {
		String ret = name + "|" + name2;
		return ret;
	}

}
