package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

public class CopyPA  extends SvrProcess {

	private int p_client_ID;
	private int p_costElement_ID;
	private String p_IsNoPrice;
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("AD_Client_ID"))
				p_client_ID = element.getParameterAsInt();
			else if (name.equals("M_CostElement_ID"))
				p_costElement_ID = element.getParameterAsInt();
			else if(name.equals("IsNoPrice"))
				p_IsNoPrice = (String) element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		DB.executeUpdate("DELETE FROM ZT_UPDATECOSTPRICE WHERE AD_CLIENT_ID = ?", p_client_ID, get_Trx());
		DB.executeUpdate(get_Trx(), "INSERT INTO ZT_UPDATECOSTPRICE "
				+ "Select mc.AD_CLIENT_ID,mc.M_PRODUCT_ID, mc.CURRENTCOSTPRICE, round(mpp.PRICESTD,6) as NEWPRICE, mc.M_COSTELEMENT_ID, ? AS AD_PINSTANCE_ID  from M_COST mc "
				+ "inner join M_PRODUCT_PO mpo on mpo.M_PRODUCT_ID = mc.M_PRODUCT_ID and mpo.ISCURRENTVENDOR = 'Y' "
				+ "inner join C_BPARTNER cb on cb.C_BPARTNER_ID = mpo.C_BPARTNER_ID and cb.PO_PRICELIST_ID is not null "
				+ "inner join M_PRODUCTPRICE mpp on mpp.M_Product_ID = mc.M_Product_ID and mpp.M_PRICELIST_VERSION_ID  =  getPriceListLastVersionPrice( cb.PO_PRICELIST_ID,mc.M_PRODUCT_ID, sysdate)  "
				+ "where ROUND(mc.CURRENTCOSTPRICE,4) = 0 and mc.AD_Client_ID = ? and mc.M_COSTELEMENT_ID = ?", getAD_PInstance_ID(),p_client_ID, p_costElement_ID );
		int count = DB.getSQLValue(get_Trx(), "Select count(*) from ZT_UPDATECOSTPRICE where AD_Client_ID = ? and AD_PINSTANCE_ID = ?", p_client_ID, getAD_PInstance_ID());
		if(count == 0)
			return "Pas de mise à jour";
		int count2 = 0;
		if(p_IsNoPrice.equals("Y"))
		{
			count2 = DB.getSQLValue(get_Trx(),"Select count(*) from ZT_UPDATECOSTPRICE where AD_Client_ID = ? and AD_PINSTANCE_ID = ? and NEWPRICE = 0",p_client_ID, getAD_PInstance_ID());
			DB.executeUpdate(get_Trx(), "UPDATE ZT_UPDATECOSTPRICE set NEWPRICE = 0.00001 where NEWPRICE = 0 and AD_Client_ID = ? and AD_PINSTANCE_ID = ?",p_client_ID, getAD_PInstance_ID());
		}
		
		DB.executeUpdate(get_Trx(), "UPDATE M_COST mc set mc.CURRENTCOSTPRICE = (SELECT ZT.NEWPRICE from ZT_UPDATECOSTPRICE ZT where ZT.M_PRODUCT_ID = mc.M_PRODUCT_ID AND ZT.M_COSTELEMENT_ID = mc.M_COSTELEMENT_ID "
				+ "AND ZT.AD_CLIENT_ID =mc.AD_CLIENT_ID and ZT.AD_PINSTANCE_ID = ?) "
				+ "where mc.CURRENTCOSTPRICE = 0 and mc.AD_Client_ID = ? and mc.M_COSTELEMENT_ID = ? AND EXISTS (SELECT 1 from ZT_UPDATECOSTPRICE ZT where ZT.M_PRODUCT_ID = mc.M_PRODUCT_ID AND ZT.M_COSTELEMENT_ID = mc.M_COSTELEMENT_ID  "
				+ "AND ZT.AD_CLIENT_ID =mc.AD_CLIENT_ID and ZT.AD_PINSTANCE_ID = ?) ",getAD_PInstance_ID(),p_client_ID,p_costElement_ID,getAD_PInstance_ID());
		if(p_IsNoPrice.equals("Y"))
		{
			DB.executeUpdate(get_Trx(), "UPDATE M_COST mc set mc.CURRENTCOSTPRICE = 0.00001 where mc.CURRENTCOSTPRICE = 0 and mc.AD_Client_ID = ? ",p_client_ID);
		}		
		return  count+" couts mis à jour, "+count2+" couts à 0 forcés à 0.00001" ;
	}
	

}
