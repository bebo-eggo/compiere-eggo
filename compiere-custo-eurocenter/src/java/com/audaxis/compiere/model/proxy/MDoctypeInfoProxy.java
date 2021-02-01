package com.audaxis.compiere.model.proxy;

import com.audaxis.compiere.model.BasicProxy;
import com.audaxis.compiere.model.MDocTypeInfo;

public class MDoctypeInfoProxy extends BasicProxy<MDocTypeInfo> {

	MDocTypeInfo po;
	public MDoctypeInfoProxy(MDocTypeInfo po) {
		super(po);
		this.po=po;
		// TODO Auto-generated constructor stub
	}
	/**
	 * 
	 * @param M_PriceList_ID
	 */
	public void setM_PriceList_ID(int M_PriceList_ID)
	{
		po.set_Value("M_PriceList_ID",M_PriceList_ID);
	}
	/**
	 * 
	 * @return M_PriceList_ID
	 */
	public int getM_PriceList_ID()
	{
		return po.get_ValueAsInt("M_PriceList_ID");
	}
}
