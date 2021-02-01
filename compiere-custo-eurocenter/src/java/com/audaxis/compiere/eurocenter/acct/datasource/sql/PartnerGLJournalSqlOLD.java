package com.audaxis.compiere.eurocenter.acct.datasource.sql;

public class PartnerGLJournalSqlOLD {
	
	public static String [] paramNames = {
		"AD_Org_ID",			// #01
//		"C_BP_Group_ID",		// #02
		"C_BPartner_ID",		// #03
		"DateFrom",				// #04
		"DateFrom",				// #05
		"C_AcctSchema_ID",		// #06
		"DateFrom",				// #07
		"IsSOTrx",				// #08
		"IsSOTrx",				// #09
		"AD_Org_ID",			// #10
		"AD_Org_ID",			// #11
		"AD_Org_ID",			// #12
		"DateFrom",				// #13
		"DateFrom",				// #14
		"IsSOTrx",				// #15
		"IsSOTrx",				// #16
		"AD_Org_ID",			// #17
		"AD_Org_ID",			// #18
		"AD_Org_ID",			// #19
		"AD_Client_ID",			// #20
		"BP_GROUP_FROM",		// #21
		"BP_GROUP_FROM",		// #22
		"BP_GROUP_FROM",		// #23
		"BP_GROUP_TO", 			// #24
		"BP_GROUP_TO", 			// #25
		"BP_GROUP_TO", 			// #26
		"C_BPartner_ID",		// #27
		"C_BPartner_ID",		// #28
		"C_BPartner_ID",		// #29
//		"C_BP_Group_ID",		// #30
//		"C_BP_Group_ID",		// #31
//		"C_BP_Group_ID",		// #32
		"IsSOTrx",				// #33
		"IsSOTrx",				// #34
		"AD_Client_ID",			// #35
		"AD_Client_ID",			// #36
		"AD_Client_ID",			// #37
		"AD_Org_ID",			// #38
//		"C_BP_Group_ID",		// #39
		"C_BPartner_ID",		// #40
		"IsSOTrx",				// #41
		"IsSOTrx",				// #42
		"IsSOTrx",				// #43
		"IsSOTrx",				// #44
		"IsSOTrx",				// #45
		"IsSOTrx",				// #46
		"IsSOTrx",				// #47
		"IsSOTrx",				// #48
		"IsSOTrx",				// #49
		"IsSOTrx",				// #50
		"IsSOTrx",				// #51
		"IsSOTrx",				// #52
		"AD_Client_ID",			// #53
		"BP_GROUP_FROM",		// #54
		"BP_GROUP_FROM",		// #55
		"BP_GROUP_FROM",		// #56
		"BP_GROUP_TO",			// #57
		"BP_GROUP_TO",			// #58
		"BP_GROUP_TO",			// #59
		"C_BPartner_ID",		// #60
		"C_BPartner_ID",		// #61
		"C_BPartner_ID",		// #62
//		"C_BP_Group_ID",		// #63
//		"C_BP_Group_ID",		// #64
//		"C_BP_Group_ID",		// #65
		"IsSOTrx",				// #66
		"IsSOTrx",				// #67
		"AD_Org_ID",			// #68
		"AD_Org_ID",			// #69
		"AD_Org_ID",			// #70
		"AD_Client_ID",			// #71
		"DateFrom",				// #72
		"DateTo",				// #73
		"C_AcctSchema_ID",		// #74
		"C_AcctSchema_ID",		// #75
		"C_AcctSchema_ID",		// #76
		"IsSOTrx",				// #77
		"IsSOTrx",				// #78
		"IsSOTrx"				// #79
	};

