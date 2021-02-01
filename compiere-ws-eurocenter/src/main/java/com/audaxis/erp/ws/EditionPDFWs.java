package com.audaxis.erp.ws;

import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.audaxis.erp.service.IEditionPDFService;
import com.audaxis.erp.ws.BaseWs;


@Controller
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class EditionPDFWs extends BaseWs<IEditionPDFService>{
	
	@Autowired
    public EditionPDFWs(IEditionPDFService service) {
    	this.service = service;
    }
	@RequestMapping(value="/getPDFByProcess")
	@ResponseBody
	public ResponseEntity<byte[]> editionPDF(@RequestParam("Process_ID") int process_id,
			@RequestParam("Record_ID") int record_id,
			@RequestParam("REPORT_LOCALE") String locale) {
		return service.editionPDF(process_id,record_id,locale);
	}

}
