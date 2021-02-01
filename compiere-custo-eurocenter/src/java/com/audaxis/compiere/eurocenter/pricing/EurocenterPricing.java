package com.audaxis.compiere.eurocenter.pricing;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.api.UserPricingInterface;
import org.compiere.api.UserPricingVO;
import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPrice;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;

public class EurocenterPricing implements UserPricingInterface {

	private static final String SELECT_PLV = "SELECT M_PriceList_Version_ID FROM M_PriceList_Version WHERE M_PriceList_ID = ? AND IsActive = 'Y' AND ValidFrom <= TRUNC(?)";
	protected CLogger log = CLogger.getCLogger(this.getClass());
	
	@Override
	public UserPricingVO price(int AD_Org_ID, boolean isSOTrx,
			int M_PriceList_ID, int C_BPartner_ID, int M_Product_ID,
			BigDecimal Qty, Timestamp PriceDate) {
		
		UserPricingVO vo = null;
		
		// VENTE
		if (M_PriceList_ID == 1000717) {
			int Promo_PriceList_ID = 1000719; // Vente promotion
			Object[] params = new Object[] {
					M_PriceList_ID,
					PriceDate
			};
			int M_PriceList_Version_ID = DB.getSQLValue(null, SELECT_PLV, params);
			if (M_PriceList_Version_ID > 0) {
				MPriceListVersion plv = new MPriceListVersion(getCtx(), M_PriceList_Version_ID, null);
				log.severe("PLV VENTE found : "+plv.getName());
				MProductPrice pp = MProductPrice.get(getCtx(), M_PriceList_Version_ID, M_Product_ID, null);
				params = new Object[] {
						Promo_PriceList_ID,
						PriceDate
				};
				int Promo_PriceList_Version_ID = DB.getSQLValue(null, SELECT_PLV, params);
				if (Promo_PriceList_Version_ID > 0) {
					MPriceListVersion plvz = new MPriceListVersion(getCtx(), Promo_PriceList_Version_ID, null);
					log.severe("PLV Promo found : "+plvz.getName());
					MProductPrice ppz = MProductPrice.get(getCtx(), Promo_PriceList_Version_ID, M_Product_ID, null);
			
					// TOUT EST ICI
					log.info("Prix Liste : "+pp.getPriceList());
					log.info("Prix Std   : "+ppz.getPriceStd());
					vo = new UserPricingVO(pp.getPriceList(), ppz.getPriceStd(), pp.getPriceLimit());
					// TOUT EST ICI
					
					MPriceList pl = new MPriceList(getCtx(), M_PriceList_ID, null);
					MProduct product = new MProduct(getCtx(), M_Product_ID, null);
					
					vo.setC_UOM_ID(product.getC_UOM_ID());
					vo.setC_Currency_ID(pl.getC_Currency_ID());
					vo.setEnforcePriceLimit(false);
				}
				else {
					log.severe("PLV Promo NOT found");
				}
			}
			else  {
				log.severe("PLV for VENTE NOT found");
			}
		}
		else {
			log.severe("PL is not VENTE");
		}
		
		return vo;
		
	}

	/**
	 * TODO : Pas bon du tout en Web et Multi Société
	 * @return
	 */
	private Ctx getCtx() {
		return Env.getCtx();
	}

}
