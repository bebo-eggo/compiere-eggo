package com.audaxis.compiere.acct.model;

import java.util.ArrayList;

import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.X_C_BankAccountDoc;
import org.compiere.model.X_I_Coda;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;
import com.audaxis.compiere.model.MBankAccountDoc;
import com.audaxis.compiere.model.MPayment;
import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.process.ImportCodaMessages;

public class ContractCoda extends BasicContractPO<X_I_Coda>
implements ContractPO<X_I_Coda>{
	
	public ContractCoda(X_I_Coda po){
		super(po);
	}

	@Override
	public String afterUpdate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeDelete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeUpdate() {
		//Redmine 33022
		if(getPO().getC_BankAccount_ID()<=0 )
		{
			if(getPO().getIBAN()!=null)
			{
				ArrayList<Object> params = new ArrayList<Object>();
				params.add(getPO().getIBAN());
				params.add(getPO().getAD_Client_ID());
				//UPDATE C_BankAccount_ID par IBAN
				int C_BANKACCOUNT_ID = DB.getSQLValue(get_Trx(), "Select NVL(MAX(C_BANKACCOUNT_ID),0) from C_BANKACCOUNT where REPLACE(IBAN,'-','') = ? and AD_Client_ID = ? ", params);
				if(C_BANKACCOUNT_ID>0)
					getPO().setC_BankAccount_ID(C_BANKACCOUNT_ID);
			}
			if(getPO().getAccountNo()!=null && getPO().getC_BankAccount_ID()<=0)
			{
				ArrayList<Object> params = new ArrayList<Object>();
				params.add(getPO().getAccountNo());
				params.add(getPO().getAD_Client_ID());
				//UPDATE C_BankAccount_ID par IBAN
				int C_BANKACCOUNT_ID = DB.getSQLValue(get_Trx(), "Select NVL(MAX(C_BANKACCOUNT_ID),0) from C_BANKACCOUNT where REPLACE(ACCOUNTNO,'-','') = ? and AD_Client_ID = ? ", params);
				if(C_BANKACCOUNT_ID>0)
					getPO().setC_BankAccount_ID(C_BANKACCOUNT_ID);
			}
			//UPDATE C_BankAccount_ID par AccountNo si IBAN
		}
			
		int no = 0;
		StringBuffer sql;
		MInvoice invoice;
		MPayment payment;
		//
		if (getPO().getC_BPartner_ID()!=0
				&& getPO().getC_DocType_ID()!=0
					&& getPO().getC_Invoice_ID() ==0
						&& getPO().getC_Payment_ID()==0){
			
			sql = new StringBuffer("SELECT COUNT(*) FROM C_BPartner bp WHERE bp.IsCustomer = ");
			sql.append("(SELECT dt.IsSOTrx FROM C_DocType dt where dt.C_DocType_ID = ?) ");
			sql.append("AND bp.IsCustomer <> bp.IsVendor AND bp.C_BPartner_ID=?");
			
			String Issotrx = "E";
			String Values = DB.getSQLValueString(get_Trx(), "Select IsCustomer||':'||IsVendor from C_BPartner  where C_BPartner_ID = ?", getPO().getC_BPartner_ID());
			String [] infos = Values.split(":");
			String IsCustomer = infos[0];
			String IsVendor = infos[1];
			
			if(IsCustomer.equals("Y") && IsVendor.equals("Y"))
				Issotrx = "E";
			else if(IsCustomer.equals("Y") && IsVendor.equals("N"))
				Issotrx = "Y";
			else if(IsCustomer.equals("N") && IsVendor.equals("Y"))
				Issotrx = "N";
			
			no = DB.getSQLValue(get_Trx(), sql.toString(), getPO().getC_DocType_ID(), getPO().getC_BPartner_ID());
			if (no<=0 && getPO().getC_BankAccount_ID()>0 && !Issotrx.equals("E")){
				sql = new StringBuffer("IsActive = 'Y' and PaymentRule = 'T' and C_BANKACCOUNT_ID = "+getPO().getC_BankAccount_ID());
				sql.append("AND EXISTS (SELECT *  from C_DocType doc ");
				sql.append("where doc.isactive='Y' and doc.C_DocType_ID = C_BankAccountDoc.C_DocType_ID AND doc.IsSOTrx='"+Issotrx+"')");
				int[] bankAccountDocs = MDocType.getAllIDs(X_C_BankAccountDoc.Table_Name, sql.toString()  , get_Trx());
				
				//getPO().set_Value("ZSubPaymentRule_ID",null);
				if (bankAccountDocs.length>0){
					MBankAccountDoc bkacctdoc = new MBankAccountDoc(getCtx(), bankAccountDocs[0], get_Trx());
					getPO().set_Value("ZSubPaymentRule_ID",bkacctdoc.getZSubPaymentRule_ID());
					getPO().setC_DocType_ID(bkacctdoc.getC_DocType_ID());//Prendre le premier
				}
			}
		}
		
		//
		if (getPO().getC_Invoice_ID()!=0){
			invoice = new MInvoice(getCtx(), getPO().getC_Invoice_ID(), get_Trx());
			//Sub Payment Rule
			if (getPO().getZSubPaymentRule_ID()==0)
				getPO().setZSubPaymentRule_ID(invoice.get_ValueAsInt("ZSubPaymentRule_ID"));
			//Document Type
			if (getPO().getC_DocType_ID()==0){
				sql = new StringBuffer("C_BankAccountDoc.C_BankAccount_ID = ").append(getPO().getC_BankAccount_ID());
				sql.append(" AND ZSubPaymentRule_ID = ").append(getPO().getZSubPaymentRule_ID());
				int[] bankAccountDocs = MDocType.getAllIDs(X_C_BankAccountDoc.Table_Name, sql.toString()  , get_Trx());
				if (bankAccountDocs.length>0){
					MBankAccountDoc bkacctdoc = new MBankAccountDoc(getCtx(), bankAccountDocs[0], get_Trx());
					getPO().setC_DocType_ID(bkacctdoc.getC_DocType_ID());//Prendre le premier
				}
			}
			//Tiers
			if (getPO().getC_BPartner_ID()==0)
				getPO().setC_BPartner_ID(invoice.getC_BPartner_ID());
			//Paiement
			if (getPO().getC_Payment_ID()==0 && 1==2){			
				getPO().setC_Payment_ID(getPayment());
			}
			if(getPO().get_ValueAsString("XX_Projet").equals(""))
				getPO().set_Value("XX_Projet", invoice.getPOReference());
			if(getPO().get_ValueAsInt("C_Order_ID")<=0 && invoice.getC_Order_ID()>0)
				getPO().set_Value("C_Order_ID", invoice.getC_Order_ID());
				
		}
		
		//
		
		if (getPO().getC_Payment_ID()!=0){
			payment = new MPayment(getCtx(), getPO().getC_Payment_ID(), get_Trx());
			//Sub Payment Rule
			if (getPO().getZSubPaymentRule_ID()==0)
				getPO().setZSubPaymentRule_ID(payment.get_ValueAsInt("ZSubPaymentRule_ID"));
			//Document Type
			if (getPO().getC_DocType_ID()==0){
				sql = new StringBuffer("C_BankAccountDoc.C_BankAccount_ID = ").append(getPO().getC_BankAccount_ID());
				sql.append(" AND ZSubPaymentRule_ID = ").append(getPO().getZSubPaymentRule_ID());
				int[] bankAccountDocs = MDocType.getAllIDs(X_C_BankAccountDoc.Table_Name, sql.toString()  , get_Trx());
				if (bankAccountDocs.length>0){
					MBankAccountDoc bkacctdoc = new MBankAccountDoc(getCtx(), bankAccountDocs[0], get_Trx());
					getPO().setC_DocType_ID(bkacctdoc.getC_DocType_ID());//Prendre le premier
				}
			}
			//Tiers
			if (getPO().getC_BPartner_ID()==0)
				getPO().setC_BPartner_ID(payment.getC_BPartner_ID());
		}
		
		//70923
				if(getPO().getC_Invoice_ID() > 0 && getPO().get_ValueAsInt("C_Order_ID") <= 0)
				{
					invoice = new MInvoice(getCtx(), getPO().getC_Invoice_ID(), get_Trx());
					
					if(invoice.getC_Order_ID() > 0)
					{
						getPO().set_Value("C_Order_ID", invoice.getC_Order_ID());
					}
				}
		if(getPO().get_ValueAsInt("C_Order_ID") > 0 && getPO().isXX_IsValidManual() && getPO().getC_BPartner_ID()<=0)
		{
			MOrder mo = new MOrder(getCtx(), getPO().get_ValueAsInt("C_Order_ID") , get_Trx());
			if(mo!=null)
				getPO().setC_BPartner_ID(mo.getC_BPartner_ID());
		}
		if(getPO().get_ValueAsInt("C_Order_ID") > 0 && getPO().isXX_IsValidManual() && getPO().get_ValueAsString("XX_Projet").equals(""))
		{
			MOrder mo = new MOrder(getCtx(), getPO().get_ValueAsInt("C_Order_ID") , get_Trx());
			if(mo!=null)
				getPO().set_ValueNoCheck("XX_Projet", mo.getPOReference());
		}
		
		if(getPO().getXX_Com1()!=null && getPO().getXX_Com1().length()>12 && getPO().getXX_StrdCode()!=null && getPO().getXX_StrdCode().equals(Msg.getMsg(getCtx(), ImportCodaMessages.BBA2)))
		{
			getPO().setXX_Com1(getPO().getXX_Com1().substring(0, 12));
		}
		//
		return null;
	}
	
	private int getPayment(){
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(getPO().getC_Invoice_ID());
		params.add(getPO().getTrxAmt());
		
		StringBuffer sql = new StringBuffer("SELECT al.C_Payment_ID FROM C_AllocationLine al ");
		sql.append("INNER JOIN C_AllocationHdr hdr ON (al.C_AllocationHdr_ID=hdr.C_AllocationHdr_ID) ");
		sql.append("INNER JOIN C_Payment p ON (al.C_Payment_ID=p.C_Payment_ID) ");
		sql.append("WHERE al.C_Invoice_ID = ? AND hdr.docstatus in ('IP', 'CO') AND p.payamt <= ? ");
		
		int c_payment_id = DB.getSQLValue(get_Trx(), sql.toString(), params);
		
		if (c_payment_id>0)
			return c_payment_id;
		return 0;
	}

}
