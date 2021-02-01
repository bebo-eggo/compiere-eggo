package com.ecenter.compiere.action;

import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.contract.action.BasicContractAction;
import com.audaxis.compiere.util.CompiereException;

public class ActionInOut extends BasicContractAction<MInOut> {


	MInOut po;
	
	public ActionInOut(MInOut po) {
		super(po);
		this.po = po;
	}
	@Override
	public String beforeComplete() {
		
		MInOut inout = getPO();
		if(!inout.isSOTrx())
		{
			int role_ID = getCtx().getAD_Role_ID();
			String Role_Exped_93 = Msg.getMsg(getCtx(), "Z_ROLE_EXPED_93");
			if(Role_Exped_93.contains(""+role_ID))
			{
				//
				int nbOrderLine = DB.getSQLValue(get_Trx(), "Select count(*) from M_InOutLine col where col.M_InOut_ID = ? and IsActive ='Y' and exists (Select 1 from M_LOCATOR ml inner join Z_LOCATORTYPE zlt on zlt.Z_LOCATORTYPE_ID = ml.Z_LOCATORTYPE_ID where ml.M_LOCATOR_ID = col.M_LOCATOR_ID and UPPER(zlt.Description) = UPPER('Stock Central'))", inout.getM_InOut_ID());
				if(nbOrderLine>0)
					return (Msg.getMsg(getCtx(), "Z_BAD_LOCATOR"));
			}
		}
		return super.beforeComplete();
	}

	@Override
	public String afterComplete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforePrepare() {
		
		return null;
	}
	
	

}
