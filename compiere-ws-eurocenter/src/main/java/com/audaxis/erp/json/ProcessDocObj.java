package com.audaxis.erp.json;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ProcessDocObj  extends Base<ProcessDocObj>{

	@JsonProperty("key")
	public String key;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("DOCNO")
	public String DOCNO;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("TYPEDOC")
	public String TYPEDOC;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("DOCACTION")
	public String DOCACTION;
	
	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return null;
	}

}
