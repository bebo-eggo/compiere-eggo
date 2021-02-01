package com.audaxis.erp.json;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class SetARDetailResult extends Base<SetARDetailResult>{

	private static final long serialVersionUID = 1L;

	@JsonProperty("error")
	public String error;

	@JsonProperty("error_desc")
	public String errordesc;

	@JsonInclude(JsonInclude.Include.NON_NULL) 
	@JsonProperty("ar_no")
	public String ar_no;
	
	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@JsonProperty("oa")
	public String oa;
	
	@JsonProperty("sem_ar")
	public String sem_ar;

	@JsonProperty("sem_rec")
	public String sem_rec;
	
	@JsonProperty("odv")
	public String odv;
	
	@JsonProperty("ar_princ")
	public String ar_princ;

	@JsonProperty("c_order_id")
	public Integer c_order_id;
	
	@JsonProperty("amount")
	public String amount;
	
	@JsonProperty("principal")
	public String principal;
	
	@JsonProperty("poref")
	public String poref;
	
	@JsonProperty("cubage")
	public String cubage;
	
	@JsonInclude(JsonInclude.Include.NON_NULL) 
	@JsonProperty("version")
	public String version;
	
	@JsonProperty("total_ar_oa")
	public String total_ar_oa;
	
	@JsonProperty("magasin")
	public String magasin;
}
