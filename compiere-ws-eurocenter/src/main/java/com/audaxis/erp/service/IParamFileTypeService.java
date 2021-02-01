package com.audaxis.erp.service;

import com.audaxis.erp.json.ParamFileTypes;

public interface IParamFileTypeService extends IBaseService  {

	public ParamFileTypes getFileTypes(int ad_client_id) ;

	public ParamFileTypes getFileTypesByType(int type,int ad_client_id);
	
}
