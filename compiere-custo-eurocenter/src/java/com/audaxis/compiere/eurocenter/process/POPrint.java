package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.framework.PrintInfo;
import org.compiere.framework.Query;
import org.compiere.model.X_C_Order;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.util.DB;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.util.CompiereException;

public class POPrint extends org.compiere.process.InvoicePrint {
	String newPath = null;
	String fileName = null;
	int invID = 0;
	int printFormat_ID = 0;
	MOrder ord;

	/**
	 * Perrform process.
	 * 
	 * @return Message
	 * @throws Exception
	 */

	protected void prepare() {

		newPath = "c:/tmp/";

		if (newPath == null) {
			throw new IllegalArgumentException(
					"Erreur EGGO_BARCODEDIR does not set");
		}
		File directory = new File(newPath);
		if (!directory.isDirectory()) {
			log.info("Error filePath for print barcode = :" + newPath
					+ " does not exist ");
			throw new IllegalArgumentException("Erreur FilePath for Barcode "
					+ newPath + " does not exist");
		}

		printFormat_ID = DB
				.getSQLValue(get_Trx(),
						"select ad_printformat_id from ad_printformat where name = 'POPRINT' ");
		if (printFormat_ID < 1) {
			throw new IllegalArgumentException(
					"No print format POPRINT was found ");
		}

	} // prepare

	protected String doIt() throws java.lang.Exception {
		String fileName = null;
		String cmd = null;
		String printerName = getCtx().getPrinterName();
		StringBuffer sql = new StringBuffer(
				"select C_Order_ID from POOrder ");
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			stmt = DB.prepareStatement(sql.toString(), null);
			rs = stmt.executeQuery();
			while (rs.next()) {

				MOrder ord = new MOrder(getCtx(), rs.getInt(1), get_Trx());
				fileName = newPath + "/" + ord.getDocumentNo() + "_"
						+ String.valueOf(System.currentTimeMillis()) + ".pdf";

				Query query = new Query("SQL View to print");
				query.addRestriction("C_Order_ID", Query.EQUAL,
						new Integer(rs.getInt(1)));

				// Engine
				PrintInfo info = new PrintInfo(ord.getDocumentNo(),
						X_C_Order.Table_ID, ord.get_ID(),
						ord.getC_BPartner_ID());
				MPrintFormat format = MPrintFormat.get(getCtx(),
						printFormat_ID, false);
				ReportEngine re = new ReportEngine(getCtx(), format, query,
						info);

				File fn = new File(fileName);
				// File temp = File.createTempFile(inv.getDocumentNo() + "_" +
				// String.valueOf(System.currentTimeMillis()), ".pdf");
				// temp.deleteOnExit();
				try {
					File pdfFile = re.getPDF();
					log.log(Level.INFO,
							"  Print  File : " + ord.getDocumentNo());
					copy(pdfFile, fn);
				} catch (IOException t) {
					throw new CompiereException(t.getMessage());
				}

			} // for all entries
		} catch (Exception e) {
			log.log(Level.SEVERE, sql.toString(), e);
			throw new Exception(e);
		} finally {
			rs.close();
			stmt.close();

		}

		return "Printed";
	} // doIt

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
