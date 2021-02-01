package com.audaxis.compiere.eurocenter.process;

import org.compiere.model.MPeriod;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

public class GenStartBalance extends SvrProcess {

	private int period_ID = 0;

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		period_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		MPeriod mp = new  MPeriod(getCtx(), period_ID, get_Trx()) ;
		DB.executeUpdate("call Z_CREATE_START_BAL("+period_ID+")", get_Trx());
		int no = DB.getSQLValue(get_Trx(), "Select count(1) from Z_Start_Balance where C_Period_ID = ? ", period_ID) ;
		
		return "Solde intial pour la période créé, nb compte ajouté : "+no;
	}

}
