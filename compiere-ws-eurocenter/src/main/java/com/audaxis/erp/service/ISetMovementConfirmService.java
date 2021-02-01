package com.audaxis.erp.service;

import com.audaxis.erp.json.MovementConfirm;
import com.audaxis.erp.json.SetMovementConfirmResult;

public interface ISetMovementConfirmService extends IBaseService {

	public SetMovementConfirmResult setMovementConfirm(MovementConfirm movc);
}
