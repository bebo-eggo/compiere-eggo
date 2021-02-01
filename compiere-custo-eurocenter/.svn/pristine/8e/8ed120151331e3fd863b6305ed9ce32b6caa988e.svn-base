package com.audaxis.compiere.pos.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.compiere.framework.PO;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;
/**
 * POS ALLOCATION FLOW
 * @author DHO,BBR
 *
 */
public class POSAllocationFlow {

	private Trx trx;
	private Ctx ctx;
	
	public POSAllocationFlow(Ctx ctx,Trx trx) {
		this.ctx=ctx;
		this.trx=trx;
	}
	
	public boolean invoiceAllocate(int C_Invoice_ID){
		ArrayList<VInvoiceAllocate> invoiceList = new ArrayList<VInvoiceAllocate>();
		VInvoiceAllocate invToAlloc = new VInvoiceAllocate(C_Invoice_ID, ctx, trx);
		invoiceList.add(invToAlloc);
		ArrayList<VPaymentAllocate> paymentList =getPaymentsToAllocate(invToAlloc.getInvoice().getC_Order_ID(),0);
		if(allocate(invoiceList, paymentList) && invToAlloc.getOpenAmt().compareTo(BigDecimal.ZERO) != 0){
			ArrayList<VInvoiceAllocate> invoiceList2 =getInvoicesToAllocate(invToAlloc.getInvoice().getC_Order_ID(),invToAlloc.getInvoice().getC_Invoice_ID());
			allocateInvInv(invoiceList, invoiceList2);
		}
		return true; 
	}
	
	public boolean paymentAllocate(int C_Payment_id){
		ArrayList<VPaymentAllocate> paymentList = new ArrayList<VPaymentAllocate>();
		VPaymentAllocate payToAlloc = new VPaymentAllocate(C_Payment_id, ctx, trx);
		paymentList.add(payToAlloc);
		ArrayList<VInvoiceAllocate> invoiceList =getInvoicesToAllocate(payToAlloc.getPayment().getC_Order_ID(),0);
		if(allocate(invoiceList, paymentList) && payToAlloc.getOpenAmt().compareTo(BigDecimal.ZERO) != 0){
			ArrayList<VPaymentAllocate> paymentList2 =getPaymentsToAllocate(payToAlloc.getPayment().getC_Order_ID(),payToAlloc.getPayment().getC_Payment_ID());
			allocatePayPay(paymentList, paymentList2);
		}
		return true;
	}
	
	private boolean allocate(ArrayList<VInvoiceAllocate> invoiceList,ArrayList<VPaymentAllocate> paymentList){
		MAllocationHdr alloc = null;
		boolean isAllPaymentsAllocated = false;
		for (int i = 0; i < invoiceList.size() && !isAllPaymentsAllocated; i++) {
			VInvoiceAllocate inv = invoiceList.get(i);
			boolean isInvAllocated = false;
			for (int j = 0; j < paymentList.size() && !isInvAllocated; j++) {
				VPaymentAllocate pay = paymentList.get(j);
				if (pay.getOpenAmt().signum() != inv.getOpenAmt().signum() )
					continue;
				BigDecimal toAllocate = (pay.getOpenAmt().signum() > 0) ? pay.getOpenAmt().min(inv.getOpenAmt()) : pay.getOpenAmt().max(inv.getOpenAmt());
				if (toAllocate.compareTo(BigDecimal.ZERO) != 0)
				{	
					if(alloc == null)
						alloc = createAllocationHdr(inv.getInvoice());
					MAllocationLine line = createAllocationLine(alloc, inv.getInvoice().getC_Invoice_ID(),pay.getPayment().getC_Payment_ID(),inv.getInvoice().getC_BPartner_ID(),toAllocate);
					if (line != null) {
						pay.setOpenAmt(pay.getOpenAmt().subtract(toAllocate));
						if(pay.getOpenAmt().compareTo(BigDecimal.ZERO) == 0){
							paymentList.remove(j);
							if(paymentList.size() == 0)
								isAllPaymentsAllocated = true;
							j--;
						}
						inv.setOpenAmt(inv.getOpenAmt().subtract(toAllocate));
						if(inv.getOpenAmt().compareTo(BigDecimal.ZERO) == 0){
							isInvAllocated = true;
							invoiceList.remove(i);
							i--;
						}
					}
				}
				
			}
		}
		
		if(alloc != null){
			boolean successInv = DocumentEngine.processIt(alloc, DocActionConstants.ACTION_Complete);
			if (!successInv) throw new CompiereException(alloc.getProcessMsg());
			alloc.save();
		}
		return true;
	}
	
