package org.compiere.gwt.server.window;

import static org.compiere.common.constants.CreateFromConstants.BPARTNER;
import static org.compiere.common.constants.GlobalMessageConstants.PROCESS;
import static org.compiere.common.constants.GlobalMessageConstants.SEARCH;
import static org.compiere.common.constants.CreateShipEggo.*;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.common.QueryRestrictionVO;
import org.compiere.common.QueryVO;
import org.compiere.common.TableModel;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.db.QueryUtil;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.InfoComponentImpl;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.TableComponentImpl;
import org.compiere.gwt.server.viewhelper.SelectedTableModel;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MDocBaseType;
import org.compiere.model.MInvoice;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MLookupInfo;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MPayment;
import org.compiere.model.MPeriod;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.util.NamePair;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.ComponentVO;
import org.compiere.vos.DocActionConstants;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.ResponseVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;

import com.audaxis.compiere.model.MOrgProxy;


public class XX_CreateShipEggoWindowImpl extends WindowImpl {
	private static CLogger log = CLogger.getCLogger( XX_CreateShipEggoWindowImpl.class );
	private final SearchComponentImpl c_search;
	private final SearchComponentImpl c_process;
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	
	/**
	 * 
	 * @param windowNO TODO
	 * @param serverCtx TODO
	 * @param serverCtx
	 * @param U_Window_ID
	 */
	public XX_CreateShipEggoWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;
		
		this.serverCtx.setContext("IsSOTrx", "Y");

		c_search = new SearchComponentImpl();
		FieldVO f_BPartner = new FieldVO( BPARTNER, Msg.translate( serverCtx, BPARTNER ), DisplayTypeConstants.Search, false );
		f_BPartner.listBoxVO = new ListBoxVO();
		f_BPartner.listBoxVO.KeyColumn = BPARTNER;
		
		c_search.addFieldVO(f_BPartner);
		
		FieldVO f_Order = new FieldVO( "C_Order_ID", Msg.translate( serverCtx, org.compiere.common.constants.CreateFromConstants.ORDER ), DisplayTypeConstants.Search, false );
		f_Order.listBoxVO = new ListBoxVO();
		f_Order.listBoxVO.KeyColumn = "C_Order_ID";
		
		c_search.addFieldVO(f_Order);
		
		
		
		//Redmine 48694
		/*
		FieldVO f_OpenOnly = new FieldVO("IsExped", Msg.translate( serverCtx, "IsExped" ), DisplayTypeConstants.YesNo);
		f_OpenOnly.IsMandatoryUI = true;
		f_OpenOnly.DefaultValue="N";
		c_search.addFieldVO( f_OpenOnly );
		*/
		//
		//Tableau
		InfoComponentImpl ODV_Detail = getODVDetail();
		
		ODV_Detail.getComponentVO().getFieldVO( "QtyToDeliver" ).IsReadOnly = false;
		
		c_process = new SearchComponentImpl();
		// c_search.addField( SEARCH, Msg.getMsg ( ctx, "Search" ),
		// FieldType.Button );
		/*
		c_process = new SearchComponentImpl();
		c_process.addFieldVO( new FieldVO(DIFFERENCE, Msg.getMsg( serverCtx, "Difference" ), DisplayTypeConstants.Amount) );
		FieldVO f_AutoWriteOff = new FieldVO(AUTO_WRITE_OFF, Msg.getMsg( serverCtx, "AutoWriteOff", true ), DisplayTypeConstants.YesNo);
		f_AutoWriteOff.IsMandatoryUI = true;
		c_process.addFieldVO( f_AutoWriteOff );
		c_process.getComponentVO().getFieldVO( DIFFERENCE ).IsReadOnly = true;
		// c_process.addField( PROCESS, Msg.getMsg ( ctx, "Process" ),
		// FieldType.Button );

		// Unallocated Payments
		InfoComponentImpl c_payment = getPaymentComponent();

		c_payment.getComponentVO().getFieldVO( APPLIED_AMOUNT ).IsReadOnly = false;

		// Unpaid Invoices
		InfoComponentImpl c_invoice = getInvoiceComponent();
		c_invoice.getComponentVO().getFieldVO( DISCOUNT ).IsReadOnly = false;
		c_invoice.getComponentVO().getFieldVO( WRITEOFF ).IsReadOnly = false;
		c_invoice.getComponentVO().getFieldVO( APPLIED_AMOUNT ).IsReadOnly = false;
		// lengthen the amount fields so they are viewable during editing
		lengthenField(c_invoice.getComponentVO(), APPLIED_AMOUNT);
		lengthenField(c_invoice.getComponentVO(), WRITEOFF);
		lengthenField(c_invoice.getComponentVO(), DISCOUNT);

		lengthenField(c_payment.getComponentVO(), APPLIED_AMOUNT);
		*/
		
