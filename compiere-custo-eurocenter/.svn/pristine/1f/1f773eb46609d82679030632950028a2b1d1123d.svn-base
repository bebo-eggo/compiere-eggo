/*
ZExportPayment.javaAll parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
package com.audaxis.compiere.process;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.framework.PrintInfo;
import org.compiere.framework.Query;
import org.compiere.model.MInvoice;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPaySelectionLine;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentBatch;
//#18759
import org.compiere.model.MProcess;
//#18759
import org.compiere.model.X_C_PaySelectionCheck;
import org.compiere.model.X_ZSubPaymentRule;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.print.ReportServer;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import ru.compiere.report.RusReportStarter;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.export.ExportEngine;
import com.audaxis.compiere.export.ExportEngineFactory;
import com.audaxis.compiere.model.MBankAccountDoc;
import com.audaxis.compiere.model.MInvoiceProxy;
import com.audaxis.compiere.model.MPInstanceProxy;
import com.audaxis.compiere.model.MPaySelectionProxy;
import com.audaxis.compiere.util.CompiereException;


public class ZExportPayment extends ReportServerImpl 
implements ReportBatchModeInterface, ReportServer 
{
    /** Logger                                                                */
    static private CLogger s_log = CLogger.getCLogger(ZExportPayment.class);
    private String p_File = null;
    private int recordId;
    private MPaySelection psel;
    private MPaySelectionProxy proxy; 
    private MPaymentBatch m_batch;
    
    private int AD_User_ID = 0;
    private int AD_PInstance_ID=0;

    protected void prepare()
    {
    	
    	StringBuffer running = new StringBuffer(" select ad_pinstance_id from ad_pinstance where ad_process_id = ? ")
		.append(" and record_id <> 0 ")
        .append(" and record_id = ? ")
		.append(" and ad_pinstance_id <> ? ")
        .append(" and isprocessing = 'Y' ");
		Object[] params = {m_pi.getAD_Process_ID(), m_pi.getRecord_ID(),m_pi.getAD_PInstance_ID()};
		int pInstanceRunning = DB.getSQLValue(null, running.toString(), params);
		if (pInstanceRunning > 1) throw new CompiereException("Ce process est déja en court d'exécution ... Instance ID: " + pInstanceRunning);

    	
    	ProcessInfoParameter[] para = getParameter();
    	


        for (int i = 0; i < para.length; i++)
        {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null)
            {
                ;
            }
            else if (name.equalsIgnoreCase("FileName"))
            {
                p_File = (String) para[i].getParameter();
            }
            else if (name.equals("PaymentRule"))
            {
                ;
            }

            //				p_payRule = (String)para[i].getParameter();
            else
            {
                log.severe("prepare - Unknown Parameter: " + name);
            }
        }
        recordId = getRecord_ID();
    }

    public File startReport(Ctx ctx, ProcessInfo processInfo, boolean IsDirectPrint) 
    {
    	myCtx = ctx;
    	
    	if (recordId <= 0)
    		recordId = processInfo.getRecord_ID();
    	if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs())){
    	if (p_File == null)
    		
    	{	p_File = "/tmp/U0_virement.txt";
    		String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
    		p_File = xxx+p_File.replace("/", "\\").replace(".txt", ".xml");
    		p_File = p_File.replace("\\tmp","");
    		//p_File = "/tmp/U0_virement.txt";
    	}
    	else
    	{
    		String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
    		p_File = xxx+p_File.replace("/", "\\").replace(".txt", ".xml");
    		p_File = p_File.replace("\\tmp","");
    	}
    	}
    	else{
    	if (p_File == null)
    		p_File = "virement.txt";

    	String tmp = System.getProperty("java.io.tmpdir"); 
    	if (tmp == null)
    		tmp = "";
    	else if (! tmp.endsWith(File.separator))
    		tmp = tmp + File.separator;
        AD_User_ID=processInfo.getAD_User_ID();
        AD_PInstance_ID=processInfo.getAD_PInstance_ID();
    	p_File = tmp + "U" + AD_User_ID+"_" + AD_PInstance_ID + "_" + p_File;
    	p_File = p_File.replace(".txt", ".xml");
    	}
    	Trx localTrx = Trx.get(get_TrxName() + "EXP");
    	try {

            psel = new MPaySelection(getCtx(), recordId, localTrx);
            proxy = new MPaySelectionProxy(psel);

        	if (proxy.getZSubPaymentRule_ID() <= 0)    
            {
                throw new CompiereException("La selection de paiement n'est pas valable car non reliee a une Sous Methode de paiement");
            }

            if (!psel.isProcessed())
            {
                m_batch = MPaymentBatch.getForPaySelection(getCtx(), recordId, localTrx);

                MPaySelectionCheck[] checks = get(psel.get_ID(), 0, localTrx);

                if (!confirmPrint(checks, m_batch))
                {
                    throw new CompiereException(Msg.getMsg(getCtx(), "PAYMENT_FAILED"));
                }

                psel.setProcessed(true);
                psel.save();
                
                MPaySelectionLine[] lines = psel.getLines(true, false);

                for (int i = 0; i < lines.length; i++)
                {
                    MPaySelectionLine line = lines[i];
                    line.setProcessed(true);
                    line.save();
                }

                psel.save();    
            
            }
            
    	} catch (Exception e) {
   		 	localTrx.rollback();
   		 	throw new CompiereException(e.getMessage());
    	} finally {
    		 localTrx.commit();
    		 localTrx.close();
    	}

        // call export engine
        ExportEngine exp = ExportEngineFactory.getExportEngine();
        X_ZSubPaymentRule payR = new X_ZSubPaymentRule(getCtx(),
                proxy.getZSubPaymentRule_ID(), get_TrxName());

        File ret = null;
        if (payR.getZ_ExpFormat_ID() != 0)
        {
            if (p_File == null)
            {
                throw new CompiereException("Vous devez spécifier un nom de fichier");
            }

            exp.silentInit(getCtx(), payR.getZ_ExpFormat_ID(),
                "C_PaySelection_ID", psel.get_ID(), p_File);
            exp.export();
            ret = new File(p_File);
        }
        else if (payR.get_Value("AD_Process_ID") != null)
        {
            int processId = ((Integer) payR.get_Value("AD_Process_ID")).intValue();
            ProcessInfo pi = new ProcessInfo("Payment Export", processId);
            pi.setRecord_ID(psel.getC_PaySelection_ID());
            pi.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(getCtx(),
                    pi.getAD_Process_ID(), pi.getRecord_ID()));
            //#18759
            boolean success = true;
            //#18759
            RusReportStarter jrl = new RusReportStarter();
            //#18759
            MProcess process = new MProcess(getCtx(), processId, get_Trx());
            if (!process.isReport()){
            	ProcessStarter pstart = new ProcessStarter(getCtx(), processId, get_Trx());
            	pstart.setRecord_ID(psel.getC_PaySelection_ID());
            	pstart.addParameter("FileName", p_File, null);
            	try {
					pstart.start();
					ret = new File(p_File);
				} catch (Exception e) {
					throw new CompiereException("Le processus d'export est en echec");
				}
            }
            else
            //#18759
            	ret = jrl.startReport(getCtx(), pi, false); // ZCOM999

            if (ret == null)
            {
                throw new CompiereException("Le processus d'export est en echec");
            }
        }
        else if (payR.get_Value("AD_PrintFormat_ID") != null)
        {
            int print = ((Integer) payR.get_Value("AD_PrintFormat_ID")).intValue();
            PrintInfo pi = new PrintInfo("Impression",
                    X_C_PaySelectionCheck.Table_ID, recordId);
            Query qu = new Query(X_C_PaySelectionCheck.Table_ID);
            qu.addRestriction("C_PaySelectionCheck_ID", Query.EQUAL,
                new Integer(recordId));

            ReportEngine re = new ReportEngine(getCtx(),
                    new MPrintFormat(getCtx(), print, get_TrxName()), qu, pi);
            re.print();
        }
        else
        {
            throw new CompiereException("EXPORT FORMAT OU PRINT FORMAT NON DEFINI");
        }

        return ret;
    }

    /**************************************************************************
     *         Confirm Print.
     *         Create Payments the first time
     *         @param checks checks
     *         @return last Document number or 0 if nothing printed
     */
    public boolean confirmPrint(MPaySelectionCheck[] checks, MPaymentBatch batch)
    {

        boolean result = true;
        int lastDocumentNo = 0;

        for (int i = 0; i < checks.length; i++)
        {
        	MPaySelectionCheck check = checks[i];
        	MPayment payment = new MPayment(check.getCtx(),
                    check.getC_Payment_ID(), check.get_Trx());

            //	Existing Payment
            if (check.getC_Payment_ID() != 0)
            {
            }
            else //	New Payment
            {
                payment = new MPayment(check.getCtx(), 0, check.get_Trx());
                payment.getCtx().setContext("Z_CHECK_INVOICE", 1);
                payment.setAD_Client_ID(check.getAD_Client_ID()); //ZCOM999 (Web Mandatory: Otherwise do not find MAcctSchema later...)
                payment.setAD_Org_ID(check.getAD_Org_ID()); //ZCOM360

                //
                if (check.getPaymentRule()
                             .equals(MPaySelectionCheck.PAYMENTRULE_Check))
                {
                    payment.setBankCheck(check.getParent().getC_BankAccount_ID(),
                        check.isReceipt(), check.getDocumentNo()); //ZCOM304
                }
                else if (check.getPaymentRule()
                                  .equals(MPaySelectionCheck.PAYMENTRULE_CreditCard))
                {
                    payment.setTenderType(MPayment.TENDERTYPE_CreditCard);
                }
                else if (check.getPaymentRule()
                                  .equals(MPaySelectionCheck.PAYMENTRULE_DirectDeposit) ||
                        check.getPaymentRule()
                                 .equals(MPaySelectionCheck.PAYMENTRULE_DirectDeposit))
                {
                    payment.setBankACH(check.getParent().getC_BankAccount_ID(), check.isReceipt(), payment.getTenderType(), payment.getRoutingNo(), payment.getAccountNo()); //ZCOM304

                    if (payment.isReceipt())
                    {
                        payment.setTenderType(MPayment.TENDERTYPE_DirectDeposit);
                    }
                }
                else
                {
                    s_log.log(Level.SEVERE,
                        "Unsupported Payment Rule=" + check.getPaymentRule());

                    payment.getCtx().setContext("Z_CHECK_INVOICE", 0);

                    continue;
                }

                MBankAccountDoc doc = MBankAccountDoc.getFromSub(getCtx(),
                        psel.getC_BankAccount_ID(), check.getPaymentRule(),
                        proxy.getZSubPaymentRule_ID(), check.get_Trx());
                String docNo = "";

                if (doc != null)
                {
                   // docNo = DB.getDocumentNo(doc.getC_DocType_ID(),
                   // 		check.get_Trx(),0);
                    docNo = DB.getDocumentNo(doc.getC_DocType_ID(),check.get_Trx());
                    payment.setCheckNo(docNo);
                    payment.setC_DocType_ID(doc.getC_DocType_ID());
                }

                payment.set_Value("ZSubPaymentRule_ID", proxy.getZSubPaymentRule_ID());
                payment.setDocumentNo(docNo);
                payment.setTrxType(MPayment.TRXTYPE_CreditPayment);
                payment.setAmount(check.getParent().getC_Currency_ID(),
                    check.getPayAmt());
                payment.setDiscountAmt(check.getDiscountAmt());
                payment.setDateTrx(check.getParent().getPayDate());
                payment.setDateAcct(check.getParent().getPayDate());
                payment.setC_BPartner_ID(check.getC_BPartner_ID());
                
                //Force AccountNo of Customer 
                payment.setAccountNo(null);
                payment.setA_Name(null);
                payment.setRoutingNo(null);
                
                //	Link to Batch
                if (batch != null)
                {
                    if (batch.getC_PaymentBatch_ID() == 0)
                    {
                        batch.save(); //	new
                    }

                    payment.setC_PaymentBatch_ID(batch.getC_PaymentBatch_ID());
                }

                //	Link to Invoice
                MPaySelectionLine[] psls = check.getPaySelectionLines(false);
                s_log.fine("confirmPrint - " + check + " (#SelectionLines=" +
                    psls.length + ")");

                /*ZCOM583*/
                // get the first invoice
                if ((psls != null) && (psls.length > 0) && (doc != null))
                {
                    int C_Invoice_ID = psls[0].getC_Invoice_ID();
                    MInvoice invoice = new MInvoice(getCtx(), C_Invoice_ID,
                    		check.get_Trx());
                    MInvoiceProxy proxy = new MInvoiceProxy(invoice);
                    int ruleID = (Integer)check.getParent().get_Value("ZSubPaymentRule_ID");
                    X_ZSubPaymentRule rl = new X_ZSubPaymentRule(getCtx(),
                            ruleID, null);

                    if ((rl != null) && rl.isByDueDate())
                    {
                        payment.set_Value("DateDue", proxy.getDateDue());
                    }
                }

                /*ZCOM583*/
                if ((check.getQty() == 1) && (psls != null) &&
                        (psls.length == 1))
                {
                    MPaySelectionLine psl = psls[0];
                    s_log.fine("Map to Invoice " + psl);
                    //
                    payment.setC_Invoice_ID(psl.getC_Invoice_ID());
                    payment.setDiscountAmt(psl.getDiscountAmt());
                    payment.setWriteOffAmt(psl.getDifferenceAmt());

                    BigDecimal overUnder = psl.getOpenAmt()
                                              .subtract(psl.getPayAmt())
                                              .subtract(psl.getDiscountAmt())
                                              .subtract(psl.getDifferenceAmt());
                    payment.setOverUnderAmt(overUnder);
                }
                else
                {
                    payment.setDiscountAmt(Env.ZERO);
                    payment.setWriteOffAmt(Env.ZERO);
                }


                if (!payment.save())
                {
                    s_log.log(Level.SEVERE, "Payment not saved: " + payment);
                    return false;
                }

                //
                int C_Payment_ID = payment.getC_Payment_ID();

                if (C_Payment_ID < 1)
                {
                    s_log.log(Level.SEVERE, "Payment not created=" + check);
                    return false;
                }
                else
                {
                    check.setC_Payment_ID(C_Payment_ID);
                    check.save(); //	Payment process needs it
                                               //	Should start WF

                    DocumentEngine.processIt(payment, DocActionConstants.ACTION_Complete);

                    if (!payment.save())
                    {
                        s_log.log(Level.SEVERE, "Payment not saved: " +
                            payment);
                        return false;
                    }
                    if (!DocActionConstants.ACTION_Complete.equals(payment.getDocStatus())) {
                        s_log.log(Level.SEVERE, "Payment not completed: " +
                                payment);
                            return false;                    	
                    }
                }
                payment.getCtx().setContext("Z_CHECK_INVOICE", 0);

            } //	new Payment

            //	Get Check Document No
            try
            {
                int no = Integer.parseInt(check.getDocumentNo());

                if (lastDocumentNo < no)
                {
                    lastDocumentNo = no;
                }
            }
            catch (NumberFormatException ex)
            {
                s_log.log(Level.SEVERE, "DocumentNo=" + check.getDocumentNo(),
                    ex);
            }

            check.setIsPrinted(true);
            check.setProcessed(true);

            if (!check.save())
            {
                s_log.log(Level.SEVERE, "Check not saved: " + check);
                return false;
            }
        } //	all checks

        s_log.fine("Last Document No = " + lastDocumentNo);

        return result;
    } //	confirmPrint

    /**************************************************************************
     *  Get Checks of Payment Selection
     *
     *  @param C_PaySelection_ID Payment Selection
     *  @param PaymentRule Payment Rule
     *  @param startDocumentNo start document no
     *  @return array of checks
     */
    private MPaySelectionCheck[] get(int C_PaySelection_ID,
        int startDocumentNo, Trx trxName)
    {
        s_log.fine("get - C_PaySelection_ID=" + C_PaySelection_ID +
            ", PaymentRule=" + ", startDocumentNo=" + startDocumentNo);

        ArrayList<MPaySelectionCheck> list = new ArrayList<MPaySelectionCheck>();

        //int docNo = startDocumentNo;
        // On peut desactiver une preparation de paiement si on n'a pas bien verifier avant les paiements
        // qui allait etre genere par el systeme
        String sql = "SELECT * FROM C_PaySelectionCheck WHERE C_PaySelection_ID=? and isactive = 'Y'";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try
        {
            pstmt = DB.prepareStatement(sql, trxName);
            pstmt.setInt(1, C_PaySelection_ID);

            //pstmt.setString(2, PaymentRule);
            rs = pstmt.executeQuery();

            while (rs.next())
            {
                MPaySelectionCheck check = new MPaySelectionCheck(getCtx(),//Env.getCtx()--> getCtx() L918,L974
                        rs, trxName);
                //	Set new Check Document No - saved in confirmPrint
                //check.setDocumentNo(String.valueOf(docNo++));
                list.add(check);
            }
        }
        catch (SQLException e)
        {
            s_log.log(Level.SEVERE, "get", e);
        }finally{
    		Util.closeCursor(pstmt, rs);
    	}

        //  convert to Array
        MPaySelectionCheck[] retValue = new MPaySelectionCheck[list.size()];
        list.toArray(retValue);

        return retValue;
    } //  createPayments

	@Override
	public String getOutputFileName() {
		return p_File;
	}

}