/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */
package com.audaxis.compiere.util;

import java.math.BigDecimal;
import java.math.BigInteger;

import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * ZCOM581 : cette class valide les comptes bancaires
 * 
 * @author vha
 */
public class BankAccountValidator {
	private static CLogger log = CLogger.getCLogger(BankAccountValidator.class);

	/**
	 * renvoit true si le compte est valide
	 * 
	 * @return
	 */
	public static boolean validateAccount(String Compte, String Iban, String countryCode) {
		if (Msg.getMsg(Env.getCtx(), "VALIDATION_ACCOUNT").equalsIgnoreCase("TRUE")) {
			return validate(Compte, Iban, countryCode);
		}
		return true;
	}

	public static boolean validate(String Compte, String Iban, String countryCode) {
		if (countryCode == null || countryCode.trim().length() == 0) {
			return true;
		}

		if (Compte != null)	
			Compte = Compte.toUpperCase().trim();
		if (Iban != null) {
			Iban = Iban.toUpperCase().trim();
			Iban = Iban.replaceAll(" ", "");
		}

		boolean ok = checkIbanGeneric(Iban);
		if (!ok)
			return false;
		
		if (countryCode.compareTo("BE") == 0) {	
			return validateBelgium(Compte, Iban);
		}
		else if (countryCode.compareTo("FR") == 0) {
			return validateFrance(Compte, Iban);
		}else if (countryCode.compareTo("LU") == 0) {
			return validateLux(Compte, Iban);
		}else if (countryCode.compareTo("NL") == 0) {
			return validateNL(Compte, Iban);
		}

		return true;
	}

	private static boolean validateBelgium(String Compte, String Iban) {
		String fmt = "999-9999999-99";		
		String ibn = "BEXXXXXXXXXXXXXX";

		if (Compte != null && Compte.length() > 0) {

			if (NumberValidator.isNotComposedOfDigit(Compte,
					new String[] { fmt })) {
				log.saveError("Erreur", "Format du numéro de compte [" + fmt + "] "+Compte);
				return false;
			} else {
				int ZZ = Integer.parseInt(Compte.substring(12, 14));
				BigDecimal XY = new BigDecimal(Compte.substring(0, 3)
						.concat(Compte.substring(4, 11)));

				if (((XY.longValue()) % 97) != ZZ) {
					log.saveError("ERREUR", "Compte invalide - modulo 97");
					return false;
				}
			}

		}

		if (Iban == null || Iban.trim().length() == 0) {
			return true;
		}

		if (NumberValidator
				.isNotComposedOfDigit(Iban, new String[] { ibn })) {
			log.saveError("ERREUR", "Format code IBAN invalide - doit contenir des digits " + ibn);
			return false;
		}

		// TEST GLOBAL

		Iban = Iban.concat(Iban.substring(0, 4));
		Iban = "".concat(Iban.substring(4, 20));
		Iban = TableConversionIban(Iban);

		BigDecimal aa = new BigDecimal(Iban);
		if (((aa.longValue()) % 97) != 1) {
			log.saveError("ERREUR", "Format code IBAN invalide - Modulo 97");
			return false;
		}

		if (Compte != null
				&& Compte.length() > 0
				&& Iban.substring(0, 12).compareTo(
						Compte.substring(0, 3).concat(
								Compte.substring(4, 11)).concat(
								Compte.substring(12, 14))) != 0) {
			log.saveError("ERREUR", "Le code IBAN et le numéro de compte ne correspondent pas");
			return false;
		}
		return true;
	}
	
	private static boolean validateLux(String Compte, String Iban) {
		//String fmt = "999-9999999-99";		
		String ibn = "LU99999XXXXXXXXXXXXX";
		if (Iban == null || Iban.trim().length() == 0) {
			return true;
		}
		//CHECK LU
		String CheckLU = Iban.substring(0, 2);
		if(!CheckLU.equalsIgnoreCase("LU"))
		{
			log.saveError("ERREUR", "Invalid IBAN format - must start with LU ");
			return false;
		}
		if (NumberValidator
				.isNotComposedOfDigit(Iban,new String[] { ibn }))
		{
			log.saveError("ERREUR", "Invalid IBAN format - must be LU+5[0-9]+13[0-9 A-Z] : " + ibn);
			return false;
		}
		
		return true;
	}
	
