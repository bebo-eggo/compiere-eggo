package com.audaxis.erp.service;

import com.audaxis.erp.json.BPartner;
import com.audaxis.erp.json.CreateBPResult;
import com.audaxis.erp.service.IBaseService;

public interface ICreateBPartnerService extends IBaseService {
	
	public CreateBPResult createBPartner(BPartner bpartner);

}