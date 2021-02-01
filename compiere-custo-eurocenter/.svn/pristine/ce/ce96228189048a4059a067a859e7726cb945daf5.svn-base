package com.audaxis.compiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.MBankStatement;
import org.compiere.model.MBankStatementLine;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.model.X_I_BankStatement;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CompiereSystemException;
import org.compiere.util.CompiereUserException;
import org.compiere.util.Env;

public class BankStatementPayment extends
		org.compiere.process.BankStatementPayment {
	
	protected int paymentDocTypeId; //ZCOM535
	protected int paymentSubPaymentRule_ID; // Anomalie #27808 : Extrait Bancaire: création d'un paiement
	
	protected void prepare()
	{
		super.prepare();
		
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			if (para[i].getParameterName().equals("C_DocType_ID"))// Redmine 17816: il faut tester au moins sur le nom du paramétre
				paymentDocTypeId = para[i].getParameterAsInt();
		}
	}

	protected String doIt() throws Exception
	{
		int Table_ID = getTable_ID();
		int Record_ID = getRecord_ID();
		log.info ("Table_ID=" + Table_ID + ", Record_ID=" + Record_ID);
		
		if (Table_ID == X_I_BankStatement.Table_ID)
			return createPayment (new X_I_BankStatement(getCtx(), Record_ID, get_TrxName()));
		else if (Table_ID == MBankStatementLine.Table_ID)
			return createPayment (new MBankStatementLine(getCtx(), Record_ID, get_TrxName()));
		
		throw new CompiereSystemException("??");
	}	//	doIt

	protected String createPayment (X_I_BankStatement ibs) throws Exception
	{
		if (ibs == null || ibs.getC_Payment_ID() != 0)
			return "--";
		log.fine(ibs.toString());
		if (ibs.getC_Invoice_ID() == 0 && ibs.getC_BPartner_ID() == 0)
			throw new CompiereUserException ("@NotFound@ @C_Invoice_ID@ / @C_BPartner_ID@");
		if (ibs.getC_BankAccount_ID() == 0)
			throw new CompiereUserException ("@NotFound@ @C_BankAccount_ID@");
		//
		MPayment payment = createPayment (ibs.getC_Invoice_ID(), ibs.getC_BPartner_ID(),
			ibs.getC_Currency_ID(), ibs.getStmtAmt(), ibs.getTrxAmt(), 
			ibs.getC_BankAccount_ID(), ibs.getStatementLineDate() == null ? ibs.getStatementDate() : ibs.getStatementLineDate(), 
			ibs.getDateAcct(), ibs.getDescription(), ibs.getAD_Org_ID(), "",0);
		if (payment == null)
			throw new CompiereSystemException("Could not create Payment");
		
		ibs.setC_Payment_ID(payment.getC_Payment_ID());
		ibs.setC_Currency_ID (payment.getC_Currency_ID());
		ibs.setTrxAmt(payment.getPayAmt());
		ibs.save();
		//
		String retString = "@C_Payment_ID@ = " + payment.getDocumentNo();
		if (payment.getOverUnderAmt().signum() != 0)
			retString += " - @OverUnderAmt@=" + payment.getOverUnderAmt();
		return retString;
	}	//	createPayment - Import
	
	protected String createPayment (MBankStatementLine bsl) throws Exception
	{
		if (bsl == null || bsl.getC_Payment_ID() != 0)
			return "--";

		log.fine(bsl.toString());
		if (bsl.getC_Invoice_ID() == 0 && bsl.getC_BPartner_ID() == 0)
			throw new CompiereUserException ("@NotFound@ @C_Invoice_ID@ / @C_BPartner_ID@");

		// DocumentType is mandatory for this 
		Integer C_DocType_ID = (Integer) bsl.get_Value("C_DocType_ID");
		if (C_DocType_ID == null || C_DocType_ID == 0)
			throw new CompiereUserException ("@NotFound@ @C_DocType_ID@");
		paymentDocTypeId = C_DocType_ID;
		
		// Anomalie #27808 : Extrait Bancaire: création d'un paiement
		// SubPaymentRule is mandatory for this 
		Integer ZSubPaymentRule_ID = (Integer) bsl.get_Value("ZSubPaymentRule_ID");
		if (ZSubPaymentRule_ID == null || ZSubPaymentRule_ID == 0)
			throw new CompiereUserException ("@NotFound@ @ZSubPaymentRule_ID@");
		paymentSubPaymentRule_ID = ZSubPaymentRule_ID;
		// Anomalie #27808 : Extrait Bancaire: création d'un paiement
		
		MBankStatement bs = new MBankStatement (getCtx(), bsl.getC_BankStatement_ID(), get_TrxName());
		//
		MPayment payment = createPayment (bsl.getC_Invoice_ID(), bsl.getC_BPartner_ID(),
			bsl.getC_Currency_ID(), bsl.getStmtAmt(), bsl.getTrxAmt(), 
			bs.getC_BankAccount_ID(), bsl.getStatementLineDate(), bsl.getDateAcct(),
			bsl.getDescription(), bsl.getAD_Org_ID(), bsl.get_ValueAsString("XX_Dossier"),
			bsl.get_ValueAsInt("C_Order_ID"));
		if (payment == null)
			throw new CompiereSystemException("Could not create Payment");
		//	update statement
		
		BigDecimal bslAmt = bsl.getStmtAmt();//Redmine 23019
		
		bsl.setPayment(payment);
		
		//Redmine 23019
		if (bsl.getC_Invoice_ID()==0 
				&& MDocType.get(getCtx(), paymentDocTypeId).isSOTrx() && bslAmt.signum()<0){
			bsl.setTrxAmt(bslAmt);
			bsl.setStmtAmt(bslAmt);
		}
		//
		
		bsl.save();
		//
		String retString = "@C_Payment_ID@ = " + payment.getDocumentNo();
		if (payment.getOverUnderAmt().signum() != 0)
			retString += " - @OverUnderAmt@=" + payment.getOverUnderAmt();
		return retString;
	}	//	createPayment
	
	protected MPayment createPayment (int C_Invoice_ID, int C_BPartner_ID, 
			int C_Currency_ID, BigDecimal StmtAmt, BigDecimal TrxAmt,
			int C_BankAccount_ID, Timestamp DateTrx, Timestamp DateAcct, 
			String Description, int AD_Org_ID,String XX_Dossier, int C_Order_ID)
	{
		//	Trx Amount = Payment overwrites Statement Amount if defined
		BigDecimal PayAmt = TrxAmt;
		if (PayAmt == null || Env.ZERO.compareTo(PayAmt) == 0)
			PayAmt = StmtAmt;
		if (C_Invoice_ID == 0
			&& (PayAmt == null || Env.ZERO.compareTo(PayAmt) == 0))
			throw new IllegalStateException ("@PayAmt@ = 0");
		if (PayAmt == null)
			PayAmt = Env.ZERO;
		//
		MPayment payment = new MPayment (getCtx(), 0, get_TrxName());
		payment.setAD_Org_ID(AD_Org_ID);

		//ZCOM535
		if (paymentDocTypeId != 0) {
			payment.setC_DocType_ID(paymentDocTypeId);
		}
		else
		{
			
		}
		//ZCOM535
		// Anomalie #27808 : Extrait Bancaire: création d'un paiement
		if(paymentSubPaymentRule_ID != 0)
			payment.set_Value("ZSubPaymentRule_ID", Integer.valueOf(paymentSubPaymentRule_ID));   
		// Anomalie #27808 : Extrait Bancaire: création d'un paiement
		//ZCOM535
		//Demande de JLB
		payment.set_ValueNoCheck("XX_Dossier", XX_Dossier);
		payment.setC_Order_ID(C_Order_ID);
		
		payment.setC_BankAccount_ID(C_BankAccount_ID);
		payment.setTenderType(MPayment.TENDERTYPE_Check);
		if (DateTrx != null)
			payment.setDateTrx(DateTrx);
		else if (DateAcct != null)
			payment.setDateTrx(DateAcct);
		if (DateAcct != null)
			payment.setDateAcct(DateAcct);
		else
			payment.setDateAcct(payment.getDateTrx());
		payment.setDescription(Description);
		//
		if (C_Invoice_ID != 0)
		{
			MInvoice invoice = new MInvoice (getCtx(), C_Invoice_ID, null);
			//ZCOM535 payment.setC_DocType_ID(invoice.isSOTrx());		//	Receipt
			payment.setC_Invoice_ID(invoice.getC_Invoice_ID());
			payment.setC_BPartner_ID (invoice.getC_BPartner_ID());
			if (PayAmt.signum() != 0)	//	explicit Amount
			{
				payment.setC_Currency_ID(C_Currency_ID);
				if (invoice.isSOTrx())
					payment.setPayAmt(PayAmt);
				else	//	payment is likely to be negative
					payment.setPayAmt(PayAmt.negate());
				payment.setOverUnderAmt(invoice.getGrandTotal(true).subtract(payment.getPayAmt()));
			}
			else	// set Pay Amout from Invoice
			{
				payment.setC_Currency_ID(invoice.getC_Currency_ID());
				//ZCOM498 payment.setPayAmt(invoice.getGrandTotal(true));
				//ZCOM498
				if (invoice.getAllocatedAmt()!= null)
				   payment.setPayAmt(invoice.getGrandTotal(true).subtract(invoice.getAllocatedAmt()));  
				else
					payment.setPayAmt(invoice.getGrandTotal(true));
				//ZCOM498
			}
		}
		else if (C_BPartner_ID != 0)
		{
			payment.setC_BPartner_ID(C_BPartner_ID);
			payment.setC_Currency_ID(C_Currency_ID);
			if (PayAmt.signum() < 0)	//	Payment
			{
				payment.setPayAmt(PayAmt.abs());
				//ZCOM535 payment.setC_DocType_ID(false);
			}
			else	//	Receipt
			{
				payment.setPayAmt(PayAmt);
				//ZCOM535 payment.setC_DocType_ID(true);
			}
			
			//Redmine 23019: j'ai choisi de ne pas modifier la logique au-dessus 
			if (MDocType.get(getCtx(), paymentDocTypeId).isSOTrx() && PayAmt.signum()<0)
				payment.setPayAmt(PayAmt);
			
			if (!MDocType.get(getCtx(), paymentDocTypeId).isSOTrx() && PayAmt.signum()>0)
				payment.setPayAmt(PayAmt.negate());
			
			//
		}
		else
			return null;
		payment.save();
		//
		DocumentEngine.processIt(payment, MPayment.DOCACTION_Complete);
		payment.save();
		return payment;		
	}	//	createPayment

}
