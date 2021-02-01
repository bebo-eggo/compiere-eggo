package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.apache.commons.beanutils.DynaClass;
import org.compiere.framework.PO;
import org.compiere.framework.VO;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.QueryUtil;
import org.compiere.util.Trx;

public class MTypeOA extends X_Z_TypeOA {

	public MTypeOA(Ctx ctx, int ID, Trx trx) {
		super(ctx, ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MTypeOA(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	public static MTypeOA getTypeOAByValue(Ctx ctx,int AD_Client_ID, String value, Trx trx){
		int id = QueryUtil.getSQLValue(trx, "Select MAX(Z_TypeOA_ID) from Z_TypeOA where Z_TypeOA.AD_Client_ID = ? and Z_TypeOA.Value = ? " , AD_Client_ID, value);
		return new MTypeOA(ctx, id, trx); 
	}

}
