package com.audaxis.compiere.eurocenter.process;

import com.audaxis.compiere.process.SvrProcessExtended;

public class TestConnection extends SvrProcessExtended {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub

	}

	@Override
	protected String doIt() throws Exception {
		java.sql.DriverManager.getConnection("jdbc:mysql://mach-tms.eurocenter.be:3306/TMS", "srvadmin", "Srv@dm1N");
		
		return null;
	}

}
