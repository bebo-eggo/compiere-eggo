package com.audaxis.compiere.sync.proxy;

import org.compiere.model.MUser;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.BasicProxy;


public class MUserProxy extends BasicProxy<MUser> {

	private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MUser.class);
	private MUser po;
	
	public MUserProxy(MUser po) {
		super(po);
		this.po =po;
	}

    public void setIsInvoiceValidator (boolean IsInvoiceValidator){
        getPO().set_ValueNoCheck ("IsInvoiceValidator", Boolean.valueOf(IsInvoiceValidator));
    }
    
    public boolean IsInvoiceValidator() {
        return getPO().get_ValueAsBoolean("IsInvoiceValidator");
    }
    /**
	 * 
	 * @param ad_userfrom_id
	 *            user from
	 * @param ad_userto_id
	 *            user to
	 */
	public int copyCustomisations(Ctx ctx, Trx trx, int ad_UserFrom_ID, int ad_UserTo_ID, boolean isDefault) {
		if (isDefault)
			ad_UserFrom_ID = DB.getSQLValue(null, "SELECT AD_User_ID FROM AD_User WHERE Name =?", Msg.getMsg(ctx, "AUDAXIS_DEFAULTUSER_CUSTOMIZATION"));
		//
		StringBuffer sql = new StringBuffer("INSERT INTO AD_User_Customization(AD_User_Customization_ID, AD_User_ID, AD_Component_ID, Custom, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy) ");
		sql.append("SELECT AD_Sequence_NextNo('AD_User_Customization'), ");// REDMINE #28914
		sql.append(ad_UserTo_ID);
		sql.append(", AD_Component_ID, Custom, ");
		sql.append(po.getAD_Client_ID()).append(", ");
		sql.append(po.getAD_Org_ID()).append(", ");
		sql.append("'Y', SYSDATE, ").append(ctx.getAD_User_ID());
		sql.append(", SYSDATE, ").append(ctx.getAD_User_ID());
		sql.append(" FROM AD_User_Customization WHERE AD_User_ID = ?");
		//
		log.fine("Copy Customisations : " + sql.toString());
		int no = DB.executeUpdate(sql.toString(), ad_UserFrom_ID, po.get_Trx());

		return no;
	}
}
