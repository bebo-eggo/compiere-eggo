package com.audaxis.compiere.model;

import java.math.BigDecimal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.api.UICallout;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MClientInfo;
import org.compiere.model.MInvoice;
import org.compiere.model.MPaySelection;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import com.audaxis.compiere.db.Util;

public class MPaySelectionLine extends org.compiere.model.MPaySelectionLine {

	/** Logger for class MPaySelectionLine */
    protected static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MPaySelectionLine.class);
    
	public MPaySelectionLine(Ctx ctx, int C_PaySelectionLine_ID, Trx trx) {
		super(ctx, C_PaySelectionLine_ID, trx);
	}
	
	public MPaySelectionLine(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}
	
	/**
	 * 	Set Invoice - Callout
	 *	@param oldC_Invoice_ID old BP
	 *	@param newC_Invoice_ID new BP
	 *	@param windowNo window no
	 */
	@UICallout public void setC_Invoice_ID (String oldC_Invoice_ID, 
			String newC_Invoice_ID, int windowNo) throws Exception
	{
		if (newC_Invoice_ID == null || newC_Invoice_ID.length() == 0)
			return;
		int C_Invoice_ID = Integer.parseInt(newC_Invoice_ID);
		//  reset as dependent fields get reset
		//p_changeVO.setContext(getCtx(), windowNo, "C_Invoice_ID", C_Invoice_ID);
		getCtx().setContext(windowNo, "C_Invoice_ID", C_Invoice_ID);
		getCtx().setContext(windowNo,"FromC_invoice", "Y");		
		setC_Invoice_ID(C_Invoice_ID);
		if (C_Invoice_ID == 0)
		{
			setPayAmt(Env.ZERO);
			setDiscountAmt(Env.ZERO);
			setDifferenceAmt(Env.ZERO);
			return;
		}

		int C_BankAccount_ID = getCtx().getContextAsInt(windowNo, "C_BankAccount_ID");
		Timestamp PayDate = new Timestamp(getCtx().getContextAsTime(windowNo, "PayDate"));

		BigDecimal OpenAmt = Env.ZERO;
		BigDecimal DiscountAmt = Env.ZERO;
		boolean IsSOTrx = Boolean.FALSE;
		String sql = "SELECT currencyConvert(invoiceOpen(i.C_Invoice_ID, 0), i.C_Currency_ID,"
				+ "ba.C_Currency_ID, i.DateInvoiced, i.C_ConversionType_ID, i.AD_Client_ID, i.AD_Org_ID),"
			+ " paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?), i.IsSOTrx " // #1
			+ "FROM C_Invoice_v i, C_BankAccount ba "
			+ "WHERE i.C_Invoice_ID=? AND ba.C_BankAccount_ID=?";	//	#2..3
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setTimestamp(1, PayDate);
			pstmt.setInt(2, C_Invoice_ID);
			pstmt.setInt(3, C_BankAccount_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				OpenAmt = rs.getBigDecimal(1);
				DiscountAmt = rs.getBigDecimal(2);
				IsSOTrx = "Y".equals(rs.getString(3));
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			Util.closeCursor(pstmt, rs);
		}
		
		
		//debut Redmine 18828: SC1277
		MInvoice invoice = new MInvoice(getCtx(),C_Invoice_ID , null);
        set_Value("POReference",invoice.get_Value("POReference"));
        //fin Redmine 18828: SC1277
      //#39119		
		// Overwrite DiscountAmt from C_Invoice for Vendor
        if (!invoice.isSOTrx())
        {
	        DiscountAmt = invoice.get_ValueAsBD("escompte2");
	    	set_ValueNoCheck("DiscountDate", invoice.get_ValueAsTimestamp("DiscountDate"));
	    	set_ValueNoCheck("DueDate", invoice.get_ValueAsTimestamp("DueDate"));
        }
    //#39119	
		log.fine(" - OpenAmt=" + OpenAmt + " (Invoice=" + C_Invoice_ID + ",BankAcct=" + C_BankAccount_ID + ")");
		setInvoice(C_Invoice_ID, IsSOTrx, OpenAmt, OpenAmt.subtract(DiscountAmt), DiscountAmt);
	}	//	setC_Invoice_ID
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		MPaySelection psel = new MPaySelection(getCtx(), getC_PaySelection_ID(),get_Trx());
	    MClientInfo clientInfo = MClientInfo.get(getCtx());
	    MAcctSchema acctSchema = clientInfo.getMAcctSchema1();
		MInvoice inv = getInvoice();
		if(psel.getC_Currency_ID() != acctSchema.getC_Currency_ID() && inv.getC_Currency_ID() != psel.getC_Currency_ID()){  // Redmine 31562
			log.saveError("Error",Msg.getMsg(getCtx(), "RE_PSL_CUR_INV"));
			return false;
		}
		//#39119		
        	set_ValueNoCheck("DiscountDate", inv.get_ValueAsTimestamp("DiscountDate"));
        	set_ValueNoCheck("DueDate", inv.get_ValueAsTimestamp("DueDate"));

        //#39119	
		return super.beforeSave(newRecord);
	}	//	beforeSave

}
