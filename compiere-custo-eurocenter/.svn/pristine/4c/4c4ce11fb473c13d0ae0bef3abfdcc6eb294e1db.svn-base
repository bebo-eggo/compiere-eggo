package com.audaxis.compiere.eurocenter.process;

import java.awt.Desktop;
import java.net.URI;

import org.compiere.model.MOrder;
import org.compiere.process.SvrProcess;

public class OpenURL extends SvrProcess {

	public OpenURL() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub

	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		MOrder mo = new MOrder(getCtx(),getRecord_ID(),get_TrxName());
		final String URL = mo.get_ValueAsString("Z_UbiSoftUrl");
		URI r = new URI(URL);
		Desktop.getDesktop().browse(r);
		return null;
	}

}
