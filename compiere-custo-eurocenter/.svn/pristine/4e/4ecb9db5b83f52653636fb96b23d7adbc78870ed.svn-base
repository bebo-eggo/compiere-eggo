package com.audaxis.compiere.eurocenter.process;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Level;

import org.compiere.framework.PrintInfo;
import org.compiere.framework.Query;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.X_C_Invoice;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;

import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.util.CompiereException;
import com.ecenter.compiere.util.EggoCtx;


public class InvoicePOBarCode extends org.compiere.process.InvoicePrint {
	String newPath= null;
	String fileName = null;
	int invID = 0;
	int printFormat_ID = 0;
	MInvoice inv;
	/**
	 *  Perrform process.
	 *  @return Message
	 *  @throws Exception
	 */

	protected void prepare()
	{
			invID = getRecord_ID();
			if (invID == 0){
				ProcessInfoParameter[] para = getParameter();
				for (ProcessInfoParameter element : para) {
					String name = element.getParameterName();
					if (element.getParameter() == null && element.getParameter_To() == null)
						;
					else if (name.equals("C_Invoice_ID"))
						invID = (Integer)element.getParameter();
					else
						log.log(Level.SEVERE, "Unknown Parameter: " + name);
				}
			}
			if (invID > 0)
				inv = new MInvoice(getCtx(),invID,get_Trx());
//			EggoCtx.setConstants();
			
			MClient client = MClient.get(getCtx(), getAD_Client_ID());
			MClientProxy clientProxy = new MClientProxy(client);
			String EGGO_BARCODEDIR = clientProxy.getParameter("EGGOBARCODEDIR");
			String EGGO_BARCODEFORMAT = clientProxy.getParameter("EGGOBARCODEFORMAT");
			
			newPath = EGGO_BARCODEDIR;
			if ( newPath == null ){
				throw new IllegalArgumentException("Erreur EGGO_BARCODEDIR does not set");
			}
			File directory = new File(newPath);
			if ( ! directory.isDirectory() ){
				log.info("Error filePath for print barcode = :"+ newPath + " does not exist " );
				throw new IllegalArgumentException("Erreur FilePath for Barcode " + newPath + " does not exist");
			}
			fileName = newPath + "/" + inv.getDocumentNo() + "_" + String.valueOf(System.currentTimeMillis()) + ".pdf";
			
			
			printFormat_ID = DB.getSQLValue(get_Trx(), "select ad_printformat_id from ad_printformat where name = ? and AD_Client_ID = "+inv.getAD_Client_ID(), EGGO_BARCODEFORMAT);
			if (printFormat_ID < 1)
			{
				throw new IllegalArgumentException("No print format " + EGGO_BARCODEFORMAT + " was found ");
			}


	}	//	prepare



	protected String doIt() throws java.lang.Exception
	{
		String fileName = null; 
		String cmd = null;
		String printerName = getCtx().getPrinterName();


		Query query = new Query("SQL View to print");
		query.addRestriction("C_Invoice_ID", Query.EQUAL, new Integer(invID));

		//	Engine
		PrintInfo info = new PrintInfo(
				inv.getDocumentNo(),
				X_C_Invoice.Table_ID,
				inv.get_ID(),
				inv.getC_BPartner_ID());
		MPrintFormat format = MPrintFormat.get (getCtx(), printFormat_ID, false);
		ReportEngine re = new ReportEngine(getCtx(), format, query, info);

		File fn = new File(fileName);
//		File temp = File.createTempFile(inv.getDocumentNo() + "_" + String.valueOf(System.currentTimeMillis()), ".pdf");
//		temp.deleteOnExit();
		try
		{
			File pdfFile = re.getPDF();
			log.log(Level.INFO, "  Print Barcode File : " + inv.getDocumentNo() );
			copy(pdfFile,fn);
		} catch (IOException t) {throw new CompiereException(t.getMessage()); }
		

		return "BarCode Printed";
	}	//	doIt





	
	// Copies src file to dst file.
	// If the dst file does not exist, it is created
	void copy(File src, File dst) throws IOException {
		InputStream in = new FileInputStream(src);
		OutputStream out = new FileOutputStream(dst);

		// Transfer bytes from in to out
		byte[] buf = new byte[1024];
		int len;
		while ((len = in.read(buf)) > 0) {
			out.write(buf, 0, len);
		}
		in.close();
		out.close();
	}
}
