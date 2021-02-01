package com.audaxis.erp.ws;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.SetRequestUrbantzResult;
import com.audaxis.erp.service.IRequestUrbantzService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class requestUrbantzWs extends BaseWs<IRequestUrbantzService>{

	@Autowired
    public requestUrbantzWs(IRequestUrbantzService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/requestUrbantz")
	@ResponseBody
	public SetRequestUrbantzResult ReqUrbantz(@RequestParam("URL") String url,
			@RequestParam("resttype") String restType,
			@RequestParam("body") String body) throws IOException, InterruptedException {
		return service.requestUrbantz(url,restType,body);
	}
}
