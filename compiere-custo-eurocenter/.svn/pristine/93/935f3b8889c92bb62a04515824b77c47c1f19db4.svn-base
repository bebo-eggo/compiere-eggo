package com.audaxis.compiere.eurocenter.acct.datasource.sql;

public class PartnerBalanceSql {

	public static String [] paramNames = {
		"AD_Client_ID",					// #01			
		"AD_Org_ID",					// #02
		"C_BP_Group_ID",				// #03
		"C_BPartner_ID",				// #04
		"DateFrom",						// #05
		"DateFrom",						// #06
		"DateFrom",						// #07
		"DateFrom",						// #08
		"AD_Client_ID",					// #09
		"BP_GROUP_FROM",				// #10
		"BP_GROUP_FROM",				// #11
		"BP_GROUP_FROM",				// #12
		"BP_GROUP_TO",					// #13
		"BP_GROUP_TO",					// #14
		"BP_GROUP_TO",					// #15
		"C_BPartner_ID",				// #16
		"C_BPartner_ID",				// #17
		"C_BPartner_ID",				// #18
		"C_BP_Group_ID",				// #19
		"C_BP_Group_ID",				// #20
		"C_BP_Group_ID",				// #21
		"IsSOTrx",						// #22
		"IsSOTrx",						// #23
		"IsDoubtfulIncluded",			// #24
		"DateFrom",						// #25
		"AD_Client_ID",					// #26
		"AD_Client_ID",					// #27
		"AD_Client_ID",					// #28
		"AD_Org_ID",					// #29	
		"AD_Org_ID",					// #30	
		"AD_Org_ID",					// #31
		"C_Currency_ID",				// #32
		"C_Currency_ID",				// #33
		"C_Currency_ID",				// #34
		"DateFrom",						// #35
		"DateFrom",						// #36
		"AD_Client_ID",					// #37
		"AD_Org_ID",					// #38
		"C_BP_Group_ID",				// #39
		"C_BPartner_ID",
		"DateFrom",
		"IsDftIncluded",
		"DateFrom",
		"IsDraftIncluded",
		"DateFrom",
		"IsDraftIncluded",
		"AD_Client_ID",
		"BP_GROUP_FROM",	
		"BP_GROUP_FROM",	
		"BP_GROUP_FROM",
		"BP_GROUP_TO", 
		"BP_GROUP_TO", 
		"BP_GROUP_TO", 
		"C_BPartner_ID",
		"C_BPartner_ID",
		"C_BPartner_ID",
		"C_BP_Group_ID",
		"C_BP_Group_ID",
		"C_BP_Group_ID",
		"IsSOTrx",
		"IsSOTrx",
		"IsDoubtfulIncluded",
		"DateFrom",
		"IsDraftIncluded",
		"AD_Client_ID",
		"AD_Client_ID",
		"AD_Client_ID",
		"AD_Org_ID",
		"AD_Org_ID",
		"AD_Org_ID",
		"C_Currency_ID",
		"C_Currency_ID",
		"C_Currency_ID",
		"DateFrom",
		"DateFrom",
		"IsDraftIncluded",
//		$P!{SORTBYNAME", 		??
		};

