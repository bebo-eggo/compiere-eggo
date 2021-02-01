package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonProperty;

public class OrderDownloadList extends Base<OrderDownloadList>{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1435466051653971405L;
	
	@JsonProperty("c_order_id")
	public String ORDER_ID;
	
	@JsonProperty("poreference")
	public String POREFERENCE;
	
	@JsonProperty("OrderDownloadList")
	public Set<OrderDownload> OrderDownload_set = new LinkedHashSet<>();

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return ""+ORDER_ID;
	}
	
	
	
}
