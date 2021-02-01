package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.AR_OA;
import com.audaxis.erp.json.AR_OA2;
import com.audaxis.erp.json.SetARDetailResult;
import com.audaxis.erp.service.ISetAR_OAService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class setAR_OAWs extends BaseWs<ISetAR_OAService>{

	@Autowired
    public setAR_OAWs(ISetAR_OAService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/setAr_OA", method = RequestMethod.POST)
	@ResponseBody
	public SetARDetailResult setAR_OA(@RequestBody AR_OA inout) {
		return service.setAR_OA(inout);
	}
	
	@RequestMapping(value="/setAr_OA2", method = RequestMethod.POST)
	@ResponseBody
	public SetARDetailResult setAR_OA2(@RequestBody AR_OA2 inout) {
		return service.setAR_OA2(inout);
	}
}
