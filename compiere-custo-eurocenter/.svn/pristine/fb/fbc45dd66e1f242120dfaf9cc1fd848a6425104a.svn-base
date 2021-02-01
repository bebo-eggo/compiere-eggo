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

import org.compiere.model.MAccount;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAcctSchemaGL;
import org.compiere.model.MConversionType;
import org.compiere.model.MDocType;
import org.compiere.model.MJournal;
import org.compiere.model.MJournalBatch;
import org.compiere.model.MJournalLine;
import org.compiere.model.MOrg;
import org.compiere.model.MPeriod;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

import org.compiere.util.*;

import com.audaxis.compiere.db.Util;

import java.math.*;

import java.sql.*;

import java.text.SimpleDateFormat;

import java.util.logging.Level;


public class ZClotureComptable extends SvrProcess
{
    private int p_c_period_id = 0;
    private int p_acctschema_id = 0;
    private int p_c_elementvalue_id_from = 0;
    private int p_c_elementvalue_id_to = 0;
    private int p_c_elementvalue_id = 0;
    private int p_c_doctype_batch_id = 0;
    private int p_c_doctype_jrnl_id = 0;
    private int p_ad_org_id = 0;
    private MAcctSchema aS = null;
    private MAcctSchemaGL m_gl = null;
    private Timestamp p_date = null;

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
            else if (name.equals("C_Period_ID"))
            {
                p_c_period_id = para[i].getParameterAsInt();

                if (p_c_period_id != 0)
                {
                    MPeriod periode = new MPeriod(getCtx(), p_c_period_id, get_TrxName());
                    p_date = periode.getEndDate();
                }
            }
            else if (name.equals("C_ElementValue_ID_from"))
            {
                p_c_elementvalue_id_from = para[i].getParameterAsInt();
            }
            else if (name.equals("C_ElementValue_ID_to"))
            {
                p_c_elementvalue_id_to = para[i].getParameterAsInt();
            }
            else if (name.equals("C_ElementValue_ID"))
            {
                p_c_elementvalue_id = para[i].getParameterAsInt();
            }
            else if (name.equals("C_DocType_ID"))
            {
                p_c_doctype_batch_id = para[i].getParameterAsInt();
            }
            else if (name.equalsIgnoreCase("C_DocType_Jrnl_ID"))
            {
                p_c_doctype_jrnl_id = para[i].getParameterAsInt();
            }
            else if (name.equals("AD_Org_ID"))
            {
                p_ad_org_id = para[i].getParameterAsInt();
            }
            else if (name.equals("C_AcctSchema_ID"))
            {
                p_acctschema_id = para[i].getParameterAsInt();
            }
            else
            {
                log.severe("Unknown Parameter: " + name);
            }
        }

        aS = new MAcctSchema(getCtx(), p_acctschema_id, get_TrxName());

        String sql = "SELECT * FROM C_AcctSchema_GL WHERE C_AcctSchema_ID=?";
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try
        {
            pstmt = DB.prepareStatement(sql, get_TrxName());
            pstmt.setInt(1, p_acctschema_id);

            rs = pstmt.executeQuery();

            if (rs.next())
            {
                m_gl = new MAcctSchemaGL(getCtx(), rs, get_TrxName());
            }

            rs.close();
            pstmt.close();
            pstmt = null;
        }
        catch (SQLException e)
        {
            log.log(Level.SEVERE, "prepare", e);
        }
        finally 
        {
        	Util.closeCursor(pstmt, rs);
        }

        if (m_gl == null)
        {
            throw new IllegalStateException("No GL Definition for C_AcctSchema_ID=" + p_acctschema_id);
        }

        if ((p_c_elementvalue_id == 0) && (m_gl != null))
        {
            int p_validcombination_id = m_gl.getRetainedEarning_Acct();
            MAccount account = MAccount.get(getCtx(), p_validcombination_id);
            p_c_elementvalue_id = account.getAccount_ID();
        }

        if (p_c_elementvalue_id == 0)
        {
            log.severe("Compte Benefice/Perte non parametre");
            throw new IllegalStateException("Compte Benefice/Perte non parametre");
        }

        if ((p_c_period_id == 0) || (p_c_doctype_batch_id == 0) || (p_c_doctype_jrnl_id == 0))
        {
            log.severe("Les parametres periode et type de document sont obligatoires");
            throw new IllegalStateException("Les parametres periode et type de document sont obligatoires");
        }
    }

    protected String doIt() throws Exception
    {
        int l_per = 0;
        Timestamp l_date = null;

        // Test if all Periods are closed 
        String sql = "select pc.C_PeriodControl_ID, p.EndDate, pc.PeriodStatus from C_Period p , C_PeriodControl pc where p.PeriodType <> 'A' and p.C_Period_ID = pc.C_Period_ID " +
            "and p.Ad_Client_ID = ? " +
            "and p.EndDate <= ? and pc.PeriodStatus ='O' "+ 
            "and p.isActive = 'Y' and pc.IsActive = 'Y'";

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try
        {
            pstmt = DB.prepareStatement(sql, get_TrxName());
            pstmt.setInt(1, getCtx().getAD_Client_ID());
            pstmt.setTimestamp(2, p_date);

            rs = pstmt.executeQuery();

            while (rs.next())
            {
                l_per++;
                l_date = rs.getTimestamp(2);
            }
        }
        catch (Exception e)
        {
            log.log(Level.SEVERE, "doit " + sql, e);
        }
        finally {
        	Util.closeCursor(pstmt, rs);
        }

        if (l_per != 0)
        {
            SimpleDateFormat sdf = new SimpleDateFormat("EEE, d MMM yyyy, hh:mm aaa");

            return "Période " + sdf.format(l_date) + " ouverte, Toutes les périodes doivent être closes ! ";
        }

        sql = "select acct.c_elementvalue_id, "
        	+ " z_account_ending_balance(acct.ad_client_id, org.ad_org_id," 
        		+ p_acctschema_id + ", acct.c_elementvalue_id, " 
        		+ DB.TO_DATE(p_date) + "), " 
        	+ " org.ad_org_id " 
            + " from c_elementvalue acct, ad_org org "
        	+ " where acct.ad_client_id = ? and org.ad_client_id = ? and org.issummary = 'N' ";

        if (p_ad_org_id != 0)
        {
            sql += " and org.ad_org_id = ?";
        }

        if (p_c_elementvalue_id_from != 0)
        {
            sql += " and Z_Id_Cpt_To_Val(acct.c_elementvalue_id) >= Z_Id_Cpt_To_Val(?) ";
        }

        if (p_c_elementvalue_id_to != 0)
        {
            sql += "  and Z_Id_Cpt_To_Val(acct.c_elementvalue_id) <= Z_Id_Cpt_To_Val(?)";
        }

        sql += " order by org.value, acct.value ";

        int jl_lineno = 0;
        
        try
        {
            pstmt = DB.prepareStatement(sql, get_TrxName());
            int k = 1;
            pstmt.setInt(k++, getCtx().getAD_Client_ID());
            pstmt.setInt(k++, getCtx().getAD_Client_ID());

            if (p_ad_org_id != 0)
            {
                pstmt.setInt(k++, p_ad_org_id);
            }

            if (p_c_elementvalue_id_from != 0)
            {
                pstmt.setInt(k++, p_c_elementvalue_id_from);
            }

            if (p_c_elementvalue_id_to != 0)
            {
                pstmt.setInt(k++, p_c_elementvalue_id_to);
            }

            int account_id = 0;
            BigDecimal account_balance = Env.ZERO;
            int batch_org = 0;
            MJournalBatch JournalBatch = null;
            MJournal Journal = null;
            BigDecimal totamt = Env.ZERO;

            rs = pstmt.executeQuery();

            while (rs.next())
            {
                account_id = rs.getInt(1);
                account_balance = rs.getBigDecimal(2);
                batch_org = rs.getInt(3);

            	if (account_balance.compareTo(Env.ZERO) == 0)
                {
                    continue;
                }

                if ((JournalBatch != null) && (JournalBatch.getAD_Org_ID() != batch_org))
                {
                    if (Journal != null)
                    {
                        MAccount comptePerteBenefice = MAccount.get(getCtx(),
                        		getCtx().getAD_Client_ID(),
                                Journal.getAD_Org_ID(), p_acctschema_id,
                                p_c_elementvalue_id, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                0, 0, 0, 0, 0);
                        log.info("===========================================================");
                        log.info("Benefice Reporté -"
                    			+ " Org="+MOrg.get(getCtx(), Journal.getAD_Org_ID()).getValue()
                    			+ " Compte="+comptePerteBenefice.getAccount().getValue()
                    			+ " Montant="+totamt);
                        jl_lineno = createBeneficeLine(Journal, totamt, jl_lineno, comptePerteBenefice);
                    }
                    log.info("===========================================================");
                    JournalBatch = null;
                    Journal = null;
                    totamt = Env.ZERO;
                }

                totamt = totamt.add(account_balance);

                if (JournalBatch == null)
                {
                	log.info("OD Batch   -" + " Org="+MOrg.get(getCtx(), batch_org).getValue());
                    JournalBatch = new MJournalBatch(getCtx(), 0, get_TrxName());
                    JournalBatch.setDescription("Clôture Comptable " + p_date);
                    JournalBatch.setClientOrg(getCtx().getAD_Client_ID(), batch_org);
                    JournalBatch.setC_DocType_ID(p_c_doctype_batch_id);

                    MDocType jl_docType = MDocType.get(getCtx(), p_c_doctype_batch_id);
                    JournalBatch.setGL_Category_ID(jl_docType.getGL_Category_ID());
                    JournalBatch.setC_Period_ID(p_c_period_id);
                    JournalBatch.setDateAcct(p_date);
                    JournalBatch.setDateDoc(p_date);
                    JournalBatch.setC_Currency_ID(aS.getC_Currency_ID());
                    JournalBatch.save();

                    log.info("OD Journal -" + " Org="+MOrg.get(getCtx(), batch_org).getValue());
                    Journal = new MJournal(getCtx(), 0, get_TrxName());
                    Journal.setGL_JournalBatch_ID(JournalBatch.getGL_JournalBatch_ID());
                    Journal.setC_AcctSchema_ID(p_acctschema_id);
                    Journal.setClientOrg(getCtx().getAD_Client_ID(), batch_org);
                    Journal.setC_DocType_ID(p_c_doctype_jrnl_id);
                    Journal.setC_Period_ID(p_c_period_id);
                    Journal.setDescription(JournalBatch.getDescription());
                    jl_docType = MDocType.get(getCtx(), p_c_doctype_jrnl_id);
                    Journal.setGL_Category_ID(jl_docType.getGL_Category_ID());
                    Journal.setC_Currency_ID(aS.getC_Currency_ID());
                    Journal.setDateAcct(p_date);
                    Journal.setDateDoc(p_date);

                    int ConversionType_ID = MConversionType.getDefault(getCtx().getAD_Client_ID());

                    Journal.setC_ConversionType_ID(ConversionType_ID);
                    Journal.save();
                }

                MAccount compte = MAccount.get(getCtx(),
                		getCtx().getAD_Client_ID(), batch_org,
                        p_acctschema_id, account_id, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                        0, 0, 0, 0, 0);

                if ((compte != null) && (Journal != null))
                {
                    MJournalLine JournalLine = new MJournalLine(Journal);
                    jl_lineno = jl_lineno + 10;
                    JournalLine.setGL_Journal_ID(Journal.getGL_Journal_ID());
                    JournalLine.setLine(jl_lineno);
                    JournalLine.setC_ValidCombination_ID(compte.getC_ValidCombination_ID());
                    JournalLine.setC_Currency_ID(Journal.getC_Currency_ID());
                    JournalLine.setC_ConversionType_ID(Journal.getC_ConversionType_ID());
                    JournalLine.setClientOrg(Journal.getAD_Client_ID(), Journal.getAD_Org_ID());//#74215

                    if (account_balance.compareTo(Env.ZERO) < 0)
                    {
                        JournalLine.setAmtSourceDr(account_balance.abs());
                    }

                    if (account_balance.compareTo(Env.ZERO) > 0)
                    {
                        JournalLine.setAmtSourceCr(account_balance.abs());
                    }

                    JournalLine.setDateAcct(p_date);
                    JournalLine.save();
                }
            } // while rs.next

            if (Journal != null)
            {
                MAccount comptePerteBenefice = MAccount.get(getCtx(),
                		getCtx().getAD_Client_ID(), Journal.getAD_Org_ID(),
                        p_acctschema_id, p_c_elementvalue_id, 0, 0, 0, 0, 0, 0,
                        0, 0, 0, 0, 0, 0, 0, 0);

                if (comptePerteBenefice != null)
                {
                    jl_lineno = createBeneficeLine(Journal, totamt, jl_lineno, comptePerteBenefice);
                }
            }
        }
        catch (Exception e)
        {
            log.log(Level.SEVERE,
                "doit " + sql + "p_acctschema_id " + p_acctschema_id + "/" +
                "p_date " + p_date + "/  p_ad_org_id" + p_ad_org_id +
                "/ p_c_elementvalue_id_from " + p_c_elementvalue_id_from +
                "/ p_c_elementvalue_id_to " + p_c_elementvalue_id_to, e);
        }
        finally {
        	Util.closeCursor(pstmt, rs);
        }

        
        return (jl_lineno / 10) + " lignes de Cloture Annuelle génerées";
    }

    /**
     * @param Journal
     * @param totamt
     * @param jl_lineno
     * @param comptePerteBenefice
     * @return
     */
    private int createBeneficeLine(MJournal Journal, BigDecimal totamt, int jl_lineno, MAccount comptePerteBenefice)
    {
    	MJournalLine JournalLine = new MJournalLine(Journal);
        jl_lineno = jl_lineno + 10;
        JournalLine.setAD_Org_ID(Journal.getAD_Org_ID());
        JournalLine.setGL_Journal_ID(Journal.getGL_Journal_ID());
        JournalLine.setLine(jl_lineno);
        JournalLine.setC_Currency_ID(Journal.getC_Currency_ID());
        JournalLine.setC_ConversionType_ID(Journal.getC_ConversionType_ID());
        JournalLine.setC_ValidCombination_ID(comptePerteBenefice.getC_ValidCombination_ID());

        if (totamt.compareTo(Env.ZERO) > 0)
        {
            JournalLine.setAmtSourceDr(totamt.abs());
        }

        if (totamt.compareTo(Env.ZERO) < 0)
        {
            JournalLine.setAmtSourceCr(totamt.abs());
        }

        JournalLine.setDateAcct(p_date);
        JournalLine.save();

        return jl_lineno;
    }
    
}
