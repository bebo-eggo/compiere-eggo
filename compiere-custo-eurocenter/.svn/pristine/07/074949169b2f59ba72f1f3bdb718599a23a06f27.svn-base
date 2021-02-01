package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.apache.commons.io.FileUtils;
import org.compiere.model.MInvoice;
import org.compiere.model.MProductPrice;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;

import com.audaxis.compiere.sync.proxy.MInvoiceProxy;
import com.audaxis.compiere.util.CompiereException;

public class CorrUnvXML extends SvrProcess {

	public CorrUnvXML() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub

	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String sql = "Select C_Invoice_ID from C_Invoice where XX_VALIDATEBY_ID is null and ISSOTRX = 'N' and AD_CLIENT_ID = 1000000 and (documentNo like 'ACE%' OR documentNo like 'NCACE%')";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//EC16
		try {
		// Loop through records
		pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
		rs = pstmt.executeQuery();
		int oldmplv = 0;
		ArrayList<MProductPrice> oldmppx = null;
		while(rs.next())
		{
			MInvoice mi = new MInvoice(getCtx(), rs.getInt(1), get_Trx());
			if(mi.get_Value("ZZ_FileName") != null )
			{
				File file = new File((String) mi.get_Value("ZZ_FileName"));
				File dir = new File(Msg.getMsg(getCtx(), "EC_INVOICE_PDF_OUT")); 
				
				if(file.exists() && dir.exists())
				{
					try{
						if(!(new File(dir, "A"+mi.getC_Invoice_ID()+"Z.pdf")).exists())
						{
							FileUtils.copyFile(file, new File(dir, "A"+mi.getC_Invoice_ID()+"Z.pdf"));
							FileUtils.deleteQuietly(file);
						}else
							FileUtils.deleteQuietly(file);
					//boolean success = file.renameTo(); 
					}catch (Exception e) {
						throw new CompiereException("File not moved from ("+(String) mi.get_Value("ZZ_FileName")+")");
					}			
				}
			}
		}
		}catch (Exception e) {
			 log.log(Level.SEVERE, "Import price list - " + sql.toString(), e);
		 }
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt); 
			}
		return "OK";
	}
}
