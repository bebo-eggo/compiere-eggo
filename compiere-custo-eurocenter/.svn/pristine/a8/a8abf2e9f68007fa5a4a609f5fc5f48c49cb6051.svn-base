package com.audaxis.compiere.eurocenter.acct.datasource.sql;

public class PartnerGLJournalSql {
	
	public static String [] paramNames = {
		"AD_Client_ID",			// #01
		"AD_Client_ID",			// #02
		"IsSoTrx",				// #03
		"IsSoTrx",				// #04
		"IsSoTrx",				// #05
		"AD_Org_ID",			// #06
		"AD_Org_ID",			// #07
		"C_AcctSchema_ID",		// #08
		"C_AcctSchema_ID",		// #09
		"C_BPartner_ID",		// #10
		"C_BPartner_ID",		// #11
		"C_BP_Group_From",		// #12
		"C_BP_Group_From",		// #13
		"C_BP_Group_From",		// #14
		"C_BP_Group_To",		// #15
		"C_BP_Group_To",		// #16
		"C_BP_Group_To",		// #17
		"DateFrom",				// #18
		"DateFrom",				// #19
		"AD_Client_ID",			// #20
		"AD_Client_ID",			// #21
		"IsSoTrx",				// #22
		"IsSoTrx",				// #23
		"IsSoTrx",				// #24
		"AD_Org_ID",			// #25
		"AD_Org_ID",			// #26
		"C_AcctSchema_ID",		// #27
		"C_AcctSchema_ID",		// #28
		"C_BPartner_ID",		// #29
		"C_BPartner_ID",		// #30
		"C_BP_Group_From",		// #31
		"C_BP_Group_From",		// #32
		"C_BP_Group_From",		// #33
		"C_BP_Group_To",		// #34
		"C_BP_Group_To",		// #35
		"C_BP_Group_To",		// #36
		"DateFrom",				// #37
		"DateFrom",				// #38
		"DateTo",				// #39
		"DateTo",				// #40
	};

