package com.audaxis.erp.json;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class AR_OA extends Base<AR_OA> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@JsonInclude(JsonInclude.Include.NON_NULL) 
	@JsonProperty("ar_no")
	public String ar_no;
	
	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@JsonInclude(JsonInclude.Include.NON_NULL) 
	@JsonProperty("ref1")
	public String ref1;
	
	@JsonProperty("ref2")
	public String ref2;
}
