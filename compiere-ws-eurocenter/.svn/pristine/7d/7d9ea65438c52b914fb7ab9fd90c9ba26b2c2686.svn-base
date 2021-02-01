package com.audaxis.erp.service;

import com.audaxis.erp.json.OrderDownload;
import com.audaxis.erp.json.OrderDownloadList;
import com.audaxis.erp.json.SetOrderDownloadResult;

public interface ISetOrderDownloadService extends IBaseService {

	public SetOrderDownloadResult setOrderDownload(OrderDownload ordDown);
	
	public OrderDownload getOrderDownloadByName(String Name, int order_id);
	
	public OrderDownload getOrderDownloadByID(int orderDownload_id);
	
	public int deleteOrderDownloadByID(int orderDownload_id);
	
	public OrderDownloadList getOrderDownloadsByOrderIDPoRef(int order_id, String Poreference, String filetype);
}
