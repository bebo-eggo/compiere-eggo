package com.audaxis.compiere.eurocenter.util;

import java.math.BigDecimal;

public class AllocationUtil {

	private int C_Bpartner_ID;
	private int C_Invoice_ID = 0;
	private int C_Payment_ID = 0;
	private BigDecimal openAmt;
	private boolean withInv = false;
	private boolean withPay = false;
	
	public AllocationUtil() {
		// TODO Auto-generated constructor stub
		C_Invoice_ID = 0;
		C_Payment_ID = 0;
	}

	public int getC_Bpartner_ID() {
		return C_Bpartner_ID;
	}

	public void setC_Bpartner_ID(int c_Bpartner_ID) {
		C_Bpartner_ID = c_Bpartner_ID;
	}

	public int getC_Invoice_ID() {
		return C_Invoice_ID;
	}

	public void setC_Invoice_ID(int c_Invoice_ID) {
		C_Invoice_ID = c_Invoice_ID;
	}

	public int getC_Payment_ID() {
		return C_Payment_ID;
	}

	public void setC_Payment_ID(int c_Payment_ID) {
		C_Payment_ID = c_Payment_ID;
	}

	public BigDecimal getOpenAmt() {
		return openAmt;
	}

	public void setOpenAmt(BigDecimal openAmt) {
		this.openAmt = openAmt;
	}

	public boolean isWithInv() {
		return withInv;
	}

	public void setWithInv(boolean withInv) {
		this.withInv = withInv;
	}

	public boolean isWithPay() {
		return withPay;
	}

	public void setWithPay(boolean withPay) {
		this.withPay = withPay;
	}

}
