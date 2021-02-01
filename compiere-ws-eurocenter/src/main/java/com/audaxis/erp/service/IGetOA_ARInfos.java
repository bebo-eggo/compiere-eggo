package com.audaxis.erp.service;


import com.audaxis.erp.json.AR_OA_Infos;

public interface IGetOA_ARInfos extends IBaseService {

	public AR_OA_Infos getOA_ARInfos(String no_oa);
}
