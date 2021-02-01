package com.audaxis.compiere.eurocenter.interfaces;

/**
 * Transform the value of a field based on the fieldName
 * 
 * Ex: Do not show credit Card
 * 
 * public Object transform(String fieldName, Object o) 
 * {
 *		Object retValue = o; 
 *		if ("CreditCard".equalsIgnoreCase("fieldName")) 
 *		{
 *			retValue = new String("XXX-XXXXXXXXX-XX");
 *		}
 * 		return retValue;
 *  }
 * @author steven, vca
 *
 */
public interface TransformerObject {

	public Object transform(String fieldName,Object o);

}