	private boolean allocateInvInv(ArrayList<VInvoiceAllocate> invoiceList,ArrayList<VInvoiceAllocate> invoiceList2){
		MAllocationHdr alloc = null;
		boolean isAllInvoiceAllocated = false;
		for (int i = 0; i < invoiceList.size() && !isAllInvoiceAllocated; i++) {
			VInvoiceAllocate inv = invoiceList.get(i);
			boolean isInvAllocated = false;
			for (int j = 0; j < invoiceList2.size() && !isInvAllocated; j++) {
				VInvoiceAllocate inv2 = invoiceList2.get(j);
				if (inv2.getOpenAmt().signum() == inv.getOpenAmt().signum() )
					continue;
				BigDecimal toAllocate = inv2.getOpenAmt().abs().min(inv.getOpenAmt().abs());
				if (toAllocate.compareTo(BigDecimal.ZERO) != 0)
				{	
					if(alloc == null)
						alloc = createAllocationHdr(inv.getInvoice());
					MAllocationLine line = createAllocationLine(alloc, inv.getInvoice().getC_Invoice_ID(),0,inv.getInvoice().getC_BPartner_ID(),inv.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate());
					if(line != null){
						inv.setOpenAmt(inv.getOpenAmt().subtract(inv.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate()));
						if(inv.getOpenAmt().compareTo(BigDecimal.ZERO) == 0){
							isInvAllocated = true;
							invoiceList.remove(i);
							i--;
						}
					}
					MAllocationLine line2 = createAllocationLine(alloc, inv2.getInvoice().getC_Invoice_ID(),0,inv.getInvoice().getC_BPartner_ID(),inv2.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate());
					if(line2 != null){
						inv2.setOpenAmt(inv2.getOpenAmt().subtract(inv2.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate()));
						if(inv2.getOpenAmt().compareTo(BigDecimal.ZERO) == 0){
							invoiceList2.remove(j);
							if(invoiceList2.size() == 0)
								isAllInvoiceAllocated = true;
							j--;
						}
					}
				}
				
			}
		}
		
		if(alloc != null){
			boolean successInv = DocumentEngine.processIt(alloc, DocActionConstants.ACTION_Complete);
			if (!successInv) throw new CompiereException(alloc.getProcessMsg());
			alloc.save();
		}
		return true;
	}
	