		FieldVO XX_Info1 = new FieldVO("XX_Info1", "Frêt maritime", DisplayTypeConstants.Amount);
		FieldVO XX_Info2 = new FieldVO("XX_Info2", "Assurance", DisplayTypeConstants.Amount);
		FieldVO XX_Info3 = new FieldVO("XX_Info3", "Autres frais post dédouanement", DisplayTypeConstants.Amount);
		c_process.addFieldVO(XX_Info1);
		c_process.addFieldVO(XX_Info2);
		c_process.addFieldVO(XX_Info3);
		components.clear();
		components.add( c_search );
		
		components.add( ODV_Detail );
		FieldVO f_addLines= new FieldVO("AddLines", "Ajouter",DisplayTypeConstants.Button);
		f_addLines.IsReadOnly=false;
		f_addLines.isImpactsUI=true;
		components.add(new SearchComponentImpl(new FieldVO[]{f_addLines, })); 
		
		components.add( c_process );
		
	}

	private static char NBSP = 160; //non breaking space
	private void lengthenField(ComponentVO comp, String fName) {
		FieldVO fAmount = comp.getFieldVO(fName);
		fAmount.name = " " + NBSP + NBSP + NBSP + NBSP + fAmount.name 
		+ NBSP + NBSP + NBSP + NBSP + NBSP + NBSP + NBSP + NBSP + NBSP;
	}

	private static void removeRestriction( QueryVO p_queryVO, String selectClause )
	{
		int i = 0;
		for( Object o : p_queryVO.restrictions )
		{
			QueryRestrictionVO r = (QueryRestrictionVO) o; 
			if( r.ColumnName.equals( selectClause ) )
				break;
			++i;
		}
		p_queryVO.restrictions.remove( i );
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see org.compiere.gwt.server.window.WindowImpl#callback(org.compiere.util.Ctx,
	 *      org.compiere.common.QueryVO, java.util.HashMap, java.lang.String)
	 */
	@Override
	public ChangeVO processCallback(String sender )
	{
		ChangeVO changeVO = new ChangeVO();
        //#59165
		/*
		if ( sender.equals(f_MultiCurrency.ColumnName))
		{
			int m_WindowNo = 0;
			int AD_Client_ID = serverCtx.getContextAsInt(m_WindowNo, "AD_Client_ID" );
			int AD_Org_ID = serverCtx.getContextAsInt(m_WindowNo, "AD_Org_ID" );
			MAcctSchema acctSchema = null;
			
			if("Y".equals(f_MultiCurrency.DefaultValue)) {
				MAcctSchema[] ascs = MAcctSchema.getClientAcctSchema(Env.getCtx(), AD_Client_ID) ;
				acctSchema = ascs[0];
				for (MAcctSchema asc : ascs){
					if( asc.getAD_OrgOnly_ID() == AD_Org_ID)
						acctSchema = asc;
				}

				changeVO.addChangedValue(f_Currency.ColumnName, acctSchema.getC_Currency_ID());
			}
		} //#59165
		 */
		if( sender.equals( PROCESS ) )
		{
			cmd_process( changeVO, windowCtx );
			changeVO.commands = new String[] { SEARCH };
		}

		return changeVO;
	}

	private InfoComponentImpl getODVDetail() {
		return new InfoComponentImpl( serverCtx, 100003, true, true, false )
		{
			/*
			 * (non-Javadoc)
			 * 
			 * @see org.compiere.gwt.server.component.InfoComponentImpl#processQueryVO(org.compiere.common.QueryVO,
			 *      java.util.HashMap)
			 */
			@Override
			protected QueryVO processQueryVO( QueryVO p_queryVO, WindowCtx windowCtx )
			{
			// #26891 : FIN : gestion des escomptes au niveau de la ligne d'extrait.
				//windowCtx.put("AD_Org_ID", null);
				//windowCtx.put("C_Order_ID", null);
			 // #26891 : FIN : gestion des escomptes au niveau de la ligne d'extrait.
				
				QueryVO queryVO = TableComponentImpl.buildQueryVO( windowCtx, componentVO.fieldVOs );
				/*
				QueryRestrictionVO restrictionVO = new QueryRestrictionVO("QtyOnExped - QtyOrdered", 
						QueryRestrictionVO.NOT_EQUAL, "0", null, null, 11);
				
				//queryVO.addRestriction(restrictionVO); Redmine 62489: cette restriction n'est faite sauf si OpenOnly est a Yes cassé par la Revision 184837 
				
				//Redmine 48694
				if( "Y".equals( windowCtx.get( "IsExped" ) ) ){
					queryVO.addRestriction(restrictionVO);
				}
				*/
				/*
				//Start Redmine - 20199 - ZCOM123
				QueryRestrictionVO restrictionVO = new QueryRestrictionVO("p.isreceipt", 
						QueryRestrictionVO.EQUAL, windowCtx.get( ISSOTRX ), null, null, 11);
				queryVO.addRestriction(restrictionVO);
				//End Redmine - 20199 - ZCOM123
				*/
				/*					
				//Redmine 48694
				if( "Y".equals( windowCtx.get( "OpenOnly" ) ) ){
					restrictionVO = new QueryRestrictionVO("p.IsAllocated", 
								QueryRestrictionVO.EQUAL, "N", null, null, 11);
					queryVO.addRestriction(restrictionVO);
				}
				*/
				//
				return queryVO;
			}

		};
	}

	private InfoComponentImpl getInvoiceComponent() {
		return new InfoComponentImpl( serverCtx, 111, true, true, false )
		{
			/*
			 * (non-Javadoc)
			 * 
			 * @see org.compiere.gwt.server.component.InfoComponentImpl#processQueryVO(org.compiere.common.QueryVO,
			 *      java.util.HashMap)
			 */
			@Override
			protected QueryVO processQueryVO( QueryVO p_queryVO, WindowCtx windowCtx )
			{
			  // #26891 : FIN : gestion des escomptes au niveau de la ligne d'extrait.
				windowCtx.put("AD_Org_ID", null);
				windowCtx.put("C_Invoice_ID", null);
				windowCtx.put("DateAcct", null);
			  // #26891 : FIN : gestion des escomptes au niveau de la ligne d'extrait.
				
				QueryVO queryVO = TableComponentImpl.buildQueryVO( windowCtx, componentVO.fieldVOs );
				/*
				if( "Y".equals( windowCtx.get( MULTI_CURRENCY ) ) )
				{
					removeRestriction( queryVO, componentVO.getFieldVO( CURRENCY ).selectClause );
				}
				// Do not return invoice rows where the payment installation has been paid
				QueryRestrictionVO restrictionVO = new QueryRestrictionVO("invoiceOpen(C_Invoice_ID,C_InvoicePaySchedule_ID)", 
						QueryRestrictionVO.NOT_EQUAL, "0", null, null, 11);
				
				//queryVO.addRestriction(restrictionVO); Redmine 62489: cette restriction n'est faite sauf si OpenOnly est a Yes cassé par la Revision 184837 
				
				//Redmine 48694
				if( "Y".equals( windowCtx.get( "OpenOnly" ) ) ){
					queryVO.addRestriction(restrictionVO);
				}
				
				//ZCOM DEBUT #4219 : [SUP] Interdire affectation facture si reprise sur selection paiement
				restrictionVO = new QueryRestrictionVO("(SELECT Count(*) from C_PaySelectionLine sl inner join c_PaySelection s on s.c_payselection_id = sl.c_payselection_id where s.isactive = 'Y' and sl.C_INVOICE_ID = i.C_Invoice_ID and sl.isActive = 'Y' and s.processed <> 'Y')", 
						QueryRestrictionVO.EQUAL, "0", null, null, 11);
				queryVO.addRestriction(restrictionVO);
				//ne pas affichÃ© les factures avec isDisput = 'yes'
				restrictionVO = new QueryRestrictionVO("i.IsInDispute", 
						QueryRestrictionVO.EQUAL, "N", null, null, 11);
				
				queryVO.addRestriction(restrictionVO);
				//ZCOM FIN #4219 : [SUP] Interdire affectation facture si reprise sur selection paiement
				
				/*
				//Start Redmine - 20199 - ZCOM123
				restrictionVO = new QueryRestrictionVO("i.IsSOTrx", 
							QueryRestrictionVO.EQUAL, windowCtx.get( ISSOTRX ), null, null, 11);
				queryVO.addRestriction(restrictionVO);
				//End Redmine - 20199 - ZCOM123
				
								//Redmine 48694
				if( "Y".equals( windowCtx.get( "OpenOnly" ) ) ){
					restrictionVO = new QueryRestrictionVO("i.IsPaid", 
								QueryRestrictionVO.EQUAL, "N", null, null, 11);
					queryVO.addRestriction(restrictionVO);
				}
				*/
				return queryVO;
			}

		};

	}
	/***************************************************************************
	 * Save Data
	 * 
	 * @param changeVO
	 * @param windowCtx
	 * @param serverCtx
	 */
	private void cmd_process( ChangeVO changeVO, WindowCtx windowCtx )
	{

		log.config("windowCtx Stringmap= " + windowCtx.getStringMap().toString());
		//Timestamp DateTrx = (Timestamp) c_search.getFieldValue( windowCtx, CONVERSION_DATE );

		int C_BPartner_ID = ((BigDecimal) c_search.getFieldValue( windowCtx, BPARTNER )).intValue();

		// the allocation currency
		//int C_Currency_ID = ((BigDecimal) c_search.getFieldValue( windowCtx, CURRENCY )).intValue();

		// the Difference field
		/*
		BigDecimal difference = (BigDecimal) c_process.getFieldValue( windowCtx, DIFFERENCE );
		if (difference.compareTo(Env.ZERO) != 0)
		{
			log.log( Level.SEVERE, "Difference (" + difference + ") != 0");
			changeVO.addError( Msg.getMsg( serverCtx, "Difference") + " (" + difference + ") != 0");
			return;
		}
		*/
		// fixed fields
		int m_WindowNo = 0;
		int AD_Client_ID = serverCtx.getContextAsInt(m_WindowNo, "AD_Client_ID" );
		//int AD_Org_ID = serverCtx.getContextAsInt(m_WindowNo, "AD_Org_ID" );
		int C_Order_ID = 0;
		//int C_CashLine_ID = 0;
		//
		//
//		if( AD_Org_ID == 0 )
//		{
//			changeVO.addError( Msg.getMsg( serverCtx, "Org0NotAllowed" ) );
//			return;
//		}
		//ZCOM999
		SelectedTableModel lignes = getSelectedTableModel( windowCtx, Lignes_tabNo, false ); 
		//SelectedTableModel payment = getSelectedTableModel( windowCtx, payment_tabNo, false ); 
		/*
		int AD_Org_ID = 0;
		AD_Org_ID = invoice!=null && invoice.getRowCount()>0 ? ((BigDecimal) invoice.getValueAt(0, "AD_Org_ID")).intValue() : ((BigDecimal) payment.getValueAt(0, "AD_Org_ID")).intValue();
		
		if( AD_Org_ID == 0 )
		{
			changeVO.addError( Msg.getMsg( serverCtx, "Org0NotAllowed" ) );
			return;
		}
		
		//ZCOM999
		MPeriod p = MPeriod.getOfOrg(serverCtx, AD_Org_ID, DateTrx);
		String error = p.isOpen(MDocBaseType.DOCBASETYPE_PaymentAllocation, DateTrx);
		if (error != null)
		{
			changeVO.addError( Msg.getMsg( serverCtx, error) );
			return;
		}
		//ZCOM999
		 */
		//
		//log.config( "Client=" + AD_Client_ID + ", Org=" + AD_Org_ID + ", BPartner=" + C_BPartner_ID + ", Date=" + DateTrx );

		/**
		 * Generation of allocations:               amount/discount/writeOff
		 *  - if there is one payment -- one line per invoice is generated
		 *    with both the Invoice and Payment reference
		 *      Pay=80  Inv=100 Disc=10 WOff=10 =>  80/10/10    Pay#1   Inv#1
		 *    or
		 *      Pay=160 Inv=100 Disc=10 WOff=10 =>  80/10/10    Pay#1   Inv#1
		 *      Pay=160 Inv=100 Disc=10 WOff=10 =>  80/10/10    Pay#1   Inv#2
		 *
		 *  - if there are multiple payment lines -- the amounts are allocated
		 *    starting with the first payment and payment
		 *      Pay=60  Inv=100 Disc=10 WOff=10 =>  60/10/10    Pay#1   Inv#1
		 *      Pay=100 Inv=100 Disc=10 WOff=10 =>  20/0/0      Pay#2   Inv#1
		 *      Pay=100 Inv=100 Disc=10 WOff=10 =>  80/10/10    Pay#2   Inv#2
		 *
		 *  - if you apply a credit memo to an invoice
		 *              Inv=10  Disc=0  WOff=0  =>  10/0/0              Inv#1
		 *              Inv=-10 Disc=0  WOff=0  =>  -10/0/0             Inv#2
		 *
		 *  - if you want to write off a (partial) invoice without applying,
		 *    enter zero in applied
		 *              Inv=10  Disc=1  WOff=9  =>  0/1/9               Inv#1
		 *  Issues
		 *  - you cannot write-off a payment
		 */



		//log.config( "Payment selected size=" + payment.getRowCount() );

		ArrayList<Integer> orderLineList = new ArrayList<Integer>();
		ArrayList<Integer> amountList = new ArrayList<Integer>();

		BigDecimal paymentAppliedAmt = Env.ZERO;
		for( int i = 0; i < lignes.getRowCount(); ++i )
		{
			int OrderLine_ID = ((BigDecimal) lignes.getValueAt( i, "C_OrderLine_ID" )).intValue();
			int QtyToDeliver = ((BigDecimal) lignes.getValueAt( i, "QtyToDeliver" )).intValue();

			orderLineList.add( OrderLine_ID );
			amountList.add( QtyToDeliver );

			//paymentAppliedAmt = paymentAppliedAmt.add( appliedAmt );

			log.fine( "C_OrderLine_ID=" + OrderLine_ID + " - QtyToDeliver=" + QtyToDeliver );
		}
		log.config( "Number of Payments=" + orderLineList.size()  );

		Trx p_trx = Trx.get( "AL" );


		/*
		BigDecimal totalAppliedAmt = Env.ZERO;

		// Create Allocation - but don't save yet
		MAllocationHdr alloc = new MAllocationHdr( serverCtx, true, DateTrx, C_Currency_ID, serverCtx.getContext( "#AD_User_Name" ), p_trx );
		//alloc.setAD_Org_ID( AD_Org_ID );
		alloc.setAD_Org_ID(AD_Org_ID); //#59165

		// For all invoices
		int invoiceLines = 0;
		for( int i = 0; i < invoice.getRowCount(); i++ )
		{
			invoiceLines++;
			// Invoice variables
			int C_Invoice_ID = ((BigDecimal) invoice.getValueAt( i, INVOICE )).intValue();
			BigDecimal AppliedAmt = (BigDecimal) invoice.getValueAt( i, APPLIED_AMOUNT );
			// semi-fixed fields (reset after first invoice)
			BigDecimal DiscountAmt = (BigDecimal) invoice.getValueAt( i, DISCOUNT );
			BigDecimal WriteOffAmt = (BigDecimal) invoice.getValueAt( i, WRITEOFF );
			// OverUnderAmt needs to be in Allocation Currency
			BigDecimal OverUnderAmt = ((BigDecimal) invoice.getValueAt( i, OPEN_AMOUNT )).subtract( AppliedAmt ).subtract(
					DiscountAmt ).subtract( WriteOffAmt );

			log.config( "Invoice #" + i + " - AppliedAmt=" + AppliedAmt );// + "
			// -> "
			// +
			// AppliedAbs);
			// loop through all payments until invoice applied
			int noPayments = 0;
			for( int j = 0; j < paymentList.size() && AppliedAmt.signum() != 0; j++ )
			{
				int C_Payment_ID = (paymentList.get( j )).intValue();
				BigDecimal PaymentAmt = amountList.get( j );
				if( PaymentAmt.signum() != 0 )
				{
					log.config( ".. with payment #" + j + ", Amt=" + PaymentAmt );
					noPayments++;
					BigDecimal amount = Env.ZERO;
					if ((AppliedAmt.abs()).compareTo(PaymentAmt.abs()) > 0)
						amount = PaymentAmt;							
					else
						amount = AppliedAmt;
					log.fine( "C_Payment_ID=" + C_Payment_ID + ", C_Invoice_ID=" + C_Invoice_ID + ", Amount=" + amount
							+ ", Discount=" + DiscountAmt + ", WriteOff=" + WriteOffAmt );

					// Allocation Header
					if( alloc.get_ID() == 0 && !alloc.save() )
					{
						log.log( Level.SEVERE, "Allocation not created" );
						p_trx.rollback();
						p_trx.close();
						return;
					}
					// Allocation Line
					MAllocationLine aLine = new MAllocationLine( alloc, amount, DiscountAmt, WriteOffAmt, OverUnderAmt );
					aLine.setDocInfo( C_BPartner_ID, C_Order_ID, C_Invoice_ID );
					aLine.setPaymentInfo( C_Payment_ID, C_CashLine_ID );
					if( !aLine.save() )
						log.log( Level.SEVERE, "Allocation Line not written - Invoice=" + C_Invoice_ID );
					MPayment pay = new MPayment(Env.getCtx(), C_Payment_ID, null);
					//Counter Allocation Line
					if(pay.getRef_Payment_ID()!=0)

					{
						//check and counter allocate only if counter invoice exists
						MInvoice invoiceOrig = new MInvoice(Env.getCtx(),C_Invoice_ID, p_trx);
						if(invoiceOrig.getRef_Invoice_ID()!=0)
						{
							//Create Allocation - but don't save yet
							MAllocationHdr counterAlloc = new MAllocationHdr (Env.getCtx(), false,	//	manual
									DateTrx, C_Currency_ID, Env.getCtx().getContext("#AD_User_Name"), p_trx);


							MPayment payCounter = new MPayment(Env.getCtx(), pay.getRef_Payment_ID(), p_trx);
							counterAlloc.setAD_Org_ID(payCounter.getAD_Org_ID());

							//Allocation Header
							if (counterAlloc.get_ID() == 0 && !counterAlloc.save())
							{
								log.log(Level.SEVERE, "Counter Allocation not created");
								return;
							}						
							payCounter.setC_Invoice_ID(invoiceOrig.getRef_Invoice_ID());

							MAllocationLine aLineCounter = new MAllocationLine (counterAlloc, amount.negate(), 
									DiscountAmt, WriteOffAmt, OverUnderAmt);
							aLineCounter.setAD_Org_ID(payCounter.getAD_Org_ID());
							aLineCounter.setDocInfo(payCounter.getC_BPartner_ID(), payCounter.getC_Order_ID(), payCounter.getC_Invoice_ID());
							aLineCounter.setPaymentInfo(pay.getRef_Payment_ID(), C_CashLine_ID);
							if (!aLineCounter.save())
								log.log(Level.SEVERE, "Counter Allocation Line not written - Invoice=" + C_Invoice_ID);

							if (counterAlloc.get_ID() != 0)
							{
								DocumentEngine.processIt(counterAlloc, DocActionConstants.ACTION_Complete);
								counterAlloc.save();
							}
						}
					}

					// Apply Discounts and WriteOff only first time
					DiscountAmt = Env.ZERO;
					WriteOffAmt = Env.ZERO;
					// subtract amount from Payment/Invoice
					AppliedAmt = AppliedAmt.subtract( amount );
					PaymentAmt = PaymentAmt.subtract( amount );
					log.fine( "Allocation Amount=" + amount + " - Remaining  Applied=" + AppliedAmt + ", Payment=" + PaymentAmt );
					amountList.set( j, PaymentAmt ); // update
				} // for all applied amounts
			} // noop through payments for invoice

			// No Payments allocated and none existing (e.g. Inv/CM)
			if( noPayments == 0 && paymentList.size() == 0 )
			{
				int C_Payment_ID = 0;
				log.config( " ... no payment - TotalApplied=" + totalAppliedAmt );
				// Create Allocation
				log.fine( "C_Payment_ID=" + C_Payment_ID + ", C_Invoice_ID=" + C_Invoice_ID + ", Amount=" + AppliedAmt
						+ ", Discount=" + DiscountAmt + ", WriteOff=" + WriteOffAmt );

				// Allocation Header
				if( alloc.get_ID() == 0 && !alloc.save() )
				{
					log.log( Level.SEVERE, "Allocation not created" );
					p_trx.rollback();
					p_trx.close();
					return;
				}
				// Allocation Line
				MAllocationLine aLine = new MAllocationLine( alloc, AppliedAmt, DiscountAmt, WriteOffAmt, OverUnderAmt );
				aLine.setDocInfo( C_BPartner_ID, C_Order_ID, C_Invoice_ID );
				aLine.setPaymentInfo( C_Payment_ID, C_CashLine_ID );
				if( !aLine.save( p_trx ) )
					log.log( Level.SEVERE, "Allocation Line not written - Invoice=" + C_Invoice_ID );

				log.fine( "Allocation Amount=" + AppliedAmt );
			}
			totalAppliedAmt = totalAppliedAmt.add( AppliedAmt );
			log.config( "TotalRemaining=" + totalAppliedAmt );
		} // invoice loop

		// Only Payments and total of 0 (e.g. Payment/Reversal)
		if( invoiceLines == 0 && paymentList.size() > 0 && paymentAppliedAmt.signum() == 0 )
		{
			for( int i = 0; i < paymentList.size(); i++ )
			{
				int C_Payment_ID = (paymentList.get( i )).intValue();
				BigDecimal PaymentAmt = amountList.get( i );
				// BigDecimal PaymentMultiplier =
				// (BigDecimal)multiplierList.get(i);
				// BigDecimal PaymentAbs =
				// PaymentAmt.multiply(PaymentMultiplier);
				log.fine( "Payment=" + C_Payment_ID + ", Amount=" + PaymentAmt );// + ",
				// Abs="
				// +
				// PaymentAbs);

				// Allocation Header
				if( alloc.get_ID() == 0 && !alloc.save() )
				{
					log.log( Level.SEVERE, "Allocation not created" );
					changeVO.addError( "Allocation not created" );
					p_trx.rollback();
					p_trx.close();
					return;
				}
				// Allocation Line
				MAllocationLine aLine = new MAllocationLine( alloc, PaymentAmt, Env.ZERO, Env.ZERO, Env.ZERO );
				aLine.setDocInfo( C_BPartner_ID, 0, 0 );
				aLine.setPaymentInfo( C_Payment_ID, 0 );
				if( !aLine.save( p_trx ) )
				{
					log.log( Level.SEVERE, "Allocation Line not saved - Payment=" + C_Payment_ID );
					changeVO.addError( "Allocation not created" );
				}
			}
		} // onlyPayments

		if( totalAppliedAmt.signum() != 0 )
		{
			log.log( Level.SEVERE, "Remaining TotalAppliedAmt=" + totalAppliedAmt );
			changeVO.addError( "Remaining TotalAppliedAmt=" + totalAppliedAmt );
		}

		//	Should start WF
		if (alloc.get_ID() != 0)
		{
			DocumentEngine.processIt(alloc, DocActionConstants.ACTION_Complete);
			alloc.save();
		}
		*/
		orderLineList.clear();
		amountList.clear();
		p_trx.commit();
		p_trx.close();

	} // saveData

	/**
	 * 
	 * @param windowCtx
	 * @param tabNo
	 * @param includeCheckBox if true, add a leading column of booleans to indicate the selection status
	 * @return
	 */
	private SelectedTableModel getSelectedTableModel( WindowCtx windowCtx, int tabNo, boolean includeCheckBox )
	{
		ArrayList<String[]> selectedRows;
		if (windowCtx.getAsBoolean(tabNo+"|" + Ctx.TABLE_SELECT_ALL)) {
			selectedRows = new ArrayList<String[]>(100);
			QueryVO queryVO = windowCtx.getQueryVO(tabNo);

			InfoComponentImpl cmp;
			if(tabNo == Lignes_tabNo)
				cmp = getODVDetail();
			/*
			else if(tabNo == invoice_tabNo)
				cmp = getInvoiceComponent();
				*/
			else
				throw new IllegalArgumentException("tab NO is wrong:"+tabNo);

			TableModel table = cmp.getQueryResults(queryVO, this, windowCtx,	null, 0, QueryUtil.MAX_ROWS, false, true, -1);
			for (int i = 0; i < table.rows(); ++i) {
				String[] newRow = table.getRow(i);
				selectedRows.add(newRow);
			}
		}
		else
			selectedRows = windowCtx.getSelectedRows( tabNo );

		return new SelectedTableModel( getComponents().get(tabNo).getComponentVO().fieldVOs, selectedRows, includeCheckBox );
	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.SELECTION;
	}

}