	private static boolean validateNL(String Compte, String Iban) {
		//String fmt = "999-9999999-99";		
		String ibn = "NL99AAAAXXXXXXXXXX";
		if (Iban == null || Iban.trim().length() == 0) {
			return true;
		}
		//CHECK LU
		String CheckLU = Iban.substring(0, 2);
		if(!CheckLU.equalsIgnoreCase("NL"))
		{
			log.saveError("ERREUR", "Invalid IBAN format - must start with NL " + ibn);
			return false;
		}
		if (NumberValidator
				.isNotComposedOfDigit(Iban,new String[] { ibn }))
		{
			log.saveError("ERREUR", "Invalid IBAN format - must be NL+2[0-9]+4[A-Z]+10[0-9] : " + ibn);
			return false;
		}
		
		return true;
	}

	private static boolean validateFrance(String Compte, String Iban) {
		String fmt = "99999-99999-XXXXXXXXXXX-99";
		String ibn = "FRXXXXXXXXXXXXXXXXXXXXXXXXX";
		if (Compte != null) Compte = Compte.trim();
		if (Compte != null && Compte.length() > 0) {

			if (NumberValidator.isNotComposedOfDigit(Compte, new String[] { fmt })) {
				log.saveError("ERREUR", "Format du numéro de compte  [" + fmt + "] ["+Compte+"]");
				return false;
			} else {
				String codeBanque = Compte.substring(0, 5);
				String codeGuichet = Compte.substring(6, 11);
				
				String rib = Compte.substring(24, 26);
				String noCompte = Compte.substring(12, 23);
				noCompte = TableConversionRib(noCompte);
				
				String total =  codeBanque + codeGuichet + noCompte;
				BigInteger HUNDRED = new BigInteger("100");
				
				try {
					BigInteger bd = new BigInteger(total);
					bd = bd.multiply(HUNDRED);
					BigInteger ch = new BigInteger("97");
					BigInteger rd = bd.mod(ch);	
					rd = ch.subtract(rd);
					boolean ribok = rd.compareTo(new BigInteger(rib)) == 0;
					
					if (! ribok) {
						log.saveError("ERREUR", "Le numéro RIB est invalide");
						return false;
					}
				} catch (Exception e) {
					return true;
				}
			}

		}

		if (Iban == null || Iban.trim().length() == 0) {
			return true;
		}

		if (NumberValidator
				.isNotComposedOfDigit(Iban, new String[] { ibn })) {
			log.saveError("ERREUR", "Format code IBAN invalide - doit contenir des digits " + ibn);
			return false;
		}

		return true;
	}

	/**
	 * Voir http://www.ime-data.com/articles/banque.html
	 * 
	 * @param noCompte
	 * @return
	 */
	private static String TableConversionRib(String noCompte) {
		String ret = noCompte;
		ret = ret.replaceAll("A", "1");
		ret = ret.replaceAll("B", "2");
		ret = ret.replaceAll("C", "3");
		ret = ret.replaceAll("D", "4");
		ret = ret.replaceAll("E", "5");
		ret = ret.replaceAll("F", "6");
		ret = ret.replaceAll("G", "7");
		ret = ret.replaceAll("H", "8");
		ret = ret.replaceAll("I", "9");
		ret = ret.replaceAll("J", "1");
		ret = ret.replaceAll("K", "2");
		ret = ret.replaceAll("L", "3");
		ret = ret.replaceAll("M", "4");
		ret = ret.replaceAll("N", "5");
		ret = ret.replaceAll("O", "6");
		ret = ret.replaceAll("P", "7");
		ret = ret.replaceAll("Q", "8");
		ret = ret.replaceAll("R", "9");
		ret = ret.replaceAll("S", "2");
		ret = ret.replaceAll("T", "3");
		ret = ret.replaceAll("U", "4");
		ret = ret.replaceAll("V", "5");
		ret = ret.replaceAll("W", "6");
		ret = ret.replaceAll("X", "7");
		ret = ret.replaceAll("Y", "8");
		ret = ret.replaceAll("Z", "9");
		

		return ret;
	}