	private boolean allocatePayPay(ArrayList<VPaymentAllocate> paymentList,ArrayList<VPaymentAllocate> paymentList2){
		MAllocationHdr alloc = null;
		boolean isAllPaymentsAllocated = false;
		for (int i = 0; i < paymentList.size() && !isAllPaymentsAllocated; i++) {
			VPaymentAllocate pay = paymentList.get(i);
			boolean isPayAllocated = false;
			for (int j = 0; j < paymentList2.size() && !isPayAllocated; j++) {
				VPaymentAllocate pay2 = paymentList2.get(j);
				if (pay2.getOpenAmt().signum() == pay.getOpenAmt().signum() )
					continue;
				BigDecimal toAllocate = pay2.getOpenAmt().abs().min(pay.getOpenAmt().abs());
				if (toAllocate.compareTo(BigDecimal.ZERO) != 0)
				{	
					if(alloc == null)
						alloc = createAllocationHdr(pay.getPayment());
					MAllocationLine line = createAllocationLine(alloc,0,pay.getPayment().getC_Payment_ID(),pay.getPayment().getC_BPartner_ID(),pay.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate());
					if(line != null){
						pay.setOpenAmt(pay.getOpenAmt().subtract(pay.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate()));
						if(pay.getOpenAmt().compareTo(BigDecimal.ZERO) == 0){
							isPayAllocated = true;
							paymentList.remove(i);
							i--;
						}
					}
					MAllocationLine line2 = createAllocationLine(alloc,0,pay2.getPayment().getC_Payment_ID(),pay2.getPayment().getC_BPartner_ID(),pay2.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate());
					if(line2 != null){
						pay2.setOpenAmt(pay2.getOpenAmt().subtract(pay2.getOpenAmt().signum() == 1 ? toAllocate : toAllocate.negate()));
						if(pay2.getOpenAmt().compareTo(BigDecimal.ZERO) == 0){
							paymentList2.remove(j);
							if(paymentList2.size() == 0)
								isAllPaymentsAllocated = true;
							j--;
						}
					}
				}
				
			}
		}
		
		if(alloc != null){
			boolean successInv = DocumentEngine.processIt(alloc, DocActionConstants.ACTION_Complete);
			if (!successInv) throw new CompiereException(alloc.getProcessMsg());
			alloc.save();
		}
		return true;
	}
	
	private MAllocationHdr createAllocationHdr(PO po) {
		Timestamp toDay = new Timestamp(System.currentTimeMillis());
		
		MAllocationHdr alloc = new MAllocationHdr(ctx,0,trx);
		alloc.setAD_Client_ID(po.getAD_Client_ID());
		alloc.setAD_Org_ID(po.getAD_Org_ID());
		
		alloc.setDateTrx(toDay);
		alloc.setDateAcct(toDay);
		alloc.setC_Currency_ID(po.get_ValueAsInt("C_Currency_ID"));
		alloc.setApprovalAmt(BigDecimal.ZERO);
		alloc.setDocStatus("DR");
		alloc.setDocAction("CO");
		alloc.setIsActive(true);
		alloc.setProcessed(false);
		alloc.setProcessing(true);
		alloc.setPosted(false);
		alloc.save();
		
		return alloc;
	}
	
	private MAllocationLine createAllocationLine(MAllocationHdr alloc, int C_Invoice_ID, int C_Payment_ID, int C_BPartner_ID, BigDecimal amtToAllocate) {

		MAllocationLine line = new MAllocationLine(alloc);
		
		line.setC_BPartner_ID(C_BPartner_ID);
		if(C_Payment_ID > 0)
			line.setC_Payment_ID(C_Payment_ID);
		if(C_Invoice_ID > 0)
			line.setC_Invoice_ID(C_Invoice_ID);
		line.setDiscountAmt(BigDecimal.ZERO);
		line.setWriteOffAmt(BigDecimal.ZERO);
		line.setOverUnderAmt(BigDecimal.ZERO);
		line.setDateTrx(new Timestamp(System.currentTimeMillis()));
		line.setAmount(amtToAllocate);
		line .setIsManual(false);
		line.save();
		
		return line;
	}
	
	private ArrayList<VPaymentAllocate> getPaymentsToAllocate(int c_order_id,int rejectC_Payment_ID){
		int origOrder_id = DB.getSQLValue(trx,"SELECT C_ORDER_ID FROM C_ORDER WHERE DOCUMENTNO=(SELECT Z_ORIGORDER FROM C_ORDER WHERE C_ORDER_ID=?)",c_order_id);
		ArrayList<VPaymentAllocate> paymentList = new ArrayList<VPaymentAllocate>();
		
		StringBuffer sql = new StringBuffer("SELECT C_PAYMENT_ID FROM C_PAYMENT WHERE ");
		if(origOrder_id > 0)
			sql.append("C_ORDER_ID in (?,?) ");
		else
			sql.append("C_ORDER_ID=? ");
		if(rejectC_Payment_ID > 0)
			sql.append("AND C_PAYMENT_ID <> ? ");
		sql.append("AND PAYMENTAVAILABLE(C_PAYMENT_ID) <> 0");
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			int index = 1;
			pst = DB.prepareStatement(sql.toString(),trx);
			pst.setInt(index++,c_order_id);
			if(origOrder_id > 0)
				pst.setInt(index++,origOrder_id);
			if(rejectC_Payment_ID > 0)
				pst.setInt(index++,rejectC_Payment_ID);
			rs = pst.executeQuery();
			while(rs.next())
			{
				VPaymentAllocate payAlloc = new VPaymentAllocate(rs.getInt(1), ctx, trx);
				paymentList.add(payAlloc);
			}

		}catch (Exception e){
			throw new CompiereException(e.getMessage());
		}				
		finally{
			Util.closeCursor(pst, rs);
		}
		
