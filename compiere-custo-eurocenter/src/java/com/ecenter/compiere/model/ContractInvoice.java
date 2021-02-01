package com.ecenter.compiere.model;


import java.math.BigDecimal;
import java.sql.Date;
import java.text.SimpleDateFormat;

import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.MIssue;
import org.compiere.model.MUser;
import org.compiere.util.EMail;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.sync.proxy.MInvoiceProxy;

public class ContractInvoice extends BasicContractPO<MInvoice> {

	public ContractInvoice(MInvoice po) {
		super(po);
	}

	@Override
	public String afterUpdate() {
		//Redmine 30745
		MInvoiceProxy invoicep = new MInvoiceProxy(getPO());
		if (!getPO().isSOTrx() && invoicep.getXX_InvoiceValidator_ID()!=0 
				&& getPO().is_ValueChanged("XX_InvoiceValidator_ID") 
					&& getPO().getGrandTotal().compareTo(BigDecimal.ZERO)!=0)
			if (!sendMailValidator(invoicep))
				log.severe("Can Not Send Mail For Invoice: "+getPO().getDocumentNo());
			
		return null;
	}

	@Override
	public String beforeDelete() {

		return null;
	}

	@Override
	public String beforeUpdate() {
		//Redmine 30745
		if (!getPO().isSOTrx() 
				&& getPO().getC_Order_ID()!=0){
			MOrder order = new MOrder(getCtx(), getPO().getC_Order_ID(), get_Trx());
			getPO().set_Value("XX_InvoiceValidator_ID", 
					order.get_Value("XX_InvoiceValidator_ID"));
		}
		
		if (getPO().getC_Order_ID() > 0 && getPO().isSOTrx())
		{
			MOrder mo = new MOrder(getCtx(), getPO().getC_Order_ID(), get_Trx());
			if(mo.get_Value("Z_RefChantier")!=null)
				getPO().set_Value("Z_RefChantier", mo.get_Value("Z_RefChantier"));
			if(mo.get_Value("PROM_ExtCode")!=null)
				getPO().set_Value("PROM_ExtCode", mo.get_Value("PROM_ExtCode"));
		}
			
		return null;
	}
	
	private boolean sendMailValidator(MInvoiceProxy invoiceproxy){
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		MUser validator = MUser.get(getCtx(), invoiceproxy.getXX_InvoiceValidator_ID());
		MClient client = MClient.get(getCtx());
		
		String subject = getPO().getDocumentNo();
		EMail email = client.createEMail(validator.getEMailUser(), validator.getName(), subject, null);
		if (email == null || !email.isValid()){
			MIssue issue = new MIssue(getCtx(), 0, get_Trx());
			issue.setErrorTrace("Invalid Mail: "+email + "From C_Invoice: "+ getPO().getDocumentNo());
			issue.setIssueSummary("INVOICE MAIL");
			issue.save(get_Trx());
			return false;
		}
		
		StringBuffer message = new StringBuffer("N° Facture: ").append(getPO().getDocumentNo()).append("\r");
		message.append("Fournisseur: ").append(MBPartner.get(getCtx(), getPO().getC_BPartner_ID()).getName()).append("\r");
		message.append("Date Facture: ").append(sdf.format(new Date(getPO().getDateInvoiced().getTime()))).append("\r");
		message.append("Montant: ").append(getPO().getGrandTotal()).append("\r");
	
		email.setSubject (subject);
		email.setMessageText (message.toString());
		//
		String msg = email.send();
		if (!msg.equals(EMail.SENT_OK)){
			MIssue issue = new MIssue(getCtx(), 0, get_Trx());
			issue.setErrorTrace(msg);
			issue.setIssueSummary("INVOICE MAIL");
			issue.save(get_Trx());
			return false;
		}
		return true;
	}

}
