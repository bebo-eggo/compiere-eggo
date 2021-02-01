package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.json.OrderPaySch;
import com.audaxis.erp.json.OrderPaySchList;
import com.audaxis.erp.json.SetOrderPaySchResult;
import com.audaxis.erp.service.ISetOrderPaySchService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class setOrderPaySchWs extends BaseWs<ISetOrderPaySchService>{

	@Autowired
    public setOrderPaySchWs(ISetOrderPaySchService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/setOrderPaySch", method = RequestMethod.POST)
	@ResponseBody
	public SetOrderPaySchResult setOrderPaySch(@RequestBody OrderPaySch ordPay) {
		return service.setOrderPaySch(ordPay);
	}
	
	@RequestMapping(value="/getOrderPaySchByID")
	@ResponseBody
	public OrderPaySch getOrderPaySchByID(@RequestParam("z_orderpaymschedule_id") int orderpaymschedule_id) {
		return service.getOrderPaySchByID( orderpaymschedule_id);
	}
	
	@RequestMapping(value="/deleteOrderPaySchByID",method=RequestMethod.DELETE)
	@ResponseBody
	public int deleteOrderPaySchByID(@RequestParam("z_orderpaymschedule_id") int orderpaymschedule_id) {
		return service.deleteOrderPaySchByID( orderpaymschedule_id);
	}
	
	@RequestMapping(value="/getOrderPaySchsByOrderID")
	@ResponseBody
	public OrderPaySchList getOrderPaySchsByOrderID(@RequestParam("c_order_id") int order_id,@RequestParam(value = "echtype", required = false) String echtype) {
		return service.getOrderPaySchsByOrderIDPoRef( order_id, null, echtype);
	}
	
	@RequestMapping(value="/getOrderPaySchsByPoRef")
	@ResponseBody
	public OrderPaySchList getOrderPaySchsByPoRef(@RequestParam("poreference") String poref, @RequestParam(value = "echtype", required = false) String echtype) {
		return service.getOrderPaySchsByOrderIDPoRef( 0,poref, echtype) ;
	}

}
