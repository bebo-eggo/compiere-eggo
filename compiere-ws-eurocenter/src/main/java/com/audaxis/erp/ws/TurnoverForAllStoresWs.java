package com.audaxis.erp.ws;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.CA_Mag;
import com.audaxis.erp.service.ITurnoverForAllStores;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class TurnoverForAllStoresWs extends BaseWs<ITurnoverForAllStores>{

	@RequestMapping(value="/TurnoverForAllStores")
	@ResponseBody
	public CA_Mag getTurnoverForAllStores(@RequestParam("annee") String annee, @RequestParam("mois") String mois) {
		return service.getTurnoverForAllStores(annee, mois) ;
	}
}
