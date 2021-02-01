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
/******************************************************************************
 * The contents of this file are subject to the   Compiere License  Version 1.1
 * ("License"); You may not use this file except in compliance with the License
 * You may obtain a copy of the License at http://www.compiere.org/license.html
 * Software distributed under the License is distributed on an  "AS IS"  basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 * The Original Code is                  Compiere  ERP & CRM  Business Solution
 * The Initial Developer of the Original Code is Jorg Janke  and ComPiere, Inc.
 * Portions created by Jorg Janke are Copyright (C) 1999-2005 Jorg Janke, parts
 * created by ComPiere are Copyright (C) ComPiere, Inc.;   All Rights Reserved.
 * Contributor(s): ______________________________________.
 *****************************************************************************/
package com.audaxis.compiere.process;

import org.compiere.model.MAcctSchema;
import org.compiere.model.MClientInfo;
import org.compiere.model.MInvoice;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionLine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;
import com.audaxis.compiere.util.PaymentCheckProcessor;

import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;


/**
 *        Create Payment Selection Lines from AP Invoices
 *
 *  @author Jorg Janke
 *  @version $Id: PaySelectionCreateFrom.java,v 1.24 2007-10-29 05:45:17 vha Exp $
 */
public class PaySelectionCreateFrom extends SvrProcess
{
    private boolean p_OnlyDiscount = false;
    private boolean p_OnlyDue = false;
    private String p_PaymentRule = null;
    private int p_C_BPartner_ID = 0;
    private int p_C_BP_Group_ID = 0;
    public boolean p_IncludeInDispute=false; //Redmine 17962
    

    /**        Payment Selection                        */
    private int p_C_PaySelection_ID = 0;
    private Timestamp p_DueDate; // ZCOM291
    private Timestamp p_DiscountDate;//39119
    private int p_ZSubPaymentRule_ID; //ZCOM266
    private String p_IsSOTrx = "N"; //ZCOM304
    private BigDecimal p_Montant = Env.ZERO; //ZCOM416
    
    //Redmine 57946
    private String p_DocumentNoFrom;
    private String p_DocumentNoTo;
    //

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
            else if (name.equals("OnlyDiscount"))
            {
                p_OnlyDiscount = "Y".equals(para[i].getParameter());
            }
            else if (name.equals("OnlyDue"))
            {
                p_OnlyDue = "Y".equals(para[i].getParameter());
            }
            else if (name.equals("PaymentRule"))
            {
                p_PaymentRule = (String) para[i].getParameter();
            }
            else if (name.equals("C_BPartner_ID"))
            {
                p_C_BPartner_ID = para[i].getParameterAsInt();
            }
            else if (name.equals("C_BP_Group_ID"))
            {
                p_C_BP_Group_ID = para[i].getParameterAsInt();
            }
            
			//Redmine 17962
			else if (name.equals("IncludeInDispute"))
			{
				p_IncludeInDispute = "Y".equals(para[i].getParameter());
			}
            //Redmine 17962
            
            /*ZCOM266 ZCOM304*/
            else if (name.equals("ZSubPaymentRule_ID"))
            {
                p_ZSubPaymentRule_ID = para[i].getParameterAsInt();
            }
            else if (name.equals("IsSOTrx"))
            {
                p_IsSOTrx = (String) para[i].getParameter();
            }

            /*ZCOM266 ZCOM304*/
            /*ZCOM291*/
            else if (name.equals("DueDate"))
            {
                p_DueDate = (Timestamp) para[i].getParameter();
            }
            
            //339119
            else if (name.equals("DiscountDate"))
            {
            	p_DiscountDate = (Timestamp) para[i].getParameter();
            }
            
            //

            /*ZCOM291*/

            //ZCOM416
            else if (name.equals("Montant"))
            {
                p_Montant = (BigDecimal) para[i].getParameter();
            }
            //Redmine 57946
            else if (name.equals("DocNo")){
            	p_DocumentNoFrom = (String) para[i].getParameter();
            	p_DocumentNoTo = (String) para[i].getParameter_To();
            }
            //

