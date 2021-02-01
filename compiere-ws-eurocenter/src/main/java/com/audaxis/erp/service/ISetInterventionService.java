package com.audaxis.erp.service;

import com.audaxis.erp.json.Intervention;
import com.audaxis.erp.json.SetInterventionResult;

public interface  ISetInterventionService extends IBaseService {
	
	public SetInterventionResult setIntervention(Intervention inter);
	
	public Intervention getIntervention(int intervention_id);
	
	public SetInterventionResult deleteIntervention(int intervention_id);

}