	public static String TableConversionIban(String code) {
		String digit;
		try {
			String ccode = code.toUpperCase();

			for (int i = 0; i < (ccode.length()); i++) {
				digit = ccode.substring(i, i + 1);

				if (digit.compareTo("A") == 0) {
					code = code.replaceAll("A", "10");
				} else if (digit.compareTo("B") == 0) {
					code = code.replaceAll("B", "11");
				} else if (digit.compareTo("C") == 0) {
					code = code.replaceAll("C", "12");
				} else if (digit.compareTo("D") == 0) {
					code = code.replaceAll("D", "13");
				} else if (digit.compareTo("E") == 0) {
					code = code.replaceAll("E", "14");
				} else if (digit.compareTo("F") == 0) {
					code = code.replaceAll("F", "15");
				} else if (digit.compareTo("G") == 0) {
					code = code.replaceAll("G", "16");
				} else if (digit.compareTo("H") == 0) {
					code = code.replaceAll("H", "17");
				} else if (digit.compareTo("I") == 0) {
					code = code.replaceAll("I", "18");
				} else if (digit.compareTo("J") == 0) {
					code = code.replaceAll("J", "19");
				} else if (digit.compareTo("K") == 0) {
					code = code.replaceAll("K", "20");
				} else if (digit.compareTo("L") == 0) {
					code = code.replaceAll("L", "21");
				} else if (digit.compareTo("M") == 0) {
					code = code.replaceAll("M", "22");
				} else if (digit.compareTo("N") == 0) {
					code = code.replaceAll("N", "23");
				} else if (digit.compareTo("O") == 0) {
					code = code.replaceAll("O", "24");
				} else if (digit.compareTo("P") == 0) {
					code = code.replaceAll("P", "25");
				} else if (digit.compareTo("Q") == 0) {
					code = code.replaceAll("Q", "26");
				} else if (digit.compareTo("R") == 0) {
					code = code.replaceAll("R", "27");
				} else if (digit.compareTo("S") == 0) {
					code = code.replaceAll("S", "28");
				} else if (digit.compareTo("T") == 0) {
					code = code.replaceAll("T", "29");
				} else if (digit.compareTo("U") == 0) {
					code = code.replaceAll("U", "30");
				} else if (digit.compareTo("V") == 0) {
					code = code.replaceAll("V", "31");
				} else if (digit.compareTo("W") == 0) {
					code = code.replaceAll("W", "32");
				} else if (digit.compareTo("X") == 0) {
					code = code.replaceAll("X", "33");
				} else if (digit.compareTo("Y") == 0) {
					code = code.replaceAll("Y", "34");
				} else if (digit.compareTo("Z") == 0) {
					code = code.replaceAll("Z", "35");
				}
			}
		} catch (NumberFormatException e) {
		}

		return code;
	}