            //ZCOM416

            //			else
            //				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
        }

        p_C_PaySelection_ID = getRecord_ID();
    } //	prepare

    /**
     *  Perrform process.
     *  @return Message
     *  @throws Exception if not successful
     */
    protected String doIt() throws Exception
    {
        log.info("doIt - C_PaySelection_ID=" + p_C_PaySelection_ID +
            ", OnlyDiscount=" + p_OnlyDiscount + ", OnlyDue=" + p_OnlyDue +
            ", PaymentRule=" + p_PaymentRule + ", C_BP_Group_ID=" +
            p_C_BP_Group_ID + ", C_BPartner_ID=" + p_C_BPartner_ID);

        MPaySelection psel = new MPaySelection(getCtx(), p_C_PaySelection_ID,
                get_TrxName());
        
        //Redmine 31562
        MClientInfo clientInfo = MClientInfo.get(getCtx());
        MAcctSchema acctSchema = clientInfo.getMAcctSchema1();
        //
        
        if (psel.get_ID() == 0)
        {
            throw new IllegalArgumentException("Not found C_PaySelection_ID=" +
                p_C_PaySelection_ID);
        }

        if (psel.isProcessed())
        {
            throw new IllegalArgumentException("@Processed@");
        }

        //DEBUT Redmine 18767
		/**SC454**
        //	psel.getPayDate();
        if (!psel.isProcessed())
        {
            String sql = "DELETE FROM C_PaySelectionLine where C_PaySelection_ID=" +
                psel.getC_PaySelection_ID();
            //int x  = 
            DB.executeUpdate(sql, get_TrxName());
        }
		 **SC454**/
		/*SC454*/ // On doit supprimer par exemple les factures mises ici la veille et payée entre temps
		MPaySelectionLine[] psls = psel.getLines(true, false);
		for (int i = 0; i < psls.length; i++) {
			MPaySelectionLine psl = psls[i];
			int C_Invoice_ID = psl.getC_Invoice_ID();
			int cnt = DB.getSQLValue(get_TrxName(), "select NVL(C_Invoice_ID, 0) FROM C_Invoice i WHERE C_Invoice_ID = ? and i.IsPaid='Y'", C_Invoice_ID);
			if (cnt > 0) {
				psl.delete(true);
			}
		}
		/*SC454*/
		//FIN Redmine 18767

        String sql = "";
        int lines = 0;
        BigDecimal totAmt = new BigDecimal("0");

        // Not a draft AR Selection 

        // String sql = "SELECT C_Invoice_ID,"     ZCOM291
        sql = "SELECT C_Invoice_ID," // ZCOM291	    
                                     //	Open
             +" currencyConvert(invoiceOpen(i.C_Invoice_ID, 0)" +
            ",i.C_Currency_ID, ?,?, i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID),"; //	##1/2 Currency_To,PayDate
                                                                                         //	Discount

//        if (!CompiereVersion.matchVersion(CompiereVersion.VERSION_253))
//        {
//            sql = sql +
//                " currencyConvert(paymentTermDiscount(i.GrandTotal,i.C_PaymentTerm_ID,i.DateInvoiced, ?)"; //	##3 PayDate
//        }
//        else
//        {
            sql = sql +
                " currencyConvert(paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?)"; //	##3 PayDat
//        }

        sql = sql +
            ",i.C_Currency_ID, ?,?,i.C_ConversionType_ID,i.AD_Client_ID,i.AD_Org_ID)," //	##4/5 Currency_To,PayDate
             +" PaymentRule, IsSOTrx " +
            ", i.C_BPartner_ID " //ZCOM577 (parametre 6)
             +"FROM C_Invoice i "//ZCOM304 + "WHERE IsSOTrx='N' AND IsPaid='N' AND DocStatus IN ('CO','CL')"
             + "WHERE IsSOTrx = '" + p_IsSOTrx +
            "' AND IsPaid='N' AND DocStatus IN ('CO','CL','RE','VO')" //ZCOM304 ZCOM340
             +" AND i.Z_ApprovedInv = 'Y' " //	EG60 
             +" AND AD_Client_ID=?" //	##6 
             +" AND i.AD_Org_ID = " + psel.getAD_Org_ID() //Redmine 18010
             
             //	Existing Payments - Will reselect Invoice if prepared but not paid 
             //ZCOM379 Modif ci dessous 
             +" AND NOT EXISTS (SELECT * FROM C_PaySelectionLine psl inner join C_PaySelection sel on psl.C_PaySelection_ID = sel.C_PaySelection_ID " +
            "WHERE i.C_Invoice_ID=psl.C_Invoice_ID AND psl.IsActive='Y' and sel.processed = 'N' and sel.isactive = 'Y')";

        if(acctSchema.getC_Currency_ID() != psel.getC_Currency_ID())	// Redmine 31562
        	sql += " AND i.C_Currency_ID = "+psel.getC_Currency_ID();
        
        //ZCOM379 Modif ci dessus 

        //	PaymentRule (optional)
        if (p_PaymentRule != null)
        {
            sql += " AND PaymentRule=?"; //	##
                                         //	OnlyDiscount
        }

        if (p_OnlyDiscount)
        {
            if (p_OnlyDue)
            {
                sql += " AND (";
            }
            else
            {
                sql += " AND ";
            }

            // On a remit la PLSQL 253 en 261
//            if (!CompiereVersion.matchVersion(CompiereVersion.VERSION_253))
//            {
//                sql += "paymentTermDiscount(invoiceOpen(C_Invoice_ID,0), C_PaymentTerm_ID, DateInvoiced, ?) > 0"; //	## ZCOM999
//            }
//            else
//            {
                sql += "paymentTermDiscount(invoiceOpen(C_Invoice_ID,0), C_Currency_ID, C_PaymentTerm_ID, DateInvoiced, ?) > 0"; //	## ZCOM999
//            }
        }

        //	OnlyDue
        if (p_OnlyDue)
        {
            if (p_OnlyDiscount)
            {
                sql += " OR ";
            }
            else
            {
                sql += " AND ";
            }

            //ZCOM379 sql += " (paymentTermDueDays(C_PaymentTerm_ID, DateInvoiced, ?) >= ? OR invoiceOpen(i.C_Invoice_ID, 0) < 0) ";	//	##
            //sql += " (Z_Invoice_DateDue(i.C_Invoice_ID) <= ? OR invoiceOpen(i.C_Invoice_ID, 0) < 0) "; //ZCOM379
            sql += " (TRUNC(i.DUEDATE) <= TRUNC(?) OR invoiceOpen(i.C_Invoice_ID, 0) < 0) ";
            
            if (p_OnlyDiscount)
            {
                sql += ")";
            }
        }

        //	Business Partner
        if (p_C_BPartner_ID != 0)
        {
            sql += " AND C_BPartner_ID=?"; //	##
                                           //	Business Partner Group
        }

        else if (p_C_BP_Group_ID != 0)
        {
            sql += (" AND EXISTS (SELECT * FROM C_BPartner bp " +
            "WHERE bp.C_BPartner_ID=i.C_BPartner_ID AND bp.C_BP_Group_ID=?)"); //	##
                                                                               //
                                                                               /*ZCOM266*/
        }

        if (p_ZSubPaymentRule_ID != 0)
        {
            sql += (" AND i.ZSubPaymentRule_ID = " + p_ZSubPaymentRule_ID);
        }
        //#39119
        if (p_DiscountDate != null)
        {
            sql += (" AND i.DiscountDate < = ?");
        }
        //
        
        //Redmine 57946
//        if (p_DocumentNoFrom!=null){
//        	sql += " AND EXISTS (SELECT 1 FROM ("+getOrderView(p_DocumentNoFrom)+") t WHERE i.C_Invoice_ID = t.C_Invoice_ID ";
//        	sql += "AND t.ROW_NUMBER >=(SELECT MAX(ROW_NUMBER) FROM ("+getOrderView(p_DocumentNoFrom)+") tt WHERE tt.DocumentNo=?)) ";
//        }
//        
//        if (p_DocumentNoTo!=null){
//        	sql += " AND EXISTS (SELECT 1 FROM ("+getOrderView(p_DocumentNoTo)+") t WHERE i.C_Invoice_ID = t.C_Invoice_ID ";
//        	sql += "AND t.ROW_NUMBER <=(SELECT MAX(ROW_NUMBER) FROM ("+getOrderView(p_DocumentNoTo)+") tt WHERE tt.DocumentNo=?)) ";
//        }
        if (p_DocumentNoFrom!=null && p_DocumentNoTo!=null){
        	sql += " AND i.documentNo BETWEEN ? and ? ";
        }
        else
        	if(p_DocumentNoFrom!=null && p_DocumentNoTo==null)
        		sql += " AND i.documentNo like ? ";
        	else if(p_DocumentNoFrom==null && p_DocumentNoTo!=null)
        		throw new CompiereException("L'intervalle de No piece n'est pas correcte.");
        //

        /*ZCOM266*/
        // ZCOM291  int lines = 0;
        lines = 0; // ZCOM291

        int C_CurrencyTo_ID = psel.getC_Currency_ID();
        PreparedStatement pstmt = null;

        try
        {
            pstmt = DB.prepareStatement(sql, get_TrxName());

            int index = 1;
            pstmt.setInt(index++, C_CurrencyTo_ID);
            pstmt.setTimestamp(index++, psel.getPayDate());
            //
            pstmt.setTimestamp(index++, psel.getPayDate());
            pstmt.setInt(index++, C_CurrencyTo_ID);
            pstmt.setTimestamp(index++, psel.getPayDate());
            //
            pstmt.setInt(index++, psel.getAD_Client_ID());

            if (p_PaymentRule != null)
            {
                pstmt.setString(index++, p_PaymentRule);
            }

            if (p_OnlyDiscount)
            {
                pstmt.setTimestamp(index++, psel.getPayDate());
            }

            //ZCOM379 if (p_OnlyDue) pstmt.setTimestamp(index++, psel.getPayDate());
            if (p_OnlyDue)
            {
                pstmt.setTimestamp(index++, p_DueDate); //ZCOM379
                                                        //ZCOM379
                                                        //			if (p_OnlyDue && p_DueDate != null) {
                                                        //				long nbrOfDays = 0;
                                                        //				if (p_DueDate != null) nbrOfDays = 
                                                        //					//ZCOM379 (p_DueDate.getTime() - psel.getPayDate().getTime()) / (24*60*60*1000);
                                                        //					(p_DueDate.getTime() - psel.getPayDate().getTime()) / (24*60*60*1000);
                                                        //				pstmt.setLong(index++,nbrOfDays);
                                                        //			}
            }

            if (p_C_BPartner_ID != 0)
            {
                pstmt.setInt(index++, p_C_BPartner_ID);
            }
            else if (p_C_BP_Group_ID != 0)
            {
                pstmt.setInt(index++, p_C_BP_Group_ID);
            }
            if (p_DiscountDate != null)
            {
            	pstmt.setTimestamp(index++, p_DiscountDate);
            }
            
            //Redmine 57946
//            if (p_DocumentNoFrom!=null){
//            	pstmt.setString(index++, p_DocumentNoFrom);
//            }
//            
//            if (p_DocumentNoTo!=null){
//            	pstmt.setString(index++, p_DocumentNoTo);
//            }
            if (p_DocumentNoFrom!=null && p_DocumentNoTo!=null){
            	pstmt.setString(index++, p_DocumentNoFrom);
            	pstmt.setString(index++, p_DocumentNoTo);
            }
            else
            	if(p_DocumentNoFrom!=null && p_DocumentNoTo==null)
            		pstmt.setString(index++, p_DocumentNoFrom+"%");
			//
			
            //
            ResultSet rs = pstmt.executeQuery();
            
            BigDecimal leaveToSel = new BigDecimal("0");									// EG60
            if (psel.get_ValueAsBD("MaxSelAmt") != null && psel.getTotalAmt() != null)		// EG60
            	leaveToSel = psel.get_ValueAsBD("MaxSelAmt").subtract(psel.getTotalAmt());	// EG60
            

            try {
				while (rs.next() && leaveToSel.compareTo(BigDecimal.ZERO) > 0)
				{
				    int C_Invoice_ID = rs.getInt(1);
				    MInvoice inv = new MInvoice(getCtx(), C_Invoice_ID, null);

				    //ZCOM279 Logging
				    if (log.isLoggable(Level.ALL))
				    {

				        if (inv != null)
				        {
				            log.fine("Invoice:" + inv.getDocumentNo() +
				                " Amount:" + inv.getOpenAmt());
				        }
				    }

				    //END OF LOGGING
				    BigDecimal PayAmt = rs.getBigDecimal(2);

				    if ((C_Invoice_ID == 0) ||
				            (PayAmt!=null && Env.ZERO.compareTo(PayAmt) == 0))
				    {
				        continue;
				    } 
				    
				    if ( leaveToSel.compareTo(PayAmt) < 0 ) continue;  // EG60 

				    BigDecimal DiscountAmt = rs.getBigDecimal(3);
				    String PaymentRule = rs.getString(4);
				    boolean isSOTrx = "Y".equals(rs.getString(5));
				    //

				    if (PayAmt==null)
				    	PayAmt = BigDecimal.ZERO;
				    
				    //ZCOM416 Ajout selection sur le montant limite
				    totAmt = totAmt.add(PayAmt);

				    if ((p_Montant.compareTo(Env.ZERO) > 0) &&
				            (totAmt.subtract(p_Montant).compareTo(Env.ZERO) > 0))
				    {
				        totAmt = totAmt.subtract(PayAmt);

				        break;
				    }

				    //ZCOM416
				    lines++;

				    if (!inv.isSOTrx())
				    	DiscountAmt = inv.get_ValueAsBD("escompte2");
				    if (DiscountAmt==null)
				    	DiscountAmt = BigDecimal.ZERO;
				    
				    MPaySelectionLine pselLine = new MPaySelectionLine(psel,
				            lines * 10, PaymentRule);
				    pselLine.setInvoice(C_Invoice_ID, isSOTrx, PayAmt,
				        PayAmt.subtract(DiscountAmt), DiscountAmt);
				    pselLine.set_ValueNoCheck("C_BPartner_ID", new Integer(rs.getInt(6))); //ZCOM577
				    //REdmine 18719
				    if (PayAmt.compareTo(BigDecimal.ZERO)==0){
				    	pselLine.setIsActive(false);
				    	pselLine.setDescription(Msg.getMsg(getCtx(), "PAYSELECTION_CURRENCY_RATE_ERROR"));
				    }
				    
				    leaveToSel = leaveToSel.subtract(PayAmt);  // EG60
				    
				    
				    
				    setCommunication(pselLine, inv);//27431
				    //#39119               
				    	pselLine.set_ValueNoCheck("DiscountDate", inv.get_ValueAsTimestamp("DiscountDate"));
				    	pselLine.set_ValueNoCheck("DueDate", inv.get_ValueAsTimestamp("DueDate"));
				    //#39119
				    /*ZCOM416** totAmt = totAmt.add(PayAmt); */
				    if (!pselLine.save())
				    {
				        pstmt.close();
				        throw new IllegalStateException(
				            "Cannot save MPaySelectionLine");
				    }
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            finally{
    			Util.closeCursor(pstmt, rs);
    		}
        }
        catch (Exception e)
        {
            log.log(Level.SEVERE, "doIt - " + sql, e);
        }

      
        //ZCOM279 Post Processing

        try
        {
            Class<?> clazz = Class.forName(
                    "com.audaxis.compiere.util.PaymentCheckProcessor");
            Object o = clazz.newInstance();
            Method m = clazz.getMethod("process",
                    new Class[]
                    {
                        Properties.class, MPaySelection.class, String.class,
                        int.class, Timestamp.class
                    });
            m.invoke(o,
                new Object[]
                {
                    getCtx(), psel, get_TrxName(),
                    new Integer(p_ZSubPaymentRule_ID), p_DueDate
                });
        }
        catch (Exception e)
        {
            log.warning("Payment CHeck Processor:" + e.getMessage());
        }
        
        //Redmine 17962
		PaymentCheckProcessor proc = new PaymentCheckProcessor();
		proc.setDispute(p_IncludeInDispute);
		proc.process(getCtx(), psel, get_Trx(), p_ZSubPaymentRule_ID, p_DueDate);
		//Redmine 17962
		
        //ZCOM291 return "@C_PaySelectionLine_ID@  - #" + lines;
        return "@C_PaySelectionLine_ID@  - #" + lines + "  Montant : " +
        totAmt; //ZCOM291
    } //	doIt

    //27431
    private void setCommunication(MPaySelectionLine pselLine, MInvoice inv) {

    	if(inv.isSOTrx()){
    		if(inv.get_ValueAsString("Z_Com") != null && inv.get_ValueAsString("Z_Com").length() > 0){
    			pselLine.set_ValueNoCheck("Z_Com", inv.get_ValueAsString("Z_Com"));
    			pselLine.set_ValueNoCheck("Z_IsStrd", true);
    		}else{
    			pselLine.set_ValueNoCheck("Z_Com", inv.getDocumentNo());
    			pselLine.set_ValueNoCheck("Z_IsStrd", false);
    		}
    	}else{
    		String paymentCommunicationStr = inv.get_ValueAsString("Z_PaymentCommunicationStr");

    		if(paymentCommunicationStr != null && paymentCommunicationStr.length() > 0){
    			pselLine.set_ValueNoCheck("Z_Com", paymentCommunicationStr);
    			pselLine.set_ValueNoCheck("Z_IsStrd", true);
    		}else{
    			if(inv.get_ValueAsString("Z_PaymentCommunication") != null && inv.get_ValueAsString("Z_PaymentCommunication").length() > 0)
    				pselLine.set_ValueNoCheck("Z_Com", inv.get_ValueAsString("Z_PaymentCommunication"));
    			else if(inv.getPOReference() != null && inv.getPOReference().length() > 0)
    				pselLine.set_ValueNoCheck("Z_Com", inv.getPOReference());
    			else 
    				pselLine.set_ValueNoCheck("Z_Com", inv.getDocumentNo());
    			
    			pselLine.set_ValueNoCheck("Z_IsStrd", false);	
    		}
    	}
    }
    //27431
    
    /**
     * permet de construire une view dynamique de l'ordre des factures
     * suivant le documentno et le parametre entré,
     * surtout quand le parametre n'existe pas comme documentno => il faut l'intégrer dans l'ordonnancement
     * @param documentno
     * @return
     */
    private String getOrderView(String documentno){
    	StringBuffer sql = new StringBuffer("SELECT * FROM (SELECT ROW_NUMBER() OVER (ORDER BY NLSSORT(documentno, 'NLS_SORT=BINARY')) ROW_NUMBER");
    	sql.append(", C_Invoice_ID, DocumentNo ");
    	sql.append("FROM (SELECT c_invoice_id, documentno FROM C_Invoice ");
    	sql.append("UNION ");
    	sql.append("SELECT 0, N'").append(documentno).append("' FROM DUAL) ");
    	sql.append("ORDER BY NLSSORT(documentno, 'NLS_SORT=BINARY'))");
    	
    	return sql.toString();
    }
} //	PaySelectionCreateFrom
