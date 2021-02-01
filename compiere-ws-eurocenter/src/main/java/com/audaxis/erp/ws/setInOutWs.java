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
import com.audaxis.erp.json.SetInOutResult;
import com.audaxis.erp.service.ISetInOutService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class setInOutWs extends BaseWs<ISetInOutService>{

	@Autowired
    public setInOutWs(ISetInOutService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/setInOut", method = RequestMethod.POST)
	@ResponseBody
	public SetInOutResult setInOut(@RequestBody InOut inout) {
		return service.setInOut(inout);
	}
}
