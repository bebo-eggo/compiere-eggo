package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

public class MovementConfirm extends Base<MovementConfirm>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@JsonProperty("NO_MCONFIRM")
	public String NO_MCONFIRM;
	
	@JsonProperty("NO_MOVEMENT")
	public String NO_MOVEMENT;
	
	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("CONFIRM_ALL")
	public String CONFIRM_ALL;

	@JsonInclude(JsonInclude.Include.NON_NULL)
	@JsonProperty("DOCACTION")
	public String DOCACTION;
	
	@JsonProperty("DESCRIPTION")
	public String DESCRIPTION;
	
	@JsonProperty("MOVEMENTC_LINES")
	public Set<MovementLinesConfirm> movementCLines_set = new LinkedHashSet<>();

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return null;
	}

}
