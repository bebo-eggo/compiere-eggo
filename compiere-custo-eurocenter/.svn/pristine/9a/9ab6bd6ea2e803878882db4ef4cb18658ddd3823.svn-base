package org.compiere.model;

import java.sql.ResultSet;

import org.compiere.util.Ctx;
import org.compiere.util.QueryUtil;
import org.compiere.util.Trx;

public class MOrgInfoCODA extends X_XX_OrgInfoCODA {

    /** Logger for class MBankStatementLine */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MBankStatementLine.class);
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public MOrgInfoCODA(Ctx ctx, int XX_OrgInfoCODA_ID, Trx trx) {
		super(ctx, XX_OrgInfoCODA_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrgInfoCODA(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {

		if(QueryUtil.getSQLValue(get_Trx(), "SELECT 1 FROM XX_OrgInfoCODA where XX_Terminal = ? ", getXX_Terminal())>0){
			log.saveError("Terminal existe deja pour Organisation ", getAD_Org_ID()+"");
			return false;
		}
				
		return super.beforeSave(newRecord);
	}


	
}
