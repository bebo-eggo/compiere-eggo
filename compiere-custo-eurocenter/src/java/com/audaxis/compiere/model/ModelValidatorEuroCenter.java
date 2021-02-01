package com.audaxis.compiere.model;

import org.compiere.framework.ModelValidationEngine;
import org.compiere.model.X_AD_Org;
import org.compiere.model.X_AD_OrgInfo;
import org.compiere.model.X_AD_User;
import org.compiere.model.X_C_BPartner;
import org.compiere.model.X_C_BPartner_Location;
import org.compiere.model.X_C_Charge;
import org.compiere.model.X_C_Invoice;
import org.compiere.model.X_C_Order;
import org.compiere.model.X_C_Tax;
import org.compiere.model.X_I_Coda;
import org.compiere.model.X_M_InOut;
import org.compiere.model.X_M_InOutLine;
import org.compiere.model.X_M_PriceList_Version;
import org.compiere.model.X_M_Requisition;
import org.compiere.model.X_Z_CheckDeliveryLine;
import org.compiere.model.X_Z_Taxzoneline;

import com.audaxis.compiere.acct.model.ContractCoda;
import com.ecenter.compiere.action.ActionInOut;
import com.ecenter.compiere.action.ActionInvoice;
import com.ecenter.compiere.action.ActionRequisition;
import com.ecenter.compiere.model.ContractBPartner;
import com.ecenter.compiere.model.ContractBPartnerLocation;
import com.ecenter.compiere.model.ContractInOutLine;
import com.ecenter.compiere.model.ContractInvoice;
import com.ecenter.compiere.model.ContractTax;
import com.ecenter.compiere.model.ContractUser;

import com.audaxis.compiere.model.ContractOrder;//#73866

public class ModelValidatorEuroCenter extends ModelValidatorAbstract {

	private static final String MODULE = "EuroCenter";

	private int AD_Client_ID;
	
	@Override
	public void initialize(int AD_Client_ID, ModelValidationEngine engine) {
		this.AD_Client_ID = AD_Client_ID;
		super.initialize(AD_Client_ID, engine);
	}
	
	@Override
	public int getAD_Client_ID() {
		return this.AD_Client_ID;
	}

	@Override
	protected void contractsInjection() {

		super.contractsInjection();

		//PO
		addModelChange(MODULE, X_C_BPartner.Table_Name, ContractBPartner.class);
		addModelChange(MODULE, X_C_Invoice.Table_Name, ContractInvoice.class);
		addModelChange(MODULE, X_M_InOutLine.Table_Name, ContractInOutLine.class);
		addModelChange(MODULE, X_C_Charge.Table_Name, ContractCharge.class);
		addModelChange(MODULE, X_Z_CheckDeliveryLine.Table_Name, ContractCheckDeliveryLine.class);
		addModelChange(MODULE, X_Z_Taxzoneline.Table_Name, ContractTaxZoneline.class);
		addModelChange(MODULE, X_AD_OrgInfo.Table_Name, ContractOrgInfo.class);
		addModelChange(MODULE, X_M_Requisition.Table_Name, ContractRequisition.class);//3065
		addModelChange(MODULE, X_AD_Org.Table_Name, ContractOrg.class);//MERGE
		//Redmine 68976
		addModelChange(MODULE, X_C_BPartner_Location.Table_Name, ContractBPartnerLocation.class);
		addModelChange(MODULE, X_AD_User.Table_Name, ContractUser.class);
		//
		addModelChange(MODULE, X_I_Coda.Table_Name, ContractCoda.class);//70923
		addModelChange(MODULE, X_C_Tax.Table_Name, ContractTax.class);//71115
		
		addModelChange(MODULE, X_M_PriceList_Version.Table_Name, ContractMPriceListVersion.class);
		addModelChange(MODULE, X_C_Order.Table_Name, ContractOrder.class);//#73866
		//Action
		addDocValidate(MODULE, X_C_Invoice.Table_Name, ActionInvoice.class); // #27648 : PO004  Abonnements et Cartes pr�pay�es
		addDocValidate(MODULE, X_M_Requisition.Table_Name, ActionRequisition.class);
		addDocValidate(MODULE, X_M_InOut.Table_Name, ActionInOut.class);

	}

}
