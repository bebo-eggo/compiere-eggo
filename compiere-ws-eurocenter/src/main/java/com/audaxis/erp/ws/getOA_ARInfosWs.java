package com.audaxis.erp.ws;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.AR_OA_Infos;
import com.audaxis.erp.service.IGetOA_ARInfos;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class getOA_ARInfosWs extends BaseWs<IGetOA_ARInfos>{
	
	@RequestMapping(value="/getOA_ARInfos")
	@ResponseBody
	public AR_OA_Infos getOA_ARInfos(@RequestParam("OA") String No_OA) {
		return service.getOA_ARInfos(No_OA);
	}
}
