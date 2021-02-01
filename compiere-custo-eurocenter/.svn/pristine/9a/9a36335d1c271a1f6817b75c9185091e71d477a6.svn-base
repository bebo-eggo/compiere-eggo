package org.compiere.model;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class AccompteUtil extends ClientParameterUtil {

	private static final String l_ART_ACOMPTE = "ACOMPTE";
	private static final String l_PL_ACOMPTE = "PL-ACOMPTE";

	public AccompteUtil(Ctx ctx, int AD_Client_ID, Trx trx) {
		super(ctx, AD_Client_ID, trx);
	}

	public int getAccompte_Product_ID() {
		String productValue = getClientProxy().getParameter(l_ART_ACOMPTE);

		int M_Product_ID = DB.getSQLValue(get_Trx(), 
				"select m_product_id from m_product where ad_client_id = ? and value = ?", 
				getAD_Client_ID(), productValue);
		return M_Product_ID;
	}

	public int getAccompte_PriceList_ID() {
		String priceListName = getClientProxy().getParameter(l_PL_ACOMPTE);

		int M_PriceList_ID = DB.getSQLValue(get_Trx(), 
				"select m_pricelist_id from m_pricelist where ad_client_id = ? and name = ?", 
				getAD_Client_ID(), priceListName);
		return M_PriceList_ID;
	}
}
