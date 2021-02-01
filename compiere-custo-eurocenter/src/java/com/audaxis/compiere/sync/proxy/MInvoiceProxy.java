package com.audaxis.compiere.sync.proxy;

import org.compiere.model.MInvoice;

import com.audaxis.compiere.model.BasicProxy;

public class MInvoiceProxy extends BasicProxy<MInvoice> {

	public MInvoiceProxy(MInvoice po) {
		super(po);
	}
	
    public void setXX_InvoiceValidator_ID (int XX_InvoiceValidator_ID) {
        if (XX_InvoiceValidator_ID < 1) throw new IllegalArgumentException ("XX_InvoiceValidator_ID is mandatory.");
        getPO().set_Value ("XX_InvoiceValidator_ID", Integer.valueOf(XX_InvoiceValidator_ID));
        
    }
    
    public int getXX_InvoiceValidator_ID() {
        return getPO().get_ValueAsInt("XX_InvoiceValidator_ID");
    }
    
    public void setXX_ValidateBy_ID (int XX_ValidateBy_ID) {
        if (XX_ValidateBy_ID < 1) throw new IllegalArgumentException ("XX_ValidateBy_ID is mandatory.");
        getPO().set_Value ("XX_ValidateBy_ID", Integer.valueOf(XX_ValidateBy_ID));
        
    }
    
    public int getXX_ValidateBy_ID() {
        return getPO().get_ValueAsInt("XX_ValidateBy_ID");
    }

}
