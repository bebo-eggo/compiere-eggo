package org.compiere.print;


import java.util.HashMap;

import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPaySelectionLine;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRField;

public class PaymentSpecificationEggoDataSource extends PaymentSpecificationDataSource {
	
	
	public PaymentSpecificationEggoDataSource(Ctx ctx, Trx trx,HashMap<Object, Object> params) {
		super(ctx, trx, params);
	}

	@Override
	public Object getFieldValue(JRField jRField) throws JRException {
		Object ret = null;
		if (jRField != null) {
			String key = jRField.getName();
			ret = getCurrentRow().get(key);
		}
		return ret;
	}

	protected void addInvoiceHeaderInfo(JRDataLine data, MPaySelectionCheck po_PaySelectionCheck, MPaySelectionLine line) {

		//MPayment po_Payment = new MPayment(getCtx(), po_PaySelectionCheck.getC_Payment_ID(), get_Trx());
		MBPartner po_PaySelectionCheckBP = MBPartner.get(getCtx(), po_PaySelectionCheck.getC_BPartner_ID());
		data.put("LName", po_PaySelectionCheckBP.getName2());

	}

	protected void addInvoiceLineInfo(JRDataLine data, MPaySelectionCheck po_PaySelectionCheck, MPaySelectionLine line) {
		//MInvoice po_Invoice = new MInvoice(getCtx(), line.getC_Invoice_ID(),get_Trx());
		MBankAccount po_bank_account = new MBankAccount(getCtx(), line.get_ValueAsInt("C_BankAccount_ID"), get_Trx());
		
		data.put("Bankaccount",po_bank_account.get_ValueAsString("IBAN"));
	}
}
