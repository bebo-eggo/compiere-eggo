package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.MovementConfirm;
import com.audaxis.erp.json.SetMovementConfirmResult;
import com.audaxis.erp.service.ISetMovementConfirmService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class setMovementConfirmWs extends BaseWs<ISetMovementConfirmService>{

	@Autowired
    public setMovementConfirmWs(ISetMovementConfirmService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/setMovementConfirm", method = RequestMethod.POST)
	@ResponseBody
	public SetMovementConfirmResult setMovementConfirm(@RequestBody MovementConfirm inout) {
		return service.setMovementConfirm(inout);
	}
}
