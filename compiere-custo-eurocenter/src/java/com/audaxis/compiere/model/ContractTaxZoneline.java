package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.compiere.model.MOrderLine;
import org.compiere.model.X_Z_Taxzoneline;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;
import com.audaxis.compiere.util.CompiereException;

public class ContractTaxZoneline extends BasicContractPO<X_Z_Taxzoneline> implements
	ContractPO<X_Z_Taxzoneline>
{

	public ContractTaxZoneline(X_Z_Taxzoneline po) {
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
		// TODO Auto-generated method stub
		//Vérifier qu'il n'existe pas 2 records dans Z_TaxZoneline pour que Is
		if(!getPO().get_ValueAsBoolean("IsTaxNotNull"))
			return null;
		String sql = "Select count(*) from Z_TaxZoneline ztzl " +
				"where ztzl.IsTaxNotNull='Y' and ztzl.Z_Taxzoneline_C_ID = ? and ztzl.AD_Client_ID = "+getPO().getAD_Client_ID()+
				" and ztzl.Z_TaxZoneline_ID != "+getPO().getZ_Taxzoneline_ID()+" group by ztzl.Z_Taxzoneline_C_ID";
		int nb = DB.getSQLValue(null, sql, getPO().getZ_Taxzoneline_C_ID());
		if(nb>0)
			throw new CompiereException(Msg.getMsg(getCtx(),"EGGO_ERROR_TAXZONELINE"));
		return null;
	}
	
	

}
