package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class InOut extends Base<InOut>{

	private static final long serialVersionUID = 1L;

	@JsonProperty("key")
	public String key;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("SOC")
	public String SOC;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("ISSOTRX")
	public String ISSOTRX;
	
	@JsonProperty("NO_INOUT")
	public String NO_INOUT;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("DELETE_LINES")
	public String DELETE_LINES;
	
	@JsonProperty("ORDERNO")
	public String ORDERNO;
	
	@JsonProperty("TYPEDOC")
	public String TYPEDOC;
	
	@JsonProperty("BPARTNER")
	public String BPARTNER;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("MAG")
	public String MAG;
	
	@JsonProperty("ENTREPOT")
	public String ENTREPOT;
	
	@JsonProperty("MOVEMENTDATE")
	public String MOVEMENTDATE;
	
	@JsonProperty("DESCRIPTION")
	public String DESCRIPTION;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("DOCACTION")
	public String DOCACTION;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("GEN_INV")
	public String GEN_INV;
	
	@JsonProperty("INOUT_LINES")
	public Set<InOutLines> inoutlines_set = new LinkedHashSet<>();
	
	public InOut() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return NO_INOUT;
	}

}
