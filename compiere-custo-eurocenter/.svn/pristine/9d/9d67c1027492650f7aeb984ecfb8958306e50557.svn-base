package com.audaxis.compiere.batch;

public final class ImportUtils {
	
	private static String ois = null;
	private static boolean oi;
	
	public static boolean isImportProcess() {
		if (ois == null) {
			ois = System.getProperty("import");
			if (ois != null && "Y".equalsIgnoreCase(ois)) {
				oi = true;
			}
			else {
				ois = "N";
				oi = false;
			}
		}
		return oi;
	}

}
