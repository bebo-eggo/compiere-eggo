package com.audaxis.compiere.eurocenter.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailUtil {

	public EmailUtil() {
		// TODO Auto-generated constructor stub
	}
	
	public static boolean isEmailAdress(String email){
		Pattern p = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,5}$");
		Matcher m = p.matcher(email.toUpperCase());
		return m.matches();
		}

}
