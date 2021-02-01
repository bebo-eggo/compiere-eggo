package com.audaxis.compiere.eurocenter.process;

import org.compiere.model.MBPartnerLocation;
import org.compiere.util.Msg;

import com.audaxis.compiere.process.SvrProcessExtended;

public class CopyLocationCuisine extends SvrProcessExtended {

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub

	}

	@Override
	protected String doIt() throws Exception {
		if (getRecord_ID()<=0)
			return "NotSaved";
		
		MBPartnerLocation bpl = new MBPartnerLocation(getCtx(), getRecord_ID(), get_Trx());
		
		// si pas d'adresse de livraison et IsEggo = Y
		int shipEggo = org.compiere.util.QueryUtil.getSQLValue(get_Trx(), 
				"SELECT COUNT(*) FROM C_BPartner_Location WHERE C_BPartner_ID=? AND IsShipTo=? AND IsEggo=?", 
				bpl.getC_BPartner_ID(), true, true);
		
		if (shipEggo > 0)
			return Msg.getMsg(getCtx(), "EGGO_POS_ALREADYEXIST");
		
		bpl.copyBPartnerLocation(true, true, true);

		return "Success";
	}

}
