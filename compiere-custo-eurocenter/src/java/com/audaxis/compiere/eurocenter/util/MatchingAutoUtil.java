package com.audaxis.compiere.eurocenter.util;

import java.math.BigDecimal;
import java.util.ArrayList;

public class MatchingAutoUtil {

	private int BPartner_ID;
	private BigDecimal Amount;
	
	public MatchingAutoUtil() {
		// TODO Auto-generated constructor stub
	}

	public MatchingAutoUtil(int bPartner_ID, BigDecimal amount) {
		super();
		BPartner_ID = bPartner_ID;
		Amount = amount;
	}
	
	public int getBPartner_ID() {
		return BPartner_ID;
	}

	public void setBPartner_ID(int bPartner_ID) {
		BPartner_ID = bPartner_ID;
	}

	public BigDecimal getAmount() {
		return Amount;
	}

	public void setAmount(BigDecimal amount) {
		Amount = amount;
	}
	
	

}