		return paymentList;
	}
	
	private ArrayList<VInvoiceAllocate> getInvoicesToAllocate(int c_order_id,int rejectC_Invoice_ID){
		int origOrder_id = DB.getSQLValue(trx,"SELECT C_ORDER_ID FROM C_ORDER WHERE DOCUMENTNO=(SELECT Z_ORIGORDER FROM C_ORDER WHERE C_ORDER_ID=?)",c_order_id);
		ArrayList<VInvoiceAllocate> invoiceList = new ArrayList<VInvoiceAllocate>();
		
		StringBuffer sql = new StringBuffer("SELECT C_INVOICE_ID FROM C_INVOICE WHERE ");
		if(origOrder_id > 0)
			sql.append("C_ORDER_ID in (?,?) ");
		else
			sql.append("C_ORDER_ID=? ");
		if(rejectC_Invoice_ID > 0)
			sql.append("AND C_INVOICE_ID <> ? ");	
		sql.append("AND INVOICEOPEN(C_INVOICE_ID,0) <> 0");
		PreparedStatement pst = null;
		ResultSet rs = null;
		try{
			int index = 1;
			pst = DB.prepareStatement(sql.toString(),trx);
			pst.setInt(index++,c_order_id);
			if(origOrder_id > 0)
				pst.setInt(index++,origOrder_id);
			if(rejectC_Invoice_ID > 0)
				pst.setInt(index++,rejectC_Invoice_ID);
			rs = pst.executeQuery();
			while(rs.next())
			{
				VInvoiceAllocate invAlloc = new VInvoiceAllocate(rs.getInt(1), ctx, trx);
				invoiceList.add(invAlloc);
			}

		}catch (Exception e){
			throw new CompiereException(e.getMessage());
		}				
		finally{
			Util.closeCursor(pst, rs);
		}
		
		return invoiceList;
	}
	
	
	private class VInvoiceAllocate{
		private BigDecimal openAmt;
		private MInvoice invoice;
		
		public VInvoiceAllocate(int c_invoice_id,Ctx ctx,Trx trx) {
			this.invoice = new MInvoice(ctx, c_invoice_id, trx);
			this.openAmt=this.invoice.getOpenAmt();
		}
		
		public BigDecimal getOpenAmt() {
			return openAmt;
		}
		public MInvoice getInvoice() {
			return invoice;
		}
		public void setOpenAmt(BigDecimal openAmt) {
			this.openAmt = openAmt;
		}
	}
	
	private class VPaymentAllocate{
		private BigDecimal openAmt;
		private MPayment payment;
		
		public VPaymentAllocate(int c_payment_id,Ctx ctx,Trx trx) {
			this.payment = new MPayment(ctx, c_payment_id, trx);
			BigDecimal allocatedAmt = this.payment.getAllocatedAmt();
			if(allocatedAmt == null)
				allocatedAmt = BigDecimal.ZERO;
			this.openAmt=this.payment.getPayAmt().subtract(allocatedAmt);
		}
		public BigDecimal getOpenAmt() {
			return openAmt;
		}
		public MPayment getPayment() {
			return payment;
		}
		public void setOpenAmt(BigDecimal openAmt) {
			this.openAmt = openAmt;
		}
	}
}
