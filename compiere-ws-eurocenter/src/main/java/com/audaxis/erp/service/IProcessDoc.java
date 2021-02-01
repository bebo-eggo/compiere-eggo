package com.audaxis.erp.service;

import com.audaxis.erp.json.ProcessDocObj;
import com.audaxis.erp.json.SetProcessDocResult;
import com.audaxis.erp.service.IBaseService;

public interface IProcessDoc extends IBaseService {
	
	public SetProcessDocResult processDoc(ProcessDocObj processDoc);

}
