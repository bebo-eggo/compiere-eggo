package com.audaxis.compiere.eurocenter.util;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class AcctUtil {

	private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(AcctUtil.class);
	
	public static int FactAcctToPositiveProcess2 (Ctx ctx, int Record_ID, int Table_ID, Trx trx)
	{
		log.info("Record_ID : "+Record_ID
				+"\n\rAD_Table_ID : "+Table_ID);
		String msg="";
		
		//Montant DR
		StringBuffer sql=new StringBuffer("UPDATE FACT_ACCT ");
						sql.append(" SET AMTACCTDR=-AMTACCTCR, AMTACCTCR=0 ");
						sql.append(" WHERE AMTACCTCR<0");
						sql.append(" AND RECORD_ID = ? ");    //#1
						sql.append(" AND AD_TABLE_ID = ? ");  //#2		
										
		int noAmtDr=DB.executeUpdate(trx, sql.toString(), Record_ID, Table_ID);
		log.info("nombre d'enregistrements montant DR : "+noAmtDr);
		
		//Montant CR
		sql=new StringBuffer("UPDATE FACT_ACCT ");
				sql.append(" SET AMTACCTCR=-AMTACCTDR, AMTACCTDR=0 ");
				sql.append(" WHERE AMTACCTDR<0");
				sql.append(" AND RECORD_ID = ? ");    //#1
				sql.append(" AND AD_TABLE_ID = ? ");  //#2
			
		int noAmtCr=DB.executeUpdate(trx, sql.toString(),  Record_ID, Table_ID);
		log.info("nombre d'enregistrements montant CR : "+noAmtCr);
		
		//Montant Source DR
		sql=new StringBuffer("UPDATE FACT_ACCT ");
				sql.append(" SET AMTSOURCEDR=-AMTSOURCECR, AMTSOURCECR=0 ");
				sql.append(" WHERE AMTSOURCECR<0");
				sql.append(" AND RECORD_ID = ? ");    //#1
				sql.append(" AND AD_TABLE_ID = ? ");  //#2
										
		int noAmtsourceDr=DB.executeUpdate(trx, sql.toString(),  Record_ID, Table_ID);
		log.info("nombre d'enregistrements montant source DR : "+noAmtsourceDr);
		
		//Montant Source CR
		sql=new StringBuffer("UPDATE FACT_ACCT ");
				sql.append(" SET AMTSOURCECR=-AMTSOURCEDR, AMTSOURCEDR=0 ");
				sql.append(" WHERE AMTSOURCEDR<0");
				sql.append(" AND RECORD_ID = ? ");    //#1
				sql.append(" AND AD_TABLE_ID = ? ");  //#2
										
		int noAmtsourceCr=DB.executeUpdate(trx, sql.toString(),  Record_ID, Table_ID);
		log.info("nombre d'enregistrements montant source CR : "+noAmtsourceCr);
		
		msg = msg+"nombre d'enregistrements montant CR : "+noAmtCr
			+", "+"nombre d'enregistrements montant DR : "+noAmtDr
			+", "+"nombre d'enregistrements montant source DR : "+noAmtsourceDr
			+", "+"nombre d'enregistrements montant source CR : "+noAmtsourceCr;

		return noAmtCr;
	}

}
