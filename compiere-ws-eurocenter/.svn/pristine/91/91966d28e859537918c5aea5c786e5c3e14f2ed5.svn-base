package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.InOut;
import com.audaxis.erp.json.Movement;
import com.audaxis.erp.json.SetInOutResult;
import com.audaxis.erp.json.SetMovementResult;
import com.audaxis.erp.service.ISetInOutService;
import com.audaxis.erp.service.ISetMovementService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class setMovementWs extends BaseWs<ISetMovementService>{

	@Autowired
    public setMovementWs(ISetMovementService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/setMovement", method = RequestMethod.POST)
	@ResponseBody
	public SetMovementResult setMovement(@RequestBody Movement inout) {
		return service.setMovement(inout);
	}
}
