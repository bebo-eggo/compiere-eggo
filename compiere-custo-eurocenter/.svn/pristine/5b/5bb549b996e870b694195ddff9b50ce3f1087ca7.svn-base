package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.compiere.framework.PO;
import org.compiere.model.MBPBankAccount;
import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.model.MTrxCODA;
import org.compiere.model.X_I_Coda;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class ImportCodaAssignement extends SvrProcessExtended {

	private int v_Assigned = 0;
	private int v_ValidManual = 0;
	private int v_Count = 0;
	private int v_Imported = 0;
	private int v_AD_Client_ID = 0;
	private int v_BankAccount_ID = 0;

	@Override
	protected void prepare() {
		v_AD_Client_ID = getAD_Client_ID();
		
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			if (para[i].getParameterName().equals("C_BankAccount_ID"))
				v_BankAccount_ID = para[i].getParameterAsInt();
		}
	}

	@Override
	protected String doIt() throws Exception {
		
		if(v_AD_Client_ID == 0)
			return "Erreur, société non connue";
		if(v_BankAccount_ID == 0)
			return "Banque inconnue";

		ArrayList<X_I_Coda> listCoda = new ArrayList<X_I_Coda>();
		int[] coda_IDs = PO
				.getAllIDs(
						X_I_Coda.Table_Name,
						" I_IsImported = 'N' AND XX_IsValidManual = 'N' AND AD_Client_ID = "
								+ v_AD_Client_ID+" AND C_BANKACCOUNT_ID = "+v_BankAccount_ID, get_Trx());
		for (int i_Coda_ID : coda_IDs) {

			X_I_Coda i_Coda = new X_I_Coda(getCtx(), i_Coda_ID, get_Trx());
			i_Coda.setI_ErrorMsg("");
			i_Coda.setXX_AccError("");
			i_Coda.setXX_TrxError("");
			i_Coda.setXX_ImportType("");
			i_Coda.setXX_Assigned(false);

			// 1 - Identification of the customer's bank account
			identifyBankAcount(i_Coda);
			
			// 2 - Analyzing structured communication
			analyzingStrdCommunication(i_Coda);

			// 3 - Handling information provided by the structured
			// communication
			strdCommunicationHandling(i_Coda);

			// 4 - Operation Code Processing
			operationCodeProcessing(i_Coda);

			// 5 - Assignment
			assignment(i_Coda);

			if(i_Coda.get_Value("C_Order_ID")!=null && i_Coda.get_ValueAsString("C_Order_ID").equals("0"))
				i_Coda.set_Value("C_Order_ID", null);
			listCoda.add(i_Coda);

		}

		if (PO.saveAll(get_Trx(), listCoda)) {
			v_Count = DB.getSQLValue(get_Trx(), "SELECT COUNT(*) FROM I_Coda where AD_Client_ID = "+v_AD_Client_ID);
			v_Imported = DB.getSQLValue(get_Trx(),
					"SELECT COUNT(*) FROM I_Coda WHERE I_IsImported ='Y' and AD_Client_ID = "+v_AD_Client_ID);
			v_Assigned = DB
					.getSQLValue(get_Trx(),
							"SELECT COUNT(*) FROM I_Coda WHERE XX_Assigned ='Y' AND I_IsImported ='N' AND AD_Client_ID = "+v_AD_Client_ID);
			v_ValidManual = DB
					.getSQLValue(
							get_Trx(),
							"SELECT COUNT(*) FROM I_Coda WHERE XX_Assigned ='N' AND XX_IsValidManual='Y' AND I_IsImported ='N' AND AD_Client_ID = "+v_AD_Client_ID);
			// Evolution 70964 - Famille et Code Opï¿½ration inconnu
			if(coda_IDs.length>0)
				addLog(getTrxCodaError(coda_IDs));
			
			addLog("@I_IsImported@ : " + v_Imported);
			addLog("@XX_Assigned@ : " + v_Assigned + " / "
					+ (v_Count - v_Imported));
			addLog("@XX_IsValidManual@ : " + v_ValidManual + " / "
					+ (v_Count - v_Imported));
			addLog("@Errors@ : "
					+ (v_Count - v_Assigned - v_ValidManual - v_Imported)
					+ " / " + (v_Count - v_Imported));
			return Msg.getMsg(getCtx(), ImportCodaMessages.PROCESSOK);
		} else
			return Msg.getMsg(getCtx(), ImportCodaMessages.PROCESSFAILED);

	}

	private void assignment(X_I_Coda i_Coda) {

		paySelectionIdentification(i_Coda);

		if (i_Coda.getC_PaySelection_ID() <= 0)
			bPartnerIdentificationPOReference(i_Coda);
		
			orderIdentification(i_Coda);
			
		if (i_Coda.getC_BPartner_ID() <= 0)
			bPartnerIdentification(i_Coda);

		if (i_Coda.getC_Payment_ID() <= 0 && i_Coda.getC_PaySelection_ID() <= 0)
			paymentIdentification(i_Coda);

		if (i_Coda.getC_Invoice_ID() <= 0)
			invoiceIdentification(i_Coda);

		checkErrors(i_Coda);

		validation(i_Coda);
	}

	private void paySelectionIdentification(X_I_Coda i_Coda) {

		StringBuffer sql = new StringBuffer(
				"SELECT ps.C_PaySelection_ID FROM C_PaySelection ps WHERE ps.IsActive ='Y' AND ps.Processed ='Y' AND ps.C_BankAccount_ID = ? AND ps.DocumentNo = ? ");
		sql.append("AND (SELECT COUNT(1) FROM C_PaySelectionCheck psl WHERE psl.C_PaySelection_ID = ps.C_PaySelection_ID AND psl.C_Payment_ID IS NOT NULL ");
		sql.append("AND NOT EXISTS (SELECT * FROM C_BankStatementLine bsl WHERE bsl.C_Payment_ID = psl.C_Payment_ID)) > 0 ");
		sql.append("AND ((SELECT SUM(PayAmt) FROM C_PaySelectionCheck psl WHERE psl.c_payselection_id = ps.c_payselection_id AND psl.IsReceipt = 'Y') = ? ");
		sql.append("OR (SELECT SUM(-PayAmt) FROM C_PaySelectionCheck psl WHERE psl.c_payselection_id = ps.c_payselection_id AND psl.IsReceipt = 'N') = ? )");
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(i_Coda.getC_BankAccount_ID());
		String bP_Ref = i_Coda.getXX_BP_Ref() == null ? "" : i_Coda
				.getXX_BP_Ref();
		params.add(bP_Ref);
		params.add(i_Coda.getTrxAmt());
		params.add(i_Coda.getTrxAmt());
		int c_PaySelection_ID = DB.getSQLValue(get_Trx(), sql.toString(),
				params);
		i_Coda.setC_PaySelection_ID(c_PaySelection_ID);

	}

	private void bPartnerIdentificationPOReference(X_I_Coda i_Coda) {

		StringBuffer sql = new StringBuffer(
				"SELECT p.C_Payment_ID,p.C_BPartner_ID, p.XX_DOSSIER FROM C_Payment p ");
		sql.append("WHERE exists (select 1 from C_BPartner cb where cb.C_BPartner_ID=p.C_BPartner_ID and cb.IsActive='Y') and ((p.PayAmt = ? AND p.IsReceipt = 'Y') OR (- p.PayAmt = ? AND p.IsReceipt = 'N')) ");
		sql.append("AND (SELECT 1 FROM C_BankStatementLine bk WHERE bk.C_Payment_ID = p.C_Payment_ID ) IS NULL ");
		sql.append("AND p.DateTrx <= ? AND p.DateAcct <= ? AND p.documentno = ? AND p.docstatus IN ('IP', 'CO') ");
		sql.append("AND ( ( p.C_Currency_ID = ? AND ? IS NOT NULL ) OR ? IS NULL )");
		String bP_Ref = i_Coda.getXX_BP_Ref() == null ? "" : i_Coda
				.getXX_BP_Ref();
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(i_Coda.getTrxAmt());
		params.add(i_Coda.getTrxAmt());
		params.add(i_Coda.getValutaDate());
		params.add(i_Coda.getDateAcct());
		params.add(bP_Ref);
		params.add(i_Coda.getXX_BP_Currency_ID());
		params.add(i_Coda.getXX_BP_Currency_ID());
		params.add(i_Coda.getXX_BP_Currency_ID());
		Object[][] result = QueryUtil.executeQuery(sql.toString(),
				params.toArray(), get_Trx());
		if (result.length > 0) {
			int payment_ID = ((BigDecimal) result[0][0]).intValue();
			int partner_ID = ((BigDecimal) result[0][1]).intValue();
			String poref = result[0][2].toString();
			i_Coda.setC_Payment_ID(payment_ID);
			i_Coda.setC_BPartner_ID(partner_ID);
			if(i_Coda.get_ValueAsString("XX_Projet").equals(""))
				i_Coda.set_Value("XX_Projet",poref);
		}
	}

	private void bPartnerIdentification(X_I_Coda i_Coda) {

		StringBuffer sql = new StringBuffer(
				"SELECT C_BPartner_ID FROM C_BP_BankAccount WHERE exists (select 1 from C_BPartner cb where cb.C_BPartner_ID=C_BP_BankAccount.C_BPartner_ID and cb.IsActive='Y') and ");
		sql.append("(REGEXP_REPLACE(AccountNo, '[^0-9A-Za-z]', '') = ?  OR   REGEXP_REPLACE(IBAN, '[^0-9A-Za-z]', '') = ? ) AND AD_Client_ID = ?  and IsActive = 'Y' ");
		ArrayList<Object> params = new ArrayList<Object>();
		String accountNbr = i_Coda.getXX_BP_AccountNbr() == null ? "" : i_Coda
				.getXX_BP_AccountNbr();
		params.add(accountNbr);
		params.add(accountNbr);
		params.add(i_Coda.getAD_Client_ID());
		if (i_Coda.getXX_BP_BBAN() != null) {
			sql.append("AND BBAN = ? ");
			params.add(i_Coda.getXX_BP_BBAN());
		}
		if (i_Coda.getXX_BP_Currency_ID() > 0) {
			sql.append("AND ISO_CODE = (SELECT c.Iso_Code FROM C_Currency c WHERE c.C_Currency_ID = ? ) ");
			params.add(i_Coda.getXX_BP_Currency_ID());
		}
		int c_BPartner_ID = DB.getSQLValue(get_Trx(), sql.toString(), params);
		i_Coda.setC_BPartner_ID(c_BPartner_ID);

		// 70964
		if (c_BPartner_ID < 0) {
			params = new ArrayList<Object>();
			params.add(i_Coda.getXX_BP_Name() != null ? i_Coda.getXX_BP_Name()
					: "");
			params.add(i_Coda.getXX_BP_Ref() != null ? i_Coda.getXX_BP_Ref()
					: "");
			params.add(i_Coda.getAD_Client_ID());

			sql = new StringBuffer(
					" Select C_BPartner.C_BPartner_ID From C_BPartner");
			sql.append(" Where 	(C_BPartner.Value = ?");
			sql.append(" OR 	C_BPartner.Value = ?)");
			sql.append(" AND C_BPartner.AD_Client_ID = ?");
			sql.append(" AND C_BPartner.IsActive = 'Y'");

			c_BPartner_ID = DB.getSQLValue(get_Trx(), sql.toString(), params);

			if (c_BPartner_ID > 0) {
				sql = new StringBuffer(" Select Z_TrxCODA.C_Charge_ID");
				sql.append(" From Z_TrxCODA");
				sql.append(" Where Z_TrxCODA.C_BPartner_ID = ? ");
				sql.append(" AND Z_TrxCODA.AD_Client_ID = ?");
				sql.append(" AND Z_TrxCODA.IsActive = 'Y'");

				int chargeID = DB.getSQLValue(get_Trx(), sql.toString(),
						c_BPartner_ID, i_Coda.getAD_Client_ID());

				if (chargeID > 0)
					i_Coda.setC_Charge_ID(chargeID);
				else
					i_Coda.setC_BPartner_ID(c_BPartner_ID);

			}
		}

		// 70964
	}

	private void invoiceIdentification(X_I_Coda i_Coda) {

		int c_Invoice_ID = -1, payment_ID = -1, order_ID = -1;
		String poref = "";
		if (i_Coda.getC_Payment_ID() > 0) {
			c_Invoice_ID = DB
					.getSQLValue(
							get_Trx(),
							"Select al.C_Invoice_ID From C_AllocationLine al INNER JOIN C_AllocationHdr h ON (h.C_AllocationHdr_ID = al.C_AllocationHdr_ID AND h.DocStatus IN ('IP', 'CO'))  Where al.C_Payment_ID = ? ",
							i_Coda.getC_Payment_ID());
			i_Coda.setC_Invoice_ID(c_Invoice_ID);// Evolution 70964
		} else if (i_Coda.getC_BPartner_ID() > 0) {
			// Evolution 70964
			ArrayList<Object> params = new ArrayList<Object>();
			StringBuffer sql = new StringBuffer(
					"SELECT i.C_Invoice_ID, NVL(i.C_Order_ID,0), i.POREFERENCE FROM C_Invoice i ");
			sql.append(" WHERE i.DocStatus IN ('IP', 'CO','CL') AND i.IsPaid = 'N' ");
			sql.append(" AND i.C_BPartner_ID = ? and ((? > 0 and i.C_Order_ID = ? ))  ");
			sql.append(" AND NOT EXISTS ( Select 1 ");// 42840
			sql.append(" FROM C_PaySelection ps ");// 42840
			sql.append(" WHERE ps.C_PaySelection_ID in ( SELECT psl.C_PaySelection_ID FROM C_PaySelectionLine psl ");// 42840
			sql.append(" WHERE psl.C_Invoice_ID = i.C_Invoice_ID ");// 42840
			sql.append(" ) ");// 42840
			sql.append(" AND ps.Processed = 'N' )");// 42840

			//params.add(i_Coda.getTrxAmt());
			params.add(i_Coda.getC_BPartner_ID());
			params.add(i_Coda.get_ValueAsBigDecimal("C_Order_ID"));
			params.add(i_Coda.get_ValueAsBigDecimal("C_Order_ID"));
			//params.add(i_Coda.get_ValueAsBigDecimal("C_Order_ID"));
			if (i_Coda.getXX_BP_Currency_ID() > 0) {
				sql.append("AND i.C_Currency_ID = ? ");
				params.add(i_Coda.getXX_BP_Currency_ID());
			}
			// if (i_Coda.getC_BPartner_ID() > 0) {
			// sql.append("AND i.C_BPartner_ID = ? "); //Evolution 70964
			// params.add(i_Coda.getC_BPartner_ID());
			// }
			Object[][] result = QueryUtil.executeQuery(sql.toString(),
					params.toArray(), get_Trx());
			if (result.length > 0) {
				c_Invoice_ID = ((BigDecimal) result[0][0]).intValue();
				order_ID = ((BigDecimal) result[0][1]).intValue();
				poref = result[0][2].toString();
				// payment_ID = ((BigDecimal) result[0][1]).intValue();
				// //Evolution 70964
				if(i_Coda.get_ValueAsBigDecimal("C_Order_ID").intValue()<=0)
				{
					i_Coda.set_Value("C_Order_ID", order_ID);
					i_Coda.set_Value("XX_Projet", poref);
				}
					i_Coda.setC_Invoice_ID(c_Invoice_ID);
				// i_Coda.setC_Payment_ID(payment_ID); //Evolution 70964
			}
		} else
			// Fin Evolution 70964
			return;

		if (c_Invoice_ID > 0) {
			MInvoice invoice = new MInvoice(getCtx(), c_Invoice_ID, get_Trx());
			if (i_Coda.getC_BPartner_ID() <= 0)
				i_Coda.setC_BPartner_ID(invoice.getC_BPartner_ID());

			// 70964
			//if (invoice.getC_Order_ID() > 0) {
			//	i_Coda.set_Value("C_Order_ID", invoice.getC_Order_ID());
			//}
			// 70964

		} 
//		else // 70964
//		{
//
//			ArrayList<Object> params = new ArrayList<Object>();
//			params.add(i_Coda.get_Value("XX_Projet") != null ? i_Coda
//					.get_Value("XX_Projet").toString().trim().toUpperCase() : "");
//			params.add(i_Coda.getAD_Org_ID());
//
//			int orderID = i_Coda.get_ValueAsBigDecimal("C_Order_ID").intValue();
//
//			if (orderID > 0) {
//				i_Coda.set_Value("C_Order_ID", orderID);
//
//				params = new ArrayList<Object>();
//				params.add(orderID);
//				params.add(i_Coda.getAD_Org_ID());
//				params.add(i_Coda.getTrxAmt());
//
//				int invoiceID = DB
//						.getSQLValue(
//								get_Trx(),
//								"Select i.C_Invoice_ID From C_Invoice i"
//										+ " Where i.C_Order_ID = ?"
//										+ " AND i.AD_Org_ID = ?"
//										+ " AND  ",
//								params);
//
//				if (invoiceID > 0) {
//					i_Coda.setC_Invoice_ID(invoiceID);
//
//					if (i_Coda.getC_BPartner_ID() <= 0) {
//						MInvoice invoice = new MInvoice(getCtx(), invoiceID,
//								get_Trx());
//						i_Coda.setC_BPartner_ID(invoice.getC_BPartner_ID());
//					}
//				}
			//}
		//}
		// 70964
		if (payment_ID > 0) {
			MPayment payment = new MPayment(getCtx(), payment_ID, get_Trx());
			if (i_Coda.getC_BPartner_ID() <= 0)
				i_Coda.setC_BPartner_ID(payment.getC_BPartner_ID());
		}
	}

	private void paymentIdentification(X_I_Coda i_Coda) {

		int c_Payment_ID = -1;
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer sql = new StringBuffer();

		// Evolution 70964
		if (i_Coda.getC_Invoice_ID() <= 0 && i_Coda.getC_BPartner_ID() <= 0)
			return;

		if (i_Coda.getC_Invoice_ID() > 0 && 1==2) { // Evolution 70964
			sql.append("SELECT p.C_Payment_ID FROM C_Payment p INNER JOIN C_AllocationLine al ON al.C_Payment_ID = p.C_Payment_ID ");
			sql.append("WHERE ((p.PayAmt = ? And p.IsReceipt = 'Y') OR (-p.PayAmt = ? And p.IsReceipt = 'N')) ");
			sql.append("AND NOT EXISTS (SELECT 1 FROM C_BankStatementLine bk WHERE bk.C_Payment_ID = p.C_Payment_ID ) ");
			sql.append("AND p.DateTrx <= ? AND p.DateAcct <= ? AND al.C_Invoice_ID = ? ");
			sql.append("AND p.C_BPartner_ID = al.C_BPartner_ID "); // Evolution
																	// 70964
			params.add(i_Coda.getTrxAmt());
			params.add(i_Coda.getTrxAmt());
			params.add(i_Coda.getValutaDate());
			params.add(i_Coda.getDateAcct());
			params.add(i_Coda.getC_Invoice_ID());

		} else if (i_Coda.getC_BPartner_ID() > 0) {
			sql.append("SELECT p.C_Payment_ID FROM C_Payment p ");
			sql.append("WHERE ((p.PayAmt = ? And p.IsReceipt = 'Y') OR (-p.PayAmt = ? And p.IsReceipt = 'N')) ");
			sql.append("AND (SELECT 1 FROM C_BankStatementLine bk WHERE bk.C_Payment_ID = p.C_Payment_ID ) IS NULL ");
			sql.append("AND p.DateTrx <= ? AND p.DateAcct <= ? ");
			//sql.append("AND p.DocumentNo = ? ");
			sql.append("AND p.C_BPartner_ID = ? "); // Evolution 70964
			params.add(i_Coda.getTrxAmt());
			params.add(i_Coda.getTrxAmt());
			params.add(i_Coda.getValutaDate());
			params.add(i_Coda.getDateAcct());
			//String bP_Ref = i_Coda.getXX_BP_Ref() == null ? "" : i_Coda
			//		.getXX_BP_Ref();
			//params.add(bP_Ref);
			params.add(i_Coda.getC_BPartner_ID()); // Evolution 70964
		}

		if (i_Coda.getXX_BP_Currency_ID() > 0) {
			sql.append("AND p.C_Currency_ID = ? ");
			params.add(i_Coda.getXX_BP_Currency_ID());
		}
		// if (i_Coda.getC_BPartner_ID() > 0) {
		// sql.append("AND p.C_BPartner_ID = ? "); //Evolution 70964
		// params.add(i_Coda.getC_BPartner_ID());
		// }

		sql.append("AND p.C_BankAccount_ID = ? ");// Evolution 70964
		params.add(i_Coda.getC_BankAccount_ID());// Evolution 70964

		sql.append("AND p.DocStatus in ('IP', 'CO') ");
		c_Payment_ID = DB.getSQLValue(get_Trx(), sql.toString(), params);
		if (c_Payment_ID > 0) {
			MPayment payment = new MPayment(getCtx(), c_Payment_ID, get_Trx());
			if (i_Coda.getC_BPartner_ID() <= 0)
				i_Coda.setC_BPartner_ID(payment.getC_BPartner_ID());
			i_Coda.setC_Payment_ID(c_Payment_ID);
		}
	}

	private void checkErrors(X_I_Coda i_Coda) {

		StringBuffer error = new StringBuffer(i_Coda.getXX_TrxError());

		if (i_Coda.getC_BPartner_ID() <= 0 && i_Coda.getC_Invoice_ID() <= 0
				&& i_Coda.getC_Payment_ID() <= 0
				&& i_Coda.getC_PaySelection_ID() <= 0) {
			error = new StringBuffer(
					(i_Coda.getXX_TrxError()).replace(Msg.getMsg(getCtx(),
							ImportCodaMessages.BPARTNER_ERROR), ""));
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.NO_PARTNER_DOC_ERROR));
		}
		
		//90353
		if(i_Coda.getC_BPartner_ID() > 0){
			String isActive = DB.getSQLValueString(get_Trx(), "select isactive from c_bpartner where c_bpartner_id = ?",i_Coda.getC_BPartner_ID());
			if(isActive.equals("N")){
				error = new StringBuffer(
						(i_Coda.getXX_TrxError()).replace(Msg.getMsg(getCtx(),
								ImportCodaMessages.BPARTNER_ERROR), ""));
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.BPARTNER_INACTIVE));
			}
		}
		if (i_Coda.getC_BPartner_ID() > 0 && i_Coda.getC_Invoice_ID() <= 0
				&& i_Coda.getC_Payment_ID() <= 0) {
			error = new StringBuffer(
					(i_Coda.getXX_TrxError()).replace(Msg.getMsg(getCtx(),
							ImportCodaMessages.BPARTNER_ERROR), ""));
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.INVOICE_PAYMENT_ERROR));
		}
		if (i_Coda.getC_Invoice_ID() > 0) {
			MInvoice invoice = new MInvoice(getCtx(), i_Coda.getC_Invoice_ID(),
					get_Trx());
			error = new StringBuffer((error.toString()).replace(
					Msg.getMsg(getCtx(), ImportCodaMessages.INVOICE_ERROR), ""));
			if (i_Coda.getC_BPartner_ID() > 0
					&& i_Coda.getC_BPartner_ID() != invoice.getC_BPartner_ID())
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.PARTNER_BILL_ERROR));
		}
		if (i_Coda.getC_Payment_ID() > 0) {
			MPayment payment = new MPayment(getCtx(), i_Coda.getC_Payment_ID(),
					get_Trx());
			error = new StringBuffer((error.toString()).replace(
					Msg.getMsg(getCtx(), ImportCodaMessages.PAYMENT_ERROR), ""));
			if (i_Coda.getC_BPartner_ID() > 0
					&& i_Coda.getC_BPartner_ID() != payment.getC_BPartner_ID())
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.PARTNER_PAYMENT_ERROR));
		}
		i_Coda.setXX_TrxError(error.toString());
	}

	private void validation(X_I_Coda i_Coda) {

		ArrayList<Integer> importType = new ArrayList<Integer>();
		MBPartner partner = null;
		if (i_Coda.getC_BPartner_ID() > 0) {
			partner = new MBPartner(getCtx(), i_Coda.getC_BPartner_ID(),
					get_Trx());
			if (i_Coda.getC_Invoice_ID() > 0 && i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& !i_Coda.isXX_Debit())
				importType.add(1);
			if (i_Coda.getC_Invoice_ID() <= 0 && i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& partner.isCustomer() && !partner.isVendor())
				importType.add(2);
			if (i_Coda.getC_Payment_ID() > 0 && i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& !i_Coda.isXX_Debit())
				importType.add(3);
			// Evolution #41652:CODA - Optimisation (suite 3)
			// if (i_Coda.getC_Invoice_ID() <= 0 && i_Coda.getC_Payment_ID() > 0
			if (i_Coda.getC_Payment_ID() <= 0 && i_Coda.getC_Invoice_ID() > 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& i_Coda.isXX_Debit())
				importType.add(4);
			if (i_Coda.getC_Invoice_ID() > 0 && i_Coda.getC_Payment_ID() > 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& i_Coda.isXX_Debit())
				importType.add(5);
			if (i_Coda.getC_Invoice_ID() <= 0 && i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0
					&& !partner.isCustomer() && partner.isVendor())
				importType.add(6);
		} else {
			// 42697
			// if (i_Coda.getC_Charge_ID() > 0 && i_Coda.getC_Invoice_ID() <= 0
			// && i_Coda.getC_Payment_ID() <= 0
			// && i_Coda.getC_PaySelection_ID() <= 0
			// && i_Coda.getZ_CheckDelivery_ID() <= 0)
			// importType.add(7);

			if (i_Coda.getC_Charge_ID() > 0
			// 42697 && i_Coda.getC_Invoice_ID() <= 0
			// 42697 && i_Coda.getC_Payment_ID() <= 0
			// 42697 && i_Coda.getC_PaySelection_ID() <= 0 && i_Coda
			// 42697 .getZ_CheckDelivery_ID() <= 0);
					&& (i_Coda.get_ValueAsString("XX_Debit") != null
							&& i_Coda.get_ValueAsString("XX_Debit").equals("Y") || i_Coda
							.get_ValueAsString("XX_Debit").equals("N"))// 42697
																		// Test
																		// pas
																		// nï¿½cï¿½ssaire
																		// vï¿½rifiï¿½
																		// dans
																		// DB,
																		// mais
																		// demandï¿½
																		// (spï¿½cifiï¿½)
																		// par
																		// consultant
			)
				importType.add(7);
			// 42697
			if (i_Coda.getC_PaySelection_ID() > 0
					&& i_Coda.getC_Invoice_ID() <= 0
					&& i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getZ_CheckDelivery_ID() <= 0)
				importType.add(8);
			if (i_Coda.getZ_CheckDelivery_ID() > 0
					&& i_Coda.getC_Invoice_ID() <= 0
					&& i_Coda.getC_Payment_ID() <= 0
					&& i_Coda.getC_Charge_ID() <= 0
					&& i_Coda.getC_PaySelection_ID() <= 0)
				importType.add(9);
		}
		StringBuffer error = new StringBuffer(
				i_Coda.getI_ErrorMsg() != null ? i_Coda.getI_ErrorMsg() : "");
		if (i_Coda.getC_BPartner_ID() > 0 && i_Coda.getC_Invoice_ID() <= 0
				&& i_Coda.getC_Payment_ID() <= 0 && partner.isVendor()
				&& partner.isCustomer())
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.PARTNER_VANDC_ERROR));
		if (importType.isEmpty())
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.ASSIGNATION_ERROR));
		else if (importType.size() > 1)
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.AMBIGUOUS_ERROR));
		else {

			boolean assigned = true;
			i_Coda.setXX_ImportType(importType.get(0).toString());

			if (i_Coda.getC_BPartner_ID() > 0 && i_Coda.getC_Invoice_ID() > 0) {
				assigned = (i_Coda.getC_BPartner_ID() == DB
						.getSQLValue(
								get_Trx(),
								"SELECT C_BPartner_ID FROM C_Invoice WHERE C_Invoice_ID = ? ",
								i_Coda.getC_Invoice_ID()));
				if (!assigned)
					error.append(Msg.getMsg(getCtx(),
							ImportCodaMessages.PARTNER_BILL_ERROR2));
			}
			if (i_Coda.getC_BPartner_ID() > 0 && i_Coda.getC_Payment_ID() > 0) {
				assigned = (i_Coda.getC_BPartner_ID() == DB
						.getSQLValue(
								get_Trx(),
								"SELECT C_BPartner_ID FROM C_Payment WHERE C_Payment_ID = ? ",
								i_Coda.getC_Payment_ID()));
				if (!assigned)
					error.append(Msg.getMsg(getCtx(),
							ImportCodaMessages.PARTNER_PAYMENT_ERROR2));
			}
			if (i_Coda.getC_BankAccount_ID() <= 0) {
				assigned = false;
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.BANK_ACCOUNT_ERROR));
			}

			if ((i_Coda.getXX_ImportType().charAt(0) == '0'
					|| i_Coda.getXX_ImportType().charAt(0) == '1' || i_Coda
					.getXX_ImportType().charAt(0) == '6')
					&& i_Coda.getC_DocType_ID() <= 0) {
				assigned = false;
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.DOCTYPE_ERROR2));
			}

			i_Coda.setXX_Assigned(assigned);
		}
		if (isDuplicateDocument(i_Coda) && i_Coda.getC_BankAccount_ID() > 0) {
			i_Coda.setXX_Assigned(false);
			i_Coda.setXX_IsValidManual(false);
			i_Coda.setXX_ImportType(null);
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.DUPLICATE_DOCUMENT_ERROR));
		}
		i_Coda.setI_ErrorMsg(error.toString());
	}

	private boolean isDuplicateDocument(X_I_Coda i_Coda) {

		int no = DB
				.getSQLValue(
						get_Trx(),
						"SELECT COUNT(1) FROM I_Coda WHERE C_BankAccount_ID = ? AND StatementDate = ? AND C_Invoice_ID = ? AND I_IsImported  = 'N'",
						new Object[] { i_Coda.getC_BankAccount_ID(),
								i_Coda.getStatementDate(),
								i_Coda.getC_Invoice_ID() });
		if (no > 1)
			return true;

		no = DB.getSQLValue(
				get_Trx(),
				"SELECT COUNT(1) FROM I_Coda WHERE C_BankAccount_ID = ? AND StatementDate = ? AND C_Payment_ID = ? AND I_IsImported  = 'N'",
				new Object[] { i_Coda.getC_BankAccount_ID(),
						i_Coda.getStatementDate(), i_Coda.getC_Payment_ID() });
		if (no > 1)
			return true;

		return false;
	}

	private void operationCodeProcessing(X_I_Coda i_Coda) {

		StringBuffer error = new StringBuffer(i_Coda.getXX_TrxError());
		int z_TrxCODA_ID = DB
				.getSQLValue(
						get_Trx(),
						"SELECT Z_TrxCODA_ID FROM Z_TrxCODA WHERE XX_TrxC_Fam = ? AND XX_TrxC_Op = ? AND AD_Client_ID = ? ",
						new Object[] { i_Coda.getXX_TrxC_Fam(),
								i_Coda.getXX_TrxC_Op(),i_Coda.getAD_Client_ID()  });
		if (z_TrxCODA_ID > 0) {
			MTrxCODA trxCoda = new MTrxCODA(getCtx(), z_TrxCODA_ID, get_Trx());
			if (trxCoda.getC_Charge_ID() > 0
					&& trxCoda.getZSubPaymentRule_ID() > 0)
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.NONCONFORMING_ERROR));
			else if (trxCoda.getZSubPaymentRule_ID() > 0) {
				int c_DocType_ID = DB
						.getSQLValue(
								get_Trx(),
								"SELECT C_DocType_ID FROM C_BankAccountDoc WHERE C_BankAccount_ID = ? AND ZSubPaymentRule_ID = ?",
								new Object[] { i_Coda.getC_BankAccount_ID(),
										trxCoda.getZSubPaymentRule_ID() });
				if (c_DocType_ID < 0)
					error.append(Msg.getMsg(getCtx(),
							ImportCodaMessages.DOCTYPE_ERROR));
				i_Coda.setC_DocType_ID(c_DocType_ID);
				i_Coda.setZSubPaymentRule_ID(trxCoda.getZSubPaymentRule_ID());
				i_Coda.setZ_PaymentCreated(trxCoda.isZ_PaymentCreated());
			} else
				i_Coda.setC_Charge_ID(trxCoda.getC_Charge_ID());
		} else
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.NO_RECORD_ERROR));
		i_Coda.setXX_TrxError(error.toString());
	}

	private void strdCommunicationHandling(X_I_Coda i_Coda) {

		StringBuffer error = new StringBuffer();

		// Type OD 111 ou 114
		if (i_Coda.getXX_StrdCode() == null
				|| i_Coda.getXX_StrdCode().equals(
						Msg.getMsg(getCtx(), ImportCodaMessages.POS))
				|| i_Coda.getXX_StrdCode().equals(
						Msg.getMsg(getCtx(), ImportCodaMessages.POS2))
				|| i_Coda.getXX_StrdCode().isEmpty())
			orientedVariousType(i_Coda, error);// OD

		if (!i_Coda.isXX_Strd())
			return;

		// Evolution 70962

		// a. Identification dâ€™un code charge
		int c_Charge_ID = DB
				.getSQLValue(
						get_Trx(),
						"SELECT tc.C_Charge_ID FROM Z_TrxCODA tc INNER JOIN I_CODA c "
								+ "ON (tc.XX_StrdCode = c.XX_StrdCode) WHERE tc.AD_Client_ID = c.AD_Client_ID AND tc.isActive = 'Y' ");

		if (c_Charge_ID > 0)
			i_Coda.setC_Charge_ID(c_Charge_ID);

		// Type OF 100, 101 ou 102
		if (i_Coda.getXX_StrdCode().equals(
				Msg.getMsg(getCtx(), ImportCodaMessages.IS011649))
				|| i_Coda.getXX_StrdCode().equals(
						Msg.getMsg(getCtx(), ImportCodaMessages.BBA1))
				|| i_Coda.getXX_StrdCode().equals(
						Msg.getMsg(getCtx(), ImportCodaMessages.BBA2)))
			orientedInvoiceType(i_Coda, error); // OF

		// Type OT 107 ou 127
		if (i_Coda.getXX_StrdCode().equals(
				Msg.getMsg(getCtx(), ImportCodaMessages.DOM80))
				|| i_Coda.getXX_StrdCode().equals(
						Msg.getMsg(getCtx(), ImportCodaMessages.SEPADD)))
			orientedBPartnerType(i_Coda, error); // OT

		// Fin Evolution 70962

		/**
		 * ensien dÃ©velopement*** if (i_Coda.isXX_IsDOM())
		 * orientedBPartnerType(i_Coda, error); else if
		 * (i_Coda.getXX_StrdCode().equals( Msg.getMsg(getCtx(),
		 * ImportCodaMessages.POS))) orientedVariousType(i_Coda, error); else
		 * orientedInvoiceType(i_Coda, error);
		 **/

		i_Coda.setXX_TrxError(error.toString());
	}

	private void orientedVariousType(X_I_Coda i_Coda, StringBuffer error) {

		int invoice_ID = -1, partner_ID = -1, payment_ID = -1;
		String poref = "", DOCSTATUS="DR";

		if (i_Coda.getXX_PayRef() != null && i_Coda.getXX_PayRef().length() > 0) // Evolution
																					// 70962
		{
			StringBuffer sql = new StringBuffer(
					"SELECT i.C_Invoice_ID,i.C_BPartner_ID, i.DOCSTATUS FROM C_Invoice i WHERE i.AD_Client_ID = ? AND i.POReference = ? ");
			sql.append("AND i.docstatus IN ('IP', 'CO') AND (SELECT 1 FROM C_BankStatementLine bk WHERE bk.C_Invoice_ID = i.C_Invoice_ID ) IS NULL ");
			sql.append("AND ( ( i.GrandTotal = ? AND i.IsSOTrx = 'Y') OR ( -i.GrandTotal = ? AND i.IsSOTrx = 'N' ) ) ");
			sql.append(" AND not exists ( Select 1 ");// 42840
			sql.append(" FROM C_PaySelection ps ");// 42840
			sql.append(" WHERE ps.C_PaySelection_ID IN ( SELECT max(psl.C_PaySelection_ID) FROM C_PaySelectionLine psl ");// 42840
			sql.append(" WHERE psl.C_Invoice_ID = i.C_Invoice_ID )");// 42840
			sql.append(" AND ps.Processed = 'N' ");// 42840
			sql.append(" ) ");// 42840

			Object[][] result = QueryUtil.executeQuery(sql.toString(),
					new Object[] {i_Coda.getAD_Client_ID(), i_Coda.getXX_PayRef(), i_Coda.getTrxAmt(),
							i_Coda.getTrxAmt() }, get_Trx());
			if (result.length > 0) {
				invoice_ID = ((BigDecimal) result[0][0]).intValue();
				partner_ID = ((BigDecimal) result[0][1]).intValue();
				DOCSTATUS = ((String)(result[0][2]));
				if(DOCSTATUS.equals("CO")||DOCSTATUS.equals("CL"))
					i_Coda.setC_Invoice_ID(invoice_ID);
				i_Coda.setC_BPartner_ID(partner_ID);
			}
			if (invoice_ID > 0) {
				sql = new StringBuffer(
						"SELECT p.C_Payment_ID, p.XX_Dossier FROM C_Payment p INNER JOIN C_AllocationLine al ON al.C_Payment_ID = p.C_Payment_ID ");
				sql.append("WHERE ( (p.PayAmt  = ? AND p.IsReceipt = 'Y') OR (- p.PayAmt = ? AND p.IsReceipt = 'N') ) ");
				sql.append("AND not exists (SELECT 1 FROM C_BankStatementLine bk WHERE bk.C_Payment_ID = p.C_Payment_ID ) ");
				sql.append("AND p.DateTrx <= ? AND p.DateAcct <= ? AND ( ( p.C_Currency_ID = ? AND ? IS NOT NULL) OR ?  IS NULL ) ");
				sql.append("AND al.C_Invoice_ID = ? AND p.docstatus IN ('IP', 'CO') ");
				Object[][] result2 = QueryUtil.executeQuery(
						get_Trx(),
						sql.toString(),
						new Object[] { i_Coda.getTrxAmt(), i_Coda.getTrxAmt(),
								i_Coda.getValutaDate(), i_Coda.getDateAcct(),
								i_Coda.getXX_BP_Currency_ID(),
								i_Coda.getXX_BP_Currency_ID(),
								i_Coda.getXX_BP_Currency_ID(), invoice_ID });
				if (result2.length > 0) {
					payment_ID = ((BigDecimal) result2[0][0]).intValue();
					poref = result2[0][1].toString();
				}
				if(payment_ID>0)
					i_Coda.setC_Payment_ID(payment_ID);
				if(!poref.equals("") && i_Coda.get_ValueAsString("XX_Projet").equals(""))
					i_Coda.set_Value("XX_Projet",poref);
					
			}
		}
		log.warning("XX_Terminal : "+i_Coda.get_ValueAsString("XX_Terminal"));
		// Evolution 70962
		if (i_Coda.get_ValueAsString("XX_Terminal") != null
				&& i_Coda.get_ValueAsString("XX_Terminal").length() > 0) {

			StringBuffer sqlOrg = new StringBuffer(
					"SELECT o.AD_Org_ID FROM XX_OrgInfoCODA o ");
			//sqlOrg.append("INNER JOIN I_CODA c ON (o.XX_Terminal = c.XX_Terminal) ");
			sqlOrg.append("INNER JOIN AD_Org org ON ( org.AD_Client_ID = o.AD_Client_ID and org.AD_Org_ID = o.AD_Org_ID)");
			sqlOrg.append("WHERE o.XX_Terminal = ? and o.AD_Client_ID = "+i_Coda.getAD_Client_ID());

			int org_ID = DB.getSQLValue(get_Trx(), sqlOrg.toString(),
					i_Coda.get_ValueAsString("XX_Terminal"));
			if (org_ID >= 0)
				i_Coda.setAD_Org_ID(org_ID);
		}
		// Fin Evolution 70962

		if (invoice_ID <= 0 && partner_ID <= 0 && payment_ID <= 0)
			error.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.REFERENCE_ERROR));
	}

	private void orientedBPartnerType(X_I_Coda i_Coda, StringBuffer error) {

		int invoice_ID = -1, partner_ID = -1, payment_ID = -1, pBankAccount_ID = -1;
		String poref = "";
		Object[][] result1 = QueryUtil
				.executeQuery(
						"SELECT C_BPartner_ID,C_BP_BankAccount_ID FROM C_BP_BankAccount WHERE Mandat = ? AND DD_Type = ? AND AD_Client_ID = ? and IsActive = 'Y' ",
						new Object[] { i_Coda.getXX_Mandat(),
								i_Coda.getXX_DD_Type(), i_Coda.getAD_Client_ID() }, get_Trx());
		if (result1.length > 0) {
			partner_ID = ((BigDecimal) result1[0][0]).intValue();
			pBankAccount_ID = ((BigDecimal) result1[0][1]).intValue();
		}
		if (partner_ID > 0) {
			i_Coda.setC_BPartner_ID(partner_ID);
			MBPBankAccount pBankAccount = new MBPBankAccount(getCtx(),
					pBankAccount_ID, get_Trx());
			if (!i_Coda.getXX_DDID().equals(
					pBankAccount.get_ValueAsString("DD_Seq")))
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.SEQUENCE_ERROR));
			// REDMINE #30142
			String sql = "SELECT p.C_Payment_ID, p.XX_Dossier FROM C_Payment p WHERE p.C_BPartner_ID = ? AND p.DateTrx = ? AND p.PayAmt = ? "
					+ "AND (SELECT count(1) FROM C_BankStatementLine bl WHERE bl.C_Payment_ID = p.C_Payment_ID) =0";

			Object[][] result = QueryUtil.executeQuery(get_Trx(), sql, new Object[] { partner_ID,
							i_Coda.getXX_MandatDate(), i_Coda.getTrxAmt() });

			if (result.length > 0) {
				payment_ID = ((BigDecimal) result[0][0]).intValue();
				poref = result[0][1].toString();
			}
			
			if (payment_ID > 0) {

				i_Coda.setC_Payment_ID(payment_ID);
				if(i_Coda.get_ValueAsString("XX_Projet").equals(""))
					i_Coda.set_Value("XX_Projet",poref);
				invoice_ID = DB
						.getSQLValue(
								get_Trx(),
								"SELECT C_Invoice_ID FROM C_AllocationLine WHERE C_Payment_ID = ? AND Amount = ?",
								new Object[] { payment_ID, i_Coda.getTrxAmt() });

				if (invoice_ID > 0)
					i_Coda.setC_Invoice_ID(invoice_ID);
				else
					error.append(Msg.getMsg(getCtx(),
							ImportCodaMessages.LINKED_INVOICE_ERROR));

			} else if (i_Coda.getC_Invoice_ID() > 0) {
				sql = "select count(1) from C_AllocationLine where C_Invoice_ID = ? ";
				if (DB.getSQLValue(get_Trx(), sql, i_Coda.getC_Invoice_ID()) != 0)
					error.append(Msg.getMsg(getCtx(),
							ImportCodaMessages.PAYMENT_ERROR));
			}
		} else
			error.append(Msg
					.getMsg(getCtx(), ImportCodaMessages.BPARTNER_ERROR));
	}

	private void orientedInvoiceType(X_I_Coda i_Coda, StringBuffer error) {

		int invoice_ID = -1, partner_ID = -1, payment_ID = -1, order_ID = -1;
		String isPaid = "N", poref = "",DOCSTATUS="DR" ;

		StringBuffer sql = new StringBuffer(
				"Select NVL(C.C_Invoice_Id,0),NVL(c.C_Bpartner_Id,0),NVL(al.C_Payment_Id,0), NVL(c.ISPAID,'N'), " +
				"COalesce(oo.POREFERENCE,c.POREFERENCE) as POREFERENCE, COalesce(oo.C_ORDER_ID,c.C_ORDER_ID,0) as C_ORDER_ID, c.DOCSTATUS as DOCSTATUS FROM C_Invoice c ");
		sql.append("LEFT JOIN C_Order oo ON oo.C_Order_Id = c.C_Order_ID ");
		sql.append("LEFT JOIN C_AllocationLine al ON al.C_Invoice_Id = c.C_Invoice_ID ");
		sql.append("Where c.AD_Client_ID = ? AND (( C.Issotrx = 'Y' AND C.Z_ComID = ? ) ");// 42840
		sql.append("OR ( C.Issotrx = 'N' AND REGEXP_REPLACE(c.Z_PaymentCommunicationStr, '[^0-9A-Za-z]', '') = ?  )) ");// 42840
		sql.append(" AND not exists( Select 1 ");// 42840
		sql.append(" FROM C_PaySelection ps ");// 42840
		sql.append(" WHERE ( SELECT MAX(psl.C_PaySelection_ID) FROM C_PaySelectionLine psl ");// 42840
		sql.append(" WHERE psl.C_Invoice_ID = c.C_Invoice_ID ");// 42840
		sql.append(" ) = ps.C_PaySelection_ID ");// 42840
		sql.append(" AND ps.Processed = 'N' ");// 42840
		sql.append(" ) ");// 42840

		Object[][] result = QueryUtil.executeQuery(
				sql.toString(),
				new Object[] {i_Coda.getAD_Client_ID(), i_Coda.getXX_Com1(),
						i_Coda.getXX_Com1()}, get_Trx());
		if (result.length > 0) {
			invoice_ID = ((BigDecimal) result[0][0]).intValue();
			partner_ID = ((BigDecimal) result[0][1]).intValue();
			payment_ID = ((BigDecimal) result[0][2]).intValue();
			isPaid = ((String) result[0][3]);
			poref = ((String) result[0][4]);
			order_ID = ((BigDecimal) result[0][5]).intValue();
			DOCSTATUS = ((String) result[0][6]);
		}
		if (invoice_ID > 0 && isPaid.equals("N")) {
			if(DOCSTATUS.equals("CO") || DOCSTATUS.equals("CL"))
				i_Coda.setC_Invoice_ID(invoice_ID);
			i_Coda.setC_BPartner_ID(partner_ID);
			i_Coda.set_Value("C_Order_ID", order_ID);
			i_Coda.set_Value("XX_Projet",poref);
			MInvoice invoice = new MInvoice(getCtx(), invoice_ID, get_Trx());
			if ((invoice.isSOTrx() && i_Coda.getTrxAmt().compareTo(
					invoice.getGrandTotal()) != 0)
					|| (!invoice.isSOTrx() && i_Coda.getTrxAmt().compareTo(
							invoice.getGrandTotal().negate()) != 0))
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.TRXAMT_ERROR));
			if (payment_ID > 0) {
				// REDMINE #30142
				int no = DB
						.getSQLValue(
								get_Trx(),
								"SELECT count(1) FROM C_BankStatementLine WHERE C_Payment_ID = ? ",
								payment_ID);
				if (no == 0)
					i_Coda.setC_Payment_ID(payment_ID);
			} else {
				sql = new StringBuffer(
						"select count(1) from C_AllocationLine where C_Invoice_ID = ? ");
				if (DB.getSQLValue(get_Trx(), sql.toString(), invoice_ID) != 0)
					error.append(Msg.getMsg(getCtx(),
							ImportCodaMessages.PAYMENT_ERROR));
			}
		
		}else if(isPaid.equals("Y"))
		{
			i_Coda.setC_BPartner_ID(partner_ID);
			i_Coda.set_Value("C_Order_ID", order_ID);
			i_Coda.set_Value("XX_Projet",poref);
			if (payment_ID > 0) {
				// REDMINE #30142
				int no = DB
						.getSQLValue(
								get_Trx(),
								"SELECT count(1) FROM C_BankStatementLine WHERE C_Payment_ID = ? ",
								payment_ID);
				if (no == 0)
					i_Coda.setC_Payment_ID(payment_ID);
			}
		}
		else
			error.append(Msg.getMsg(getCtx(), ImportCodaMessages.INVOICE_ERROR));
	}

	private void identifyBankAcount(X_I_Coda i_Coda) {

		StringBuffer accError = new StringBuffer();
		int c_Currency_ID = DB.getSQLValue(get_Trx(),
				"SELECT C_Currency_ID FROM C_Currency WHERE Iso_Code = ?",
				i_Coda.getXX_Currency());
		if (c_Currency_ID < 0)
			accError.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.CURRENCY_ERROR));
		i_Coda.setC_Currency_ID(c_Currency_ID);
		int p_XX_Type = i_Coda.getXX_Type();
		String p_BBAN = getLetterOrDigit(i_Coda.getBBAN());
		String p_AccountNo = getLetterOrDigit(i_Coda.getAccountNo());
		String p_IBAN = getLetterOrDigit(i_Coda.getIBAN());
		StringBuffer sql = new StringBuffer(
				" SELECT C_BankAccount_ID FROM C_BankAccount WHERE BBAN = ? AND C_Currency_ID = ? AND AD_Client_ID = "+i_Coda.getAD_Client_ID());
		sql.append(" AND ( ( REGEXP_REPLACE(AccountNo, '[^0-9A-Za-z]', '') = ? AND ( ? = 0 OR ? = 1) ) OR ( REGEXP_REPLACE(IBAN, '[^0-9A-Za-z]', '') = ? AND ( ? = 2 OR ? = 3) )) ");
		int c_BankAccount_ID = DB.getSQLValue(get_Trx(), sql.toString(),
				new Object[] { p_BBAN, c_Currency_ID, p_AccountNo, p_XX_Type,
						p_XX_Type, p_IBAN, p_XX_Type, p_XX_Type });

		if (c_BankAccount_ID < 0)
			accError.append(Msg.getMsg(getCtx(),
					ImportCodaMessages.BANK_ACCOUNT_ERROR));
		else {
			MBankAccount account = new MBankAccount(getCtx(), c_BankAccount_ID,
					get_Trx());
			i_Coda.setXX_CurrBalance(account.getCurrentBalance());

			// 70958
			int orgID = DB
					.getSQLValue(
							get_Trx(),
							"SELECT AD_ORG_ID FROM AD_ORGINFO WHERE ISORGADMIN = 'Y' AND AD_CLIENT_ID = ? ",
							getCtx().getAD_Client_ID());

			if (orgID > 0)
				i_Coda.setAD_Org_ID(orgID);
			// 70958

			if (i_Coda.getBeginningBalance().compareTo(
					account.getCurrentBalance()) != 0)
				accError.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.CURRENT_BALANCE_ERROR));
		}
		i_Coda.setC_BankAccount_ID(c_BankAccount_ID);
		i_Coda.setXX_AccError(accError.toString());

		if (i_Coda.getXX_BP_Currency() != null) {
			int x_BP_Currency_ID = DB.getSQLValue(get_Trx(),
					"SELECT C_Currency_ID FROM C_Currency WHERE Iso_Code = ?",
					i_Coda.getXX_BP_Currency());
			if (x_BP_Currency_ID > 0)
				i_Coda.setXX_BP_Currency_ID(x_BP_Currency_ID);
			else {
				StringBuffer error = new StringBuffer(
						i_Coda.getI_ErrorMsg() != null ? i_Coda.getI_ErrorMsg()
								: "");
				error.append(Msg.getMsg(getCtx(),
						ImportCodaMessages.PARTNER_CURRENCY_ERROR));
				i_Coda.setI_ErrorMsg(error.toString());
			}
		}
	}

	private String getLetterOrDigit(String str) {

		StringBuffer result = new StringBuffer();
		if (str != null)
			for (Character ch : str.toCharArray())
				if (Character.isLetterOrDigit(ch))
					result.append(ch);

		return result.toString();
	}

	private void analyzingStrdCommunication(X_I_Coda i_Coda) {

		try {
			if (!i_Coda.isXX_Strd()) {
				freeCommunication(i_Coda);// 70958
			}
			if (i_Coda.getXX_StrdCode().equals(
					Msg.getMsg(getCtx(), ImportCodaMessages.DOM80)))
				domiciliationDOM(i_Coda);
			else if (i_Coda.getXX_StrdCode().equals(
					Msg.getMsg(getCtx(), ImportCodaMessages.POS))
					|| i_Coda.getXX_StrdCode().equals(
							Msg.getMsg(getCtx(), ImportCodaMessages.POS2)))// 70958
				domiciliationPOS(i_Coda);
			else if (i_Coda.getXX_StrdCode().equals(
					Msg.getMsg(getCtx(), ImportCodaMessages.SEPADD)))
				domiciliationSEPADD(i_Coda);
			else if (i_Coda.getXX_StrdCode().equals(
					Msg.getMsg(getCtx(), ImportCodaMessages.BBA1))
					|| i_Coda.getXX_StrdCode().equals(
							Msg.getMsg(getCtx(), ImportCodaMessages.BBA2)))
				validateBBA(i_Coda);
			else if (i_Coda.getXX_StrdCode().equals(
					Msg.getMsg(getCtx(), ImportCodaMessages.IS011649)))
				validateISO(i_Coda);
		} catch (Exception e) {
			// Evolution 70964
			//if (!i_Coda.isXX_Assigned() && !i_Coda.isXX_IsValidManual())
			//	addLog("** @ValidationError@ :  @XX_TrxC_Fam@  "
			//			+ i_Coda.getXX_TrxC_Fam() + " et @XX_TrxC_Op@  "
			//				+ i_Coda.getXX_TrxC_Op() + " inconnu");
		}
	}

	// 70958
	private void freeCommunication(X_I_Coda i_Coda) {

		if (i_Coda.getXX_Com1() != null && !i_Coda.getXX_Com1().equals("")) {
			String com123 = i_Coda
					.getXX_Com1()
					.concat(i_Coda.getXX_Com2() != null ? i_Coda.getXX_Com2()
							: "")
					.concat(i_Coda.getXX_Com3() != null ? i_Coda.getXX_Com3()
							: "");

			// Le montant BRUT
			BigDecimal brutAmt = getFirstNumber(com123, "BRT", "\\p{L}");

			if (brutAmt != null)
				i_Coda.set_Value("XX_BrutAmt", brutAmt);

			// Le montant de commission

			BigDecimal cmsAmt = getFirstNumber(com123, "C :", "\\s");

			if (cmsAmt != null) {
				i_Coda.set_Value("XX_CmsAmt", cmsAmt);

				// La date de transaction
				String dateTrx = getDateTrx(com123, "C :", "\\s");

				if (dateTrx != null)
					i_Coda.set_Value("XX_DateTrx", dateTrx);
			} else {
				cmsAmt = getFirstNumber(com123, "C:", "\\s");

				if (cmsAmt != null) {
					i_Coda.set_Value("XX_CmsAmt", cmsAmt);

					// La date de transaction
					String dateTrx = getDateTrx(com123, "C:", "\\s");

					if (dateTrx != null)
						i_Coda.set_Value("XX_DateTrx", dateTrx);
				}
			}

			// Le numï¿½ro du terminal
			String terminal = getTerminal(com123, "VI", "REM");

			if (terminal != null)
				i_Coda.set_Value("XX_Terminal", terminal);
			else {
				terminal = getTerminal(com123, "MC", "REM");

				if (terminal != null)
					i_Coda.set_Value("XX_Terminal", terminal);
			}

			if (i_Coda.getTrxAmt() != null
					&& i_Coda.get_Value("XX_BrutAmt") != null
					&& i_Coda.get_Value("XX_CmsAmt") != null) {
				if (i_Coda.getTrxAmt().compareTo(
						i_Coda.get_ValueAsBigDecimal("XX_BrutAmt").subtract(
								i_Coda.get_ValueAsBigDecimal("XX_CmsAmt"))) != 0) {
					i_Coda.setI_ErrorMsg(i_Coda.getI_ErrorMsg().concat(
							" " + Msg.getMsg(getCtx(), "EC_TRXAMT_ERR")));
					// 70958
					// i_Coda.setXX_TrxError(i_Coda.getI_ErrorMsg().concat(" "
					// +Msg.getMsg(getCtx(), "EC_TRXAMT_ERR")));
				}
			}
			
			if((i_Coda.get_Value("XX_BrutAmt") != null && i_Coda.get_Value("XX_CmsAmt") == null) 
					|| i_Coda.get_Value("XX_BrutAmt") == null && i_Coda.get_Value("XX_CmsAmt") != null)
				i_Coda.setI_ErrorMsg(i_Coda.getI_ErrorMsg().concat(
						" " + Msg.getMsg(getCtx(), "EC_TRXAMT_ERR")));
			if (com123 != null && com123.contains("-")) com123 = com123.replace("-", "_");
			if (com123 != null && com123.contains("_")) {
				int count = StringUtils.countMatches(com123, "_");

				if (count > 0) {
					if (count > 1) {
						String chargeCode = getChargeCode(com123);

						if (chargeCode != null && !chargeCode.equals("")) {
							ArrayList<Object> params = new ArrayList<Object>();
							params.add(chargeCode);
							params.add(v_AD_Client_ID);

							int chargeID = DB
									.getSQLValue(
											get_Trx(),
											"SELECT C_CHARGE_ID FROM C_CHARGE WHERE NAME = ? AND ISACTIVE = 'Y' AND AD_CLIENT_ID = ?",
											params);

							if (chargeID > 0) {
								i_Coda.setC_Charge_ID(chargeID);
								i_Coda.setC_BPartner_ID(0);
								i_Coda.setXX_BP_Name(null);
								i_Coda.setXX_BP_Ref(null);
								i_Coda.setXX_BP_AccountNbr(null);
							}

						}
					}

					String orgCode = getOrgCode(com123);

					if (orgCode != null && !orgCode.equals("")) {
						ArrayList<Object> params = new ArrayList<Object>();
						params.add(orgCode);
						params.add(v_AD_Client_ID);

						int orgID = DB
								.getSQLValue(
										get_Trx(),
										"SELECT AD_ORG_ID FROM AD_ORG WHERE VALUE = ? AND ISACTIVE = 'Y' AND AD_CLIENT_ID = ?",
										params);

						if (orgID > 0) {
							i_Coda.setAD_Org_ID(orgID);
						}

					}
				}
			}

		}

	}

	private BigDecimal getFirstNumber(String first, String startingStr,
			String endingStrRegex) {

		if (first.toUpperCase().lastIndexOf(startingStr) < 0)
			return null;

		first = first.substring(first.toUpperCase().lastIndexOf(startingStr));

		Matcher m = Pattern.compile("\\d").matcher(first);
		int position = m.find() ? m.start() : 0;
		first = first.substring(position);
		first = first.trim();
		m = Pattern.compile(endingStrRegex).matcher(first);
		position = m.find() ? m.start() : 0;
		first = first.substring(0, position);
		first = first.trim().replace(",", ".");
		first = first.replaceAll("\\s", "");
		try {

			return new BigDecimal(first);

		} catch (NumberFormatException e) {
			return null;
		}

	}

	private String getTerminal(String first, String startingStr,
			String endingStrRegex) {

		if (first.toUpperCase().lastIndexOf(startingStr) < 0)
			return null;

		first = first.substring(first.toUpperCase().lastIndexOf(startingStr));

		Matcher m = Pattern.compile("\\d").matcher(first);
		int position = m.find() ? m.start() : 0;
		first = first.substring(position);
		first = first.trim();
		m = Pattern.compile(endingStrRegex).matcher(first);
		position = m.find() ? m.start() : 0;
		first = first.substring(0, position);
		first = first.trim().replace(",", ".");
		first = first.replaceAll("\\s", "");
		try {

			return first;

		} catch (NumberFormatException e) {
			return null;
		}

	}

	private String getDateTrx(String first, String startingStr,
			String endingStrRegex) {

		if (first.toUpperCase().lastIndexOf(startingStr) < 0)
			return null;

		first = first.substring(first.toUpperCase().lastIndexOf(startingStr));

		Matcher m = Pattern.compile("\\d").matcher(first);
		int position = m.find() ? m.start() : 0;
		first = first.substring(position);
		first = first.trim();
		m = Pattern.compile(endingStrRegex).matcher(first);
		position = m.find() ? m.start() : 0;
		first = first.substring(position);
		return first.trim();

	}

	private String getChargeCode(String first) {

		if (first.toUpperCase().indexOf("_") < 0)
			return null;

		first = first.substring(0, first.toUpperCase().indexOf("_"));

		Matcher m = Pattern.compile("\\w").matcher(first);
		int position = m.find() ? m.start() : 0;
		first = first.substring(position);
		return first.trim();

	}

	private String getOrgCode(String first) {

		if (first.toUpperCase().indexOf("_") < 0)
			return null;

		first = first.substring(first.toUpperCase().indexOf("_") + 1);

		first = first.substring(0, first.toUpperCase().indexOf("_"));

		Matcher m = Pattern.compile("\\w").matcher(first);

		int position = m.find() ? m.start() : 0;
		first = first.substring(position);
		return first.trim();

	}

	private void creditPOS(X_I_Coda i_Coda) {

		String schemaCarte = i_Coda.getXX_Com1().substring(0, 1);
		String terminal = i_Coda.getXX_Com1().substring(1, 7);
		String dateTrx = i_Coda.getXX_Com1().substring(16, 22);

		i_Coda.set_Value("XX_SchemaCarte", schemaCarte);
		i_Coda.set_Value("XX_Terminal", terminal);
		i_Coda.set_Value("XX_DateTrx", dateTrx);

	}

	// 70958

	private void domiciliationDOM(X_I_Coda i_Coda) {

		i_Coda.setXX_IsDOM(true);
		String mondat = i_Coda.getXX_Com1().substring(0, 12);
		i_Coda.setXX_Mandat(mondat.replaceAll(" ", ""));
		i_Coda.setXX_MandatDate(getTimestamp(i_Coda.getXX_Com1().substring(12,
				18)));
	}

	private void domiciliationPOS(X_I_Coda i_Coda) {

		if (i_Coda.getXX_StrdCode().equals(
				Msg.getMsg(getCtx(), ImportCodaMessages.POS2))) {
			creditPOS(i_Coda);// 70958
		} else {
			String payRef = i_Coda.getXX_Com2().substring(3,
					i_Coda.getXX_Com2().length());
			i_Coda.setXX_PayRef(payRef.replaceAll(" ", ""));
		}
	}

	private void domiciliationSEPADD(X_I_Coda i_Coda) {

		i_Coda.setXX_IsDOM(true);
		String mondat = i_Coda.getXX_Com1().substring(44, 50)
				.concat(i_Coda.getXX_Com2().substring(0, 29));
		i_Coda.setXX_Mandat(mondat.replaceAll(" ", ""));
		i_Coda.setXX_MandatDate(getTimestamp(i_Coda.getXX_Com1()
				.substring(0, 6)));
		i_Coda.setXX_DD_Type(getDD_Type(i_Coda.getXX_Com1().charAt(7)));
		i_Coda.setXX_DDID(getDD_Seq(i_Coda.getXX_Com1().charAt(6)));
	}

	private void validateBBA(X_I_Coda i_Coda) {

		String str = (i_Coda.getXX_Com1()).replaceAll(" ", "");
		long ref = Long.parseLong(str.substring(0, 10));
		int check = Integer.parseInt(str.substring(10, 12));
		if ((ref % 97) == check)
			i_Coda.setXX_IsValid(true);
	}

	private void validateISO(X_I_Coda i_Coda) {

		String str = (i_Coda.getXX_Com1()).replaceAll(" ", "");
		StringBuffer result = new StringBuffer();
		StringBuffer suffix = new StringBuffer();
		HashMap<Character, Integer> v_Alphabet = new HashMap<Character, Integer>();
		int value = 10;
		for (char key : ("ABCDEFGHIJKLMNOPQRSTUVWXYZ").toCharArray())
			v_Alphabet.put(key, value++);
		for (char ch : str.toCharArray())
			if (Character.isLetterOrDigit(ch))
				if (suffix.length() < 4)
					suffix.append(ch);
				else
					result.append(ch);
		for (char key : (suffix.toString()).toCharArray())
			if (v_Alphabet.containsKey(key))
				result.append(v_Alphabet.get(key));
			else
				result.append(key);
		long ref = Long.parseLong(result.toString());
		if ((ref % 97) == 1)
			i_Coda.setXX_IsValid(true);
	}

	private Timestamp getTimestamp(String s_Date) {

		Calendar calendar = new GregorianCalendar();
		DateFormat format = new SimpleDateFormat("ddMMyy");
		Date date;
		try {
			date = format.parse(s_Date);
			calendar.setTime(date);
		} catch (ParseException e) {
			log.warning("Parse Exception :" + e);
		}
		return new Timestamp(calendar.getTimeInMillis());
	}

	private String getDD_Type(char key) {

		switch (key) {
		case '1':
			return "C";
		case '2':
			return "B";
		default:
			return null;
		}
	}

	private String getDD_Seq(char key) {

		switch (key) {
		case '1':
			return "R";
		case '2':
			return "O";
		case '3':
			return "F";
		case '4':
			return "N";
		default:
			return null;
		}
	}

	/**
	 * Evolution 70964
	 * 
	 * @param coda_IDs
	 * @return Error Mï¿½ssage
	 */
	private String getTrxCodaError(int[] coda_IDs) {
		StringBuffer errorMsg = new StringBuffer();
		PreparedStatement ps = null;
		ResultSet rs = null;

		StringBuffer sql = new StringBuffer(
				"SELECT distinct i_coda.XX_TrxC_Op , i_coda.xx_trxc_fam FROM i_coda ");
		sql.append("WHERE i_coda.XX_TrxC_Op NOT IN ");
		sql.append("(SELECT XX_TrxC_Op FROM z_trxcoda where XX_TrxC_Op is not null) ");
		sql.append("OR i_coda.xx_trxc_fam NOT IN ");
		sql.append("(SELECT xx_trxc_fam FROM z_trxcoda  where xx_trxc_fam is not null) ");
		sql.append("AND i_coda.XX_Assigned= 'N' AND i_coda.XX_IsValidManual = 'N' ");
		sql.append("AND i_coda.I_Coda_ID  IN (");
		

		for (int i = 0; i < coda_IDs.length; i++) {
			sql.append("?,");
		}

		sql.setLength(sql.length() - 1); // retirer le dernier ","
		sql.append(")");

		try {
			ps = get_Trx().getConnection().prepareStatement(sql.toString());

			for (int i = 0; i < coda_IDs.length; i++) { // seter les I_Coda_ID
				ps.setInt(i + 1, coda_IDs[i]);
			}

			rs = ps.executeQuery();

			while (rs.next()) {
				errorMsg.append("@XX_Trxc_Fam@ " + rs.getString(1)
						+ " @XX_TrxC_Op@ " + rs.getString(2) + " inconnu");
				errorMsg.append(System.getProperty("line.separator"));
			}

		} catch (Exception e) {
			throw new CompiereException(
					"Erreur lors de la recherche des Trx_Codes!");
		} finally {
			Util.closeCursor(ps, rs);
		}

		return errorMsg.toString();
	}
	
	private void orderIdentification(X_I_Coda i_Coda) { 
		if(!i_Coda.get_ValueAsString("XX_Projet").equals(""))
		{
			ArrayList<Object> params = new ArrayList<Object>();
			params.add(i_Coda.get_Value("XX_Projet") != null ? i_Coda
					.get_Value("XX_Projet").toString().trim().toUpperCase() : "");
			params.add(i_Coda.getAD_Org_ID());

			int orderID = DB
					.getSQLValue(
							get_Trx(),
							"SELECT C_ORDER.C_ORDER_ID FROM C_ORDER " +
							"inner join C_DOCTYPE cd on Cd.C_Doctype_ID = C_ORDER.C_DocTypeTarget_ID " +
							"WHERE UPPER(TRIM(C_ORDER.POREFERENCE)) = ? AND C_ORDER.ISACTIVE = 'Y' AND C_ORDER.AD_ORG_ID = ? AND C_ORDER.ISSOTRX = 'Y' and C_ORDER.DOCSTATUS in ('IP','CO','CL') and cd.DOCSUBTYPESO = 'SO' ",
							params);
			if(orderID>0)
				i_Coda.set_Value("C_Order_ID", orderID);
		}
		
	}
}
