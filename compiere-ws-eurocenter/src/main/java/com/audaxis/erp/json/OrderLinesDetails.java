package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class OrderLinesDetails {

	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("soc")
	public String soc;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("c_orderline_id")
	public String C_OrderLine_ID;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("c_order_id")
	public String C_Order_ID;
	
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("order_no")
	public String order_no;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("extradata_id")
	public String extradata_id;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("int_code")
	public String int_code;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("int_error_desc")
	public String int_error_desc;
	
	@JsonProperty("datas")
	public Set<OrderLineDatas> OrderLineDatas_set = new LinkedHashSet<>();
}
