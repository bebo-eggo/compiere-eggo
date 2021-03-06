package com.audaxis.erp.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.audaxis.erp.QuerySet;
import com.audaxis.erp.json.ItemSimple;
import com.audaxis.erp.json.OrderDownload;
import com.audaxis.erp.json.OrderDownloadList;
import com.audaxis.erp.json.SetOrderDownloadResult;
import com.audaxis.erp.service.ISetOrderDownloadService;

@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class setOrderDownloadWs extends BaseWs<ISetOrderDownloadService>{

	@Autowired
    public setOrderDownloadWs(ISetOrderDownloadService service) {
    	this.service = service;
    }
	
	@RequestMapping(value="/setOrderDownload", method = RequestMethod.POST)
	@ResponseBody
	public SetOrderDownloadResult setOrderDownload(@RequestBody OrderDownload ordDown) {
		return service.setOrderDownload(ordDown);
	}
	
	@RequestMapping(value="/getOrderDownloadByName")
	@ResponseBody
	public OrderDownload getOrderDownloadByName(@RequestParam("name") String Name,
			@RequestParam("c_order_id") int order_id) {
		return service.getOrderDownloadByName(Name, order_id);
	}
	
	@RequestMapping(value="/getOrderDownloadByID")
	@ResponseBody
	public OrderDownload getOrderDownloadByID(@RequestParam("c_orderdownload_id") int orderDownload_id) {
		return service.getOrderDownloadByID( orderDownload_id);
	}
	
	@RequestMapping(value="/deleteOrderDownloadByID",method=RequestMethod.DELETE)
	@ResponseBody
	public int deleteOrderDownloadByID(@RequestParam("c_orderdownload_id") int orderDownload_id) {
		return service.deleteOrderDownloadByID( orderDownload_id);
	}
	
	@RequestMapping(value="/getOrderDownloadsByOrderID")
	@ResponseBody
	public OrderDownloadList getOrderDownloadsByOrderID(@RequestParam("c_order_id") int order_id,@RequestParam("filetype") String filetype) {
		return service.getOrderDownloadsByOrderIDPoRef( order_id, null, filetype);
	}
	
	@RequestMapping(value="/getOrderDownloadsByPoRef")
	@ResponseBody
	public OrderDownloadList getOrderDownloadsyPoRef(@RequestParam("poreference") String poref, @RequestParam("filetype") String filetype) {
		return service.getOrderDownloadsByOrderIDPoRef( 0,poref, filetype) ;
	}

}
