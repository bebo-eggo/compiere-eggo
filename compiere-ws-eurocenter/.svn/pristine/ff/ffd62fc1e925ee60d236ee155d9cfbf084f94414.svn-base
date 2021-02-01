package com.audaxis.erp.service;

import org.springframework.cache.annotation.CacheConfig;
import org.compiere.model.MInvoice;
import org.compiere.util.DB;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.audaxis.compiere.service.CompiereSessionFullService;
import com.audaxis.erp.json.ObjArco;
import com.audaxis.erp.json.SetUpdateArcoResult;

@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
@CacheConfig(cacheNames="common")
public class ArcoService extends CompiereSessionFullService implements IArcoService {

	@Override
	public SetUpdateArcoResult updateArco(ObjArco objarco) {
		
		SetUpdateArcoResult ret = new SetUpdateArcoResult();
		ret.invoice_id = objarco.invoice_id;
		MInvoice mi = new MInvoice(getCtx(), Integer.parseInt(objarco.invoice_id), get_Trx());
		int up = 0;
		if(mi == null || mi.getC_Invoice_ID() <=0)
		{
			ret.error = "Invoice not found";
			return ret;
		}
		if(objarco.statut.equals("INIT"))
		{
			up = DB.executeUpdate(get_Trx(), "update C_INVOICE set Z_UrlArco = ?, Z_VALIDATIONINVOICEID = ? ,UPDATED=sysdate "
					+ "where C_INVOICE_ID = ? ", objarco.urlarco,objarco.idarco,Integer.parseInt(objarco.invoice_id));
			
		}else if(objarco.statut.equals("FINAL"))
		{
			up = DB.executeUpdate(get_Trx(), "update C_INVOICE set IsInDispute = ?, Z_ApprovedInv = ? ,UPDATED=sysdate "
					+ "where C_INVOICE_ID = ? ", "N", objarco.approved,Integer.parseInt(objarco.invoice_id));
		}else if(objarco.statut.equals("BLOCKED"))
		{
			up = DB.executeUpdate(get_Trx(), "update C_INVOICE set IsInDispute = ?, Z_ApprovedInv = ? ,UPDATED=sysdate "
					+ "where C_INVOICE_ID = ? ", "Y", objarco.approved,Integer.parseInt(objarco.invoice_id));
		}else
		{
			ret.error = "STATUT not support";
		}
		if(up<=0)
		{
			ret.error = "Invoice not update";
			return ret;
		}
		ret.error = "";
		
		return ret;
	}

}
