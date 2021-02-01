package com.audaxis.erp.service;

import com.audaxis.erp.json.ObjArco;
import com.audaxis.erp.json.SetUpdateArcoResult;

public interface IArcoService extends IBaseService {

	public SetUpdateArcoResult updateArco(ObjArco objarco);
}
