package com.audaxis.erp.json;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class OrderLines extends Base<OrderLines>{

	@JsonProperty("OrderLineID")
	public String ORDERLINEID;
	
	public OrderLines() {
		// TODO Auto-generated constructor stub
	}
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("PRODUCT")
	public String PRODUCT;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("QTY")
	public String QTY;
	
	@JsonProperty("DESCRIPTION")
	public String DESCRIPTION;

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return ORDERLINEID;
	}

}
