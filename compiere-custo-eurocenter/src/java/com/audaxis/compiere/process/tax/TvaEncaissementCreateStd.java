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
package com.audaxis.compiere.process.tax;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MTab;
import org.compiere.model.MTable;
import org.compiere.model.X_C_BankStatement;
import org.compiere.model.X_GL_Journal;
import org.compiere.model.X_Z_VAT_DECL_LINE;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MTvaAEncaissLine;

public class TvaEncaissementCreateStd extends TvaEncaissementCreate
{
    protected void prepare()
    {
        super.prepare();
        aEncaissement = false;
    }
   
    /*ZCOM949*/
    protected String doIt() throws Exception{
    	
    	// On supprime les lignes
    	//DB.executeUpdate(get_Trx(), 
        //        "delete from z_tvaaencaissline where z_tvaaencaissement_id = " +
        //        recordId);
        DB.executeUpdate(get_Trx(), 
                "delete from Z_VAT_DECL_LINE where IsManual = 'N' and z_tvaaencaissement_id = " +
                recordId);
    	//
        String ret = super.doIt();
        //String ret = null;
    	//debut Redmine 30135
        int no = 0;
        if (ret!=null && ret.contains("Nbr = "));
        	no = Integer.valueOf(ret.substring(ret.lastIndexOf(" ")+1, ret.length()));
        no += addOtherTaxs(X_GL_Journal.Table_Name);
        no += addOtherTaxs(X_C_BankStatement.Table_Name);
        ret = "Nbr = " + no;
        //fin Redmine 30135 
        
		StringBuffer sql = new StringBuffer("SELECT * from ZVAT_DECLARATION_PER_CLASS where Z_TvaAEncaissement_ID = ?" +
				" and IsActive = 'Y' ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1,recordId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				X_Z_VAT_DECL_LINE tvaClass = new X_Z_VAT_DECL_LINE(Env.getCtx(),0,get_TrxName());
				tvaClass.setClientOrg(getAD_Client_ID(), 0);
				tvaClass.setZ_TvaAEncaissement_ID(recordId);
				tvaClass.set_ValueNoCheck("ZClass", rs.getString("CLASS"));
				//tvaClass.setZClass(rs.getString("CLASS"));
				BigDecimal amt = rs.getBigDecimal("TaxBaseAmt");
				if(amt == null || amt.equals(Env.ZERO))
					amt = rs.getBigDecimal("TaxAmt");
				tvaClass.setIsManual(false);
				tvaClass.setAmt(amt);
			
				if(!tvaClass.save())
					throw new IllegalArgumentException(Msg.getMsg(getCtx(),"SaveError"));
				
				log.info("Classe = "+tvaClass.get_ValueAsString("ZClass")+" : Montant = "+tvaClass.getAmt());
				

				
			}
		} catch (Exception e) {
			log.log(Level.SEVERE, sql.toString(), e);
		} finally {
			Util.closeCursor(pstmt, rs);
		}
    	return ret;
    	
    }
    /*ZCOM949*/
    
    //Redmine 30135
	protected int addOtherTaxs(String tablename) {
		int no = 0;
		StringBuffer sql = new StringBuffer("SELECT fa.Record_ID, fa.line_ID, val.C_Tax_ID, fa.amtacctdr, fa.amtacctcr, ");
		sql.append("tln.line, fa.dateacct ");
		sql.append("FROM fact_acct fa ");
		sql.append("INNER JOIN Z_Vat_Acct_Link val ON (fa.account_ID=val.account_ID AND val.AD_Client_ID = fa.AD_Client_ID) ");
		sql.append("INNER JOIN ").append(tablename).append("Line tln ON (fa.line_ID = tln.").append(tablename).append("Line_ID) ");
		sql.append("WHERE fa.ad_table_id = ? AND TRUNC(fa.dateacct) >= TRUNC(?) AND TRUNC(fa.dateacct) <= TRUNC(?) ");
		sql.append("AND fa.ad_client_id = ? "); 
		if (adOrgId>0)
			sql.append("AND fa.AD_Org_ID=? ");
		sql.append("AND EXISTS (SELECT 1 FROM ").append(tablename).append(" t WHERE t.").append(tablename).append("_ID=fa.Record_ID AND t.DocStatus IN ('CO','CL','RE','VO')) ");
		sql.append("AND NOT EXISTS (SELECT 1 FROM z_tvaaencaissline l WHERE l.").append(tablename).append("Line_ID = fa.line_id)");

		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, MTable.get_Table_ID(tablename));
			ps.setTimestamp(2, dateAcctFrom);
			ps.setTimestamp(3, dateAcctTo);
			ps.setInt(4, getCtx().getAD_Client_ID());
			if (adOrgId>0)
				ps.setInt(5, adOrgId);
			rs = ps.executeQuery();
			while (rs.next()) {
				no++;
				int k = 1;
				int Record_ID = rs.getInt(k++);
				log.info(tablename +"_ID: " +Record_ID);
				
				int Line_ID = rs.getInt(k++);
				int C_Tax_ID = rs.getInt(k++);
				BigDecimal amtdr = rs.getBigDecimal(k++);
				BigDecimal amtcr = rs.getBigDecimal(k++);
				int line = rs.getInt(k++);
				Timestamp dateacct = rs.getTimestamp(k++);
				//
				MTvaAEncaissLine tvaln = new MTvaAEncaissLine(getCtx(), 0, get_Trx());
				tvaln.setZ_TvaAEncaissement_ID(recordId);
				tvaln.setClientOrg(getAD_Client_ID(), adOrgId);
				tvaln.set_Value("GL_JournalLine_ID", Line_ID);
				tvaln.setIsSOTrx(amtdr.compareTo(BigDecimal.ZERO)!=0 ? true : false);
				tvaln.setC_Tax_ID(C_Tax_ID);
				tvaln.setDateAcct(dateacct);
				tvaln.setLine(line);
				tvaln.setTaxAmt(amtdr.compareTo(BigDecimal.ZERO)!=0 ? amtdr : amtcr);
				tvaln.setGrandTotal(BigDecimal.ZERO);
				tvaln.setInvoiceAmt(BigDecimal.ZERO);
				tvaln.setTaxBaseAmt(BigDecimal.ZERO);
				//
				tvaln.save();
			}
		} catch (SQLException e) {
			log.log(Level.SEVERE, "E", e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		return no;
	}
	
}
