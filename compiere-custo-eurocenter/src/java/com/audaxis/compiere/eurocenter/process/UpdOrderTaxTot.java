package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.DB;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.process.SvrProcessExtended;

public class UpdOrderTaxTot extends SvrProcessExtended {
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


	} // prepare

	protected String doIt() throws java.lang.Exception {
		String fileName = null;
		String cmd = null;
		String printerName = getCtx().getPrinterName();
		StringBuffer sql = new StringBuffer(
				"select C_Order_ID from T_Order_ToCalc ");
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			stmt = DB.prepareStatement(sql.toString(), null);
			rs = stmt.executeQuery();
			while (rs.next()) {

				MOrder ord = new MOrder(getCtx(), rs.getInt(1), get_Trx());
				ord.retaxIt();
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


}
