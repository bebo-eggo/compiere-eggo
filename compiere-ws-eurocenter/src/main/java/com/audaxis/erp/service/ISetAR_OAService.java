package com.audaxis.erp.service;

import com.audaxis.erp.json.AR_OA;
import com.audaxis.erp.json.AR_OA2;
import com.audaxis.erp.json.SetARDetailResult;

public interface ISetAR_OAService extends IBaseService {

	public SetARDetailResult setAR_OA(AR_OA oar_oa);
	
	public SetARDetailResult setAR_OA2(AR_OA2 oar_oa);
}
