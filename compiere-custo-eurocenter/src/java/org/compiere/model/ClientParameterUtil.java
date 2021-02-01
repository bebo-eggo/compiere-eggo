package org.compiere.model;

import org.compiere.util.Ctx;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.proxy.MClientProxy;

public class ClientParameterUtil {
	
	private final Ctx ctx;
	private final Trx trx;
	private final MClientProxy clientProxy;
	private final int AD_Client_ID;
	
	public ClientParameterUtil(Ctx ctx, int AD_Client_ID, Trx trx) {
		this.ctx = ctx;
		this.trx = trx;
		this.AD_Client_ID = AD_Client_ID;
		MClient client = MClient.get(ctx, AD_Client_ID);
		clientProxy = new MClientProxy(client);
	}

	public MClientProxy getClientProxy() {
		return clientProxy;
	}

	public int getAD_Client_ID() {
		return AD_Client_ID;
	}

	public Trx get_Trx() {
		return trx;
	}
	
	public Ctx getCtx() {
		return ctx;
	}
	
}
