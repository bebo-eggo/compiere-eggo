/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

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
//#18759
import com.audaxis.compiere.model.MInvoice;
//#18759
import com.audaxis.compiere.model.MPaySelectionProxy;
import com.audaxis.compiere.util.PaymentCheckProcessor;

import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPaySelectionLine;
import org.compiere.model.X_ZSubPaymentRule;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import java.math.BigDecimal;
import java.math.BigInteger;

import java.sql.Timestamp;

import java.util.ArrayList;


/**
 *        Create Checks from Payment Selection Line
 *
 *  @author CAR
 *  @version $Id: ZZPaySelectionCreateCheck.java,v 1.16 2007-03-13 21:10:32 vha Exp $
 */
public class ZZPaySelectionCreateCheck extends SvrProcess
{
    private String p_PaymentRule = null;
    private int p_Zsub_ID = 0;
    private int p_C_PaySelection_ID = 0;
    private ArrayList<MPaySelectionCheck> m_list = new ArrayList<MPaySelectionCheck>();
    private X_ZSubPaymentRule subPay = null;
    private int number;
	private boolean p_IsStrd = false;// redmine 27431
	private int MaxInvoice; //#67460

    /**
     *  Prepare - e.g., get Parameters.
     */
    protected void prepare()
    {
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
            else if(name.equals("Z_Strd"))// redmine 27431
            	p_IsStrd = para[i].getParameter().equals("Y");
            else
            {
                log.severe("prepare - Unknown Parameter: " + name);
            }
        }

