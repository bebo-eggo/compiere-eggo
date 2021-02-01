package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonProperty;

public class OrderPaySchList extends Base<OrderPaySchList>{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1435466051653971405L;
	
	@JsonProperty("c_order_id")
	public String ORDER_ID;
	
	@JsonProperty("orderno")
	public String ORDERNO;
	
	@JsonProperty("poreference")
	public String POREFERENCE;
	
	@JsonProperty("OrderPaySchList")
	public Set<OrderPaySch> OrderPaymentSchedule_set = new LinkedHashSet<>();

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return ""+ORDER_ID;
	}
	
	
	
}
