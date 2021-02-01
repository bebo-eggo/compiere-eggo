package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.Intervention;
import com.audaxis.erp.json.SetInterventionResult;
import com.audaxis.erp.service.ISetInterventionService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class setInterventionWs extends BaseWs<ISetInterventionService>{
	
	@Autowired
    public setInterventionWs(ISetInterventionService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/setIntervention", method = RequestMethod.POST)
	@ResponseBody
	public SetInterventionResult setOrder(@RequestBody Intervention inter) {
		return service.setIntervention(inter);
	}
	
	@RequestMapping(value="/deleteIntervention")
	@ResponseBody
	public SetInterventionResult deleteIntervention(@RequestParam("intervention_id") int intervention_id) {
		return service.deleteIntervention( intervention_id);
	}
	
	@RequestMapping(value="/getIntervention")
	@ResponseBody
	public Intervention getIntervention(@RequestParam("intervention_id") int intervention_id) {
		return service.getIntervention( intervention_id);
	}
}