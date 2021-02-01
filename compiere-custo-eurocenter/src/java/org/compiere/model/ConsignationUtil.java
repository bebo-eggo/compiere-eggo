package org.compiere.model;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class ConsignationUtil extends ClientParameterUtil {

	private static final String l_ART_CONSIGNATION = "CONSIGNATION";

	public ConsignationUtil(Ctx ctx, int AD_Client_ID, Trx trx) {
		super(ctx, AD_Client_ID, trx);
	}

	public int getConsignment_Product_ID() {
		String productValue = getClientProxy().getParameter(l_ART_CONSIGNATION);

		int M_Product_ID = DB.getSQLValue(get_Trx(), 
				"select m_product_id from m_product where ad_client_id = ? and value = ?", 
				getAD_Client_ID(), productValue);
		return M_Product_ID;
	}

}