		public static String sql = ""
				+ " SELECT"
				+ "		N'Y'                				BeginingBalance, "
				+ "		bp.Value            				BPValue, "
				+ " 	bp.Name             				BPName, "
				+ " 	NULL                				DateAcct, "
				+ " 	N'aaaaa-Cumuls antérieurs'    			Journal, "
				+ " 	NULL				  				DocumentNo, "
				+ " 	NULL                  				Description, "
				+ "		NULL                  				Currency, "
				+ " 	NULL                  				AccountNo, "
				+ " 	0                   				AmtSource, "
				+ " 	SUM(fa.AmtAcctDr-fa.AmtAcctCr)  	AmtAcct, "
				+ " 	0                   				Rate, "
				+ " 	MAX(NVL((SELECT AD_Language FROM AD_Client WHERE AD_Client_ID = ?), N'en_US' ))  AD_Language "							// #01 AD_Client_ID
				+ " FROM FACT_ACCT fa "
				+ " 	INNER JOIN C_ElementValue ev ON ev.C_ElementValue_ID = fa.Account_ID "
				+ " 	INNER JOIN Z_Journal j ON j.ZFact_Acct_ID = fa.Fact_Acct_ID "
				+ " 	INNER JOIN C_Currency c ON (fa.C_Currency_ID=c.C_Currency_ID) "
				+ " 	INNER JOIN C_BPartner bp ON (fa.C_BPartner_ID=bp.C_BPartner_ID) "
				+ "		INNER JOIN c_bp_group bpg ON (bp.C_BP_Group_ID = bpg.C_BP_Group_ID) "
				+ " WHERE fa.AD_Client_ID = ? "                                                                     							// #02 AD_Client_ID
				+ " AND   ev.IsBPAccount = 'Y' "
				+ " AND   ev.IsSoTrx = ? "																										// #03 IsSoTrx 
				+ " AND   ((?='Y' AND bp.iscustomer = 'Y') OR (?='N' AND bp.isvendor = 'Y')) "						                       		// #04 #05 IsSoTrx 
				+ " AND   (NVL(?,0) = 0 OR fa.AD_Org_ID = ?) "																					// #06 #07 AD_Org_ID
				+ " AND   (NVL(?,0) = 0 OR fa.C_AcctSchema_ID = ?) " 													                        // #08 #09 C_AcctSchema_ID 
				+ " AND   (NVL(?,0) = 0 OR bp.C_BPartner_ID = ?) "																				// #10 #11 C_BPArtner_ID
				+ " AND   (? IS NULL OR ? = '' OR bpg.Value >= ?) " 																			// #12 #13 #14 C_BP_Group_From
				+ " AND   (? IS NULL OR ? = '' OR bpg.Value <= ?) "							                                                	// #15 #16 #17 C_BP_Group_To
				+ " AND   (? IS NULL OR TRUNC(fa.dateacct)  < TRUNC(?)) "																		// #18 #19 DateFrom
				+ " GROUP BY bp.Value, bp.Name "
				+ " UNION ALL "
				+ " SELECT "
				+ " 	N'N'                				BeginingBalance, "
				+ " 	bp.Value            				BPValue, "
				+ " 	bp.Name             				BPName, "
				+ "		TRUNC(fa.DateAcct)  				DateAcct, "
				+ " 	MAX(CASE "
				+ " 		WHEN (fa.ad_table_id = 318) THEN (SELECT dt.Name FROM C_DocType dt INNER JOIN C_Invoice i USING (C_DocType_ID) WHERE i.C_Invoice_ID=fa.Record_ID) "
				+ " 		WHEN (fa.ad_table_id = 335) THEN (SELECT dt.Name FROM C_DocType dt INNER JOIN C_Payment p USING (C_DocType_ID) WHERE p.C_Payment_ID=fa.Record_ID) "					
				+ " 		WHEN (fa.ad_table_id IN (390,735)) THEN N'Affectation' "				
				+ " 		ELSE N'' "
				+ " 	END) 								Journal, "
				+ "		j.DocumentNo        				DocumentNo, "
				+ " 	j.Description       				Description, " 
				+ "		c.ISO_Code          				Currency, "
				+ "		ev.value            				AccountNo, "
				+ " 	SUM(fa.AmtSourceDr-fa.AmtSourceCr)  AmtSource, "
				+ " 	SUM(fa.AmtAcctDr-fa.AmtAcctCr)  	AmtAcct, "
				+ " 	ROUND(SUM(fa.AmtSourceDr-fa.AmtSourceCr) / SUM(fa.AmtAcctDr-fa.AmtAcctCr),5)    	Rate, "
				+ " 	MAX(NVL((SELECT AD_Language FROM AD_Client WHERE AD_Client_ID = ?), N'en_US' ))  	AD_Language "						// #20 AD_Client_ID
				+ " FROM FACT_ACCT fa "
				+ " 	INNER JOIN C_ElementValue ev ON ev.C_ElementValue_ID = fa.Account_ID "
				+ " 	INNER JOIN Z_Journal j ON j.ZFact_Acct_ID = fa.Fact_Acct_ID " 
				+ " 	INNER JOIN C_Currency c ON (fa.C_Currency_ID=c.C_Currency_ID) "
				+ " 	INNER JOIN C_BPartner bp ON (fa.C_BPartner_ID=bp.C_BPartner_ID) "
				+ " 	INNER JOIN c_bp_group bpg ON (bp.C_BP_Group_ID = bpg.C_BP_Group_ID) "
				+ " WHERE fa.AD_Client_ID = ? "																									// #21 AD_Client_ID
				+ " AND   ev.IsBPAccount = 'Y' "
				+ " AND   ev.IsSoTrx = ? "																										// #22 IsSoTrx 
				+ " AND   ((?='Y' AND bp.iscustomer = 'Y') OR (?='N' AND bp.isvendor = 'Y')) "													// #23 #24 IsSoTrx
				+ " AND   (NVL(?,0) = 0 OR fa.AD_Org_ID = ?) "																					// #25 #26 AD_Org_ID
				+ " AND   (NVL(?,0) = 0 OR fa.C_AcctSchema_ID = ?) "																			// #27 #28 C_AcctSchema_ID
				+ " AND   (NVL(?,0) = 0 OR bp.C_BPartner_ID = ?) " 																				// #29 #30 C_BPartner_ID
				+ " AND   (? IS NULL OR ? = '' OR bpg.Value >= ?) "																				// #31 #32 #33 C_BP_Group_From
				+ " AND   (? IS NULL OR ? = '' OR bpg.Value <= ?) "																				// #34 #35 #36 C_BP_Group_T0
				+ " AND   (? IS NULL OR TRUNC(fa.dateacct)  >= TRUNC(?)) "																		// #37 #38 DateFrom
				+ " AND   (? IS NULL OR TRUNC(fa.dateacct)  <= TRUNC(?)) "																		// #39 #40 DateTo
				+ " GROUP BY bp.Value, bp.Name, TRUNC(fa.DateAcct), j.DocumentNo, j.Description, c.ISO_Code,ev.value "
				+ " HAVING SUM(fa.AmtAcctDr-fa.AmtAcctCr) <> 0 "
				+ " ORDER BY BPValue,Journal,BeginingBalance DESC, DateAcct, DocumentNo, AccountNo "
			;	
		}
