package com.audaxis.erp.service;

import com.audaxis.erp.json.OrderPaySchList;
import com.audaxis.erp.json.OrderPaySch;
import com.audaxis.erp.json.SetOrderPaySchResult;

public interface ISetOrderPaySchService extends IBaseService {

	public SetOrderPaySchResult setOrderPaySch(OrderPaySch ordPayn);
	
	public OrderPaySch getOrderPaySchByID(int orderPaySch_ID);
	
	public int deleteOrderPaySchByID(int orderPaySch_ID);
	
	public OrderPaySchList getOrderPaySchsByOrderIDPoRef(int order_id, String Poreference, String typeEch);
}
