package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.audaxis.erp.json.BPartner;
import com.audaxis.erp.json.CreateBPResult;
import com.audaxis.erp.service.ICreateBPartnerService;
import com.audaxis.erp.ws.BaseWs;


@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class createBPartnerWs extends BaseWs<ICreateBPartnerService>{
	
	@Autowired
    public createBPartnerWs(ICreateBPartnerService service) {
    	this.service = service;
    }
	@RequestMapping(value="/createBPartner", method = RequestMethod.POST)
	@ResponseBody
	public CreateBPResult createBPartner(@RequestBody BPartner bpartner) {
		return service.createBPartner(bpartner);
	}

}
