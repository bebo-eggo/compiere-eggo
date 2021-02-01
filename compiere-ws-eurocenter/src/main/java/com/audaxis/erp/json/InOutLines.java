package com.audaxis.erp.json;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class InOutLines extends Base<InOutLines>{

	@JsonProperty("InOutLineID")
	public String INOUTLINEID;
	
	@JsonProperty("ORDERLINE")
	public String ORDERLINE;
	
	@JsonProperty("EMPL")
	public String EMPL;
	
	@JsonProperty("ISREPLACE")
	public String ISREPLACE;
	
	@JsonProperty("PRODUCT")
	public String PRODUCT;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("QTY")
	public String QTY;
	
	@JsonProperty("DESCRIPTION")
	public String DESCRIPTION;
	
	public InOutLines() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return INOUTLINEID;
	}

}