		public static String sql = ""
				+ " SELECT "
				+ " 	NVL(( SELECT name FROM ad_org WHERE ad_org_id = ?), ' ' ) AS L_ORG, "							// #1
//				+ " 	NVL(( SELECT name FROM c_bp_group WHERE c_bp_group_id = ?), ' ' ) AS L_GROUP, "					// #2
				+ " 	NVL((SELECT name FROM c_bpartner WHERE c_bpartner_id = ?), ' ' )      AS L_BP, "				// #3
				+ " 	MAX(bp.value) 			AS BPValue, "																		
				+ " 	MAX(bp.name)  			AS BPName, "
				+ " 	MAX(bp.SO_creditlimit) 	AS CreditLimit, "
				+ " 	N'S'		    		AS DocType, "
				+ " 	N'Cumuls antérieurs'    AS Journal, "
				+ " 	NULL                	AS DocumentNo, "
				+ " 	NULL                	AS AccountNo, "
				+ " 	TRUNC(?) 				AS DateAcct, "															// #4
				+ " 	N'' 					AS Currency, "
				+ " 	N'' 					AS Description, "	
				+ " 	NULL                   	AS AmtSourceDr, "
				+ " 	NULL                   	AS AmtSourceCr, "
				+ " 	0                   	AS AmtAcctDr, "
				+ " 	0                   	AS AmtAcctCr, "
				+ "		NULL					As Rate, "
				+ " 	(SELECT "
				+ " 	    (	SELECT NVL( SUM(Z_INVOICE_OPEN_ASOF_BASE_ACTSM(i.C_Invoice_ID,0,TRUNC(?),?)) ,0) " 		// #5 #6
				+ "				FROM C_Invoice i "
				+ " 			WHERE i.c_bpartner_id = bp.c_bpartner_id "
				+ " 			AND TRUNC(i.dateacct) < TRUNC(?) "														// #7
				+ " 			AND (( i.IsSOTrx = 'Y' AND ? = 'Y') OR (i.IsSOTrx = 'N' AND ? = 'N')) "					// #8 #9
				+ " 			AND i.docstatus IN ('CO','CL','RE','VO') "
				+ " 			AND ( i.AD_Org_ID = ? OR ? IS NULL OR ? = 0 ) "											// #10 #11 #12
				+ " 		) "
				+ " 		- "
				+ " 		(	SELECT NVL(SUM(CurrencyConvert((p.PayAmt - NVL((SELECT SUM(( zpaysign(p.isreceipt)* al.Amount)) "
				+ " 							FROM c_allocationline al "
				+ " 							INNER JOIN c_allocationhdr ah ON ah.c_allocationhdr_id = al.c_allocationhdr_id "
				+ " 							WHERE al.c_payment_id = p.c_payment_id "
				+ " 							AND TRUNC(ah.dateacct)  <= TRUNC(?) "													// #13
				+ " 							AND al.isactive          = 'Y' "
				+ " 							GROUP BY al.c_payment_id), 0))"
				+ "							, p.C_Currency_ID, "
				+ " 						(SELECT a.C_Currency_ID FROM c_acctschema a WHERE a.ad_client_id = p.ad_client_id AND ROWNUM = 1) ,"
				+ " 						p.DateAcct, p.C_ConversionType_ID, p.ad_client_id, p.ad_org_id)),0) "
				+ "					 			FROM c_payment p "
				+ "					 			WHERE p.c_bpartner_id = bp.c_bpartner_id "
				+ " 							AND TRUNC(p.dateacct) < TRUNC(?) "														// #14	
				+ " 							AND ((p.IsReceipt = 'Y' AND ? = 'Y') OR ( p.IsReceipt = 'N' AND ? = 'N' )) "			// #15 #16
				+ " 							AND p.docstatus IN ('CO','CL','RE','VO') "
				+ " 							AND (p.c_charge_id IS NULL OR p.c_charge_id = 0) "
				+ " 							AND ( p.AD_Org_ID = ? OR ? IS NULL OR ? = 0 )) "										// #17 #18 #19
				+ "				FROM dual "
				+ "         )    AS DocSolde, "
				+ " 		NULL AS Extrait, "
				+ " 		NVL(( SELECT AD_LANGUAGE FROM ad_client WHERE ad_client_id = ?), 'en_US' ) AS AD_LANGUAGE "					// #20
				+ " FROM c_bp_group bpg, c_bpartner bp "
				+ " WHERE ( bpg.Value >= ? OR ? IS NULL OR ? = '' ) "																	// #21 #22 #23
				+ " AND ( bpg.Value <= ? OR ? IS NULL OR ?  = '' ) "																	// #24 #25 #26
				+ " AND ( bp.C_BP_Group_ID = bpg.C_BP_Group_ID ) "
				+ " AND ( bp.C_BPartner_ID = ? OR ? IS NULL OR ? = 0 ) "																// #27 #28 #29
//				+ " AND ( bp.C_BP_Group_ID = ? OR ? IS NULL OR ? = 0 ) "																// #30 #31 #32
				+ " AND ( (bp.iscustomer = 'Y' AND ? = 'Y') OR (bp.isvendor= 'Y' AND ? = 'N')) "										// #33 #34
				+ " AND ( bp.AD_Client_ID = ? OR ? IS NULL OR ? = 0 ) "																	// #35 #36 #37
				+ " GROUP BY bp.C_BPartner_ID " 
				+ " UNION "
				+ " SELECT "
				+ "		NVL((SELECT Name FROM AD_org WHERE AD_org_ID = ?), ' ' ) 			AS L_ORG, "									// #38
//				+ " 	NVL((SELECT name FROM c_bp_group WHERE c_bp_group_id = ?), ' ' ) 	AS L_GROUP, "								// #39
				+ "		NVL((SELECT name FROM c_bpartner WHERE c_bpartner_id = ?), ' ' ) 	AS L_BP, "									// #40
				+ " 	bp.value 															AS BPValue,"
				+ " 	bp.name  															AS BPName, "
				+ " 	bp.SO_creditlimit 													AS CreditLimit," 
				+ " 	CASE "
				+ " 		WHEN (fa.ad_table_id = 318) THEN N'I' "
				+ " 		WHEN (fa.ad_table_id = 335) THEN N'P' "					
				+ " 		WHEN (fa.ad_table_id IN (390,735)) THEN N'A' "				
				+ " 		ELSE N'' "
				+ " 	END 																AS DocType, "
				+ " 	CASE "
				+ " 		WHEN (fa.ad_table_id = 318) THEN (SELECT dt.Name FROM C_DocType dt INNER JOIN C_Invoice i USING (C_DocType_ID) WHERE i.C_Invoice_ID=fa.Record_ID) "
				+ " 		WHEN (fa.ad_table_id = 335) THEN (SELECT dt.Name FROM C_DocType dt INNER JOIN C_Payment p USING (C_DocType_ID) WHERE p.C_Payment_ID=fa.Record_ID) "					
				+ " 		WHEN (fa.ad_table_id IN (390,735)) THEN N'Affectation' "				
				+ " 		ELSE N'' "
				+ " 	END 																AS Journal, "
				+ " 	j.documentno  														AS DocumentNo, "
				+ "		ev.value           													AS AccountNo, "
				+ "		TRUNC(fa.dateacct) 													AS DateAcct, "
				+ " 	(SELECT ISO_Code FROM C_Currency cur WHERE cur.C_Currency_ID=fa.C_Currency_ID) AS Currency, "
				+ " 	j.Description AS Description, "
				+ " 	CASE "
				+ " 		WHEN (? = 'Y' AND fa.ad_table_id = 318) THEN fa.AmtSourceDr - fa.AmtSourceCr "								// #41
				+ " 		WHEN (? = 'N' AND fa.ad_table_id = 335) THEN -1 * (fa.AmtSourceDr - fa.AmtSourceCr) "						// #42
				+ " 		WHEN (? = 'N' AND fa.ad_table_id IN (390,735)) THEN -1 * (fa.AmtSourceDr - fa.AmtSourceCr) "				// #43
				+ " 		ELSE 0 "
				+ " 	END 																AS AmtSourceDr, "
				+ " 	CASE "
				+ " 		WHEN (? = 'Y' AND fa.ad_table_id = 335) THEN fa.AmtSourceDr - fa.AmtSourceCr "								// #44
				+ " 		WHEN (? = 'N' AND fa.ad_table_id = 318) THEN -1 * (fa.AmtSourceDr - fa.AmtSourceCr) "						// #45
				+ " 		WHEN (? = 'Y' AND fa.ad_table_id IN (390,735)) THEN (fa.AmtSourceDr  - fa.AmtSourceCr) "					// #46
				+ " 		ELSE 0 "
				+ " 	 END AS AmtSourceCr, "
				+ " 	CASE "
				+ " 		WHEN (? = 'Y' AND fa.ad_table_id = 318) THEN fa.amtacctdr - fa.amtacctcr "									// #47
				+ " 		WHEN (? = 'N' AND fa.ad_table_id = 335) THEN -1 * (fa.amtacctdr - fa.amtacctcr) "							// #48
				+ " 		WHEN (? = 'N' AND fa.ad_table_id IN (390,735)) THEN -1 * (fa.amtacctdr - fa.amtacctcr) "					// #49
				+ " 		ELSE 0 "
				+ " 	END AS AmtAcctDr, "
				+ " 	CASE "
				+ " 		WHEN (? = 'Y' AND fa.ad_table_id = 335) THEN fa.amtacctdr - fa.amtacctcr "									// #50
				+ " 		WHEN (? = 'N' AND fa.ad_table_id = 318) THEN -1 * (fa.amtacctdr - fa.amtacctcr) "							// #51
				+ " 		WHEN (? = 'Y' AND fa.ad_table_id IN (390,735)) THEN (fa.amtacctdr  - fa.amtacctcr) "						// #52
				+ " 		ELSE 0 "
				+ " 	 END AS AmtAcctCr, "
				+ " 	 CASE " 
				+ "			WHEN (fa.AmtAcctDr <> 0) THEN ROUND(fa.AmtSourceDr / fa.AmtAcctDr,5) "
				+ " 		WHEN (fa.AmtAcctCr <> 0) THEN ROUND(fa.AmtSourceCr / fa.AmtAcctCr,5) "
				+ "			ELSE 0 " 
				+ " 	END AS Taux, "
				+ " 	0   AS DocSolde, "
				+ " 	CASE "	
				+ " 		WHEN (fa.ad_table_id = 335) THEN (SELECT DISTINCT bs.NAME FROM C_BankStatementLine bsl "
				+ " 										  INNER JOIN C_BankStatement bs ON bs.C_BankStatement_ID = bsl.C_BankStatement_ID "
				+ " 										  AND bs.docstatus IN ('CO','CL') WHERE bsl.C_Payment_ID   = fa.record_id) "
				+ " 		ELSE NULL "
				+ "  	END AS Extrait, "
				+ " 	NVL((SELECT AD_LANGUAGE FROM AD_Client WHERE ad_client_id = ?), 'en_US' ) AS AD_LANGUAGE "						// #53
				+ " FROM FACT_ACCT fa " 
				+ " 	INNER JOIN c_bpartner bp ON bp.C_BPartner_ID = fa.C_BPartner_ID "
				+ " 	INNER JOIN c_bp_group bpg ON bp.C_BP_Group_ID = bpg.C_BP_Group_ID "
				+ " 	LEFT OUTER JOIN gl_category glc ON glc.gl_category_id = fa.gl_category_id "
				+ " 	INNER JOIN c_elementvalue ev ON ev.c_elementvalue_id = fa.account_id "
				+ " 	INNER JOIN z_journal j ON j.zfact_acct_id       = fa.fact_acct_id "
				+ " WHERE ( bpg.Value >= ? OR ? IS NULL OR ? = '' ) "																	// #54 #55 #56
				+ " AND   ( bpg.Value <= ? OR ? IS NULL OR ? = '' ) "																	// #57 #58 #59	
				+ " AND   ( bp.C_BPartner_ID = ? OR ? IS NULL OR ? = 0 ) "																// #60 #61 #62
//				+ " AND   ( bp.C_BP_Group_ID = ? OR ? IS NULL OR ? = 0 ) "																// #63 #64 #65
				+ " AND   ( (? = 'Y' AND bp.iscustomer = 'Y') OR (? = 'N' AND bp.isvendor = 'Y')) "										// #66 #67
				+ " AND   ( fa.AD_Org_ID = ? OR ? IS NULL OR ? = 0 ) "																	// #68 #69 #70
				+ " AND   fa.ad_client_id = ? "																							// #71
				+ " AND   TRUNC(fa.dateacct)  >= TRUNC(?) "																				// #72
				+ " AND   TRUNC(fa.dateacct)  <= TRUNC(?) "																				// #73
				+ " AND   ( fa.c_acctschema_id = ? OR ? = 0 OR ? IS NULL ) "															// #74 #75 #76
				+ " AND   ( "
				+ " 		("
								// Invoice
				+ "				fa.ad_table_id IN (318) "
				+ " 			AND ? = (SELECT issotrx FROM c_invoice WHERE c_invoice_id = fa.record_id) "								// #77
				+ "				AND fa.c_tax_id IS NULL "
				+ " 			AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN (SELECT t_due_acct FROM c_tax_acct)) "
				+ "				AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN (SELECT t_liability_acct FROM c_tax_acct )) "
				+ " 			AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN (SELECT t_credit_acct FROM c_tax_acct )) "
				+ " 			AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN  (SELECT t_receivables_acct FROM c_tax_acct)) "
				+ " 			AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN  (SELECT SuspenseBalancing_Acct FROM C_AcctSchema_GL)) "
				+ " 			AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN  (SELECT IntercompanyDueTo_Acct FROM C_AcctSchema_GL)) "
				+ " 			AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN  (SELECT IntercompanyDueFrom_Acct FROM C_AcctSchema_GL)) "
				+ " 			AND fa.account_id NOT IN (SELECT account_id FROM c_validcombination WHERE c_validcombination_id IN  (SELECT CurrencyBalancing_Acct FROM C_AcctSchema_GL)) "
				+ "			) "
				+ " 	OR "
				+ "			("
								// Payment
				+ "				fa.ad_table_id IN (335) "
				+ " 			AND (ev.IsBankTransitAcct = 'Y') "
				+ "				AND ? = (SELECT isreceipt FROM c_payment WHERE c_payment_id = fa.record_id) "							// #78
				+ "				AND ("
				+ "						(SELECT C_Charge_ID FROM C_Payment WHERE c_payment_id = fa.record_id) IS NULL "
				+ " 					OR "
				+ "						(SELECT C_Charge_ID FROM C_Payment WHERE c_payment_id = fa.record_id) "
				+ "						 = 0 "
				+ "					) "
				+ "			) "
				+ " 	OR "
				+ "			("
								// Allocation
				+ "				fa.ad_table_id IN (390,735) "
				+ "				AND ev.AccountType in ('R','E')"
				+ " 			AND ? = (	"																								// #79
				+ "						SELECT DISTINCT NVL(i.issotrx,p.isreceipt) FROM c_allocationline al "
				+ "							LEFT OUTER JOIN c_invoice i ON al.c_invoice_id=i.c_invoice_id "
				+ "							LEFT OUTER JOIN c_payment p ON al.c_payment_id=p.c_payment_id "
				+ "						WHERE al.c_allocationhdr_id = fa.record_id"
				+ "					  )"
				+ "			) "
				+ "    ) "
				+ " ORDER BY 3, 10, 6 DESC"
			;	
		}
