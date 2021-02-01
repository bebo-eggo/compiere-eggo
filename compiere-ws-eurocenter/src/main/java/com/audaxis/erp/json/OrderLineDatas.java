package com.audaxis.erp.json;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class OrderLineDatas {

	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("lignedocument")
	public String lignedocument;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("reference")
	public String reference;
	
	@JsonProperty("designation")
	public String designation;
	
	@JsonProperty("classe")
	public String classe;
	
	@JsonProperty("famillecommerciale")
	public String famillecommerciale;
	
	@JsonProperty("sfamillecommerciale")
	public String sfamillecommerciale;
	
	@JsonProperty("long")
	public String st_long;
	
	@JsonProperty("larg")
	public String larg;
	
	@JsonProperty("ep")
	public String ep;
	
	@JsonProperty("prixuni")
	public String prixuni;
	
	@JsonProperty("prixunittc")
	public String prixunittc;
	
	@JsonProperty("volume")
	public String volume;
	
	@JsonProperty("poids")
	public String poids;
	
	@JsonProperty("totalht")
	public String totalht;
	
	@JsonProperty("basetva")
	public String basetva;

	@JsonProperty("ttva")
	public String ttva;
	
	@JsonProperty("mtva")
	public String mtva;
	
	@JsonProperty("commentaire")
	public String commentaire;
	
	@JsonProperty("prixrevient")
	public String prixrevient;
	
	@JsonProperty("profit")
	public String profit;
	
	@JsonProperty("ligneparent")
	public String ligneparent;
	
	@JsonProperty("displayedlinenumber")
	public String displayedlinenumber;
	
}
