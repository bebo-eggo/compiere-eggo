package com.audaxis.erp.json;

import java.util.LinkedHashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CA_Mag extends Base<CA_Mag> {

	private static final long serialVersionUID = 1L;
	
	@JsonProperty("annee")
	public String annee;
	
	@JsonProperty("mois")
	public String mois;
	
	@JsonProperty("ca_mag_list")
	public Set<CA_MagDetail> CA_MAG_set = new LinkedHashSet<>();

	@Override
	public String getID() {
		// TODO Auto-generated method stub
		return annee+"-"+mois;
	}
	
	
}
