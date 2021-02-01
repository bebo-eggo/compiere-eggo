package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.ProcessDocObj;
import com.audaxis.erp.json.SetProcessDocResult;
import com.audaxis.erp.service.IProcessDoc;
import com.audaxis.erp.ws.BaseWs;


@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class ProcessDocWs extends BaseWs<IProcessDoc>{
	
	@Autowired
    public ProcessDocWs(IProcessDoc service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/processDoc", method = RequestMethod.POST)
	@ResponseBody
	public SetProcessDocResult processDoc(@RequestBody ProcessDocObj inout) {
		return service.processDoc(inout);
	}

}
