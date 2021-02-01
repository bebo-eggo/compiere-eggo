package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Order extends Base<Order>{

	private static final long serialVersionUID = 1L;

	@JsonProperty("key")
	public String key;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("SOC")
	public String SOC;
	
	@JsonProperty("POREF")
	public String POREF;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("TYPEDOC")
	public String TYPEDOC;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("BPARTNER")
	public String BPARTNER;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("MAG")
	public String MAG;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("ENTREPOT")
	public String ENTREPOT;
	
	@JsonProperty("DATEORDERED")
	public String DATEORDERED;
	
	@JsonProperty("DESCRIPTION")
	public String DESCRIPTION;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("DOCACTION")
	public String DOCACTION;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("SALESREP")
	public String SALESREP;
	
	@JsonProperty("ORDERLINES")
	public Set<OrderLines> orderlines_set = new LinkedHashSet<>();
	
	public Order() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return null;
	}

}
