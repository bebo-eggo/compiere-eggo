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

import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * ZCOM581 : Cette classe valide les codes TVA
 *
 * @author Mouna
 */
public class VATValidator
{
	private static CLogger log = CLogger.getCLogger(VATValidator.class);

	/**
	 * Renvoit false en cas d'erreur
	 */
	public static boolean validateVAT(String tax) {
		String vatValidator = Msg.getMsg(Env.getCtx(), "AUDAXIS_VAT_VALIDATION");
		if (vatValidator !=  null && vatValidator.equalsIgnoreCase("TRUE"))
		{
			return validate(tax);
		}
		return true;
	}

	/**
	 * Renvoit false en cas d'erreur
	 * @param tax en format Code Pays 2 lettres puis code TVA<p>
	 * Pour la Belgique BE0xxxyyyzzz ou BExxxyyyzzz sont possibles<p>
	 * Pour la France FRXX999999999<p>
	 * @return
	 */
	public static boolean validate(String tax)
	{
		boolean ret = true;

		if (tax != null && tax.trim().length() > 2) //ZCOM581
		{
			String[] fmt = new String[0];

			tax = tax.trim().toUpperCase();

			String vat_ccode = tax.substring(0,2);
			if (vat_ccode.compareTo("BE") == 0)
			{
				fmt = new String[] {"BE999999999", "BE0999999999"};
			}
			else if (vat_ccode.compareTo("DK") == 0)
			{
				fmt = new String[] {"DK99999999"};
			}
			else if (vat_ccode.compareTo("FR") == 0)
			{
				fmt = new String[] {"FRXX999999999"};
			}
			else if (vat_ccode.compareTo("DE") == 0)
			{
				fmt = new String[] {"DE999999999"};
			}
			else if (vat_ccode.compareTo("EL") == 0)
			{
				fmt = new String[] {"EL999999999"};
			}
			else if (vat_ccode.compareTo("ES") == 0)
			{
				fmt = new String[] {"ESA9999999X"/*ZCOM1077*/,"ES99999999X"/*ZCOM1077*/};
			}
			else if (vat_ccode.compareTo("GB") == 0)
			{
				fmt = new String[] {"GB999999999", "GB999999999999", "GBAA999"};
			}
			else if (vat_ccode.compareTo("IE") == 0)
			{
				fmt = new String[] {"IE9S99999A","IE9S99999A","IE9999999AA"};
			}
			else if (vat_ccode.compareTo("IT") == 0)
			{
				fmt = new String[] {"IT99999999999"};
			}
			else if (vat_ccode.compareTo("LU") == 0)
			{
				fmt = new String[] {"LU99999999"};
			}
			else if (vat_ccode.compareTo("NL") == 0)
			{
				fmt = new String[] {"NL999999999B99"};
			}
			else if (vat_ccode.compareTo("PT") == 0)
			{
				fmt = new String[] {"PT999999999"};
			}
			else if (vat_ccode.compareTo("AT") == 0)
			{
				fmt = new String[] {"ATUXXXXXXXX"};
			}
			else if (vat_ccode.compareTo("SE") == 0)
			{
				fmt = new String[] {"SE999999999999"};
			}
			else if (vat_ccode.compareTo("FI") == 0)
			{
				fmt = new String[] {"FI99999999"};
			}
			else if (vat_ccode.compareTo("CY") == 0)
			{
				fmt = new String[] {"CYXXXXXXXXA"};
			}
			else if (vat_ccode.compareTo("CZ") == 0)
			{
				fmt = new String[] {"CZ99999999", "CZ999999999", "CZ9999999999"};
			}
			else if (vat_ccode.compareTo("HU") == 0)
			{
				fmt = new String[] {"HU99999999"};
			}
			else if (vat_ccode.compareTo("LT") == 0)
			{
				fmt = new String[] {"LT999999999", "LT999999999999"};
			}
			else if (vat_ccode.compareTo("LV") == 0)
			{
				fmt = new String[] {"LV99999999999"};
			}
			else if (vat_ccode.compareTo("MT") == 0)
			{
				fmt = new String[] {"MT99999999"};
			}
			else if (vat_ccode.compareTo("PL") == 0)
			{
				fmt = new String[] {"PL9999999999"};
			}
			else if (vat_ccode.compareTo("SI") == 0)
			{
				fmt = new String[] {"SI99999999"};
			}
			else if (vat_ccode.compareTo("SK") == 0)
			{
				fmt = new String[] {"SK9999999999"};
			}
			else if (vat_ccode.compareTo("NO") == 0)
			{
				fmt = new String[] {"NO999999999"};
			}
			//ROUMANIE
			else if (vat_ccode.compareTo("RO") == 0)
			{
				fmt = new String[] {"RO999999999"};
			}
			else if (vat_ccode.compareTo("AC") == 0)
			{
				fmt = new String[] {"AC"};
			}

// NON ON VALIDE CE QUI DOIT ËTER VALIDE SINON ON CONSIDERE QUE C'EST BON !			
//			else 
//			{
//				saveError("Code TVA invalide", " ");
//				ret = false;
//			}
			
			if (NumberValidator.isNotComposedOfDigit(tax, fmt))
			{

				StringBuffer formats = new StringBuffer();
				if (fmt.length > 0) {
					for (int i = 0; i < fmt.length; i++) {
						formats.append(fmt[i]);
						if (i != fmt.length -1) {
							formats.append("/");
						}
					}
				}

				saveError("FORME_CODE_TVA", " ["	+ formats.toString() + "]");
				ret = false;
			}
			
			
			
			/**
			 * Belgique
			 */
			else if (vat_ccode.compareTo("BE") == 0)
			{
				if (tax.length() == fmt[0].length())
				{
					if ((new BigDecimal(97 -
							((new BigDecimal(tax.substring(2, 9))).intValue() % 97))).intValue() != (new BigDecimal(
									tax.substring(9, 11))).intValue())
					{
						saveError("Code_Pays", "");
						ret = false;
					}
				}
				else if ((new BigDecimal(97 -
						((new BigDecimal(tax.substring(3, 10))).intValue() % 97))).intValue() != (new BigDecimal(
								tax.substring(10, 12))).intValue())
				{
					saveError("Code_Pays", "");
					ret = false;
				}
			}
		}

		return ret;
	}

	private static void saveError(String msg, String string) {
		// catch Exception to make it run under unit test mode with no DB connexion
		try { 
			log.saveError(Msg.getMsg(Env.getCtx(), "ERREUR"), Msg.getMsg(Env.getCtx(), msg) + string);
		} catch (Throwable t) {
			;
		}
	}

	/**
	 * Retourne le code TVA belge en format 10 digits (0 en début)
	 * 
	 * @param vat Code TVA au format BExxxyyyzzz avec des - _ blanc . à nettoyer
	 * @return le code TVA sur 10 digits
	 */
	public static String cleanVatBelgium(String vat) {
		vat = vat.replaceAll(" ", "");
		vat = vat.replaceAll("-", "");
		vat = vat.replaceAll("_", "");
		vat = vat.replaceAll("\\.", "");
		vat = vat.replaceAll("B", "");
		vat = vat.replaceAll("E", "");
		vat = vat.replaceAll("L", "");
		vat = vat.replaceAll("U", "");
		vat = vat.replaceAll("N", "");
		vat = vat.replaceAll("A", "");
		vat = vat.trim();
		if (vat.length() == 8) vat = "00" + vat;
		if (vat.length() == 9) vat = "0" + vat;
		return vat;
	}

}
