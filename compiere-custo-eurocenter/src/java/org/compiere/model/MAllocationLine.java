/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 3600 Bridge Parkway #102, Redwood City, CA 94065, USA      *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderPayment;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;


/**
 *	Allocation Line Model
 *	
 *  @author Jorg Janke
 *  @version $Id: MAllocationLine.java,v 1.3 2006/07/30 00:51:03 jjanke Exp $
 */
public class MAllocationLine extends X_C_AllocationLine
{
    /** Logger for class MAllocationLine */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MAllocationLine.class);
	/** */
	private static final long serialVersionUID = 1L;

	/**
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param C_AllocationLine_ID id
	 *	@param trx name
	 */
	public MAllocationLine (Ctx ctx, int C_AllocationLine_ID, Trx trx)
	{
		super (ctx, C_AllocationLine_ID, trx);
		if (C_AllocationLine_ID == 0)
		{
		//	setC_AllocationHdr_ID (0);
			setAmount (Env.ZERO);
			setDiscountAmt (Env.ZERO);
			setWriteOffAmt (Env.ZERO);
			setOverUnderAmt(Env.ZERO);
		}	
	}	//	MAllocationLine

	/**
	 * 	Load Constructor
	 *	@param ctx ctx
	 *	@param rs result set
	 *	@param trx transaction
	 */
	public MAllocationLine (Ctx ctx, ResultSet rs, Trx trx)
	{
		super(ctx, rs, trx);
	}	//	MAllocationLine

	/**
	 * 	Parent Constructor
	 *	@param parent parent
	 */
	public MAllocationLine (MAllocationHdr parent)
	{
		this (parent.getCtx(), 0, parent.get_Trx());
		setClientOrg(parent);
		setC_AllocationHdr_ID(parent.getC_AllocationHdr_ID());
		m_parent = parent;
		set_Trx(parent.get_Trx());
	}	//	MAllocationLine

	/**
	 * 	Parent Constructor
	 *	@param parent parent
	 *	@param Amount amount
	 *	@param DiscountAmt optional discount
	 *	@param WriteOffAmt optional write off
	 *	@param OverUnderAmt over/underpayment
	 */
	public MAllocationLine (MAllocationHdr parent, BigDecimal Amount, 
		BigDecimal DiscountAmt, BigDecimal WriteOffAmt, BigDecimal OverUnderAmt)
	{
		this (parent);
		setAmount (Amount);
		setDiscountAmt (DiscountAmt == null ? Env.ZERO : DiscountAmt);
		setWriteOffAmt (WriteOffAmt == null ? Env.ZERO : WriteOffAmt);
		setOverUnderAmt (OverUnderAmt == null ? Env.ZERO : OverUnderAmt);
	}	//	MAllocationLine
	
	/**	Invoice info			*/
	private MInvoice		m_invoice = null; 
	/** Allocation Header		*/
	private MAllocationHdr	m_parent = null;
	
	private MPayment		m_payment = null; 
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MAllocationHdr getParent()
	{
		if (m_parent == null)
			m_parent = new MAllocationHdr (getCtx(), getC_AllocationHdr_ID(), get_Trx());
		return m_parent;
	}	//	getParent
	
	/**
	 * 	Set Parent
	 *	@param parent parent
	 */
	protected void setParent (MAllocationHdr parent)
	{
		m_parent = parent;
	}	//	setParent
	
	/**
	 * 	Get Parent Trx Date
	 *	@return date p_trx
	 */
	@Override
	public Timestamp getDateTrx ()
	{
		return getParent().getDateTrx ();
	}	//	getDateTrx
	
	/**
	 * 	Set Document Info
	 *	@param C_BPartner_ID partner
	 *	@param C_Order_ID order
	 *	@param C_Invoice_ID invoice
	 */
	public void setDocInfo (int C_BPartner_ID, int C_Order_ID, int C_Invoice_ID)
	{
		setC_BPartner_ID(C_BPartner_ID);
		setC_Order_ID(C_Order_ID);
		setC_Invoice_ID(C_Invoice_ID);
	}	//	setDocInfo
	
	/**
	 * 	Set Payment Info
	 *	@param C_Payment_ID payment
	 *	@param C_CashLine_ID cash line
	 */
	public void setPaymentInfo (int C_Payment_ID, int C_CashLine_ID)
	{
		if (C_Payment_ID != 0)
			setC_Payment_ID(C_Payment_ID);
		if (C_CashLine_ID != 0)
			setC_CashLine_ID(C_CashLine_ID);
	}	//	setPaymentInfo

	/**
	 * 	Get Invoice
	 *	@return invoice or null
	 */
	public MInvoice getInvoice()
	{
		if (m_invoice == null && getC_Invoice_ID() != 0)
			m_invoice = new MInvoice (getCtx(), getC_Invoice_ID(), get_Trx());
		return m_invoice;
	}	//	getInvoice
	
	public MPayment getPayment()
	{
		if (m_payment == null && getC_Payment_ID() != 0)
			m_payment = new MPayment (getCtx(), getC_Payment_ID(), get_Trx());
		return m_payment;
	}
	
	
	public MOrderPaymSchedule getOrderPaymSchedule(boolean isCreateSched)
	{
		MOrderPaymSchedule ops = null;
		MPayment mp = new MPayment(getCtx(), getC_Payment_ID(), get_Trx());
		if (getC_Invoice_ID() != 0){
			
			// Recheche de l'écheance de livraison associée à la facture
			
			int opsid = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule where IsActive='Y' and c_invoice_id = ? ", getC_Invoice_ID() );
			
			// Si non trouvée et qu'il s'agit d'une facture de livraison, recherche si une échance de livraison existe !
			boolean IsLivraison = MDocType.get(getCtx(), (MInvoice.get(getCtx(), getC_Invoice_ID()).getC_DocType_ID())).get_ValueAsBoolean("IsLivraison");
			if(opsid<0 && IsLivraison)
			{
				//Trouver l'échéance de livraison pour une facture le livraison
				opsid = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule where IsActive='Y' and c_invoice_id is null and "
						+ "exists (Select 1 from Z_TypeEcheance where IsActive='Y' and IsLivraison = 'Y' and Z_OrderPaymSchedule.Z_TypeEcheance_ID = Z_TypeEcheance.Z_TypeEcheance_ID) "
						+ "and C_Order_ID = (Select C_Order_ID from C_Invoice where C_Invoice.C_Invoice_ID = ?) and rownum = 1", getC_Invoice_ID());
			}
			if (opsid > 0) 
			{
				ops = new MOrderPaymSchedule(getCtx(), opsid, get_Trx());
			}
			if(opsid<0)
			{
				
				// prendre une écheance de réajustement si libre ( Invoice_id is null 
					opsid = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule where IsActive='Y' and c_invoice_id is null and "
							+ "exists (Select 1 from Z_TypeEcheance where IsActive='Y' and IsAjust = 'Y' and Z_OrderPaymSchedule.Z_TypeEcheance_ID = Z_TypeEcheance.Z_TypeEcheance_ID) "
							+ "and C_Order_ID = (Select C_Order_ID from C_Invoice where C_Invoice.C_Invoice_ID = ?) and rownum = 1", getC_Invoice_ID());
					if(opsid>0)
						ops = new MOrderPaymSchedule(getCtx(), opsid, get_Trx());
					else if(isCreateSched){
						int	typeEchAdjID = DB.getSQLValue(get_Trx(), "select min(z_typeecheance_id) from z_typeecheance where IsAjust = 'Y' and AD_Client_ID = "+getAD_Client_ID());
						ops = new MOrderPaymSchedule(getCtx(), 0, get_Trx());
						ops.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
						MOrder mo = new MOrder(getCtx(), getC_Order_ID(), get_Trx());
						ops.setC_Order_ID(getC_Order_ID());
						ops.setZ_TypeEcheance_ID(typeEchAdjID);
						ops.setSeqNo(99);
						ops.set_ValueNoCheck("DueDate", mo.getDatePromised());
						ops.setTotalAmt(Env.ZERO);
						ops.save(get_Trx());
					}
			}
			if(ops !=null && ops.getC_Invoice_ID()==0)
			{
				ops.setC_Invoice_ID(getC_Invoice_ID());
				ops.save();
			}
			
		}
		return ops;
	}

	private boolean isPaymentOnOrderPaym(int C_Payment_ID)
	{
		int x = DB.getSQLValue(get_Trx(), "SELECT count(*) from Z_OrderPayment where IsActive='Y' and C_Payment_ID = ?", C_Payment_ID);
		return x>0?true:false;
	}
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return save
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (!newRecord  
			&& (is_ValueChanged("C_BPartner_ID") || is_ValueChanged("C_Invoice_ID")))
		{
			log.severe ("Cannot Change Business Partner or Invoice");
			return false;
		}
		
		//	Set BPartner/Order from Invoice
		if (getC_BPartner_ID() == 0 && getInvoice() != null)
			setC_BPartner_ID(getInvoice().getC_BPartner_ID()); 
		if (getC_Order_ID() == 0 && getInvoice() != null)
			setC_Order_ID(getInvoice().getC_Order_ID());
		if (getC_Order_ID() == 0 && getPayment() != null && getPayment().getC_Order_ID()>0)
			setC_Order_ID(getPayment().getC_Order_ID());
		//
		return true;
	}	//	beforeSave

	
	/**
	 * 	Before Delete
	 *	@return true if reversed
	 */
	@Override
	protected boolean beforeDelete ()
	{
		setIsActive(false);
		processIt(true);
		return true;
	}	//	beforeDelete
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	@Override
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MAllocationLine[");
		sb.append(get_ID());
		if (getC_Payment_ID() != 0)
			sb.append(",C_Payment_ID=").append(getC_Payment_ID());
		if (getC_CashLine_ID() != 0)
			sb.append(",C_CashLine_ID=").append(getC_CashLine_ID());
		if (getC_Invoice_ID() != 0)
			sb.append(",C_Invoice_ID=").append(getC_Invoice_ID());
		if (getC_BPartner_ID() != 0)
			sb.append(",C_BPartner_ID=").append(getC_BPartner_ID());
		sb.append(", Amount=").append(getAmount())
			.append(",Discount=").append(getDiscountAmt())
			.append(",WriteOff=").append(getWriteOffAmt())
			.append(",OverUnder=").append(getOverUnderAmt());
		sb.append ("]");
		return sb.toString ();
	}	//	toString
	
	/**************************************************************************
	 * 	Process Allocation (does not update line).
	 * 	- Update and Link Invoice/Payment/Cash
	 * 	@param reverse if true allocation is reversed
	 *	@return C_BPartner_ID
	 */
	protected boolean processIt (boolean reverse)
	{
		log.fine("Reverse=" + reverse + " - " + toString());
		int C_Invoice_ID = getC_Invoice_ID();
		MInvoice invoice = getInvoice();
		if (invoice != null 
			&& getC_BPartner_ID() != invoice.getC_BPartner_ID())
			setC_BPartner_ID(invoice.getC_BPartner_ID());
		//
		int C_Payment_ID = getC_Payment_ID();
		int C_CashLine_ID = getC_CashLine_ID();
		
		//	Update Payment
		if (C_Payment_ID != 0)
		{
			MPayment payment = new MPayment (getCtx(), C_Payment_ID, get_Trx());
			payment.setisFromEch(true);
			if (getC_BPartner_ID() != payment.getC_BPartner_ID())
				log.warning("C_BPartner_ID different - Invoice=" + getC_BPartner_ID() + " - Payment=" + payment.getC_BPartner_ID());
			if (reverse)
			{
				if (!payment.isCashTrx())
				{
					payment.setIsAllocated(false);
					if (!payment.save())
					{
						log.log(Level.WARNING, "Payment not updated - " + payment);
						return false;
					}
				}
			}
			else
			{
				if (payment.testAllocation())
				{
					if (!payment.save())
					{
						log.log(Level.WARNING, "Payment not updated - " + payment);
						return false;
					}
				}
			}
		}
		
		//	Payment - Invoice
		if (C_Payment_ID != 0 && invoice != null)
		{
			//	Link to Invoice
			if (reverse)
			{
				invoice.setC_Payment_ID(0);
				log.fine("C_Payment_ID=" + C_Payment_ID
					+ " Unlinked from C_Invoice_ID=" + C_Invoice_ID);
			}
			else if (invoice.isPaid())
			{
				invoice.setC_Payment_ID(C_Payment_ID);
				log.fine("C_Payment_ID=" + C_Payment_ID
					+ " Linked to C_Invoice_ID=" + C_Invoice_ID);
			}
			
			// Eggo Link to z_orderPaymSchedule
			
			MPayment payment = new MPayment (getCtx(), C_Payment_ID, get_Trx());
			//Vérifier que le paiement n'est pas déjà lié !
			boolean link = false;
			//if(isPaymentOnOrderPaym(C_Payment_ID))
			//	link = true;
			MOrderPaymSchedule ops = null;
//			if(EggoCtx.EGGO_ID==0)
//				EggoCtx.setConstants();
			// MERGE
			MOrder mo = new MOrder(getCtx(), invoice.getC_Order_ID(), get_Trx());
			MDocType dt = MDocType.get(getCtx(), mo.getC_DocType_ID());
			MDocTypeProxy dtp = new MDocTypeProxy(dt);
			//if(getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")) {
			MDocTypeInfo dti = MDocTypeInfo.get(getCtx(),mo.getC_DocType_ID(), get_Trx());
			if (dti != null && dti.isCuisine()) {
				if (reverse)
				{
					DB.executeUpdate("delete from z_orderpayment where C_Payment_ID = ?", C_Payment_ID, get_Trx());
					DB.executeUpdate("delete from z_orderVDPayment where C_Payment_ID = ?", C_Payment_ID, get_Trx());
					if(getC_Order_ID() != 0){
						MOrder ord = new MOrder(getCtx(),getC_Order_ID(),get_Trx());
						ord.setTotalPaySched();
						ord.save(get_Trx());
					}
				}
				else
					if(getC_Order_ID()!=0){
						MOrder ord = new MOrder(getCtx(),getC_Order_ID(),get_Trx());
						if(ord.isSOTrx())
						{
							ord.setTotalPaySched();
						MDocType doc = MDocType.get(getCtx(), ord.getC_DocTypeTarget_ID());
						ops = getOrderPaymSchedule(doc.get_ValueAsBoolean("CreateSched"));
						boolean exists = false;
						if (ops != null ){
						MOrderPayment[] mops = ops.getAllPayms(null, null);
						for (int i = 0; i < mops.length; i++) {
							if(mops[i].getC_Payment_ID() == C_Payment_ID){
								exists = true;
								continue;
								}
						}
						}
						if (ops != null ){

							//if (!payment.isSelfService())
							//{

							//	{	
									// Create MOrderPayment
									//Savoir si le paiement n'est pas déjà sur un MOrderPayment
									if(!link && !exists)
									{

										MOrderPayment op = new MOrderPayment(getCtx(), 0, get_Trx());
										op.setClientOrg(ops.getAD_Client_ID(),ops.getAD_Org_ID());
										op.setZ_OrderPaymSchedule_ID(ops.get_ID());
										op.setC_BankAccount_ID(payment.getC_BankAccount_ID());
										op.setC_Payment_ID(C_Payment_ID);
										op.setDateTrx(payment.getDateTrx());
										op.setPayAmt(this.getAmount());
										op.setZSubPaymentRule_ID(payment.get_ValueAsInt("ZSubPaymentRule_ID"));
										op.save(get_Trx());

										MOrder ordOrig = new MOrder(getCtx(),ops.getC_Order_ID(),get_Trx());
										ordOrig.setTotalPaySched();
										ordOrig.save(get_Trx());
							//		}
							//	}
							}
						}else{
							MInvoice inv = new MInvoice(getCtx(),getC_Invoice_ID(),get_Trx());
							if(inv != null){
								MOrder order = new MOrder(getCtx(), inv.getC_Order_ID(), get_Trx());
								if(order != null && order.isSOTrx()){
									//Savoir si pour cette ordre/facture/paiement, j'ai déja un OrderVDPayment !
									String SQL = "Select Count(1) from Z_ORDERVDPAYMENT where C_PAYMENT_ID = ? and C_INVOICE_ID = ? and C_ORDER_ID = ? and ISACTIVE='Y'";
									ArrayList<Object> params =new ArrayList<Object>();
									params.add(payment.getC_Payment_ID());
									params.add(payment.getC_Invoice_ID());
									params.add(order.getC_Order_ID());
									int nb = DB.getSQLValue(get_Trx(), SQL, params);
									if(nb==0)
									{
										MOrderVDPayment ovdp = new MOrderVDPayment(getCtx(), 0, get_Trx());
										ovdp.setClientOrg(payment.getAD_Client_ID(), payment.getAD_Org_ID());
										ovdp.setC_BankAccount_ID(payment.getC_BankAccount_ID());
										ovdp.setZSubPaymentRule_ID(payment.get_ValueAsInt("ZSubPaymentRule_ID"));
										ovdp.setPayAmt(payment.getPayAmt());
										ovdp.setC_Payment_ID(payment.getC_Payment_ID());
										ovdp.setC_Invoice_ID(payment.getC_Invoice_ID());
										ovdp.setDateTrx(payment.getDateTrx());
										ovdp.setC_Order_ID(order.getC_Order_ID());
										ovdp.save();
									}
								}
							}
						}
						}
					}
			}

			//	Link to Order
			String update = "UPDATE C_Order o "
				+ "SET C_Payment_ID=" 
					+ (reverse ? "NULL " : "(SELECT C_Payment_ID FROM C_Invoice WHERE C_Invoice_ID=" + C_Invoice_ID + ") ")
				+ "WHERE EXISTS (SELECT * FROM C_Invoice i "
					+ "WHERE o.C_Order_ID=i.C_Order_ID AND i.C_Invoice_ID=" + C_Invoice_ID + ")";
			if (DB.executeUpdate(update, get_Trx()) > 0)
				log.fine("C_Payment_ID=" + C_Payment_ID 
					+ (reverse ? " UnLinked from" : " Linked to")
					+ " order of C_Invoice_ID=" + C_Invoice_ID);
		}
		
		//	Cash - Invoice
		if (C_CashLine_ID != 0 && invoice != null)
		{
			//	Link to Invoice
			if (reverse)
			{
				invoice.setC_CashLine_ID(0);
				log.fine("C_CashLine_ID=" + C_CashLine_ID 
					+ " Unlinked from C_Invoice_ID=" + C_Invoice_ID);
			}
			else
			{
				invoice.setC_CashLine_ID(C_CashLine_ID);
				log.fine("C_CashLine_ID=" + C_CashLine_ID 
					+ " Linked to C_Invoice_ID=" + C_Invoice_ID);
			}
			
			//	Link to Order
			String update = "UPDATE C_Order o "
				+ "SET C_CashLine_ID="
					+ (reverse ? "NULL " : "(SELECT C_CashLine_ID FROM C_Invoice WHERE C_Invoice_ID=" + C_Invoice_ID + ") ")
				+ "WHERE EXISTS (SELECT * FROM C_Invoice i "
					+ "WHERE o.C_Order_ID=i.C_Order_ID AND i.C_Invoice_ID=" + C_Invoice_ID + ")";
			if (DB.executeUpdate(update, get_Trx()) > 0)
				log.fine("C_CashLine_ID=" + C_CashLine_ID 
					+ (reverse ? " UnLinked from" : " Linked to")
					+ " order of C_Invoice_ID=" + C_Invoice_ID);
		}		
		
		if (invoice != null) { //ZCOM NPE
		if (!invoice.save())
		{
			log.log(Level.SEVERE, "Invoice not updated - " + invoice);
			return false;
		}
		}

		//	Update Balance / Credit used - Counterpart of MInvoice.completeIt
		if (invoice != null)
		{
			if (invoice.testAllocation())
			{
				if (!invoice.save())
				{
					log.log(Level.SEVERE, "Invoice not updated - " + invoice);
					return false;
				}
			}
		}
		
		return true;
	}	//	processIt
	
}	//	MAllocationLine
