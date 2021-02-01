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
package com.audaxis.compiere.util;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MBPBankAccountProxy;

import org.compiere.model.MBPBankAccount;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionLine;
import org.compiere.model.X_ZSubPaymentRule;

import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import java.math.BigDecimal;
import java.math.BigInteger;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;


public class PaymentCheckProcessor
{
    private boolean failed;
    protected CLogger log = CLogger.getCLogger(getClass());
    
    //Redmine 17962
    private boolean exeFailed = false;
    private boolean isDispute = false;
    //Redmine 17962
    

    /**
     *
     * @param ctx
     * @param paysel
     * @param trxName
     * @param ruleID
     * @param dueDate
     * @return true if the process was successfull
     */
    
    //Redmine 17962
	public void setDispute(boolean dispute){
		isDispute = dispute;
	}

	public boolean getDispute(){
		return isDispute;
	}
	
	
	
    public boolean process(Ctx ctx, MPaySelection paysel,
        Trx trxName, int ruleID, Timestamp dueDate)
    {
        failed = false;

        // let's do it !
        // retrieve bank account doc
        MPaySelectionLine[] lines = paysel.getLines(true, false);
        X_ZSubPaymentRule rule = new X_ZSubPaymentRule(ctx, ruleID, trxName);

        for (int i = 0; i < lines.length; i++)
        {
        	exeFailed = false;
            if (!lines[i].isActive())
            {
                continue;
            }

            MBPartner frn = new MBPartner(ctx,
                    lines[i].getInvoice().getC_BPartner_ID(), trxName);
            org.compiere.model.MBPBankAccount[] bks = frn.getBankAccounts(true);

            //ZCOM767
            if (rule.isVerifyAccount())
            {
                if (bks.length == 0)
                {
                    failed(lines[i], Msg.getMsg(ctx, "NO_ACCOUNT"));
                    exeFailed=true;
                }
                else
                {
                    MBPBankAccount bank = new MBPBankAccount(ctx,
                            bks[0].getC_BP_BankAccount_ID(), trxName);
                    MBPBankAccountProxy proxy = new MBPBankAccountProxy(bank);
                    if (bank.getC_Bank_ID() != 0)
                    {
                        // ZCOM1018
                        // if (bank.validateBankAccountNumber());
                    	if (! proxy.validateBankAccountNumber())
                        {
                            failed(lines[i],
                                Msg.getMsg(ctx, "INVALID_ACCOUNT") + " : " +
                                bks[0].getAccountNo());
                            exeFailed=true;
                        }
                    }
                    else
                    {
                        log.warning(lines[i] + " : " +
                            Msg.getMsg(ctx, "AUDAXIS_NoBank"));
                    }
                }

                //ZCOM767 END
            }

            // get bank account doc
            if (lines[i].getInvoice().isInDispute())
            {
                failed(lines[i], Msg.getMsg(ctx, "IN_DISPUTE"));
            }
            
            //Redmine 17962
			if (lines[i].getInvoice().isInDispute() && isDispute && !exeFailed){
				lines[i].setIsActive(true);
			}

            if (rule.isEuroOnly())
            {
                if (!lines[i].getInvoice().getCurrencyISO()
                                 .equalsIgnoreCase("EUR"))
                {
                    failed(lines[i], Msg.getMsg(ctx, "ONLY_EURO"));
                }
            }

            String sql = "SELECT psel.name from C_PaySelectionLine sel join C_PaySelection psel on sel.C_PaySelection_ID = psel.C_PaySelection_ID " +
                "    where sel.C_Invoice_ID=?  and sel.C_PaySelection_ID <> ? and sel.processed <> 'Y' and rownum = 1";
            PreparedStatement ps = null;
            ResultSet rs = null; 
            try
            {
            	ps = DB.prepareStatement(sql, null);
            	ps.setInt(1, lines[i].getC_Invoice_ID());
                ps.setInt(2, lines[i].getC_PaySelection_ID());

                rs = ps.executeQuery();

                if (rs.next())
                {
                    failed(lines[i],
                        Msg.getMsg(ctx, "SELECTIONNE:") + rs.getString(1));
                }

            }
            catch (SQLException e)
            {
                log.severe("SQL Exception");
            }
            finally
            {
            	Util.closeCursor(ps, rs);
            }
        }

        
    	// JLB : deactive all lines from Partner with unallocated payment (do not care about OpenAmt, Negative Amt, ...)
        Map<Integer, Integer> m2 = new HashMap<Integer, Integer>();
        for (MPaySelectionLine line : lines)
        {
        	if (!line.isActive())
                continue;

        	int C_BPartner_ID = line.getInvoice().getC_BPartner_ID();
        	Integer count = m2.get(C_BPartner_ID);
        	if (count == null)
        	{
                String sql = "SELECT COUNT(*) FROM C_Payment p WHERE p.C_BPartner_ID=? AND p.IsAllocated='N' AND p.AD_Client_ID=? AND p.DocStatus in ('CO','CL') AND p.Processed = 'Y' AND p.IsReceipt =?";
                count = DB.getSQLValue(trxName, sql, new Object [] {C_BPartner_ID, line.getInvoice().getAD_Client_ID(), (line.getInvoice().isSOTrx())?"Y":"N"});
                m2.put(C_BPartner_ID, count);
        	}
        	
            if (count>0)
            	failed(line, Msg.getMsg(ctx, "Paiement non affecté existe !"));
        }
        
        
        Map<Integer, BigDecimal> m = getBPSold(paysel, lines, dueDate);

        for (int i = 0; i < lines.length; i++)
        {
            if (!lines[i].isActive())
            {
                continue;
            }

            MBPartner frn = new MBPartner(ctx,
                    lines[i].getInvoice().getC_BPartner_ID(), trxName);

            if (((BigDecimal) m.get(new Integer(frn.getC_BPartner_ID()))).signum() <= 0)
            {
                failed(lines[i], Msg.getMsg(ctx, "BP_SOLD"));
            }

            lines[i].save();
        }

        return !failed;
    }

