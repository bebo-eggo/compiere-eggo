package com.audaxis.compiere.sync.model;

import java.sql.ResultSet;

import org.compiere.model.X_Z_SyncPriceLog;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class MSyncPriceLog extends X_Z_SyncPriceLog {

	public MSyncPriceLog(Ctx ctx, int Z_SyncPriceLog_ID, Trx trx) {
		super(ctx, Z_SyncPriceLog_ID, trx);
	}

	public MSyncPriceLog(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}

	public MSyncPriceLog(Ctx ctx, int ad_PInstance_ID, boolean b, Trx trx) {
		// TODO Auto-generated constructor stub
		this(ctx, 0,trx );
		setIsUse(b);
		setAD_PInstance_ID(ad_PInstance_ID);
	}

}