	public static boolean checkIbanGeneric(String iban) 
	{
		final String tab_convertion = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		int i;
		BigInteger modulo97 = new BigInteger("97");
		
		if (iban == null)       return true;
		if (iban.equals(""))    return true;
		if (iban.length() <= 4)	return false;

		iban = iban.replace(" ", "");
		iban = iban.replace("-", "");
		iban = iban.replace(".", "");
		iban = iban + iban.substring(0, 4);
		iban = "" + iban.substring(4, iban.length());

		for (i = 0; i < tab_convertion.length(); i++) {
			iban = iban.replace("" + tab_convertion.charAt(i), (i + 10) + "");
		}

		try {
			BigInteger total = new BigInteger(iban);
			total = total.mod(modulo97);

			if (total.intValue() == 1)
				return true;
			else
				return false;
		} catch (Throwable t) {
			log.severe("IBAN format non Valide : " + iban);
			return false;
		}
	}

	
	  public static boolean checkBvrKeyCode(String cle)
	  {
		boolean answer = false;
	  	int i, cursor = 0, last, begin_cle = 0, end_cle = 0, ref, total = 0;
		final int lenght_control = 2, modulo11 = 11;
		
		final int[] facteur =  new int [] {4,3,2,7,6,5,4,3,2,7,6,5,4,3,2,7,6,5,4,3,2,7,6,5,4,3,2,7,6,5,4,3,2};
		
		final int[] control_key = new int[] {0,9,8,7,6,5,4,3,2,1};
		
	    final int[][] array = new int[][] {
	    	    
	    	    {0,9,4,6,8,2,7,1,3,5},
	    	    {9,4,6,8,2,7,1,3,5,0},
	    	    {4,6,8,2,7,1,3,5,0,9},
	    	    {6,8,2,7,1,3,5,0,9,4},
	    	    {8,2,7,1,3,5,0,9,4,6},
	    	    {2,7,1,3,5,0,9,4,6,8},
	    	    {7,1,3,5,0,9,4,6,8,2},
	    	    {1,3,5,0,9,4,6,8,2,7},
	    	    {3,5,0,9,4,6,8,2,7,1},
	    	    {5,0,9,4,6,8,2,7,1,3} 
	    	  };	  	  	

	  	if (cle.length() != 16 && cle.length() != 27 && 
	  		cle.length() != 39 && cle.length() != 41 && cle.length() != 52)
	  	{
	  		return false;
	  	}
	
if (cle.contains(">") && cle.contains("+"))
{
	begin_cle = cle.indexOf(">") + 1;
	end_cle = cle.indexOf("+");
	ref = (end_cle - begin_cle);
}
else end_cle = ref = cle.length();

switch (ref)
{
case 15: 
	// concerne modulo 11
	cle = cle.replace(">", "");  cle = cle.replace("<", ""); cle = cle.replace("+", "");
	
	char c[] =  new char[cle.length() - lenght_control];
    // obtient la clé de controle sur "lenght" positions -> 2	
	last = Integer.parseInt(cle.substring(0, lenght_control));
	
	// récupère la référence BVR en caractères séparés
  	cle.getChars( lenght_control, cle.length( ), c, 0 );
	
	try {
		for (i = 0; i < cle.length() - lenght_control; i++) {
			total = total + Integer.parseInt(String.valueOf(c[i])) * facteur[i];
		}
	} catch (Exception e) 
	{
	    //La clé contient un caractère non numérique
		return false;
	}
		total = total % modulo11;
	
	if ((total == 0 && total == last) || (modulo11 - total) == last) answer = true;
	else                                                             answer = false;
	
	break;

case 16:
case 27:
// concerne modulo 10
	    char c2[] =  new char[ref];
	
// récupère la référence BVR en caractère séparés
		cle.getChars( begin_cle, end_cle, c2, 0 );
		  	
//  récupère le dernier chiffre de la référence BVR
	  	last = Integer.parseInt(String.valueOf(c2[ref-1]));
	  		 		  	
	  	try {
			for (i = 0; i <(ref - 1); i++) 
			{
				cursor = array[Integer.parseInt(String.valueOf(c2[i]))][cursor];
			}
		} 
	  	catch (Exception e) 
		{
		//La clé contient un caractère non numérique
			return false;
		}
		// compare le dernier chiffre de la référence BVR avec la clé de controle	  	
	  	if (control_key[cursor] == last) answer = true;
	  	else                    	  	 answer = false;
  break;
  	  	
	  }
return answer;
	  }
	
	
	
}
