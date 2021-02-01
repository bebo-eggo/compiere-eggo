package com.audaxis.compiere.eurocenter.util;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class PaymentUtil {

	public static BigDecimal roundAmt(BigDecimal amt)
	{
		BigDecimal retAmt = BigDecimal.ZERO;
		int v_sign = 0;
        if(amt.compareTo(BigDecimal.ZERO)>=0) 
        {
        	v_sign = 1;
        }else
        {
        	 v_sign = -1;
        }
        amt = amt.abs();
		BigDecimal truncAmt = amt.setScale(1,RoundingMode.FLOOR);
		BigDecimal v_amt = amt.setScale(1,RoundingMode.FLOOR).abs();
		v_amt = (amt).subtract(v_amt);
		//System.out.println(""+amt);
		//System.out.println(""+v_amt);
		
		if(v_amt.equals(new BigDecimal("0.00")) || v_amt.equals(new BigDecimal("0.0")) || (v_amt).equals(new BigDecimal("0.05"))) 
			retAmt = amt;

	    
	    if((v_amt).equals(new BigDecimal("0.01")) || (v_amt).equals(new BigDecimal("0.02")))  
	    	retAmt = truncAmt;
	    
	   
	    if((v_amt).equals(new BigDecimal("0.03")) || (v_amt).equals(new BigDecimal("0.04")) || (v_amt).equals(new BigDecimal("0.06")) || (v_amt).equals(new BigDecimal("0.07"))) 
	    	retAmt = truncAmt.add(new BigDecimal("0.05"));


	    if((v_amt).equals(new BigDecimal("0.08")) || (v_amt).equals(new BigDecimal("0.09")))  
	    	retAmt = truncAmt.add(new BigDecimal("0.1"));
	    
	    return new BigDecimal((retAmt.doubleValue()*v_sign)).setScale(2,RoundingMode.HALF_UP);
	}
}