		public static String sql = ""
			+ " SELECT "
			+ "		NVL(( SELECT name FROM ad_client WHERE ad_client_id = ?), ' ' ) AS L_CLIENT, "			//#1
			+ " 	NVL(( SELECT name FROM ad_org WHERE ad_org_id = ?), ' ' ) AS L_ORG, "					//#2
			+ " 	NVL(( SELECT name FROM c_bp_group WHERE c_bp_group_id = ?), ' ' ) AS L_GROUP, "			//#3
			+ "     NVL(( SELECT name FROM c_bpartner WHERE c_bpartner_id = ?), ' ' ) AS L_BP, "			//#4
			+ "     bp.value 													AS BPValue, "
			+ "     bp.name  													AS BPName, "
			+ "     bp.SO_creditlimit 											AS CreditLimit, "
			+ "     'I' 							                	  		AS DocType, "
			+ "     i.documentno                                      			AS DocumentNo, "
			+ " 	i.poreference                                     			AS POReference, "
			+ "     TRUNC(i.dateinvoiced)                             			AS DateInvoiced, "
			+ "     TRUNC(i.dateacct)                                 			AS DateAcct, "
			+ "     i.isindispute                                     			AS InDispute, "
			+ "     PaymentTermDuedays(i.c_PaymentTerm_ID, i.DateInvoiced, TRUNC(?)) AS DueDay, "			//#5
			+ "     NVL((SELECT TRUNC(l.DueDate) FROM C_InvoicePaySchedule l WHERE l.C_Invoice_ID=i.C_Invoice_ID AND rownum = 1),TRUNC(i.dateinvoiced - PaymentTermDueDays(i.C_PaymentTerm_ID,i.DateInvoiced, i.DateInvoiced))) AS duedate, "
			+ "     Z_INVOICE_OPEN_ASOF(i.C_Invoice_ID,0,TRUNC(?)) 				AS DocAmt , "					//#6
			+ " 	Z_INVOICE_OPEN_ASOF(i.C_Invoice_ID,0,TRUNC(?))  			AS GrandTotalBase, "			//#7
			+ " 	Z_INVOICE_OPEN_ASOF(i.C_Invoice_ID,0,TRUNC(?))         		AS GrandTotal, "				//#8
			+ " 	0                                                      	 	AS Payamt, "
			+ " 	NULL                                                    AS C_InvoicePaySchedule_ID, "
			+ "     NVL(( SELECT AD_LANGUAGE FROM AD_Client WHERE AD_Client_ID=?),'en_US') AS AD_LANGUAGE,"	// #9
			+ " 	cur.Iso_Code, "
			+ "  	i.IsDoubtful 											AS ISDOUBTFUL "
			+ ""
			+ " FROM c_invoice i "
			+ "		INNER JOIN c_bpartner bp ON ( i.c_bpartner_id = bp.c_bpartner_id) "
			+ " 	INNER JOIN c_bp_group bpg ON ( bp.C_BP_Group_ID = bpg.C_BP_Group_ID ) "
			+ " 	INNER JOIN c_currency cur ON ( i.C_Currency_ID  = cur.C_Currency_ID ) "
			+ ""
			+ " WHERE (bpg.Value >= ? OR ? IS NULL OR ? = '' ) " 											// #10 #11 #12
			+ " AND   (bpg.Value <= ? OR ? IS NULL OR ? = '' ) "											// #13 #14 #15
			+ " AND   (bp.C_BPartner_ID = ? OR ? IS NULL OR ? = 0 ) "										// #16 #17 #18					
			+ " AND   (bp.C_BP_Group_ID = ? OR ? IS NULL OR ? = 0 ) "										// #19 #20 #21 	
			+ " AND   ((i.IsSoTrx = 'Y' AND ? = 'Y' ) OR ( i.IsSotrx = 'N' AND ? = 'N' ))	"				// #22 #23
			+ " AND   ((i.IsDoubtful='Y' AND ?='Y' AND TRUNC(i.DoubtfulDate)<=TRUNC(?)) OR (i.IsDoubtful='N')) " // #24 #25
			+ " AND   i.docstatus IN ('CO','CL','RE','VO') "
			+ " AND   (i.AD_Client_ID = ? OR ? IS NULL OR ? = 0 ) " 										// #26 #27 #28
			+ " AND   (i.AD_Org_ID = ? OR ? IS NULL OR ?  = 0 ) "											// #29 #30 #31												
			+ " AND   (i.C_Currency_ID = ? OR ? IS NULL OR ? = 0 ) "										// #32 #33 #34
			+ " AND   TRUNC(i.dateacct) <= TRUNC(?) "														// #35
			+ " AND Z_INVOICE_OPEN_ASOF(i.C_Invoice_ID,0,TRUNC(?)) <> 0 "									// #36
			+ " AND i.Posted ='Y' "

			+ " UNION ALL " 
			
