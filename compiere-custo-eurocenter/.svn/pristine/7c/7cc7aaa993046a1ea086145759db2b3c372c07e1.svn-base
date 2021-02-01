package com.ecenter.compiere.model;

import org.compiere.model.MBPartner;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.util.CompiereException;
import com.audaxis.compiere.util.VATValidator;

public class ContractBPartner  extends BasicContractPO<MBPartner>{

	public ContractBPartner(MBPartner po) {
		super(po);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String afterUpdate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeDelete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeUpdate() {
		if (getPO().is_ValueChanged("IsBankTft") && getPO().get_ValueAsBoolean("IsBankTft") ){
			int tft_BPartner_ID = DB.getSQLValue(get_Trx(), "SELECT C_BPartner_ID FROM C_BPartner WHERE IsBankTft='Y' AND C_BPartner_ID <>? and AD_Client_ID = "+getPO().getAD_Client_ID()
					, getPO().getC_BPartner_ID());
			
			if (tft_BPartner_ID >0)
				return Msg.getMsg(getPO().getCtx(), "EC_BPARTNERONETFT");
		}
		//ZCOM581
		//Pour EC - EGGO, si TAXID est <> null, il faut 2 caracteres en premier !
		if(getPO().getTaxID()!=null)
			getPO().setTaxID(getPO().getTaxID().toUpperCase());
		if(getPO().getTaxID()!=null && (getPO().getTaxID().trim().length()<2 || !getPO().getTaxID().trim().toUpperCase().substring(0, 2).matches("[A-Z]{2}")))
			throw new CompiereException(Msg.getMsg(getPO().getCtx(),"NOT_TAXID_VALID")+ " : "+getPO().getTaxID());
		boolean ret = VATValidator.validateVAT(getPO().getTaxID());
		  if (!ret)
		   throw new CompiereException("TVA non valide : "+getPO().getTaxID());
		return null;
	}


}
