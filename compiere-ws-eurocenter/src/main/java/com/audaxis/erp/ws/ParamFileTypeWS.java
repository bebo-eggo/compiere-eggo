package com.audaxis.erp.ws;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.ParamFileTypes;
import com.audaxis.erp.service.IParamFileTypeService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class ParamFileTypeWS extends BaseWs<IParamFileTypeService>{

	@RequestMapping(value="/fileTypes", method = RequestMethod.GET)
	public @ResponseBody ParamFileTypes getFileTypes(@RequestParam("ad_client_id") int ad_client_id
			) {
		return service.getFileTypes(ad_client_id);
	}
	
	@RequestMapping(value="/getFileTypesByType", method = RequestMethod.GET)
	public @ResponseBody ParamFileTypes getFileTypesByType(			
			@RequestParam("type") int type,@RequestParam("ad_client_id") int ad_client_id) {		
		return service.getFileTypesByType(type,ad_client_id);
	}
}