			+ " SELECT "
			+ " 	NVL(( SELECT name FROM AD_Client WHERE AD_Client_ID = ?), ' ' ) 	AS L_CLIENT, "		// #37
			+ " 	NVL(( SELECT name FROM ad_org WHERE ad_org_id = ?), ' ' ) 			AS L_ORG, "			// #38
			+ "  	NVL((SELECT name FROM c_bp_group WHERE c_bp_group_id = ?), ' ' ) 	AS L_GROUP, "		// #39
			+ " 	NVL((SELECT name FROM c_bpartner WHERE c_bpartner_id = ?), ' ' ) 	AS L_BP, "			// #40
			+ " 	bp.value 															AS BPValue, "
			+ " 	bp.name  															AS BPName,"
			+ "		bp.SO_creditlimit 													AS CreditLimit,"
			+ "		'P' 																AS DocType, "
			+ "		p.documentno || '          ' || p.c_payment_id                    	AS DocumentNo, "
			+ " 	NULL                                 								AS POReference, "
			+ " 	TRUNC(p.datetrx)                     								AS DateInvoiced, "
			+ "		TRUNC(p.dateacct)                    								AS DateAcct, "
			+ " 	'N'                                  								AS InDispute, "
			+ " 	0                                    								AS DueDay, "
			+ " 	TRUNC(COALESCE(p.duedate,p.datetrx)) 								AS DueDate, "
			+ " 	0                                    								AS DocBase, "
			+ "   - ZpaymentAvailable2(p.C_Payment_ID,TRUNC(?),?) 						AS GrandTotalBase, "// #41 #42 
			+ " 	ZpaymentAvailable2(p.C_Payment_ID,TRUNC(?),?)    					AS GrandTotal, " 	// #43 #44
			+ " 	ZpaymentAvailable2(p.C_Payment_ID,TRUNC(?),?) 						AS PayAmt, "		// #45 #46	
			+ " 	NULL, "
			+ " 	NVL((SELECT AD_LANGUAGE FROM AD_Client WHERE AD_Client_ID=?),'en_US') AS AD_LANGUAGE, " // #47
			+ " 	cur.Iso_Code														AD ISO_Code, "
			+ " 	p.IsDoubtful 														AS ISDOUBTFUL "
			+ " FROM c_Payment p, c_bp_group bpg, c_bpartner bp, C_Currency cur "
			+ " WHERE (bpg.Value >= ? OR ? IS NULL OR ? = '' ) " 											// #48 # 49 #50
			+ " AND   (bp.C_BP_Group_ID  = bpg.C_BP_Group_ID ) "
			+ " AND   (bpg.Value <= ? OR ? IS NULL OR ? = '' ) "											// #51 #52 #53 
			+ " AND   (bp.C_BPartner_ID = ? OR ? IS NULL OR ? = 0 )	"										// #54 #55 #56
			+ " AND   (bp.C_BP_Group_ID = ? OR ? IS NULL OR ? = 0 ) "										// #57 #58 #59
			+ " AND   ((p.IsReceipt = 'Y' AND ? = 'Y' ) OR ( p.IsReceipt = 'N' AND ? = 'N')) " 				// #60 #61
			+ " AND   ((p.IsDoubtful='Y' AND ?='Y' AND TRUNC(p.DoubtfulDate)<=TRUNC(?)) OR (p.IsDoubtful='N')) " // #62 #63
			+ " AND   p.DocStatus  IN ('CO','CL','RE','VO') " 
			+ " AND   p.C_BPartner_ID = bp.C_BPartner_ID "
			+ " AND   (p.C_Charge_ID = 0 OR p.C_Charge_ID IS NULL) "
			+ " AND   (p.IsDraft='N' OR (p.IsDraft='Y' AND ? = 'Y')) " // 23439								// #64					
			+ " AND   (p.AD_Client_ID = ? OR ? IS NULL OR ? = 0) "											// #65 #66 #67 
			+ " AND   (p.AD_Org_ID  = ? OR ? IS NULL OR ? = 0 ) "											// #68 #69 #70
			+ " AND   (p.C_Currency_ID = ? OR ? IS NULL OR ? = 0) "											// #71 #72 #73
			+ " AND   TRUNC(p.dateacct) <= TRUNC(?) "														// #74
			+ " AND   ZpaymentAvailable2(p.C_Payment_ID,TRUNC(?),?) <> 0 " 									// #75 #76
			+ " AND   p.C_Currency_ID = cur.C_Currency_ID "
			+ " AND   p.Posted='Y' "

//			+ " ORDER BY ?, Iso_Code, Duedate"												// #77
			+ " ORDER BY bpvalue, Iso_Code, Duedate"
			;	
		}
