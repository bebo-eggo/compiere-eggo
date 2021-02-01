package org.compiere.model;

import java.sql.ResultSet;
import java.util.ArrayList;

import org.compiere.api.UICallout;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MCoda extends X_I_Coda {

	public MCoda(Ctx ctx, int I_Coda_ID, Trx trx) {
		super(ctx, I_Coda_ID, trx);
	}

	public MCoda(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}
	
	//70923
	/**
	 * 	Set xx_prjet - Callout
	 *	@param oldXX_Projet old value
	 *	@param newXX_Projet new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setXX_Projet (String oldXX_Projet,
			String newXX_Projet, int WindowNo) throws Exception
	{
		if( (newXX_Projet == null) || (newXX_Projet.length() == 0) )
			return;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(newXX_Projet);
		params.add(getAD_Client_ID());
		
		int orderID = DB.getSQLValue(get_Trx(), "SELECT C_ORDER_ID FROM C_ORDER WHERE POREFERENCE = ? AND ISACTIVE = 'Y' AND AD_CLIENT_ID = ?", params);
		
		if(orderID > 0)
		{
			set_Value("C_Order_ID", orderID);
			
			params.add(orderID);
			params.add(getAD_Client_ID());
			int invoiceID = DB.getSQLValue(get_Trx(), "SELECT C_INVOICE_ID FROM C_INVOICE WHERE C_ORDER_ID = ? AND ISACTIVE = 'Y' AND AD_CLIENT_ID = ? and DOCSTATUS in ('CO','CL')", params);
			
            if(invoiceID > 0)
            {
            	setC_Invoice_ID(invoiceID);
            }
		}
	}

}
