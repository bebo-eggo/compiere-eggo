package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonProperty;

public class AR_OA_Infos extends Base<AR_OA_Infos> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@JsonProperty("oa_no")
	public String oa_no;

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@JsonProperty("AR_OA_list")
	public Set<AR_OA_Details> AR_OA_list_set = new LinkedHashSet<>();
}
