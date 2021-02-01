package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MJournal;
import org.compiere.model.MPayment;
import org.compiere.model.X_XX_REMB_CLIENTS;
import org.compiere.model.X_XX_REMB_SELECTION;
import org.compiere.model.X_XX_REMB_SEL_LIGNE;
import org.compiere.model.X_ZSubPaymentRule;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MBankAccountDoc;
import com.audaxis.compiere.model.MInvoiceProxy;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.process.ZExportPayment;

public class CreatePaymentREMBS extends SvrProcessExtended {

	static private CLogger s_log = CLogger.getCLogger(ZExportPayment.class);
	private int selectRembs_ID = 0;
	private String p_PaymentRule = null;
	private int p_Zsub_ID = 0;
	private Timestamp p_date = null;

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();

        for (int i = 0; i < para.length; i++)
        {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null)
            {
                ;
            }
            else if (name.equals("PaymentRule"))
            {
                p_PaymentRule = (String) para[i].getParameter();
            }
            else if (name.equals("ZSubPaymentRule_ID"))
            {
                p_Zsub_ID = ((BigDecimal) para[i].getParameter()).intValue();
            }
            else
            {
                log.severe("prepare - Unknown Parameter: " + name);
            }
        }
		selectRembs_ID = getRecord_ID();
		p_date =  new Timestamp(System.currentTimeMillis());
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		X_XX_REMB_SELECTION sel = new X_XX_REMB_SELECTION(getCtx(), selectRembs_ID, get_Trx());
		sel.setZSubPaymentRule_ID(p_Zsub_ID);
		sel.save();
		MBankAccountDoc doc = MBankAccountDoc.getFromSub(getCtx(),
			 sel.getC_BankAccount_ID(), p_PaymentRule,
			 p_Zsub_ID, get_Trx());
		if(doc==null)
		{
			return "Pas de référence Compte bancaire - sous méthode de paiement trouvé";
		}
		 
		//Création des paiement
		String sql = "Select * from XX_REMB_SEL_LIGNE where C_Payment_ID is null and IsActive = 'Y' and XX_REMB_SELECTION_ID = ? ";
		PreparedStatement pstmt =  DB.prepareStatement(sql, get_Trx());
		int index = 1;
        pstmt.setInt(index++, sel.getXX_REMB_SELECTION_ID());
		
		ResultSet rs = pstmt.executeQuery();
		int nbRemb = 0;
        try
        {
            pstmt = DB.prepareStatement(sql, get_Trx());
            boolean data = false;
            while (rs.next())
            {
            	data = true;
            	X_XX_REMB_SEL_LIGNE l = new X_XX_REMB_SEL_LIGNE(getCtx(), rs, get_Trx());
            	//CREATE PAYMENT
            	X_XX_REMB_CLIENTS cli = new X_XX_REMB_CLIENTS(getCtx(), l.getXX_REMB_CLIENTS_ID(), get_Trx());
            	MInvoice mi = new MInvoice(getCtx(), cli.getC_Invoice_ID(),  get_Trx());
            	MPayment payment = new MPayment(getCtx(),
                        0, get_Trx());
            	payment.setAD_Client_ID(l.getAD_Client_ID()); 
                payment.setAD_Org_ID(l.getAD_Org_ID());
                payment.setBankACH(sel.getC_BankAccount_ID(), true, payment.getTenderType(), payment.getRoutingNo(), payment.getAccountNo()); //ZCOM304
                payment.setC_BPartner_ID(mi.getC_BPartner_ID());
                
                String docNo = "";

                if (doc != null)
                {
                    docNo = DB.getDocumentNo(doc.getC_DocType_ID(),get_Trx());
                    payment.setCheckNo(docNo);
                    payment.setC_DocType_ID(doc.getC_DocType_ID());
                }
                payment.set_Value("ZSubPaymentRule_ID", p_Zsub_ID);
                payment.setDocumentNo(docNo);
                payment.setTrxType(MPayment.TRXTYPE_Sales);
                payment.setTenderType(MPayment.TENDERTYPE_Check);
                payment.setAmount(mi.getC_Currency_ID(),l.getMONTANT().abs().negate());
                payment.setDiscountAmt(Env.ZERO);
                payment.setDateTrx(p_date);
                payment.setDateAcct(p_date);
                
                //Force AccountNo of Customer 
                payment.setAccountNo(null);
                payment.setA_Name(null);
                payment.setRoutingNo(null);
                
                MInvoiceProxy proxy = new MInvoiceProxy(mi);
                int ruleID = p_Zsub_ID;
                X_ZSubPaymentRule rl = new X_ZSubPaymentRule(getCtx(),
                        ruleID, null);

                if ((rl != null) && rl.isByDueDate())
                {
                    payment.set_Value("DateDue", proxy.getDateDue());
                }
                payment.setC_Invoice_ID(cli.getC_Invoice_ID());
                payment.setC_Order_ID(cli.getC_Order_ID());
                payment.setDiscountAmt(Env.ZERO);
                payment.setWriteOffAmt(Env.ZERO);
                payment.setDocStatus(MPayment.DOCSTATUS_Drafted);
            	payment.setDocAction(MPayment.DOCACTION_Complete);
                if (!payment.save())
                {
                    s_log.log(Level.SEVERE, "Payment not saved: " + payment);
                    return "Impossible de sauvegarder le paiement";
                }else{
                	
        			if(!DocumentEngine.processIt(payment, MJournal.DOCACTION_Complete))
        			{
        				return"Impossible de Traiter le paiement : " + payment.getDocumentNo();
        			}
        			payment.save();
                	nbRemb++;
                	l.setC_Payment_ID(payment.getC_Payment_ID());
                	l.save();
                }
            }
            if(!data)
            	return "Pas de paiements à traiter !";
            
        }
        catch (Exception e)
        {
            log.log(Level.SEVERE, "doIt - " + sql, e);
        }
        finally {
			Util.closeCursor(pstmt, rs);
		}
		return nbRemb+" paiement(s) créé(s)";
	}

}
