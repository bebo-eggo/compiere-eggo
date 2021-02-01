package com.audaxis.compiere.sync.proxy;

import com.audaxis.compiere.model.BasicProxy;
import com.audaxis.compiere.model.MTypeEcheance;

public class MTypeEcheanceProxy extends BasicProxy<MTypeEcheance> {

	MTypeEcheance po;
	public MTypeEcheanceProxy(MTypeEcheance po) {
		super(po);
		this.po=po;
		// TODO Auto-generated constructor stub
	}
	/**
	 * 
	 * @param IsProm
	 */
	public void setIsProm (boolean IsProm)
	{
		po.set_Value("IsProm", Boolean.valueOf("IsProm"));
	}

	public boolean IsProm()
	{
		return po.get_ValueAsBoolean("IsProm");
	}
	/**
	 * 
	 * @param M_Product_ID
	 */
	 public void setM_Product_ID (int M_Product_ID) {
	        if (M_Product_ID <= 0)
	        	 po.set_Value ("M_Product_ID", null);
	        else
	        po.set_Value ("M_Product_ID", Integer.valueOf(M_Product_ID));
	        
	    }
	 /**
	  * 
	  * @return M_Product_ID
	  */
	 public int getM_Product_ID()
	 {
		 return po.get_ValueAsInt("M_Product_ID");
	 }
}
