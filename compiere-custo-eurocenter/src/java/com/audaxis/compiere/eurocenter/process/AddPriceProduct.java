package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

import com.audaxis.compiere.model.MProductPrice;

public class AddPriceProduct extends SvrProcess {

	private int p_product_ID = 0;
	private int p_PriceList_ID = 0;
	private int p_PriceList_Version_ID = 0;
	private BigDecimal p_price = Env.ZERO;
	@Override
	protected void prepare() {
		
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("M_PriceList_ID"))
				p_PriceList_ID = element.getParameterAsInt();
			else if (name.equals("M_PriceList_Version_ID"))
				p_PriceList_Version_ID = element.getParameterAsInt();
			else if (name.equals("Price"))
				p_price = (BigDecimal)element.getParameter();
		}

	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		p_product_ID = getRecord_ID();
		//Vérifier que l'article n'est pas dans la version
		MProductPrice mpp = MProductPrice.get(getCtx(), p_PriceList_Version_ID, p_product_ID, get_Trx());
		if(mpp == null)
			mpp = new MProductPrice(getCtx(), p_PriceList_Version_ID, p_product_ID, p_price, p_price, p_price, get_Trx());
		else
			mpp.setPrices(p_price, p_price, p_price);
		if(mpp.save())
			return "Prix enregistré !";
		return null;
	}

}