    private void failed(MPaySelectionLine ln, String message)
    {
        log.warning(ln.getLine() + " : " + message);
        ln.setDescription(((ln.getDescription() == null) ? ""
                                                         : ln.getDescription()) +
            " " + message);
        ln.setIsActive(false);
        ln.save(); // VHA
        this.failed = true;
    }

    private Map<Integer, BigDecimal> getBPSold(MPaySelection sel, MPaySelectionLine[] lines,
        Timestamp dueDate)
    {
        HashMap<Integer, BigDecimal> m = new HashMap<Integer, BigDecimal>();

        for (int i = 0; i < lines.length; i++)
        {
            {
                MInvoice inv = lines[i].getInvoice();
                BigDecimal mnt = lines[i].getOpenAmt();
                addToBp(mnt, inv.getC_BPartner_ID(), m, inv.isSOTrx(),
                    inv.getC_Currency_ID());
            }
        }

        return m;
    }

    private void addToBp(BigDecimal mnt, int bpID, Map<Integer, BigDecimal> m,
        boolean isSo, int currency)
    {
        Integer g = new Integer(bpID);
        BigDecimal current = (BigDecimal) m.get(new Integer(bpID));

        if (current == null)
        {
            // get BP Unallocated payments
            current = new BigDecimal(0);

            StringBuffer sql = new StringBuffer(
                    "SELECT p.DateTrx,p.DocumentNo,p.C_Payment_ID," //  1..3
                     +"c.ISO_Code,p.PayAmt," //  4..5
                     +"currencyConvert(p.PayAmt,p.C_Currency_ID,?,p.DateTrx,p.C_ConversionType_ID,p.AD_Client_ID,p.AD_Org_ID)," //  6   #1
                     +"currencyConvert(paymentAvailable(C_Payment_ID),p.C_Currency_ID,?,p.DateTrx,p.C_ConversionType_ID,p.AD_Client_ID,p.AD_Org_ID)," //  7   #2
                     +"p.MultiplierAP " +
                    "FROM C_Payment_v p" //	Corrected for AP/AR
                     +" INNER JOIN C_Currency c ON (p.C_Currency_ID=c.C_Currency_ID) " +
                    "WHERE (p.IsAllocated='N' " + /*ZCOM125*/ "or p.payamt = 0 )" +
                    "AND p.Processed='Y'" + " AND p.C_BPartner_ID=?"); //      #3
                                                                       /*ZCOM267*/
            sql.append(" AND p.docstatus in ('CO','CL','RE','VO') ");

            /*ZCOM166*/
            if (isSo)
            {
                sql.append(" AND p.IsReceipt = 'Y'");
            }
            else
            {
                sql.append(" AND p.IsReceipt = 'N'");
            }

            /*END ZCOM166*/
            sql.append(" ORDER BY p.DateTrx,p.DocumentNo");

            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            try
            {
                pstmt = DB.prepareStatement(sql.toString(), null);
                pstmt.setInt(1, currency);
                pstmt.setInt(2, currency);
                pstmt.setInt(3, bpID);

                rs = pstmt.executeQuery();

                while (rs.next())
                {
                	BigDecimal bd = rs.getBigDecimal(7);
                	if (bd == null)
                		log.warning("CHECK CURRENCY SETUP");
                	else
                		current = current.add(bd);
                }

            }
            catch (Exception e)
            {
                log.log(Level.SEVERE, "BP SOLD FAILED:" + e.getMessage(), e);
            }
            finally
            {
            	Util.closeCursor(pstmt, rs);
            }
            //current = new BigDecimal(0);
        }

        current = current.add(mnt);
        m.put(g, current);
    }

    /**
     *
     * @param toCheck
     * @return true if verified
     */
    public static synchronized boolean checkAccount(String toCheck)
    {
        if (toCheck == null)
        {
            return false;
        }

        toCheck = toCheck.replaceAll("[AaJj]", "1");
        toCheck = toCheck.replaceAll("[BbKkSs]", "2");
        toCheck = toCheck.replaceAll("[CcLlTt]", "3");
        toCheck = toCheck.replaceAll("[DdMmUu]", "4");
        toCheck = toCheck.replaceAll("[EeNnVv]", "5");
        toCheck = toCheck.replaceAll("[FfOoWw]", "6");
        toCheck = toCheck.replaceAll("[GgPpXx]", "7");
        toCheck = toCheck.replaceAll("[HhQqYy]", "8");
        toCheck = toCheck.replaceAll("[IiRrZz]", "9");
        // replace all invalid char -> all non numeric fields
        toCheck = toCheck.replaceAll("[^0123456789]", "");

        if (toCheck.length() != 23)
        {
            return false;
        }

        //BigInteger sfx = new BigInteger(toCheck.substring(toCheck.length() - 2));
        BigInteger sfx2 = new BigInteger(toCheck);

        return sfx2.remainder(new BigInteger("97")).intValue() == 0;
    }

    public static void main(String[] args)
    {
        System.out.println(checkAccount("30004-00522-00002049620-51"));
        System.out.println(checkAccount("732-0117242-20"));
    }
}
