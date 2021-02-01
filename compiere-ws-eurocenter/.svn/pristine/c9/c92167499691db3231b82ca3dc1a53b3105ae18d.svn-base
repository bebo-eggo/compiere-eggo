package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.ObjArco;
import com.audaxis.erp.json.SetUpdateArcoResult;
import com.audaxis.erp.service.IArcoService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class ArcoWs extends BaseWs<IArcoService>{

	@Autowired
    public ArcoWs(IArcoService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/updateInvoiceArco", method = RequestMethod.POST)
	@ResponseBody
	public SetUpdateArcoResult updateArco(@RequestBody ObjArco arco) {
		return service.updateArco(arco);
	}
}
