package org.compiere.model;

import java.sql.ResultSet;

import org.compiere.framework.PO;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.util.CompiereException;

public class MTrxCODA extends X_Z_TrxCODA {

	public MTrxCODA(Ctx ctx, int Z_TrxCODA_ID, Trx trx) {
		super(ctx, Z_TrxCODA_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MTrxCODA(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);

	}

	@Override
	protected boolean beforeSave(boolean newRecord) {

		if( getXX_TrxC_Fam()==null && getXX_TrxC_Op()==null)
			return super.beforeSave(newRecord);
		String WhereClause = "XX_TrxC_Fam = " + getXX_TrxC_Fam()
				+ "AND XX_TrxC_Op = " + getXX_TrxC_Op()
				+ " AND AD_Client_ID = " + getAD_Client_ID()
				+ " AND AD_Org_ID = " + getAD_Org_ID();
		int[] iDs = PO.getAllIDs(get_TableName(), WhereClause, get_Trx());
		if (iDs != null && iDs.length > 0)
			throw new CompiereException(Msg.getMsg(getCtx(),
					"AUDAXIS-CODA-UNIQUE"));

		return super.beforeSave(newRecord);
	}
}