        p_C_PaySelection_ID = getRecord_ID();
    } //	prepare

    /**
     *  Perrform process.
     *  @return Message (clear text)
     *  @throws Exception if not successful
     */
    protected String doIt() throws Exception
    {
        log.info("doIt - C_PaySelection_ID=" + p_C_PaySelection_ID +
            ", PaymentRule=" + p_PaymentRule);

        MPaySelection psel = new MPaySelection(getCtx(), p_C_PaySelection_ID,
                get_TrxName());

        if (psel.get_ID() == 0)
        {
            throw new IllegalArgumentException("Not found C_PaySelection_ID=" +
                p_C_PaySelection_ID);
        }
        MPaySelectionProxy proxy = new MPaySelectionProxy(psel);
        if (psel.isProcessed())
        {
            throw new IllegalArgumentException("@Processed@");
        }

        if (p_PaymentRule == null)
        {
            throw new IllegalArgumentException("No PaymentRule");
        }

        this.subPay = new X_ZSubPaymentRule(getCtx(), p_Zsub_ID, get_TrxName());

        PaymentCheckProcessor payCheck = new PaymentCheckProcessor();

        if (!payCheck.process(getCtx(), psel, get_TrxName(), p_Zsub_ID, null))
        {
            //throw new CompiereUserError(Msg.getMsg(getCtx(),"ZPAY_LINES_ALTERED"));
            return Msg.getMsg(getCtx(), "ZPAY_LINES_ALTERED");
        }

        //#67460
        MaxInvoice = Integer.parseInt(Msg.getMsg(getCtx(), "PaySelectionCheck_MaxInvoice"));
        number = 0;
      // redmine 27431
        if(p_IsStrd){
        	checkCommunications(psel);//validate communications && check negative amounts
        }else
        	DB.executeUpdate("update c_payselectionline set z_isstrd='N' where c_payselection_id="+p_C_PaySelection_ID, (Trx)null);
     // redmine 27431

        if (((Boolean) subPay.get_Value("ByDueDate")).booleanValue())
        {
            createChecksByDueDate(psel);
        }
        else
        {
            createChecks(psel);
            number = m_list.size();
        }
        
        proxy.setZSubPaymentRule_ID(p_Zsub_ID);
        psel.setProcessed(false);
        psel.save();

        return "@C_PaySelectionCheck_ID@ - #" + number;
    } //	doIt

    /**
     * Prepare payments in the simple case : One payment for all invoices of one customer/vendor.
     *
     * @param psel the payment selection
     */
    private void createChecks(MPaySelection psel)
    {
        log.info("=== SOUS METHODE NOT BY DUE DATE === ");
        
        MPaySelectionLine[] lines = psel.getLines(true, true);

        for (int i = 0; i < lines.length; i++)
        {
            MPaySelectionLine line = lines[i];

            if (!line.isActive() || line.isProcessed())
            {
                continue;
            }

            createCheck(line);
        }
    	checkIfLastIsNegatif(lines);//#67460
    }

    
    /** Evolution #67460
     * if the last PaySelectionCheck has a negative amount, then:
     *  1-  the invoice within that MPaySelectionCheck will be copied in the line before it
     *  2-  the PaySelectionCheck will be deleted 
     ***/
    private void checkIfLastIsNegatif(MPaySelectionLine[] lines)
    {
    	//Trier le tableau pour que dans le début que Facture > 0 et à la fin facture <0
    	ArrayList<MPaySelectionCheck> m_listSave = new ArrayList<MPaySelectionCheck>();
    	ArrayList<MPaySelectionCheck> m_listNegAdd = new ArrayList<MPaySelectionCheck>();
    	ArrayList<MPaySelectionCheck> m_listOtherAdd = new ArrayList<MPaySelectionCheck>();
    	m_listSave = m_list;
    	for (int v = 0; v < m_list.size(); v++) {
    		MPaySelectionCheck lastCheck = m_list.get(v);
    		if(lastCheck.getPayAmt().compareTo(BigDecimal.ZERO) == -1)
    		{
    			//Mettre cette facture à la fin du tabelau
    			m_listNegAdd.add(lastCheck);
    		}
    		if(lastCheck.getPayAmt().compareTo(BigDecimal.ZERO) >= 0)
    		{
    			//Mettre cette facture à la fin du tabelau
    			m_listOtherAdd.add(lastCheck);
    		}
    		
		}
    	if(m_listNegAdd.size()>0)
    		m_listOtherAdd.addAll(m_listNegAdd);
    	m_list = m_listOtherAdd;
    	for (int i = m_list.size()-1; i >= 0 ; i--)
    	{
    		MPaySelectionCheck lastCheck = m_list.get(i);
    		if (lastCheck.getPayAmt().compareTo(BigDecimal.ZERO) == -1)	
    		{
    			lines = lastCheck.getPaySelectionLines(false);
    			
    			for (int j = 0; j < lines.length; j++)
    			{
    				MPaySelectionLine line = lines[j];
    				MPaySelectionCheck checkBeforeLast = m_list.get(i-1);
    				
    				checkBeforeLast.addLine(line);
    				if((checkBeforeLast.get_ValueAsString("Z_PaymentCommunication").length() + (line.get_ValueAsString("Z_Com")+",").length()) <= 140)
    					checkBeforeLast.set_ValueNoCheck("Z_PaymentCommunication"	, checkBeforeLast.get_ValueAsString("Z_PaymentCommunication") + ", " + toAlphaNumeric(line.get_ValueAsString("Z_Com")));
    				checkBeforeLast.set_ValueNoCheck("Z_IsStrd", false);
    				
    				org.compiere.model.MInvoice invoice = line.getInvoice();
    				//#39119               
    				checkBeforeLast.set_ValueNoCheck("DiscountDate", invoice.get_ValueAsTimestamp("DiscountDate"));
    				checkBeforeLast.set_ValueNoCheck("DueDate", invoice.get_ValueAsTimestamp("DueDate"));
    				//#39119
    				
    				if (!checkBeforeLast.save())
    				{
    					throw new IllegalStateException("Cannot Save MPaySelectionCheck");
    				}
    				
    				line.setC_PaySelectionCheck_ID(checkBeforeLast.getC_PaySelectionCheck_ID());
    				line.setProcessed(true);
    				
    				if (!line.save())
    				{
    					throw new IllegalStateException("Cannot Save MPaySelectionLine");
    				}
    			}
    			m_list.remove(i);
    			lastCheck.delete(true);
    		} 
    	}
    }
    
    /**
     * Prepare payments in the complex case : One payment for all invoices of one customer/vendor
     * group by Due Date of the involices.<p>
     * Negative invoices have by definition no due date and must be put in regards of invoices
     * with smaller due date first.  Partial allocations if needed.<p>
     * Example : +51 -100 +51 must give one payment of +2 at the seconds due date.<p>
     *
     * @param psel the payment selection
     */
    private void createChecksByDueDate(MPaySelection psel)
    {
        log.info("=== SOUS METHODE BY DUE DATE === ");
        MPaySelectionProxy proxy = new MPaySelectionProxy(psel);

        int[] bpids = proxy.getBusinessPartnerIds();

        for (int i = 0; i < bpids.length; i++)
        {
            int bpid = bpids[i];
            proxy.cleanTempTable();
            createChecksByDueDate(psel, bpid);
        }
    }

    private void createChecksByDueDate(MPaySelection psel, int bpid)
    {
    	MPaySelectionProxy proxy = new MPaySelectionProxy(psel);
        Timestamp[] duedates = proxy.getDueDates(bpid);
        BigDecimal ndcTotal = proxy.getCreditInvoiceTotalsByBP(bpid);
        ndcTotal = Env.ZERO.subtract(ndcTotal); // positive amount

        BigDecimal totalInvoices = Env.ZERO;

        /*
        On accroche ces ceintures ici ;-)
        on recherche en fait les date d'echeance qui doivent etre regroupï¿½es ensemble
        Example 1:
        01/01 : 100
        01/02 : 50
        01/03 : 100
        NDC : -75

        ==> 01/02 : 25 et 01/L03 100

        Example 2:
        Mï¿½me facture NDC = -25

        ==> 01/01 : 75 et 01/02 50 etc...
        */
        int dueDateBreakPos = 0;

        for (int i = 0; i < duedates.length; i++)
        {
            Timestamp duedate = duedates[i];
            totalInvoices = totalInvoices.add(proxy.getInvoiceTotalsByDueDate(
                        duedate));

            if (ndcTotal.compareTo(totalInvoices) > 0)
            {
                dueDateBreakPos = i;

                break;
            }
        }

        /*
         on peut avoir le cas balance positive mais ï¿½ la date d'ï¿½cheance demandï¿½e
         n'avoir que des NDC
         */
        if (duedates.length != 0)
        {
            /*
             * Maintenant on crï¿½e enfin les paiements :
             * 1. D'abord la premiï¿½re Date d'echï¿½ance qui contient aussi les NDC
             */
        	MPaySelectionCheck check = null;

            for (int i = dueDateBreakPos; i >= 0; i--)
            {
                Timestamp duedate = duedates[i];
                MPaySelectionLine[] invs = proxy.getInvoicesByDueDate(duedate);

                for (int j = 0; j < invs.length; j++)
                {
                    MPaySelectionLine line = invs[j];
                    //Anomalie 26211
                    if (!line.isActive() || line.isProcessed())
                        continue;
                    check = createCheckForDueDatePayment(check, line);
                }
            }

            MPaySelectionLine[] ndcs = proxy.getCreditInvoicesByBP(bpid);

            for (int i = 0; i < ndcs.length; i++)
            {
                MPaySelectionLine ndcLine = ndcs[i];
                //Anomalie 26211
                if (!ndcLine.isActive() || ndcLine.isProcessed())
                    continue;
                check = createCheckForDueDatePayment(check, ndcLine);
            }

            /*
             * 2. Ensuite le reste (qui ne contient plus de NDC)
             */
            if ((dueDateBreakPos + 1) < duedates.length)
            {
                for (int i = dueDateBreakPos + 1; i < duedates.length; i++)
                {
                    check = null; // 1 payment par due date

                    Timestamp duedate = duedates[i];
                    MPaySelectionLine[] invs = proxy.getInvoicesByDueDate(duedate);

                    for (int j = 0; j < invs.length; j++)
                    {
                        MPaySelectionLine line = invs[j];
                        //Anomalie 26211
                        if (!line.isActive() || line.isProcessed())
                            continue;
                        check = createCheckForDueDatePayment(check, line);
                    }
                }
            }
        } // au moins une facture positive		
    }

    private MPaySelectionCheck createCheckForDueDatePayment(
    		MPaySelectionCheck check, MPaySelectionLine line)
    {
        if (check == null)
        {
            number++;
            check = new MPaySelectionCheck(line, p_PaymentRule);
            check.set_ValueNoCheck("Z_PaymentCommunication",toAlphaNumeric(line.get_ValueAsString("Z_Com")));
        }
        else
        {
            check.addLine(line);
        }
        String Z_PaymentCommunication = check.get_ValueAsString("Z_PaymentCommunication");
        String Z_Com = line.get_ValueAsString("Z_Com");
        
        if(!Z_PaymentCommunication.equals(Z_Com) && (Z_PaymentCommunication.length() + Z_Com.length() + 1) <= 140)
        	check.set_ValueNoCheck("Z_PaymentCommunication", Z_PaymentCommunication+","+toAlphaNumeric(Z_Com));

        check.save();

        line.setC_PaySelectionCheck_ID(check.getC_PaySelectionCheck_ID());
        line.setProcessed(true);
        line.save();

        return check;
    }

    /**
     *         Create Check from line
     *        @param line
     */
    private void createCheck(MPaySelectionLine line)
    {

    	MInvoice invoice = new MInvoice(getCtx(), line.getC_Invoice_ID(), get_Trx());//#18759

    	if(p_IsStrd && line.get_ValueAsBoolean("Z_IsStrd")){
    		createCheckStrd(line, invoice);
    	}else{
    		createCheckNonStrd(line, invoice);
    	}


    } //	createCheck

    //Redmine 27431
    private void createCheckStrd(MPaySelectionLine line, MInvoice invoice){

    	String Z_PaymentCommunication;
    	String Z_Com;

    	for (int i = 0; i < m_list.size(); i++)
    	{
    		MPaySelectionCheck check = m_list.get(i);
    		Z_PaymentCommunication = check.get_ValueAsString("Z_PaymentCommunication");
    		Z_Com = line.get_ValueAsString("Z_Com");

    		//	Add to existing
    		if (check.getC_BPartner_ID() == line.getInvoice().getC_BPartner_ID() && Z_PaymentCommunication.equals(Z_Com) && check.get_ValueAsBoolean("Z_IsStrd")){
    			check.addLine(line);
    			check.set_ValueNoCheck("Z_IsStrd", true);
    			//#39119               
    			check.set_ValueNoCheck("DiscountDate", invoice.get_ValueAsTimestamp("DiscountDate"));
    			check.set_ValueNoCheck("DueDate", invoice.get_ValueAsTimestamp("DueDate"));
                //#39119

    			if (!check.save())
    			{
    				throw new IllegalStateException(
    				"Cannot Save MPaySelectionCheck");
    			}

    			line.setC_PaySelectionCheck_ID(check.getC_PaySelectionCheck_ID());
    			line.setProcessed(true);
    			
    			

    			if (!line.save())
    			{
    				throw new IllegalStateException(
    				"Cannot Save MPaySelectionLine");
    			}
    			return;
    		}
    	}

    	log.info("=== NEW PAYMENT");

    	//	Create new
    	MPaySelectionCheck check = new MPaySelectionCheck(line, p_PaymentRule);
    	check.set_ValueNoCheck("Z_PaymentCommunication", toAlphaNumeric(line.get_ValueAsString("Z_Com")));
    	check.set_ValueNoCheck("Z_IsStrd", true);

    	if (!check.save())
    	{
    		throw new IllegalStateException("Cannot Save MPaySelectionCheck");
    	}

    	line.setC_PaySelectionCheck_ID(check.getC_PaySelectionCheck_ID());
    	line.setProcessed(true);

    	if (!line.save())
    	{
    		throw new IllegalStateException("Cannot Save MPaySelectionLine");
    	}

    	m_list.add(check);
    }//createCheckStrd


    private void createCheckNonStrd(MPaySelectionLine line, MInvoice invoice){

    	for (int i = 0; i < m_list.size(); i++)
    	{
    		MPaySelectionCheck check = m_list.get(i);

    		//	Add to existing
    		if (check.getC_BPartner_ID() == line.getInvoice().getC_BPartner_ID() && !check.get_ValueAsBoolean("Z_IsStrd") ){
    			if(check.getQty() < MaxInvoice || (check.getQty() >= MaxInvoice && check.getPayAmt().compareTo(BigDecimal.ZERO) == -1) ) //#67460
    			{
    				check.addLine(line);
    				if((check.get_ValueAsString("Z_PaymentCommunication").length() + (line.get_ValueAsString("Z_Com")+",").length()) <= 140)
    					check.set_ValueNoCheck("Z_PaymentCommunication"	, check.get_ValueAsString("Z_PaymentCommunication") + ", " + toAlphaNumeric(line.get_ValueAsString("Z_Com")));
    				check.set_ValueNoCheck("Z_IsStrd", false);
    				//#39119               
    				check.set_ValueNoCheck("DiscountDate", invoice.get_ValueAsTimestamp("DiscountDate"));
    				check.set_ValueNoCheck("DueDate", invoice.get_ValueAsTimestamp("DueDate"));
    				//#39119

    				if (!check.save())
    				{
    					throw new IllegalStateException(
    							"Cannot Save MPaySelectionCheck");
    				}

    				line.setC_PaySelectionCheck_ID(check.getC_PaySelectionCheck_ID());
    				line.setProcessed(true);


    				if (!line.save())
    				{
    					throw new IllegalStateException(
    							"Cannot Save MPaySelectionLine");
    				}
    				return;
    			}
    		}
    	}

    	log.info("=== NEW PAYMENT");

    	//	Create new
    	MPaySelectionCheck check = new MPaySelectionCheck(line, p_PaymentRule);
    	check.set_ValueNoCheck("Z_PaymentCommunication", toAlphaNumeric(line.get_ValueAsString("Z_Com")));
    	check.set_ValueNoCheck("Z_IsStrd", false);
    	//#39119               
		check.set_ValueNoCheck("DiscountDate", invoice.get_ValueAsTimestamp("DiscountDate"));
		check.set_ValueNoCheck("DueDate", invoice.get_ValueAsTimestamp("DueDate"));
       //#39119

    	if (!check.save())
    	{
    		throw new IllegalStateException("Cannot Save MPaySelectionCheck");
    	}

    	line.setC_PaySelectionCheck_ID(check.getC_PaySelectionCheck_ID());
    	line.setProcessed(true);

    	if (!line.save())
    	{
    		throw new IllegalStateException("Cannot Save MPaySelectionLine");
    	}

    	m_list.add(check);
    }//createCheckNonStrd

    private void checkCommunications(MPaySelection psel) {
    	MPaySelectionLine[] lines = psel.getLines(false, false);
    	for(MPaySelectionLine line : lines){
    		if(line.get_ValueAsBoolean("Z_IsStrd") && !validateCommunication(line)){
    			line.set_ValueNoCheck("Z_IsStrd", false);
    			line.save();	
    		}
    	}

    	if(!((Boolean) subPay.get_Value("ByDueDate")).booleanValue()){
    		String sql = "update c_payselectionline line set line.Z_IsStrd='N' where line.c_payselection_id="+p_C_PaySelection_ID+
    		" and exists (select 1 from c_payselectionline nline where nline.c_payselection_id="+p_C_PaySelection_ID+
    		" and nline.c_bpartner_id=line.c_bpartner_id and nline.payamt < 0) and line.payamt <0 ";
    		int no = DB.executeUpdate(sql, get_Trx());	
    		System.out.println();
    	}

    }//checkCommunications

    private boolean validateCommunication(MPaySelectionLine line) {
    	String commdigit = removeNonDigits(line.get_ValueAsString("Z_Com"));
    	if(commdigit == null || commdigit.length()==0)
    		return false;
    	String subComm = commdigit.substring(0, commdigit.length()-2);
    	
    	String modulo = commdigit.substring(commdigit.length()-2, commdigit.length());
    	modulo = modulo.startsWith("0") ? modulo.replaceAll("0", "") : modulo;
    	modulo = modulo.equals("97") ? "0" : modulo;

    	BigInteger[] results = new BigInteger(subComm).divideAndRemainder(new BigInteger("97"));
    	return results[1].equals(new BigInteger(modulo));
    }


    public static String removeNonDigits(String text) {
    	if(text==null || text.length()==0)
    		return "";
    	int length = text.length();
    	StringBuffer buffer = new StringBuffer(length);
    	for(int i = 0; i < length; i++) {
    		char ch = text.charAt(i);
    		if (Character.isDigit(ch)) {
    			buffer.append(ch);
    		}
    	}
    	return buffer.toString();
    }
    
    private String toAlphaNumeric(String value){
    	if(value == null)
    		return "";
    	else
    		return value.replaceAll("[^A-Za-z0-9]", "");
    }
    
    // Redmine 27431
} //	PaySelectionCreateCheck
