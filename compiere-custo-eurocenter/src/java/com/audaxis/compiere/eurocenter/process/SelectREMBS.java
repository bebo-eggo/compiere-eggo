package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.logging.Level;

import org.compiere.db.QueryUtil;
import org.compiere.model.MBPBankAccount;
import org.compiere.model.MOrder;
import org.compiere.model.X_XX_REMB_CLIENTS;
import org.compiere.model.X_XX_REMB_SELECTION;
import org.compiere.model.X_XX_REMB_SEL_LIGNE;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.process.SvrProcessExtended;

public class SelectREMBS extends SvrProcessExtended {

	private int selectRembs_ID = 0;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		selectRembs_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		String pattern = "dd/MM/yyyy";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		// TODO Auto-generated method stub
		X_XX_REMB_SELECTION sel = new X_XX_REMB_SELECTION(getCtx(), selectRembs_ID, get_Trx());
		String sql = "Select * from XX_REMB_CLIENTS where PROCESSED = 'N' and AD_CLIENT_ID = ? and IsActive = 'Y' ";
		PreparedStatement pstmt =  DB.prepareStatement(sql, get_Trx());
		int index = 1;
        pstmt.setInt(index++, sel.getAD_Client_ID());
		
		ResultSet rs = pstmt.executeQuery();
		int nbRemb = 0;
        try
        {
            pstmt = DB.prepareStatement(sql, get_TrxName());
            while (rs.next())
            {
            	X_XX_REMB_CLIENTS cli = new X_XX_REMB_CLIENTS(getCtx(), rs, get_Trx());
            	MOrder mo = new MOrder(getCtx(), cli.getC_Order_ID(), get_Trx());
            	MDocTypeInfo mdi = MDocTypeInfo.get(getCtx(), mo.getC_DocType_ID(), get_Trx()) ;
            	if(mdi !=null && mdi.isDevis())
            		continue;
            	X_XX_REMB_SEL_LIGNE l = new X_XX_REMB_SEL_LIGNE(getCtx(), 0, get_Trx());
            	l.setXX_REMB_SELECTION_ID(selectRembs_ID);
            	l.setAD_Org_ID(cli.getAD_Org_ID());
            	l.setIBAN(cli.getIBAN());
            	l.setBBAN(cli.getBBAN());
            	l.setMONTANT(cli.getMONTANT());
            	l.setC_Order_ID(cli.getC_Order_ID());
            	l.setC_Invoice_ID(cli.getC_Invoice_ID());
            	l.setC_BPartner_ID(mo.getC_BPartner_ID());
            	l.setXX_REMB_CLIENTS_ID(cli.getXX_REMB_CLIENTS_ID());
            	l.setAccountNo(DB.getSQLValueString(get_Trx(), "select IBAN from (Select IBAN from C_BP_BANKACCOUNT where C_BPartner_ID = ? and IsActive='Y' ORDER BY UPDATED DESC) where rownum = 1", mo.getC_BPartner_ID()));
            	if(l.save()){
            		cli.setProcessed(true);
            		cli.setName(sel.getDocumentNo()+"-"+simpleDateFormat.format(sel.getDateTrx()));
            		cli.save();
            	}
            	nbRemb++;
            }
        }
        catch (Exception e)
        {
            log.log(Level.SEVERE, "doIt - " + sql, e);
        }
        finally {
			Util.closeCursor(pstmt, rs);
		}
        
		return "Nombre de remboursements clients : "+nbRemb;
	}

}
