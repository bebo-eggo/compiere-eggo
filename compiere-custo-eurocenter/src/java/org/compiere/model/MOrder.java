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

import java.io.File;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.security.InvalidParameterException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.logging.Level;

import org.compiere.api.UICallout;
import org.compiere.common.CompiereStateException;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.EnvConstants;
import org.compiere.db.QueryUtil;
import org.compiere.db.QueryUtil.Callback;
import org.compiere.framework.PO;
import org.compiere.print.ReportEngine;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Env.QueryParams;
import org.compiere.util.Ini;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.Util;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.eurocenter.util.OrderUtil;
import com.audaxis.compiere.eurocenter.ws.WSUtil;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderDownload;
import com.audaxis.compiere.model.MOrderLinePosAction;
import com.audaxis.compiere.model.MOrderMargin;
import com.audaxis.compiere.model.MOrderShip;
import com.audaxis.compiere.model.MTAUXQLTHISTO;
import com.audaxis.compiere.model.MTransactionMsg;
import com.audaxis.compiere.model.MTypeOA;
import com.audaxis.compiere.model.X_XT_Order_Bonus;
import com.audaxis.compiere.model.X_XX_TAUX_QLT_HISTO;
import com.audaxis.compiere.model.proxy.MClientProxy;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;
import com.audaxis.compiere.model.proxy.MDoctypeInfoProxy;
import com.audaxis.compiere.model.proxy.MOrgInfoProxy;
import com.audaxis.compiere.pos.process.TransactionMessageProcessor;
import com.audaxis.compiere.util.CompiereException;
import com.compiere.client.SysEnv;

/**
 *  Order Model.
 * 	Please do not set DocStatus and C_DocType_ID directly.
 * 	They are set in the process() method.
 * 	Use DocAction and C_DocTypeTarget_ID instead.
 *
 *  @author Jorg Janke
 *  @version $Id: MOrder.java,v 1.5 2006/10/06 00:42:24 jjanke Exp $
 */


//  Copied to make public on createLines  ( for shipment ) 

public class MOrder extends X_C_Order implements DocAction
{
    /** Logger for class MOrder */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MOrder.class);
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 	Create new Order by copying
	 * 	@param from order
	 * 	@param dateDoc date of the document date
	 * 	@param C_DocTypeTarget_ID target document type
	 * 	@param isSOTrx sales order
	 * 	@param counter create counter links
	 *	@param copyASI copy line attributes Attribute Set Instance, Resource Assignment
	 * 	@param trx p_trx
	 *	@return Order
	 */
	public static MOrder copyFrom (MOrder from, Timestamp dateDoc,
			int C_DocTypeTarget_ID,
			boolean counter, boolean copyASI, Trx trx)
	{
		MOrder to = new MOrder (from.getCtx(), 0, trx);
		to.set_Trx(trx);
		PO.copyValues(from, to, from.getAD_Client_ID(), from.getAD_Org_ID());
		to.set_ValueNoCheck ("C_Order_ID", I_ZERO);
		to.set_ValueNoCheck ("DocumentNo", null);
		//
		to.setDocStatus (DOCSTATUS_Drafted);		//	Draft
		to.setDocAction(DOCACTION_Complete);
		//
		to.setC_DocType_ID(0);
		to.setC_DocTypeTarget_ID (C_DocTypeTarget_ID, true);
		//
		to.setIsSelected (false);
		to.setDateOrdered (dateDoc);
		to.setDateAcct (dateDoc);
		to.setDatePromised (dateDoc);	//	assumption
		to.setDatePrinted(null);
		to.setIsPrinted (false);
		//
		to.setIsApproved (false);
		to.setIsCreditApproved(false);
		to.setC_Payment_ID(0);
		to.setC_CashLine_ID(0);
		//	Amounts are updated  when adding lines
		to.setGrandTotal(Env.ZERO);
		to.setTotalLines(Env.ZERO);
		//
		to.setIsDelivered(false);
		to.setIsInvoiced(false);
		to.setIsSelfService(false);
		to.setIsTransferred (false);
		to.setPosted (false);
		to.setProcessed (false);
		if (counter)
			to.set_ValueNoCheck("Ref_Order_ID", from.getC_Order_ID());
		else
			to.set_ValueNoCheck("Ref_Order_ID", 0);
		//
		if (!to.save(trx))
			throw new CompiereStateException("Could not create Order");
		if (counter)
			from.set_ValueNoCheck("Ref_Order_ID",to.getC_Order_ID());

		if (to.copyLinesFrom(from, counter, copyASI) == 0)
			throw new CompiereStateException("Could not create Order Lines");

		return to;
	}	//	copyFrom


	/**************************************************************************
	 *  Default Constructor
	 *  @param ctx context
	 *  @param  C_Order_ID    order to load, (0 create new order)
	 *  @param trx p_trx name
	 */
	public MOrder(Ctx ctx, int C_Order_ID, Trx trx)
	{
		super (ctx, C_Order_ID, trx);
		//  New
		if (C_Order_ID == 0)
		{
			setDocStatus(DOCSTATUS_Drafted);
			setDocAction (DOCACTION_Prepare);
			//
			setDeliveryRule (DELIVERYRULE_Availability);
			setFreightCostRule (FREIGHTCOSTRULE_FreightIncluded);
			setInvoiceRule (INVOICERULE_Immediate);
			setPaymentRule(PAYMENTRULE_OnCredit);
			setPriorityRule (PRIORITYRULE_Medium);
			setDeliveryViaRule (DELIVERYVIARULE_Pickup);
			//
			setIsDiscountPrinted (false);
			setIsSelected (false);
			setIsTaxIncluded (false);
			setIsSOTrx (true);
			setIsDropShip(false);
			setSendEMail (false);
			//
			setIsApproved(false);
			setIsPrinted(false);
			setIsCreditApproved(false);
			setIsDelivered(false);
			setIsInvoiced(false);
			setIsTransferred(false);
			setIsSelfService(false);
			setIsReturnTrx(false);
			//
			super.setProcessed(false);
			setProcessing(false);
			setPosted(false);

			setDateAcct (new Timestamp(System.currentTimeMillis()));
			setDatePromised (new Timestamp(System.currentTimeMillis()));
			setDateOrdered (new Timestamp(System.currentTimeMillis()));

			setFreightAmt (Env.ZERO);
			setChargeAmt (Env.ZERO);
			setTotalLines (Env.ZERO);
			setGrandTotal (Env.ZERO);
		}
	}	//	MOrder

	public MOrder(X_I_Order imp)
	{
		this (imp.getCtx(), 0, imp.get_Trx());
		PO.copyValues(imp, this, imp.getAD_Client_ID(),imp.getAD_Org_ID());
		

		setC_DocTypeTarget_ID(imp.getC_DocType_ID());
		setM_PriceList_ID(imp.getM_PriceList_ID());
		
		if(imp.getDocumentNo() !=null && imp.getDocumentNo().length()!=0)
			setDocumentNo(imp.getDocumentNo());
		if(getBill_BPartner_ID() == 0)
			setBill_BPartner_ID(imp.getC_BPartner_ID());

		setBill_Location_ID(imp.getBillTo_ID());
		if(getBill_User_ID() == 0 && getAD_User_ID() != 0)
			setBill_User_ID(getAD_User_ID());
		if(getDateAcct() == null)
			setDateAcct (new Timestamp(System.currentTimeMillis()));
		if(getDatePromised() == null)
			setDatePromised (new Timestamp(System.currentTimeMillis()));
		if(getDateOrdered() == null)
			setDateOrdered (new Timestamp(System.currentTimeMillis()));
		
		if( getPaymentRule() == null )
		{
			String docTypeSql = "SELECT d.DocSubTypeSO "
								+ "FROM C_DocType d "
								+ "LEFT OUTER JOIN AD_Sequence s ON (d.DocNoSequence_ID=s.AD_Sequence_ID) "
								+ "WHERE C_DocType_ID=?";
			String docSubTypeSO = DB.getSQLValueString(get_Trx(), docTypeSql, imp.getC_DocType_ID());
			if (docSubTypeSO != null && docSubTypeSO.equals(MOrder.DocSubTypeSO_POS))								
				setPaymentRule(X_C_Order.PAYMENTRULE_Cash);
			else
				setPaymentRule(X_C_Order.PAYMENTRULE_OnCredit);
		}
	}	//	MOrder

	/**************************************************************************
	 *  Project Constructor
	 *  @param  project Project to create Order from
	 *  @param IsSOTrx sales order
	 * 	@param	DocSubTypeSO if SO DocType Target (default DocSubTypeSO_OnCredit)
	 */
	public MOrder (MProject project, boolean IsSOTrx, String DocSubTypeSO)
	{
		this (project.getCtx(), 0, project.get_Trx());
		setAD_Client_ID(project.getAD_Client_ID());
		setAD_Org_ID(project.getAD_Org_ID());
		setC_Campaign_ID(project.getC_Campaign_ID());
		setSalesRep_ID(project.getSalesRep_ID());
		//
		setC_Project_ID(project.getC_Project_ID());
		setDescription(project.getName());
		Timestamp ts = project.getDateContract();
		if (ts != null)
			setDateOrdered (ts);
		ts = project.getDateFinish();
		if (ts != null)
			setDatePromised (ts);
		//
		setC_BPartner_ID(project.getC_BPartner_ID());
		setC_BPartner_Location_ID(project.getC_BPartner_Location_ID());
		setAD_User_ID(project.getAD_User_ID());
		//
		setM_Warehouse_ID(project.getM_Warehouse_ID());
		setM_PriceList_ID(project.getM_PriceList_ID());
		setC_PaymentTerm_ID(project.getC_PaymentTerm_ID());
		//
		setIsSOTrx(IsSOTrx);
		if (IsSOTrx)
		{
			if ((DocSubTypeSO == null) || (DocSubTypeSO.length() == 0))
				setC_DocTypeTarget_ID(DocSubTypeSO_OnCredit);
			else
				setC_DocTypeTarget_ID(DocSubTypeSO);
		}
		else
			setC_DocTypeTarget_ID();
	}	//	MOrder

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trx transaction
	 */
	public MOrder (Ctx ctx, ResultSet rs, Trx trx)
	{
		super(ctx, rs, trx);
	}	//	MOrder

	/** Force Creation of order		*/
	private boolean			m_forceCreation = false;

	/**
	 * 	Overwrite Client/Org if required
	 * 	@param AD_Client_ID client
	 * 	@param AD_Org_ID org
	 */
	@Override
	public void setClientOrg (int AD_Client_ID, int AD_Org_ID)
	{
		super.setClientOrg(AD_Client_ID, AD_Org_ID);
	}	//	setClientOrg


	/**
	 * 	Add to Description
	 *	@param description text
	 */
	public void addDescription (String description)
	{
		String desc = getDescription();
		if (desc == null)
			setDescription(description);
		else
			setDescription(desc + " | " + description);
	}	//	addDescription

	/**
	 * 	Set Business Partner (Ship+Bill)
	 *	@param C_BPartner_ID bpartner
	 */
	@Override
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		super.setC_BPartner_ID (C_BPartner_ID);
		super.setBill_BPartner_ID (C_BPartner_ID);
	}	//	setC_BPartner_ID

	/**
	 * 	Set Business Partner Defaults & Details.
	 * 	SOTrx should be set.
	 * 	@param bp business partner
	 */
	public void setBPartner (MBPartner bp)
	{
		if ((bp == null) || !bp.isActive())
			return;

		setC_BPartner_ID(bp.getC_BPartner_ID());
		//	Defaults Payment Term
		int ii = 0;
		if (isSOTrx())
			ii = bp.getC_PaymentTerm_ID();
		else
			ii = bp.getPO_PaymentTerm_ID();
		if (ii != 0)
			setC_PaymentTerm_ID(ii);
		else
			setC_PaymentTerm_ID(getCtx().getContextAsInt("#C_PaymentTerm_ID"));
		//	Default Price List
		if (isSOTrx())
			ii = bp.getM_PriceList_ID();
		else
			ii = bp.getPO_PriceList_ID();

		if (ii != 0)
			setM_PriceList_ID(ii);
		//70902
		String sql2 = "SELECT M_PriceList_ID FROM Z_BP_PriceListByDocType WHERE C_BPartner_ID=? and C_DocType_ID= ?";

		if(getC_DocTypeTarget_ID()>0){
		int pricelist=DB.getSQLValue(get_Trx(), sql2, bp.getC_BPartner_ID(), getC_DocTypeTarget_ID());
		//70902
		if (!isSOTrx() && pricelist>0){
			setM_PriceList_ID(pricelist);
		 //70902
		}}
		//	Default Delivery/Via Rule
		String ss = bp.getDeliveryRule();
		if (ss != null)
			setDeliveryRule(ss);
		ss = bp.getDeliveryViaRule();
		if (ss != null)
			setDeliveryViaRule(ss);
		//	Default Invoice/Payment Rule
		ss = bp.getInvoiceRule();
		if (ss != null)
			setInvoiceRule(ss);
		if (isSOTrx())
			ss = bp.getPaymentRule();
		else
			ss = bp.getPaymentRulePO();
		if (ss != null)
			setPaymentRule(ss);
		//	Sales Rep
		ii = bp.getSalesRep_ID();
		if (ii != 0)
			setSalesRep_ID(ii);

		setBPartnerLocation(bp);
		
		//	Set Contact
		MUser[] contacts = bp.getContacts(false);
		if ((contacts != null) && (contacts.length == 1))
			setAD_User_ID(contacts[0].getAD_User_ID());
		//
		setC_Project_ID(0);
		
	}	//	setBPartner

	
	///70902
	public void setBPartner(MBPartner bp,int C_DocType_ID)
	{  int pricelist;
		if ((bp == null) || !bp.isActive())
			return;

		setC_BPartner_ID(bp.getC_BPartner_ID());
		//	Defaults Payment Term
		int ii = 0;
		if (isSOTrx())
			ii = bp.getC_PaymentTerm_ID();
		else
			ii = bp.getPO_PaymentTerm_ID();
		if (ii != 0)
			setC_PaymentTerm_ID(ii);
		else
			setC_PaymentTerm_ID(getCtx().getContextAsInt("#C_PaymentTerm_ID"));	
		//70902
		String sql = "SELECT M_PriceList_ID FROM Z_BP_PriceListByDocType WHERE C_BPartner_ID=? and C_DocType_ID= ?";

		pricelist=DB.getSQLValue(get_Trx(), sql, bp.getC_BPartner_ID(), C_DocType_ID);
		//70902
		if (isSOTrx())
			ii = bp.getM_PriceList_ID();
		else
		{
			//70902
		 if (pricelist == -1)
			ii = bp.getPO_PriceList_ID();
		 else
			 ii=pricelist;
		 //70902
		}
		if (ii != 0)
			setM_PriceList_ID(ii);
		//	Default Delivery/Via Rule
		String ss = bp.getDeliveryRule();
		if (ss != null)
			setDeliveryRule(ss);
		ss = bp.getDeliveryViaRule();
		if (ss != null)
			setDeliveryViaRule(ss);
		//	Default Invoice/Payment Rule
		ss = bp.getInvoiceRule();
		if (ss != null)
			setInvoiceRule(ss);
		if (isSOTrx())
			ss = bp.getPaymentRule();
		else
			ss = bp.getPaymentRulePO();
		if (ss != null)
			setPaymentRule(ss);
		//	Sales Rep
		ii = bp.getSalesRep_ID();
		if (ii != 0)
			setSalesRep_ID(ii);

		setBPartnerLocation(bp);
		
		//	Set Contact
		MUser[] contacts = bp.getContacts(false);
		if ((contacts != null) && (contacts.length > 0))
			setAD_User_ID(contacts[0].getAD_User_ID());
		//
		setC_Project_ID(0);
		
	}	//	setBPartner

	/**
	 * 	Set Business Partner - Callout
	 *	@param oldC_BPartner_ID old BP
	 *	@param newC_BPartner_ID new BP
	 *	@param windowNo window no
	 */
	@UICallout public void setC_BPartner_ID (String oldC_BPartner_ID,
			String newC_BPartner_ID, int windowNo) throws Exception
			{
		int pricelist=-1;
		if ((newC_BPartner_ID == null) || (newC_BPartner_ID.length() == 0))
			return;
		int C_BPartner_ID = Integer.parseInt(newC_BPartner_ID);
		if (C_BPartner_ID == 0)
			return;
		int olcl = getC_BPartner_Location_ID();
		if(isSOTrx() && !getDocStatus().equals("DR") && is_ValueChanged("C_BPartner_ID") && oldC_BPartner_ID!=null)
		{
			String RoleToModif = Msg.getMsg(getCtx(), "ROLE_BPARTNER_MODIF");
			if(!RoleToModif.contains(""+getCtx().getAD_Role_ID()))
			{
				String RoleToModifMsg = Msg.getMsg(getCtx(), "ROLE_BPARTNER_MSG");
				p_changeVO.addError(RoleToModifMsg);
				
				super.setC_BPartner_ID(Integer.parseInt(oldC_BPartner_ID));
				super.setC_BPartner_Location_ID(olcl);
				return;
			}
		}
		

		// Skip these steps for RMA. These fields are copied over from the orignal order instead.
		if (isReturnTrx())
		{
			setM_ReturnPolicy_ID();
			return;
		}

		String sql = "SELECT p.AD_Language,p.C_PaymentTerm_ID,"
			+ " COALESCE(p.M_PriceList_ID,g.M_PriceList_ID) AS M_PriceList_ID, p.PaymentRule,p.POReference,"
			+ " p.SO_Description,p.IsDiscountPrinted,p.SalesRep_ID,"
			+ " p.InvoiceRule,p.DeliveryRule,p.FreightCostRule,DeliveryViaRule,"
			+ " p.SO_CreditLimit, p.SO_CreditLimit-p.SO_CreditUsed AS CreditAvailable,"
			+ " lship.C_BPartner_Location_ID,c.AD_User_ID,"
			+ " COALESCE(p.PO_PriceList_ID,g.PO_PriceList_ID) AS PO_PriceList_ID, p.PaymentRulePO,p.PO_PaymentTerm_ID,"
			+ " lbill.C_BPartner_Location_ID AS Bill_Location_ID, p.SOCreditStatus, lship.IsBillTo ShipToIsBillTo "
			+ "FROM C_BPartner p"
			+ " INNER JOIN C_BP_Group g ON (p.C_BP_Group_ID=g.C_BP_Group_ID)"
			+ " LEFT OUTER JOIN C_BPartner_Location lbill ON (p.C_BPartner_ID=lbill.C_BPartner_ID AND lbill.IsBillTo='Y' AND lbill.IsActive='Y')"
			+ " LEFT OUTER JOIN C_BPartner_Location lship ON (p.C_BPartner_ID=lship.C_BPartner_ID AND lship.IsShipTo='Y' AND lship.IsActive='Y')"
			+ " LEFT OUTER JOIN AD_User c ON (p.C_BPartner_ID=c.C_BPartner_ID) "
			+ "WHERE p.C_BPartner_ID=? AND p.IsActive='Y'";		//	#1

		boolean IsSOTrx = isSOTrx();
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				super.setC_BPartner_ID(C_BPartner_ID);

				//	PriceList (indirect: IsTaxIncluded & Currency)
				//#78082 : On force la valeur de liste du prix de DocInfo si il > 0
				MDocTypeInfo docinfo=MDocTypeInfo.get(getCtx(), getC_DocTypeTarget_ID(), get_Trx());
				MDoctypeInfoProxy proxy=null;
				int ii;
				if(docinfo!=null)
				proxy= new MDoctypeInfoProxy(docinfo);
				if(proxy==null || proxy.getM_PriceList_ID()<=0)
				{
					 ii = rs.getInt(IsSOTrx ? "M_PriceList_ID" : "PO_PriceList_ID");
					//70902
					String sql1 = "SELECT M_PriceList_ID FROM Z_BP_PriceListByDocType WHERE C_BPartner_ID=? and C_DocType_ID= ?";
					
					if(getC_DocTypeTarget_ID()>0)					
					pricelist=DB.getSQLValue(get_Trx(), sql1, C_BPartner_ID, getC_DocTypeTarget_ID());
					
					if (!IsSOTrx && pricelist > -1)
						ii=pricelist;
					
					///70902
					if (ii != 0)
						setM_PriceList_ID(null, String.valueOf(ii), windowNo);
					else
					{	//	get default PriceList
						ii = getCtx().getContextAsInt("#M_PriceList_ID");
						if (ii != 0)
							setM_PriceList_ID(null, String.valueOf(ii), windowNo);
					}
				}
				//	Bill-To BPartner
				setBill_BPartner_ID(C_BPartner_ID);

				//	Contact - overwritten by InfoBP selection
				int contID = rs.getInt("AD_User_ID");
				if (getCtx().getContextAsInt(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "C_BPartner_ID") == C_BPartner_ID)
				{
					String cont = getCtx().getContext(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "AD_User_ID");
					if (cont.length() > 0)
						contID = Integer.parseInt(cont);
				}
				setAD_User_ID(contID);
				setBill_User_ID(contID);
				
				// Setup Default UserID
				int defUserID = DB.getSQLValue(get_Trx(), "select max(ad_user_id) from ad_user where c_bpartner_id = ? and is_ZDefault = 'Y' ", C_BPartner_ID ); 
				if (defUserID > 0 && getAD_User_ID() != defUserID ){
					setAD_User_ID(defUserID);
					setBill_User_ID(defUserID);
				}

				/* If user logged in is not a SalesRep, default the SalesRep associated with
				 * the customer.
				 */
				if(!MUser.isSalesRep(getCtx().getAD_User_ID()) && IsSOTrx)
				{
					int SalesRep_ID=rs.getInt("SalesRep_ID");
					if(SalesRep_ID!=0)
						setSalesRep_ID(SalesRep_ID);
				}

				//	CreditAvailable
				if (IsSOTrx)
				{
					BigDecimal CreditLimit = rs.getBigDecimal("SO_CreditLimit");
					//	String SOCreditStatus = rs.getString("SOCreditStatus");
					if ((CreditLimit != null) && (CreditLimit.signum() != 0))
					{
						BigDecimal CreditAvailable = rs.getBigDecimal("CreditAvailable");
						if ((p_changeVO != null)
								&& (CreditAvailable != null) && (CreditAvailable.signum() < 0))
						{
							String msg = Msg.getMsg(getCtx(), "CreditLimitOver",
									DisplayType.getNumberFormat(DisplayTypeConstants.Amount).format(CreditAvailable));
							p_changeVO.addError(msg);
						}
					}
				}

				//	PO Reference
				//	Do not set if already present
				String s = rs.getString("POReference");
				String poRef = getPOReference();
				if ((s != null) && (s.length() != 0) && ((poRef ==null) || (poRef.trim().length() == 0)))
					if(IsSOTrx)		//Do Not set if Purchase Order
						setPOReference(s.toUpperCase());

				//	SO Description
				//	Do not set if already present
				s = rs.getString("SO_Description");
				if ((s != null) && (s.trim().length() != 0) && ((poRef ==null) || (poRef.trim().length() == 0)))
					if(IsSOTrx)		//Do Not set if Purchase Order
						setDescription(s);
				//	IsDiscountPrinted
				s = rs.getString("IsDiscountPrinted");
				setIsDiscountPrinted("Y".equals(s));

				//	Defaults, if not Walk-in Receipt or Walk-in Invoice
				String OrderType = getOrderTypeFromTargetDocType(windowNo);
				setInvoiceRule(INVOICERULE_AfterDelivery);
				setDeliveryRule(DELIVERYRULE_Availability);
				setPaymentRule(PAYMENTRULE_OnCredit);
				if (OrderType.equals(DocSubTypeSO_Prepay))
				{
					setInvoiceRule(INVOICERULE_Immediate);
					setDeliveryRule(DELIVERYRULE_AfterReceipt);
				}
				else if (OrderType.equals(MOrder.DocSubTypeSO_POS))	//  for POS
					setPaymentRule(PAYMENTRULE_Cash);
				else
				{
					//	PaymentRule
					s = rs.getString(IsSOTrx ? "PaymentRule" : "PaymentRulePO");
					if ((s != null) && (s.length() != 0))
					{
						if (s.equals("B"))				//	No Cache in Non POS
							s = PAYMENTRULE_OnCredit;	//  Payment Term
						if (IsSOTrx && (s.equals("S") || s.equals("U")))	//	No Check/Transfer for SO_Trx
							s = PAYMENTRULE_OnCredit;	//  Payment Term
						setPaymentRule(s);
					}
					//	Payment Term
					ii = rs.getInt(IsSOTrx ? "C_PaymentTerm_ID" : "PO_PaymentTerm_ID");
					if (ii != 0)
						setC_PaymentTerm_ID(ii);
					else
						setC_PaymentTerm_ID(getCtx().getContextAsInt("#C_PaymentTerm_ID"));
					//	InvoiceRule
					s = rs.getString("InvoiceRule");
					if ((s != null) && (s.length() != 0))
						setInvoiceRule(s);
					//	DeliveryRule
					s = rs.getString("DeliveryRule");
					if ((s != null) && (s.length() != 0))
						setDeliveryRule(s);
					//	FreightCostRule
					s = rs.getString("FreightCostRule");
					if ((s != null) && (s.length() != 0))
						setFreightCostRule(s);
					//	DeliveryViaRule
					s = rs.getString("DeliveryViaRule");
					if ((s != null) && (s.length() != 0))
						setDeliveryViaRule(s);
				}
				setC_Project_ID(0);
				boolean match = false, overwrite = false;
				int loc = 0;
				if (C_BPartner_ID==getCtx().getContextAsInt( EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "C_BPartner_ID"))
					loc = getCtx().getContextAsInt( EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "C_BPartner_Location_ID");
				int bill_Location_ID = 0, shipTo_ID = 0;
				if(loc>0)	//	valid location returned from the InfoBP selection
					do{
						// Ship-To Location
						shipTo_ID = rs.getInt("C_BPartner_Location_ID");
						bill_Location_ID = rs.getInt("Bill_Location_ID");
						//	overwritten by InfoBP selection - works only if InfoWindow
						//	was used otherwise creates error (uses last value, may belong to differnt BP)
						if (loc > 0 && (loc==shipTo_ID || loc==bill_Location_ID))
							match=true;
						overwrite = "Y".equals(rs.getString("ShipToIsBillTo"))?true:false;
					}while(rs.next() && !match);
				else{	//	no selection from InfoBP selection
					shipTo_ID = rs.getInt("C_BPartner_Location_ID");
					bill_Location_ID = rs.getInt("Bill_Location_ID");
					overwrite = "Y".equals(rs.getString("ShipToIsBillTo"));
				}

				if(bill_Location_ID == 0)
					p_changeVO.addChangedValue("Bill_Location_ID", (String)null);
				else{
					setBill_Location_ID(bill_Location_ID);
				}

				if (shipTo_ID == 0)
					p_changeVO.addChangedValue("C_BPartner_Location_ID", (String)null);
				else
				{
					super.setC_BPartner_Location_ID(shipTo_ID);
					if (overwrite)	//	set the same
						setBill_Location_ID(shipTo_ID);
				}
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
			}	//	setC_BPartner_ID

	
	/**
	 * 	Set Business Partner - Callout
	 *	@param oldC_BPartner_ID old BP
	 *	@param newC_BPartner_ID new BP
	 *	@param windowNo window no
	 */
	@UICallout public void setZ_UbiSoftUrl (String oldC_Url,
			String newC_utl, int windowNo) throws Exception
	{
		setZ_UbiSoftUrl(oldC_Url);  //  Never change this Value
	}

	/**
	 * 	Set Bill Business Partner - Callout
	 *	@param oldBill_BPartner_ID old BP
	 *	@param newBill_BPartner_ID new BP
	 *	@param windowNo window no
	 */
	@UICallout public void setBill_BPartner_ID (String oldBill_BPartner_ID,
			String newBill_BPartner_ID, int windowNo) throws Exception
			{
		if ((newBill_BPartner_ID == null) || (newBill_BPartner_ID.length() == 0))
			return;
		int bill_BPartner_ID = Integer.parseInt(newBill_BPartner_ID);
		if (bill_BPartner_ID == 0)
			return;

		// Skip these steps for RMA. These fields are copied over from the orignal order instead.
		if (isReturnTrx())
			return;

		String sql = "SELECT p.AD_Language,p.C_PaymentTerm_ID,"
			+ "p.M_PriceList_ID,p.PaymentRule,p.POReference,"
			+ "p.SO_Description,p.IsDiscountPrinted,"
			+ "p.InvoiceRule,p.DeliveryRule,p.FreightCostRule,DeliveryViaRule,"
			+ "p.SO_CreditLimit, p.SO_CreditLimit-p.SO_CreditUsed AS CreditAvailable,"
			+ "c.AD_User_ID,"
			+ "p.PO_PriceList_ID, p.PaymentRulePO, p.PO_PaymentTerm_ID,"
			+ "lbill.C_BPartner_Location_ID AS Bill_Location_ID "
			+ "FROM C_BPartner p"
			+ " LEFT OUTER JOIN C_BPartner_Location lbill ON (p.C_BPartner_ID=lbill.C_BPartner_ID AND lbill.IsBillTo='Y' AND lbill.IsActive='Y')"
			+ " LEFT OUTER JOIN AD_User c ON (p.C_BPartner_ID=c.C_BPartner_ID) "
			+ "WHERE p.C_BPartner_ID=? AND p.IsActive='Y'";		//	#1

		boolean IsSOTrx = isSOTrx();

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, bill_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				super.setBill_BPartner_ID(bill_BPartner_ID);
				//	PriceList (indirect: IsTaxIncluded & Currency)
				int ii = rs.getInt(IsSOTrx ? "M_PriceList_ID" : "PO_PriceList_ID");
				if (ii != 0)
					setM_PriceList_ID(null, String.valueOf(ii), windowNo);
				else
				{	//	get default PriceList
					ii = getCtx().getContextAsInt("#M_PriceList_ID");
					if (ii != 0)
						setM_PriceList_ID(null, String.valueOf(ii), windowNo);
				}
				//70902
				String sql2 = "SELECT M_PriceList_ID FROM Z_BP_PriceListByDocType WHERE C_BPartner_ID=? and C_DocType_ID= ?";

				int pricelist=DB.getSQLValue(get_Trx(), sql2, bill_BPartner_ID, getC_DocTypeTarget_ID());
				//70902
				if (!isSOTrx() && pricelist>0){
					setM_PriceList_ID(null, String.valueOf(ii), windowNo);
				 //70902
				}

				int bill_Location_ID = rs.getInt("Bill_Location_ID");
				//	overwritten by InfoBP selection - works only if InfoWindow
				//	was used otherwise creates error (uses last value, may belong to differnt BP)
				if (getCtx().getContextAsInt(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "C_BPartner_ID") == bill_BPartner_ID)
				{
					String loc = getCtx().getContext(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "C_BPartner_Location_ID");
					if (loc.length() > 0)
						bill_Location_ID = Integer.parseInt(loc);
				}
				if (bill_Location_ID != 0)
					setBill_Location_ID(bill_Location_ID);

				//	Contact - overwritten by InfoBP selection
				int contID = rs.getInt("AD_User_ID");
				if (getCtx().getContextAsInt(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "C_BPartner_ID") == bill_BPartner_ID)
				{
					String cont = getCtx().getContext(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "AD_User_ID");
					if (cont.length() > 0)
						contID = Integer.parseInt(cont);
				}
				setBill_User_ID(contID);

				//	CreditAvailable
				if (IsSOTrx)
				{
					BigDecimal CreditLimit = rs.getBigDecimal("SO_CreditLimit");
					//	String SOCreditStatus = rs.getString("SOCreditStatus");
					if ((CreditLimit != null) && (CreditLimit.signum() != 0))
					{
						BigDecimal CreditAvailable = rs.getBigDecimal("CreditAvailable");
						if ((p_changeVO != null)
								&& (CreditAvailable != null) && (CreditAvailable.signum() < 0))
						{
							String msg = Msg.getMsg(getCtx(), "CreditLimitOver",
									DisplayType.getNumberFormat(DisplayTypeConstants.Amount).format(CreditAvailable));
							p_changeVO.addError(msg);
						}
					}
				}

				//	PO Reference
				String s = rs.getString("POReference");

				// Order Reference should not be reset by Bill To BPartner; only by BPartner
				/*if (s != null && s.length() != 0)
					setPOReference(s); */
				//	SO Description
				//  if there is an existing description, do not change it.
				s = rs.getString("SO_Description");
				String Description = getDescription();
				if ((s != null) && (s.trim().length() != 0) && ((Description ==null) || (Description.trim().length() == 0)))
					if(IsSOTrx)		//Do Not set if Purchase Order
						setDescription(s);
				//	IsDiscountPrinted
				s = rs.getString("IsDiscountPrinted");
				setIsDiscountPrinted("Y".equals(s));

				//	Defaults, if not Walk-in Receipt or Walk-in Invoice
				//	Defaults, if not Walk-in Receipt or Walk-in Invoice
				String OrderType = getOrderTypeFromTargetDocType(windowNo);
				setInvoiceRule(INVOICERULE_AfterDelivery);
				setPaymentRule(PAYMENTRULE_OnCredit);
				if (OrderType.equals(DocSubTypeSO_Prepay))
					setInvoiceRule(INVOICERULE_Immediate);
				else if (OrderType.equals(MOrder.DocSubTypeSO_POS))	//  for POS
					setPaymentRule(PAYMENTRULE_Cash);
				else
				{
					//	PaymentRule
					s = rs.getString(IsSOTrx ? "PaymentRule" : "PaymentRulePO");
					if ((s != null) && (s.length() != 0))
					{
						if (s.equals("B"))				//	No Cache in Non POS
							s = PAYMENTRULE_OnCredit;	//  Payment Term
						if (IsSOTrx && (s.equals("S") || s.equals("U")))	//	No Check/Transfer for SO_Trx
							s = PAYMENTRULE_OnCredit;	//  Payment Term
						setPaymentRule(s);
					}
					//	Payment Term
					ii = rs.getInt(IsSOTrx ? "C_PaymentTerm_ID" : "PO_PaymentTerm_ID");
					if (ii != 0)
						setC_PaymentTerm_ID(ii);
					else
						setC_PaymentTerm_ID(getCtx().getContextAsInt("#C_PaymentTerm_ID"));
					//	InvoiceRule
					s = rs.getString("InvoiceRule");
					if ((s != null) && (s.length() != 0))
						setInvoiceRule(s);
				}
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, "bPartnerBill", e);
		}
			}	//	setBill_BPartner_ID


	/**
	 * 	Set Business Partner Location (Ship+Bill)
	 *	@param C_BPartner_Location_ID bp location
	 */
	@Override
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID)
	{
		super.setC_BPartner_Location_ID (C_BPartner_Location_ID);
		super.setBill_Location_ID(C_BPartner_Location_ID);
	}	//	setC_BPartner_Location_ID

	/**
	 * 	Set Business Partner Contact (Ship+Bill)
	 *	@param AD_User_ID user
	 */
	@Override
	public void setAD_User_ID (int AD_User_ID)
	{
		super.setAD_User_ID (AD_User_ID);
		super.setBill_User_ID (AD_User_ID);
	}	//	setAD_User_ID

	/**
	 * 	Set Ship Business Partner
	 *	@param C_BPartner_ID bpartner
	 */
	public void setShip_BPartner_ID (int C_BPartner_ID)
	{
		super.setC_BPartner_ID (C_BPartner_ID);
	}	//	setShip_BPartner_ID

	/**
	 * 	Set Ship Business Partner Location
	 *	@param C_BPartner_Location_ID bp location
	 */
	public void setShip_Location_ID (int C_BPartner_Location_ID)
	{
		super.setC_BPartner_Location_ID (C_BPartner_Location_ID);
	}	//	setShip_Location_ID

	/**
	 * 	Set Ship Business Partner Contact
	 *	@param AD_User_ID user
	 */
	public void setShip_User_ID (int AD_User_ID)
	{
		super.setAD_User_ID (AD_User_ID);
	}	//	setShip_User_ID


	/**
	 * 	Set Warehouse
	 *	@param M_Warehouse_ID warehouse
	 */
	@Override
	public void setM_Warehouse_ID (int M_Warehouse_ID)
	{
		super.setM_Warehouse_ID (M_Warehouse_ID);
	}	//	setM_Warehouse_ID

	/**
	 * 	Set M_Warehouse_ID - Callout
	 *	@param oldM_Warehouse_ID old
	 *	@param newM_Warehouse_ID new
	 *	@param windowNo window no
	 */
	@UICallout public void setM_Warehouse_ID (String oldM_Warehouse_ID,
			String newM_Warehouse_ID, int windowNo) throws Exception
			{
		if ((newM_Warehouse_ID == null) || (newM_Warehouse_ID.length() == 0))
			return;

		int M_Warehouse_ID=Integer.parseInt(newM_Warehouse_ID);
		if (M_Warehouse_ID == 0)
			return;
		setM_Warehouse_ID(M_Warehouse_ID);
		MWarehouse wh = MWarehouse.get(getCtx(), M_Warehouse_ID);
		String DeliveryRule = getDeliveryRule();
		if((wh.isDisallowNegativeInv() && DeliveryRule.equals(X_C_Order.DELIVERYRULE_Force)) ||
				((DeliveryRule == null) || (DeliveryRule.length()==0)))
			setDeliveryRule(DELIVERYRULE_Availability);
		/** Need to set Delivery Rule to itself, because otherwise it gets nullified in webUI.
		 * Since Delivery Rule is dependent on the warehouse (Force is not allowed if Neg Inventory
		 * is disallowed, it gets reset when the warehouse is changed.
		 */
		else
			setDeliveryRule(DeliveryRule);
			}	//	setM_Warehouse_ID
	
	
	@UICallout public void setAD_Org_ID(String oldAD_Org_ID,String newAd_Org_ID, int windowNo){
		if ((newAd_Org_ID == null) || (newAd_Org_ID.length() == 0))
			return;
		int ad_Org_ID =Integer.parseInt(newAd_Org_ID);
		if (ad_Org_ID == 0)
			return;
		setAD_Org_ID(ad_Org_ID);
		//MOrg org = new MOrg(getCtx(), ad_Org_ID,null);
		//Changer la logique avec la nouvelle table
		int M_Warehouse_ID = MDefaultWarehouse.getM_Warehouse_ID(get_Trx(), getC_DocType_ID(), ad_Org_ID, getAD_Client_ID());
		if(M_Warehouse_ID!=0 && isSOTrx() || getM_Warehouse_ID()>1)
			setM_Warehouse_ID(M_Warehouse_ID!=0 && isSOTrx()?M_Warehouse_ID:getM_Warehouse_ID());
	}

	/**
	 * 	Set Drop Ship
	 *	@param IsDropShip drop ship
	 */
	@Override
	public void setIsDropShip (boolean IsDropShip)
	{
		super.setIsDropShip (IsDropShip);
	}	//	setIsDropShip


	public void setPriceListVersion(int windowNo)
	{
		int M_PriceList_ID = getM_PriceList_ID();
		if (M_PriceList_ID == 0)
			return;

		Timestamp orderDate = getDateOrdered();
		if(orderDate == null)
			return;

		String sql = "SELECT pl.IsTaxIncluded,pl.EnforcePriceLimit,pl.C_Currency_ID,c.StdPrecision,"
			+ "plv.M_PriceList_Version_ID,plv.ValidFrom "
			+ "FROM M_PriceList pl,C_Currency c,M_PriceList_Version plv "
			+ "WHERE pl.C_Currency_ID=c.C_Currency_ID"
			+ " AND pl.M_PriceList_ID=plv.M_PriceList_ID"
			+ " AND pl.M_PriceList_ID=? "						//	1
			+ " AND plv.ValidFrom <=? "							//  2
			+ " AND plv.IsActive='Y' "
			+ "ORDER BY plv.ValidFrom DESC";
		//	Use newest price list - may not be future
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, M_PriceList_ID);
			pstmt.setTimestamp(2, orderDate);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				//	Tax Included
				setIsTaxIncluded("Y".equals(rs.getString(1)));
				//	Price Limit Enforce
				if (p_changeVO != null)
					p_changeVO.setContext(getCtx(), windowNo, "EnforcePriceLimit", rs.getString(2));
				//	Currency
				Integer ii = Integer.valueOf(rs.getInt(3));
				setC_Currency_ID(ii);
				//	PriceList Version
				if (p_changeVO != null)
					p_changeVO.setContext(getCtx(), windowNo, "M_PriceList_Version_ID", rs.getInt(5));
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
	}


	/**
	 * 	Set DateOrdered - Callout
	 *	@param oldDateOrdered old
	 *	@param newDateOrdered new
	 *	@param windowNo window no
	 */
	@UICallout public void setDateOrdered (String oldDateOrdered,
			String newDateOrdered, int windowNo) throws Exception
			{
		if ((newDateOrdered == null) || (newDateOrdered.length() == 0))
			return;
		Timestamp dateOrdered = PO.convertToTimestamp(newDateOrdered);
		if (dateOrdered == null)
			return;
		setDateOrdered(dateOrdered);
		setPriceListVersion(windowNo);

			}	//	setDateOrdered

	/**
	 *	Set Date Ordered and Acct Date
	 */
	@Override
	public void setDateOrdered(Timestamp dateOrdered)
	{
		super.setDateOrdered(dateOrdered);
		super.setDateAcct(dateOrdered);
	}	//	setDateOrdered

	/*************************************************************************/

	/** Sales Order Sub Type - SO	*/
	public static final String		DocSubTypeSO_Standard = "SO";
	/** Sales Order Sub Type - OB	*/
	public static final String		DocSubTypeSO_Quotation = "OB";
	/** Sales Order Sub Type - ON	*/
	public static final String		DocSubTypeSO_Proposal = "ON";
	/** Sales Order Sub Type - PR	*/
	public static final String		DocSubTypeSO_Prepay = "PR";
	/** Sales Order Sub Type - WR	*/
	public static final String		DocSubTypeSO_POS = "WR";
	/** Sales Order Sub Type - WP	*/
	public static final String		DocSubTypeSO_Warehouse = "WP";
	/** Sales Order Sub Type - WI	*/
	public static final String		DocSubTypeSO_OnCredit = "WI";
	/** Sales Order Sub Type - RM	*/
	public static final String		DocSubTypeSO_RMA = "RM";


	/**
	 * 	Set Target Sales Document Type - Callout.
	 * 	Sets OrderType (=DocSubTypeSO), HasCharges [ctx only]
	 * 	IsDropShip, DeliveryRule, InvoiceRule, PaymentRule, IsSOTrx, DocumentNo
	 * 	If BP is changed: PaymentRule, C_PaymentTerm_ID, InvoiceRule, DeliveryRule,
	 * 	FreightCostRule, DeliveryViaRule
	 * 	@param oldC_DocTypeTarget_ID old ID
	 * 	@param newC_DocTypeTarget_ID new ID
	 * 	@param windowNo window
	 */
	@UICallout public void setC_DocTypeTarget_ID (String oldC_DocTypeTarget_ID,
			String newC_DocTypeTarget_ID, int windowNo) throws Exception
			{
		if (Util.isEmpty(newC_DocTypeTarget_ID))
			return;
		int C_DocTypeTarget_ID = convertToInt(newC_DocTypeTarget_ID);
		if (C_DocTypeTarget_ID == 0)
			return;
		
		MDocTypeInfo docinfo=MDocTypeInfo.get(getCtx(), C_DocTypeTarget_ID, get_Trx());
		
		

		//	Re-Create new DocNo, if there is a doc number already
		//	and the existing source used a different Sequence number
		String oldDocNo = getDocumentNo();
		boolean newDocNo = (oldDocNo == null);
		if (!newDocNo && oldDocNo.startsWith("<") && oldDocNo.endsWith(">"))
			newDocNo = true;
		int oldC_DocType_ID = getC_DocType_ID();
		if ((oldC_DocType_ID == 0) && !Util.isEmpty(oldC_DocTypeTarget_ID))
			oldC_DocType_ID = convertToInt(oldC_DocTypeTarget_ID);
		
		if (oldC_DocType_ID!=convertToInt(newC_DocTypeTarget_ID))
			setC_DocType_ID(convertToInt(newC_DocTypeTarget_ID));
		
		int M_Warehouse_ID = MDefaultWarehouse.getM_Warehouse_ID(get_Trx(), getC_DocType_ID(), getAD_Org_ID(), getAD_Client_ID());
		if(M_Warehouse_ID!=0 && isSOTrx() || getM_Warehouse_ID()>1)
			setM_Warehouse_ID(M_Warehouse_ID!=0 && isSOTrx()?M_Warehouse_ID:getM_Warehouse_ID());
		
		String sql = "SELECT d.DocSubTypeSO,d.HasCharges,'N',"			//	1..3
			+ "d.IsDocNoControlled,s.CurrentNext,s.CurrentNextSys,"     //  4..6
			+ "s.AD_Sequence_ID,d.IsSOTrx,d.IsReturnTrx "               //	7..9
			+ "FROM C_DocType d "
			+ "LEFT OUTER JOIN AD_Sequence s ON (d.DocNoSequence_ID=s.AD_Sequence_ID) "
			+ "WHERE C_DocType_ID=?";	//	#1
		try
		{
			int AD_Sequence_ID = 0;

			//	Get old AD_SeqNo for comparison
			if (!newDocNo && (oldC_DocType_ID != 0))
			{
				PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, oldC_DocType_ID);
				ResultSet rs = pstmt.executeQuery();
				if (rs.next())
					AD_Sequence_ID = rs.getInt(7);
				rs.close();
				pstmt.close();
			}

			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, C_DocTypeTarget_ID);
			ResultSet rs = pstmt.executeQuery();
			String DocSubTypeSO = "";
			boolean IsSOTrx = true;
			boolean IsReturnTrx = false;
			if (rs.next())		//	we found document type
			{
				super.setC_DocTypeTarget_ID(C_DocTypeTarget_ID);
				//	Set Context:	Document Sub Type for Sales Orders
				DocSubTypeSO = rs.getString(1);
				if (DocSubTypeSO == null)
					DocSubTypeSO = "--";
				if (p_changeVO != null)
					//p_changeVO.setContext(getCtx(), windowNo, "OrderType", DocSubTypeSO);
					p_changeVO.addChangedValue("OrderType", DocSubTypeSO);

				//	No Drop Ship other than Standard
				if (!DocSubTypeSO.equals(DocSubTypeSO_Standard))
					setIsDropShip(false);

				//	IsSOTrx
				if ("N".equals(rs.getString(8)))
					IsSOTrx = false;
				setIsSOTrx(IsSOTrx);

				// IsReturnTrx
				IsReturnTrx = "Y".equals(rs.getString(9));
				setIsReturnTrx(IsReturnTrx);

				if(!IsReturnTrx)
				{
					//	Delivery Rule
					if (DocSubTypeSO.equals(MOrder.DocSubTypeSO_POS))
						setDeliveryRule(DELIVERYRULE_Force);
					else if (DocSubTypeSO.equals(MOrder.DocSubTypeSO_Prepay))
						setDeliveryRule(DELIVERYRULE_AfterReceipt);
					else
						setDeliveryRule(DELIVERYRULE_Availability);

					//	Invoice Rule
					if (DocSubTypeSO.equals(DocSubTypeSO_POS)
							|| DocSubTypeSO.equals(DocSubTypeSO_Prepay)
							|| DocSubTypeSO.equals(DocSubTypeSO_OnCredit) )
						setInvoiceRule(INVOICERULE_Immediate);
					else
						setInvoiceRule(INVOICERULE_AfterDelivery);

					//	Payment Rule - POS Order
					if (DocSubTypeSO.equals(DocSubTypeSO_POS))
						setPaymentRule(PAYMENTRULE_Cash);
					else
						setPaymentRule(PAYMENTRULE_OnCredit);

					//	Set Context: Charges
					if (p_changeVO != null)
						p_changeVO.setContext(getCtx(), windowNo, "HasCharges", rs.getString(2));
				}
				else
				{
					if (DocSubTypeSO.equals(MOrder.DocSubTypeSO_POS))
						setDeliveryRule(DELIVERYRULE_Force);
					else
						setDeliveryRule(DELIVERYRULE_Manual);
				}

				//	DocumentNo
				if (rs.getString(4).equals("Y"))			//	IsDocNoControlled
				{
					if (!newDocNo && (AD_Sequence_ID != rs.getInt(7)))
						newDocNo = true;
					if (newDocNo)
						if (Ini.isPropertyBool(Ini.P_COMPIERESYS)
								&& (getCtx().getAD_Client_ID() < 1000000))
							setDocumentNo("<" + rs.getString(6) + ">");
						else
							setDocumentNo("<" + rs.getString(5) + ">");
				}
			}
			rs.close();
			pstmt.close();

			// Skip remaining steps for RMA. These are copied over from original order.
			if(IsReturnTrx)
				return;

			//  When BPartner is changed, the Rules are not set if
			//  it is a POS or Credit Order (i.e. defaults from Standard BPartner)
			//  This re-reads the Rules and applies them.
			if (DocSubTypeSO.equals(DocSubTypeSO_POS)
					|| DocSubTypeSO.equals(DocSubTypeSO_Prepay))    //  not for POS/PrePay
				;
			else
			{
				sql = "SELECT PaymentRule,C_PaymentTerm_ID,"            //  1..2
					+ "InvoiceRule,DeliveryRule,"                       //  3..4
					+ "FreightCostRule,DeliveryViaRule, "               //  5..6
					+ "PaymentRulePO,PO_PaymentTerm_ID "
					+ "FROM C_BPartner "
					+ "WHERE C_BPartner_ID=?";		//	#1
				pstmt = DB.prepareStatement(sql, (Trx) null);
				int C_BPartner_ID = getC_BPartner_ID();
				pstmt.setInt(1, C_BPartner_ID);
				//
				rs = pstmt.executeQuery();
				if (rs.next())
				{
					//	PaymentRule
					String paymentRule = rs.getString(IsSOTrx ? "PaymentRule" : "PaymentRulePO");
					if ((paymentRule != null) && (paymentRule.length() != 0))
					{
						if (IsSOTrx 	//	No Cash/Check/Transfer for SO_Trx
								&& (paymentRule.equals(PAYMENTRULE_Cash)
										|| paymentRule.equals(PAYMENTRULE_Check)
										|| paymentRule.equals(PAYMENTRULE_DirectDeposit)))
							paymentRule = PAYMENTRULE_OnCredit;				//  Payment Term
						if (!IsSOTrx 	//	No Cash for PO_Trx
								&& (paymentRule.equals(PAYMENTRULE_Cash)))
							paymentRule = PAYMENTRULE_OnCredit;				//  Payment Term
						setPaymentRule(paymentRule);
					}
					//	Payment Term
					int C_PaymentTerm_ID = rs.getInt(IsSOTrx ? "C_PaymentTerm_ID" : "PO_PaymentTerm_ID");
					if (C_PaymentTerm_ID != 0)
						setC_PaymentTerm_ID(C_PaymentTerm_ID);
					else
						setC_PaymentTerm_ID(getCtx().getContextAsInt("#C_PaymentTerm_ID"));
					//	InvoiceRule
					String invoiceRule = rs.getString(3);
					if ((invoiceRule != null) && (invoiceRule.length() != 0))
						setInvoiceRule(invoiceRule);
					//	DeliveryRule
					String deliveryRule = rs.getString(4);
					if ((deliveryRule != null) && (deliveryRule.length() != 0))
						setDeliveryRule(deliveryRule);
					//	FreightCostRule
					String freightCostRule = rs.getString(5);
					if ((freightCostRule != null) && (freightCostRule.length() != 0))
						setFreightCostRule(freightCostRule);
					//	DeliveryViaRule
					String deliveryViaRule = rs.getString(6);
					if ((deliveryViaRule != null) && (deliveryViaRule.length() != 0))
						setDeliveryViaRule(deliveryViaRule);
				}
				rs.close();
				pstmt.close();
			}   //  re-read customer rules
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		//#78082 
		
		if(docinfo!=null)
		{
			MDoctypeInfoProxy proxy= new MDoctypeInfoProxy(docinfo);
			if(proxy!=null && proxy.getM_PriceList_ID()>0)
				setM_PriceList_ID(proxy.getM_PriceList_ID());
			else
				setPriceList();
		}
		else
			setPriceList();
		
		if(docinfo.Is_StoreSN() && docinfo.getBPartnerSN_ID()>0 && docinfo.getUserSN_ID()>0)
		{
			setC_BPartner_ID(docinfo.getBPartnerSN_ID());		
			setSalesRep_ID(docinfo.getUserSN_ID());
		}
		
		}	//	setC_DocTypeTarget_ID

	/**
	 * 	Set Target Sales Document Type
	 * 	@param DocSubTypeSO_x SO sub type - see DocSubTypeSO_*
	 */
	public void setC_DocTypeTarget_ID (String DocSubTypeSO_x)
	{
		String sql = "SELECT C_DocType_ID FROM C_DocType "
			+ "WHERE AD_Client_ID=? AND AD_Org_ID IN (0," + getAD_Org_ID()
			+ ") AND DocSubTypeSO=? AND IsReturnTrx='N' "
			+ "ORDER BY AD_Org_ID DESC, IsDefault DESC";
		int C_DocType_ID = DB.getSQLValue(null, sql, getAD_Client_ID(), DocSubTypeSO_x);
		if (C_DocType_ID <= 0)
			log.severe ("Not found for AD_Client_ID=" + getAD_Client_ID () + ", SubType=" + DocSubTypeSO_x);
		else
		{
			log.fine("(SO) - " + DocSubTypeSO_x);
			setC_DocTypeTarget_ID (C_DocType_ID);
			setIsSOTrx(true);
			setIsReturnTrx(false);
		}
	}	//	setC_DocTypeTarget_ID


	/**
	 * 	Set Target Document Type
	 *	@param C_DocTypeTarget_ID id
	 *	@param setReturnTrx if true set ReturnTrx and SOTrx
	 */
	public void setC_DocTypeTarget_ID(int C_DocTypeTarget_ID, boolean setReturnTrx)
	{
		super.setC_DocTypeTarget_ID(C_DocTypeTarget_ID);
		if (setReturnTrx)
		{
			MDocType dt = MDocType.get(getCtx(), C_DocTypeTarget_ID);
			setIsSOTrx(dt.isSOTrx());
			setIsReturnTrx(dt.isReturnTrx());
		}
	}	//	setC_DocTypeTarget_ID

	/**
	 * 	Set Target Document Type.
	 * 	Standard Order or PO
	 */
	public void setC_DocTypeTarget_ID ()
	{
		if (isSOTrx())		//	SO = Std Order
		{
			setC_DocTypeTarget_ID(DocSubTypeSO_Standard);
			return;
		}
		//	PO
		String sql = "SELECT C_DocType_ID FROM C_DocType "
			+ "WHERE AD_Client_ID=? AND AD_Org_ID IN (0," + getAD_Org_ID()
			+ ") AND DocBaseType='POO' AND IsReturnTrx='N' "
			+ "ORDER BY AD_Org_ID DESC, IsDefault DESC";
		int C_DocType_ID = DB.getSQLValue(null, sql, getAD_Client_ID());
		if (C_DocType_ID <= 0)
			log.severe ("No POO found for AD_Client_ID=" + getAD_Client_ID ());
		else
		{
			log.fine("(PO) - " + C_DocType_ID);
			setC_DocTypeTarget_ID (C_DocType_ID);
			setIsReturnTrx(false);
		}
	}	//	setC_DocTypeTarget_ID




	/**
	 * 	Copy Lines From other Order
	 *	@param otherOrder order
	 *	@param counter set counter info
	 *	@param copyASI copy line attributes Attribute Set Instance, Resaouce Assignment
	 *	@return number of lines copied
	 */
	public int copyLinesFrom (MOrder otherOrder, boolean counter, boolean copyASI)
	{
		if (isProcessed() || isPosted() || (otherOrder == null))
			return 0;
		MOrderLine[] fromLines = otherOrder.getLines();
		
		ArrayList<MOrderLine> linesToSave = new ArrayList<MOrderLine>(); 
		
		for (MOrderLine element : fromLines) {
			MOrderLine line = new MOrderLine (this);
			PO.copyValues(element, line, getAD_Client_ID(), getAD_Org_ID());
			line.setC_Order_ID(getC_Order_ID());
			line.setOrder(this);
			line.set_ValueNoCheck ("C_OrderLine_ID", I_ZERO);	//	new
			///????????
			line.setM_Warehouse_ID(getM_Warehouse_ID());
			//TA
			line.set_ValueNoCheck("M_Locator_ID", MDefaultWarehouse.getM_Locator_ID(get_Trx(),getC_DocType_ID(), getAD_Org_ID(),getM_Warehouse_ID(),getAD_Client_ID()));
			//TA
			//	References
			if (!copyASI)
			{
				line.setM_AttributeSetInstance_ID(0);
				line.setS_ResourceAssignment_ID(0);
			}
			if (counter)
				line.setRef_OrderLine_ID(element.getC_OrderLine_ID());
			else
				line.setRef_OrderLine_ID(0);
			//
			line.setQtyDelivered(Env.ZERO);
			line.setQtyInvoiced(Env.ZERO);
			line.setQtyReserved(Env.ZERO);
			line.setQtyReturned(Env.ZERO);
			line.setQtyAllocated(Env.ZERO);
			line.setQtyDedicated(Env.ZERO);

			line.setDateDelivered(null);
			line.setDateInvoiced(null);
			//	Tax
			if (getC_BPartner_ID() != otherOrder.getC_BPartner_ID())
				line.setTax();		//	recalculate
			//
			//
			line.setProcessed(false);
			linesToSave.add(line);
			//	Cross Link
			if (counter)
			{
				element.setRef_OrderLine_ID(line.getC_OrderLine_ID());
				linesToSave.add(element);
			}
		}
		
		boolean ok = PO.saveAll(get_Trx(), linesToSave);
		if (!ok)
			log.log(Level.SEVERE, "Line difference - From=" + fromLines.length + " <> Saved");
		return linesToSave.size();
	}	//	copyLinesFrom


	/**************************************************************************
	 * 	String Representation
	 *	@return info
	 */
	@Override
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MOrder[")
		.append(get_ID()).append("-").append(getDocumentNo())
		.append(",IsSOTrx=").append(isSOTrx())
		.append(",C_DocType_ID=").append(getC_DocType_ID())
		.append(", GrandTotal=").append(getGrandTotal())
		.append ("]");
		return sb.toString ();
	}	//	toString

	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
		ReportEngine re = ReportEngine.get (getCtx(), ReportEngine.ORDER, getC_Order_ID());
		if (re == null)
			return null;
		return re.getPDF(file);
	}	//	createPDF

	/**
	 * 	Set Price List (and Currency, TaxIncluded) when valid
	 * 	@param M_PriceList_ID price list
	 */
	@Override
	public void setM_PriceList_ID (int M_PriceList_ID)
	{
		MPriceList pl = MPriceList.get(getCtx(), M_PriceList_ID, null);
		if (pl.get_ID() == M_PriceList_ID)
		{
			super.setM_PriceList_ID(M_PriceList_ID);
			setC_Currency_ID(pl.getC_Currency_ID());
			setIsTaxIncluded(pl.isTaxIncluded());
		}
	}	//	setM_PriceList_ID

	/**
	 * 	Set Price List - Callout
	 *	@param oldM_PriceList_ID old value
	 *	@param newM_PriceList_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setM_PriceList_ID (String oldM_PriceList_ID,
			String newM_PriceList_ID, int windowNo) throws Exception
			{
		if ((newM_PriceList_ID == null) || (newM_PriceList_ID.length() == 0))
			return;
		int M_PriceList_ID = Integer.parseInt(newM_PriceList_ID);
		if (M_PriceList_ID == 0)
			return;
		setM_PriceList_ID(M_PriceList_ID);

		setPriceListVersion(windowNo);
			}	//	setM_PriceList_ID

	/**
	 * 	Set Return Policy
	 *	@param
	 */
	public void setM_ReturnPolicy_ID ()
	{
		MBPartner bpartner = new MBPartner (getCtx(), getC_BPartner_ID(), null);

		if(bpartner.get_ID() !=0)
		{
			if(isSOTrx())
				super.setM_ReturnPolicy_ID(bpartner.getM_ReturnPolicy_ID());
			else
				super.setM_ReturnPolicy_ID(bpartner.getPO_ReturnPolicy_ID());
		}

	}	//	setM_ReturnPolicy_ID


	/**
	 * 	Set Original Order for RMA
	 * 	SOTrx should be set.
	 * 	@param origOrder MOrder
	 */
	public void setOrigOrder (MOrder origOrder)
	{
		if((origOrder == null) || (origOrder.get_ID()==0))
			return;

		setOrig_Order_ID(origOrder.getC_Order_ID());
		//	Get Details from Original Order
		//	MBPartner bpartner = new MBPartner (getCtx(), origOrder.getC_BPartner_ID(), null);

		// Reset Original Shipment
		setOrig_InOut_ID(-1);
		setPOReference(origOrder.getPOReference()!=null?origOrder.getPOReference().toUpperCase().trim():null); //setting POreference
		setC_BPartner_ID(origOrder.getC_BPartner_ID());
		setC_BPartner_Location_ID(origOrder.getC_BPartner_Location_ID());
		setAD_User_ID(origOrder.getAD_User_ID());
		setBill_BPartner_ID(origOrder.getBill_BPartner_ID());
		setBill_Location_ID(origOrder.getBill_Location_ID());
		setBill_User_ID(origOrder.getBill_User_ID());
		setM_Warehouse_ID(origOrder.getM_Warehouse_ID());

		setM_ReturnPolicy_ID();

		setM_PriceList_ID(origOrder.getM_PriceList_ID());
		setPaymentRule(origOrder.getPaymentRule());
		setC_PaymentTerm_ID(origOrder.getC_PaymentTerm_ID());
		//setDeliveryRule(X_C_Order.DELIVERYRULE_Manual);

		setBill_Location_ID(origOrder.getBill_Location_ID());
		setInvoiceRule(origOrder.getInvoiceRule());
		setPaymentRule(origOrder.getPaymentRule());
		setDeliveryViaRule(origOrder.getDeliveryViaRule());
		setFreightCostRule(origOrder.getFreightCostRule());

		return;

	} // setOrigOrder

	/**
	 * 	Set Original Order - Callout
	 *	@param oldOrig_Order_ID old Orig Order
	 *	@param newOrig_Order_ID new Orig Order
	 *	@param windowNo window no
	 */
	@UICallout public void setOrig_Order_ID (String oldOrig_Order_ID,
			String newOrig_Order_ID, int windowNo) throws Exception
			{
		if ((newOrig_Order_ID == null) || (newOrig_Order_ID.length() == 0))
			return;
		int Orig_Order_ID = Integer.parseInt(newOrig_Order_ID);
		if (Orig_Order_ID == 0)
			return;

		//		Get Details
		MOrder origOrder = new MOrder (getCtx(), Orig_Order_ID, null);
		if (origOrder.get_ID() != 0)
			setOrigOrder(origOrder);

			} // setOrig_Order_ID

	/**
	 * 	Set Original Shipment for RMA
	 * 	SOTrx should be set.
	 * 	@param origInOut MInOut
	 */
	public void setOrigInOut (MInOut origInOut)
	{
		if((origInOut == null) || (origInOut.get_ID()==0))
			return;

		setOrig_InOut_ID(origInOut.getM_InOut_ID());
		setC_Project_ID(origInOut.getC_Project_ID());
		setC_Campaign_ID(origInOut.getC_Campaign_ID());
		setC_Activity_ID(origInOut.getC_Activity_ID());
		setAD_OrgTrx_ID(origInOut.getAD_OrgTrx_ID());
		setUser1_ID(origInOut.getUser1_ID());
		setUser2_ID(origInOut.getUser2_ID());

		return;

	} // setOrigInOut


	/**
	 * 	Set Original Shipment - Callout
	 *	@param oldOrig_InOut_ID old Orig Order
	 *	@param newOrig_InOut_ID new Orig Order
	 *	@param windowNo window no
	 */
	@UICallout public void setOrig_InOut_ID (String oldOrig_InOut_ID,
			String newOrig_InOut_ID, int windowNo) throws Exception
			{
		if ((newOrig_InOut_ID == null) || (newOrig_InOut_ID.length() == 0))
			return;
		int Orig_InOut_ID = Integer.parseInt(newOrig_InOut_ID);
		if (Orig_InOut_ID == 0)
			return;

		//		Get Details
		MInOut origInOut = new MInOut (getCtx(), Orig_InOut_ID, null);
		if (origInOut.get_ID() != 0)
			setOrigInOut(origInOut);

			} // setOrig_InOut_ID




	/**************************************************************************
	 * 	Get Lines of Order
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MOrderLine[] getLines (String whereClause, String orderClause)
	{
		ArrayList<MOrderLine> list = new ArrayList<MOrderLine> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM C_OrderLine WHERE C_Order_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderLine ol = new MOrderLine(getCtx(), rs, get_Trx());
				ol.setHeaderInfo (this);
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderLine[] lines = new MOrderLine[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	/**************************************************************************
	 * 	Get Lines of Order for a given product
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MOrderLine[] getLines (int M_Product_ID, String whereClause, String orderClause)
	{
		ArrayList<MOrderLine> list = new ArrayList<MOrderLine> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM C_OrderLine WHERE C_Order_ID=? AND M_Product_ID=? ");

		if (whereClause != null)
			sql.append(" AND ").append(whereClause);

		if (orderClause != null)
			sql.append(" ORDER BY ").append(orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			pstmt.setInt(2, M_Product_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderLine ol = new MOrderLine(getCtx(), rs, get_Trx());
				ol.setHeaderInfo (this);
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderLine[] lines = new MOrderLine[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	/**
	 * 	Get Lines of Order
	 * 	@param requery requery
	 * 	@param orderBy optional order by column
	 * 	@return lines
	 */
	@Deprecated
	public MOrderLine[] getLines (boolean requery, String orderBy)
	{
		return getLines(orderBy);
	}	//	getLines

	/**
	 * 	Get Lines of Order
	 * @param orderBy optional order by column
	 * 	@return lines
	 */
	public MOrderLine[] getLines (String orderBy)
	{
		String orderClause = "ORDER BY ";
		if ((orderBy != null) && (orderBy.length() > 0))
			orderClause += orderBy;
		else
			orderClause += "Line";
		return getLines(null, orderClause);
	}	//	getLines

	/**
	 * 	Get Lines of Order.
	 * 	(useb by web store)
	 * 	@return lines
	 */
	public MOrderLine[] getLines()
	{
		return getLines(null);
	}	//	getLines

	/**
	 * 	Renumber Lines
	 *	@param step start and step
	 */
	public void renumberLines (int step)
	{
		int number = step;
		MOrderLine[] lines = getLines();	//	Line is default
		for (MOrderLine line : lines) {
			line.setLine(number);
			number += step;
		}
		PO.saveAll(get_Trx(), Arrays.asList(lines));
	}	//	renumberLines

	/**
	 * 	Get Taxes of Order
	 *	@param requery requery
	 *	@return array of taxes
	 */
	@Deprecated
	public MOrderTax[] getTaxes(boolean requery)
	{
		return getTaxes();
	}
	
	/**
	 * 	Get Taxes of Order
	 *	@return array of taxes
	 */
	public MOrderTax[] getTaxes()
	{
		ArrayList<MOrderTax> list = new ArrayList<MOrderTax>();
		String sql = "SELECT * FROM C_OrderTax WHERE C_Order_ID=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MOrderTax(getCtx(), rs, get_Trx()));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderTax[] taxes = new MOrderTax[list.size()];
		list.toArray(taxes);
		return taxes;
	}	//	getTaxes
	
	public MOrderTax[] getTaxes(String whereclause, String orderByClause)
	{
		ArrayList<MOrderTax> list = new ArrayList<MOrderTax>();
		String sql = "SELECT * FROM C_OrderTax WHERE C_Order_ID=? ";
		if(whereclause!=null )
			sql = sql + whereclause;
		if(orderByClause != null)
			sql = sql + orderByClause;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MOrderTax(getCtx(), rs, get_Trx()));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderTax[] taxes = new MOrderTax[list.size()];
		list.toArray(taxes);
		return taxes;
	}	//	getTaxes


	/**
	 * 	Get Invoices of Order
	 * 	@param hearderLinkOnly shipments based on header only
	 * 	@return invoices
	 */
	public MInvoice[] getInvoices(boolean hearderLinkOnly)
	{
		//	TODO get invoiced which are linked on line level
		ArrayList<MInvoice> list = new ArrayList<MInvoice>();
		String sql = "SELECT * FROM C_Invoice WHERE C_Order_ID=? ORDER BY Created DESC";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MInvoice(getCtx(), rs, get_Trx()));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MInvoice[] retValue = new MInvoice[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getInvoices

	/**
	 * 	Get latest Invoice of Order
	 * 	@return invoice id or 0
	 */
	public int getC_Invoice_ID()
	{
		int C_Invoice_ID = 0;
		String sql = "SELECT C_Invoice_ID FROM C_Invoice "
			+ "WHERE C_Order_ID=? AND DocStatus IN ('CO','CL') "
			+ "ORDER BY Created DESC";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				C_Invoice_ID = rs.getInt(1);
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "getC_Invoice_ID", e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		return C_Invoice_ID;
	}	//	getC_Invoice_ID


	/**
	 * 	Get Latest Shipment for the Order
	 *
	 * 	@return latest shipment
	 */
	public MInOut getOpenInOut (int C_DocType_ID, int M_Warehouse_ID, int C_BPartner_ID, int C_BPartner_Location_ID)
	{
		//	TODO: getShipment if linked on line
		MInOut inout = null;
		String sql = "SELECT M_InOut_ID "+
		"FROM M_InOut WHERE C_Order_ID=? "+
		" AND M_Warehouse_ID=? "+
		" AND C_BPartner_ID=? "+
		" AND C_BPartner_Location_ID=? "+
		" AND C_DocType_ID=? "+
		" AND DocStatus IN ('DR','IP') "+
		" ORDER BY Created DESC";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			pstmt.setInt(2, M_Warehouse_ID);
			pstmt.setInt(3, C_BPartner_ID);
			pstmt.setInt(4, C_BPartner_Location_ID);
			pstmt.setInt(5, C_DocType_ID);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				inout = new MInOut(getCtx(), rs.getInt(1), get_Trx());
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		return inout;
	}	//	getShipments

	/**
	 * 	Get Shipments of Order
	 * 	@param hearderLinkOnly shipments based on header only
	 * 	@return shipments
	 */
	public MInOut[] getShipments (boolean hearderLinkOnly)
	{
		//	TODO: getShipment if linked on line
		ArrayList<MInOut> list = new ArrayList<MInOut>();
		String sql = "SELECT * FROM M_InOut WHERE C_Order_ID=? ORDER BY Created DESC";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MInOut(getCtx(), rs, get_Trx()));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MInOut[] retValue = new MInOut[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getShipments

	/**
	 * 	Get RMAs of Order
	 * 	@return RMAs
	 */
	public MOrder[] getRMAs ()
	{
		ArrayList<MOrder> list = new ArrayList<MOrder>();
		String sql = "SELECT * FROM C_Order WHERE Orig_Order_ID=? ORDER BY Created DESC";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MOrder(getCtx(), rs, get_Trx()));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrder[] retValue = new MOrder[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getRMAs

	/**
	 * 	Get Shipment Lines of Order
	 * 	@return shipments newest first
	 */
	public MInOutLine[] getShipmentLines()
	{
		ArrayList<MInOutLine> list = new ArrayList<MInOutLine>();
		String sql = "SELECT * FROM M_InOutLine iol "
			+ "WHERE iol.C_OrderLine_ID IN "
			+ "(SELECT C_OrderLine_ID FROM C_OrderLine WHERE C_Order_ID=?) "
			+ "ORDER BY M_InOutLine_ID";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new MInOutLine(getCtx(), rs, get_Trx()));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MInOutLine[] retValue = new MInOutLine[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	getShipmentLines

	/**
	 *	Get ISO Code of Currency
	 *	@return Currency ISO
	 */
	public String getCurrencyISO()
	{
		return MCurrency.getISO_Code (getCtx(), getC_Currency_ID());
	}	//	getCurrencyISO

	/**
	 * 	Get Currency Precision
	 *	@return precision
	 */
	public int getPrecision()
	{
		return MCurrency.getStdPrecision(getCtx(), getC_Currency_ID());
	}	//	getPrecision

	/**
	 * 	Get Document Status
	 *	@return Document Status Clear Text
	 */
	public String getDocStatusName()
	{
		return MRefList.getListName(getCtx(), 131, getDocStatus());
	}	//	getDocStatusName

	/**
	 * 	Set DocAction
	 *	@param DocAction doc action
	 */
	@Override
	public void setDocAction (String DocAction)
	{
		setDocAction (DocAction, false);
	}	//	setDocAction

	/**
	 * 	Set DocAction
	 *	@param DocAction doc oction
	 *	@param forceCreation force creation
	 */
	public void setDocAction (String DocAction, boolean forceCreation)
	{
		super.setDocAction (DocAction);
		m_forceCreation = forceCreation;
	}	//	setDocAction

	/**
	 * 	Set Processed.
	 * 	Propagate to Lines/Taxes
	 *	@param processed processed
	 */
	@Override
	public void setProcessed (boolean processed)
	{
		super.setProcessed (processed);
		if (get_ID() == 0)
			return;
		String set = "SET Processed=? WHERE C_Order_ID=?";
		Object[]params = new Object[] {processed ? "Y" : "N", getC_Order_ID() };
		int noLine = DB.executeUpdate("UPDATE C_OrderLine " + set, params, get_Trx());
		int noTax = DB.executeUpdate("UPDATE C_OrderTax " + set, params, get_Trx());
		log.fine(processed + " - Lines=" + noLine + ", Tax=" + noTax);
	}	//	setProcessed



	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord new
	 *	@return save
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if(is_ValueChanged("LVendorSent") && get_ValueAsString("LVendorSent").equals("Y") 
				&& get_Value("SentDate")==null)
		{
			set_ValueNoCheck("SentDate", new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
		}
		
		if(is_ValueChanged("XX_IsSAV") && getXX_IsSAV()!=null && (getXX_IsSAV().equals("Y") || getXX_IsSAV().equals("N") )&& get_Value("XX_SAV_Date")==null)
		{
			set_ValueNoCheck("XX_SAV_Date", new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
		}
		
		if(!isSOTrx())
		{
			BigDecimal si = DB.getSQLValueBD(get_Trx(), "select sum(filesize) from C_OrderDownload where C_Order_ID = ? and IsActive = 'Y'   " , getC_Order_ID());
			if(si!=null)
				set_ValueNoCheck("FileSize", si.longValue());
		
		}
	
		if(isSOTrx() && !getDocStatus().equals("DR") && is_ValueChanged("C_BPartner_ID") && !newRecord)
		{
			String RoleToModif = Msg.getMsg(getCtx(), "ROLE_BPARTNER_MODIF");
			if(!RoleToModif.contains(""+getCtx().getAD_Role_ID()))
			{
				String RoleToModifMsg = Msg.getMsg(getCtx(), "ROLE_BPARTNER_MSG");
				//p_changeVO.addError(RoleToModifMsg);
				log.saveError("Erreur : ", RoleToModifMsg);
				return false;
			}
		}
		
		if(get_Value("Z_Geo")==null) {
			MOrg org = MOrg.get(getCtx(), getAD_Org_ID());
			set_Value("Z_Geo", org.get_Value("Z_Geo"));
		}
		
		if(get_ValueAsInt("XX_RefChantier_ID")>0)
		{
			String RefChantier = DB.getSQLValueString(get_Trx(), "Select Name from XX_RefChantier where XX_RefChantier_ID = ?", get_ValueAsInt("XX_RefChantier_ID"));
			set_ValueNoCheck("Z_RefChantier",RefChantier);
		}
		
		if(!isSOTrx() &&  getDatePromised()!=null && (get_Value("XX_SemRec")==null || is_ValueChanged("DatePromised")))
		{
			Timestamp ts = null;
			Calendar cal = Calendar.getInstance();
			ts = new Timestamp(getDatePromised().getTime());
			cal.setTimeInMillis(ts.getTime());
			String ss = org.compiere.util.QueryUtil.getSQLValueString(get_Trx(), "Select week from xx_cal_week where dates = ? ", ts);
			int week = 0;
			if(ss!=null)
			{
				try {
					week = Integer.parseInt(ss);
				}
				catch (Exception e) {
					week = cal.get(Calendar.WEEK_OF_YEAR);
				}
			}
			else
				week = cal.get(Calendar.WEEK_OF_YEAR);
			set_Value("XX_SemRec", week<10?"0"+week:""+week);
		}
		//	Client/Org Check
		DateFormat dateFormat = new SimpleDateFormat();  
		dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		java.util.Date date = new java.util.Date();
		Timestamp acctDate = getDateAcct();
		String date1 = dateFormat.format(date);
		String date2 = dateFormat.format(acctDate);
		//if(!date1.equals(date2))
		//	setDateAcct (new Timestamp(date.getTime()));
		if (getAD_Org_ID() == 0)
		{
			int context_AD_Org_ID = getCtx().getAD_Org_ID();
			if (context_AD_Org_ID != 0)
			{
				setAD_Org_ID(context_AD_Org_ID);
				log.warning("Changed Org to Context=" + context_AD_Org_ID);
			}
		}
		if (getAD_Client_ID() == 0)
		{
			m_processMsg = "AD_Client_ID = 0";
			return false;
		}
		
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), getC_DocTypeTarget_ID(), get_Trx());
		if(dti == null)
			dti = MDocTypeInfo.get(getCtx(), getC_DocType_ID(), get_Trx());
		if(dti != null && isSOTrx() && dti.isOpenOV() && is_new())
				set_ValueNoCheck("IsOVReadOnly", true);
		else
			if(is_new())
				set_ValueNoCheck("IsOVReadOnly", false);
		
		if(dti != null && isSOTrx())
		{
			set_ValueNoCheck("IsEggo", dti.isCuisine());
			set_ValueNoCheck("IsDevis", dti.isDevis());
			//log.warning("Setting IsEggo and IsDevis=");
		}
		
		if(dti.isDirect() && !isSOTrx() && is_new())
		{
			setDatePromised(getDateOrdered());
		}
		
		if(dti.getDocStatus()!=null && getDocStatus().equals(MOrder.DOCSTATUS_Drafted))
		{
			setDocStatus(dti.getDocStatus());
		}
		
		
		//Jira 679
		if (getC_DocTypeTarget_ID() != 0 && isSOTrx())
		{
			set_ValueNoCheck("Z_DocType_ID", getC_DocTypeTarget_ID());
			set_ValueNoCheck("Y_DocType_ID", getC_DocTypeTarget_ID());
		}

		//	New Record Doc Type - make sure DocType set to 0
		if (newRecord && (getC_DocType_ID() == 0))
			setC_DocType_ID (0);

		//MERGE
		MDocType dt = MDocType.get(getCtx(), getC_DocTypeTarget_ID());
		MDocTypeProxy dtp = new MDocTypeProxy(dt);
		//Si IsOVReadOnly change de Y � N => 
		if(dti != null && is_ValueChanged("IsOVReadOnly") && !get_ValueAsBoolean("IsOVReadOnly") && dti.isOpenOV() 
				//&& getCtx().getContext("#IsEGGO_CLIENTID").equals("Y"))
				&& dti.isCuisine())
		{
			//Mettre le Processed = Y � N pour les lignes dont QtyOrdered <> QtyDelivered
			//int no = 
			DB.executeUpdate("UPDATE C_orderLine set Processed = 'N' where C_order_ID = ? and QtyDelivered <> QtyOrdered and Processed = 'Y'", getC_Order_ID(), get_Trx());
		}
		//	Default Warehouse
		if (getM_Warehouse_ID() == 0)
		{
			MOrg org = MOrg.get(getCtx(), getAD_Org_ID());
			int M_Warehouse_ID = MDefaultWarehouse.getM_Warehouse_ID(get_Trx(), getC_DocTypeTarget_ID(), org.getAD_Org_ID(), getAD_Client_ID());
			if(M_Warehouse_ID!=0 && isSOTrx() || getM_Warehouse_ID()>1)
				setM_Warehouse_ID(M_Warehouse_ID!=0 && isSOTrx()?M_Warehouse_ID:getM_Warehouse_ID());
		}
		//	Warehouse Org
		if (newRecord
				|| is_ValueChanged("AD_Org_ID") || is_ValueChanged("M_Warehouse_ID"))
		{
			MWarehouse wh = MWarehouse.get(getCtx(), getM_Warehouse_ID());
			if (wh.getAD_Org_ID() != getAD_Org_ID())
				log.saveWarning("WarehouseOrgConflict", "");
		}
		
		if(isSOTrx())
			setTotalPaySched();
		//	Reservations in Warehouse
		if (!newRecord && is_ValueChanged("M_Warehouse_ID"))
		{
			MOrderLine[] lines = getLines();
			for (int i = 0; i < lines.length; i++)
			{
				if (!lines[i].canChangeWarehouse())		// saves Error
					return false;
			}
		}

		//	No Partner Info - set Template
		if (getC_BPartner_ID() == 0)
			setBPartner(MBPartner.getTemplate(getCtx(), getAD_Client_ID()));
		if (getC_BPartner_Location_ID() <= 0)
			setBPartnerLocation(MBPartner.get(getCtx(), getC_BPartner_ID()));
		//	No Bill - get from Ship
		if (getBill_BPartner_ID() == 0)
		{
			setBill_BPartner_ID(getC_BPartner_ID());
		}
		if (getBill_Location_ID() == 0)
		{
			int bill_loc_id = getC_BPartner_Location_ID();
			MBPartnerLocation loc = new MBPartnerLocation( getCtx(), bill_loc_id, null );
			if( loc.isBillTo() )
				setBill_Location_ID( bill_loc_id );
			else
			{
				//Reprendre la plus r�cente adresse de facturation du tiers
				int all [] = MBPartnerLocation.getAllIDs(MBPartnerLocation.Table_Name, "isBillTo = 'Y' and isactive='Y' and C_BPartner_ID = "+getC_BPartner_ID()+" order by C_BPartner_Location_ID DESC", get_Trx());
				if(all.length>0)
					setBill_Location_ID(all[0]);
				else
				{
					log.saveError("NotActive Bill Location", Msg.getMsg(getCtx(), "C_BPartner_ID"));
					return false;
				}
			}
		}

		//	BP Active check
		if (newRecord || is_ValueChanged("C_BPartner_ID"))
		{
			MBPartner bp = MBPartner.get(getCtx(), getC_BPartner_ID());
			set_ValueNoCheck("C_BP_Group_ID", bp.getC_BP_Group_ID());
			if (!bp.isActive())
			{
				log.saveError("NotActive", Msg.getMsg(getCtx(), "C_BPartner_ID"));
				return false;
			}
		}
		if ((newRecord || is_ValueChanged("Bill_BPartner_ID"))
				&& (getBill_BPartner_ID() != getC_BPartner_ID()))
		{
			MBPartner bp = MBPartner.get(getCtx(), getBill_BPartner_ID());
			if (!bp.isActive())
			{
				log.saveError("NotActive", Msg.getMsg(getCtx(), "Bill_BPartner_ID"));
				return false;
			}
		}

		//	Default Price List
		if (getM_PriceList_ID() == 0)
		{
			int ii = DB.getSQLValue(null,
					"SELECT M_PriceList_ID FROM M_PriceList "
					+ "WHERE AD_Client_ID=? AND IsSOPriceList=? "
					+ "AND IsActive='Y' "
					+ "ORDER BY ASCII(IsDefault) DESC", getAD_Client_ID(), isSOTrx() ? "Y" : "N");
			if (ii != 0)
				setM_PriceList_ID (ii);
		}


		boolean validPLV = false;
		// Verify that price list has a valid version for the date
		String sql1 = "SELECT 1 "
			+ "FROM M_PriceList pl,M_PriceList_Version plv "
			+ "WHERE pl.M_PriceList_ID=plv.M_PriceList_ID"
			+ " AND pl.M_PriceList_ID=? "						//	1
			+ " AND plv.ValidFrom <=? "							//  2
			+ " AND pl.IsActive='Y' "
			+ " AND plv.IsActive='Y' ";
		//	Use newest price list - may not be future
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql1, (Trx) null);
			pstmt.setInt(1, getM_PriceList_ID());
			pstmt.setTimestamp(2, getDateOrdered());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				validPLV = true;

			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql1, e);
			return false;
		}

		String docStatus = getDocStatus();
		if (!(DOCSTATUS_Completed.equals(docStatus) || DOCSTATUS_Closed.equals(docStatus) || DOCSTATUS_Voided
				.equals(docStatus))
				&& !validPLV) {
			log.saveError("Error", Msg.getMsg(getCtx(), "PriceListVersionNotFound"));
			return false;
		}


		//	Default Currency
		if (getC_Currency_ID() == 0)
		{
			String sql = "SELECT C_Currency_ID FROM M_PriceList WHERE M_PriceList_ID=?";
			int ii = DB.getSQLValue (null, sql, getM_PriceList_ID());
			if (ii != 0)
				setC_Currency_ID (ii);
			else
				setC_Currency_ID(getCtx().getContextAsInt("#C_Currency_ID"));
		}

		//	Default Sales Rep
		if (getSalesRep_ID() == 0)
		{
			int ii = getCtx().getContextAsInt("#SalesRep_ID");
			if (ii != 0)
				setSalesRep_ID (ii);
		}

		//	Default Document Type
		if (getC_DocTypeTarget_ID() == 0)
			setC_DocTypeTarget_ID(DocSubTypeSO_Standard);

		//	Default Payment Term
		if (getC_PaymentTerm_ID() == 0)
		{
			int ii = getCtx().getContextAsInt("#C_PaymentTerm_ID");
			if (ii != 0)
				setC_PaymentTerm_ID(ii);
			else
			{
				String sql = "SELECT C_PaymentTerm_ID FROM C_PaymentTerm WHERE AD_Client_ID=? AND IsDefault='Y'";
				ii = DB.getSQLValue(null, sql, getAD_Client_ID());
				if (ii != 0)
					setC_PaymentTerm_ID (ii);
			}
		}

		if(isReturnTrx())
		{
			Boolean withinPolicy = true;

			if(getM_ReturnPolicy_ID() == 0)
				setM_ReturnPolicy_ID();

			if (getM_ReturnPolicy_ID() != 0 )
			{
				MInOut origInOut = new MInOut (getCtx(), getOrig_InOut_ID(), null);
				MReturnPolicy rpolicy = new MReturnPolicy (getCtx(), getM_ReturnPolicy_ID(), null);
				log.fine("RMA Date : " + getDateOrdered() + " Shipment Date : " + origInOut.getMovementDate());
				withinPolicy = rpolicy.checkReturnPolicy(origInOut.getMovementDate(),getDateOrdered());
			}
			else
				withinPolicy = false;

			if(!withinPolicy)
			{
				if ( !MRole.getDefault(getCtx(), false).isOverrideReturnPolicy())
				{
					log.saveError("Error", Msg.getMsg(getCtx(), "ReturnPolicyExceeded"));
					return false;
				}
				else
				{
					log.saveWarning("Warning", "ReturnPolicyExceeded");
				}
			}
		}
		

		String step  = dtp.getStatusFromDoctype();
		// MERGE if((getCtx().getContext("#IsEGGO_CLIENTID").equals("Y"))
		if (dti != null && dti.isCuisine() 
				&& get_Value("Z_OrderStepStatus") == null && step!=null)
		{
			set_Value("Z_OrderStepStatus",step);
		}
		
		//Forecer le docaction � annuler pour les doc exclu !
		//MERGE
		if(dti != null && !dti.isLimitDocAction() && is_new() && getDocStatus()!=null?getDocStatus().equals(DOCSTATUS_Drafted) : false)
		{//TODO
			
			setDocAction(DOCACTION_Prepare, true);
		}

		String poRef = getPOReference();
		if (((poRef !=null) && (poRef.trim().length() != 0)))	//Do Not set if Purchase Order
				setPOReference(poRef.toUpperCase().trim());
		
		//int doctypeID = DB.getSQLValue(get_Trx(), "Select C_DocTypeTarget_ID from C_Order where C_Order_ID = ?", getRef_Order_ID());
		
		//#80928 : NEC 24
		if( is_ValueChanged("Z_ActionLogList") && get_ValueOld("Z_ActionLogList") != null )
		{
			log.saveError("Error", " L'action logistique ne peut plus �tre modifi�e�");
			return false;
		}

		if (is_ValueChanged("Z_ActionLogList") && get_Value("Z_ActionLogList") != null && Msg.getMsg(getCtx(), "KM_NEC24_ACTIONTRFT") != null 
				&& Msg.getMsg(getCtx(), "KM_NEC24_ACTIONTRFT").contains(get_Value("Z_ActionLogList").toString())  )
		{
			String where = "AND IsActive='Y' AND QtyOrdered <> 0 AND EXISTS "
					+ "(SELECT * FROM M_Product p WHERE C_OrderLine.M_Product_ID=p.M_Product_ID"
					+ " AND p.IsStocked='Y')";
			//
			String sql = "SELECT COUNT(*) FROM C_OrderLine "
					+ "WHERE C_Order_ID=? " + where;
			int count = DB.getSQLValue(get_Trx(), sql, getC_Order_ID());
			String DocNo = null;
			if (count != 0)
			{
				MMovement mvt = new MMovement(getCtx(), 0, null);
				int Org =  Integer.parseInt(Msg.getMsg(getCtx(),"KM_NEC24_ORGFROM"));
				mvt.setClientOrg( getAD_Client_ID(), Org); 
				mvt.set_Value("POReference", getDocumentNo());
				mvt.set_Value("CreatedDate", new Timestamp(System.currentTimeMillis()));
				mvt.setMovementDate(new Timestamp(System.currentTimeMillis()));
				mvt.setDescription("Trft Auto, " + ("01".equalsIgnoreCase(get_Value("Z_ActionLogList").toString()) ? "Livraison chez le client " :
					"02".equalsIgnoreCase(get_Value("Z_ActionLogList").toString()) ? "Livraison par le magasin" : "Enlev� � Rhisnes") );
				mvt.setDocAction("CO");
				mvt.set_Value("C_Order_ID", getC_Order_ID());

				int C_DOCTYPE_MVT_ID = DB.getSQLValue(get_Trx(), "select C_DOCTYPE_MVT_ID from C_DocTypeInfo where C_Doctype_id = ?", getC_DocType_ID());
				if (C_DOCTYPE_MVT_ID < 0)
				{
					log.saveError("Error" ,"Type document transfert introuvable !");
					return false;
				}
				mvt.setC_DocType_ID(C_DOCTYPE_MVT_ID);

				if(!mvt.save())
				{
					log.saveError("Error" ,"Cannot save Movement !");
					return false;
				}
				DocNo = mvt.getDocumentNo();

				int M_Warehouse_ID = DB.getSQLValue(get_Trx(), " Select M_Warehouse_ID from AD_OrgInfo where AD_Org_ID = ? ", mvt.getAD_Org_ID());

				int M_WarehouseTo_ID = DB.getSQLValue(get_Trx(), " Select M_Warehouse_ID from AD_OrgInfo where AD_Org_ID = ? ", getAD_Org_ID());

				int M_Locator_ID = DB.getSQLValue(get_Trx(), " SELECT m_locator_id FROM m_locator WHERE m_warehouse_id = ? AND "
						+" isdefault ='Y' AND Z_LocatorType_ID = (select z_locatortype_id from z_locatortype where z_locatortype.AD_Client_ID = m_locator.AD_Client_ID and ISSTANDARDTYPE = 'Y') ", M_Warehouse_ID);

				int M_LocatorTo_ID = DB.getSQLValue(get_Trx(), " SELECT m_locator_id FROM m_locator WHERE m_warehouse_id = ? AND "
						+" isdefault ='Y' AND Z_LocatorType_ID = (select z_locatortype_id from z_locatortype where z_locatortype.AD_Client_ID = m_locator.AD_Client_ID and ISSTANDARDTYPE = 'Y') ", M_WarehouseTo_ID);


				MOrderLine[] lines = getLines (where, "ORDER BY Line");
				for (MOrderLine line : lines) {
					MMovementLine mvtline = new MMovementLine(mvt);
					mvtline.setM_Product_ID(line.getM_Product_ID());
					if(M_Warehouse_ID > 0)
						mvtline.set_Value("M_Warehouse_ID", M_Warehouse_ID);
					if(M_WarehouseTo_ID > 0)
						mvtline.set_Value("M_WarehouseTo_ID", M_WarehouseTo_ID);
					mvtline.setMovementQty(line.getQtyOrdered());
					mvtline.set_Value("C_OrderLine_ID", line.getC_OrderLine_ID());
					if(M_Locator_ID > 0)
						mvtline.setM_Locator_ID(M_Locator_ID);
					if(M_LocatorTo_ID > 0)
						mvtline.setM_LocatorTo_ID(M_LocatorTo_ID);
					if(!mvtline.save())
					{
						log.saveError("Error" ,"Cannot save Movement line!");
						return false;
					}

				}
				log.saveWarning("Warning", "Transfert g�n�r� : "+ DocNo);
			}

		} //#80928 : NEC 24
		if(getDateAcct()==null)
			setDateAcct(new Timestamp(System.currentTimeMillis()));
		SimpleDateFormat DATEFORMAT_DDMMYYYY_HHMMSS = new SimpleDateFormat("dd/MM/yyyy");
		String xxxNow = DATEFORMAT_DDMMYYYY_HHMMSS.format(new Date(GregorianCalendar.getInstance().getTimeInMillis()));
		String xxx = DATEFORMAT_DDMMYYYY_HHMMSS.format(new Date(getDateAcct().getTime()));
		
		
		if(xxxNow.compareTo(xxx)!=0)
			setDateAcct(new Timestamp(System.currentTimeMillis()));
		return true;
	}	//	beforeSave


	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return true if can be saved
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if(is_ValueChanged("XX_IsSAV") )
		{
			MTAUXQLTHISTO histo = new MTAUXQLTHISTO(getCtx(), 0, get_Trx());
			histo.setAD_Org_ID(getAD_Org_ID());
			histo.setC_Order_ID(getC_Order_ID());
			histo.setXX_IsSAV(getXX_IsSAV());
			histo.setXX_SAV_Date((Timestamp)get_Value("XX_SAV_Date"));
			histo.set_ValueNoCheck("Z_RefChantier", get_ValueAsString("Z_RefChantier"));
			histo.save();
		}
		
		if(is_ValueChanged("XX_IsBonus"))
		{
			X_XT_Order_Bonus histo = new X_XT_Order_Bonus(getCtx(), 0, get_Trx());
			histo.setC_Order_ID(getC_Order_ID());
			histo.setAD_Org_ID(getAD_Org_ID());
			histo.setIsXX_IsBonus(get_ValueAsBoolean("XX_IsBonus"));
			histo.setDateAction(new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
			histo.setXX_BonusDate(get_ValueAsTimestamp("XX_BonusDate"));
			histo.save();
			
		}
		
			
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), getC_DocTypeTarget_ID(), get_Trx());
		//	Update UbiSoft URL in case of Contrat Store
		//String docType = DB.getSQLValueString(get_Trx(), "select name from c_doctype where c_doctype_id = ?", getC_DocTypeTarget_ID());
//		EggoCtx.setConstants();
		// if (EggoCtx.CONTRAT_STORE.equalsIgnoreCase(docType) && get_ValueAsString("Z_UbiSoftUrl").isEmpty()){
		if (dti != null && (dti.isStore()//MERGE
				|| dti.isPlacard()) //MERGE
				&& get_ValueAsString("Z_UbiSoftUrl").isEmpty() && dti.isCuisine()) {
			MClient client = MClient.get(getCtx(), getAD_Client_ID());
			MClientProxy clientProxy = new MClientProxy(client);
			String UBISOFT_URL = clientProxy.getParameter("UBISOFT_URL");
			
			String url = UBISOFT_URL + getDocumentNo();
			String sql = "UPDATE C_Order "
					+ " SET Z_UbiSoftUrl=? "
					+ "WHERE C_Order_ID=?";

				int no = DB.executeUpdate(sql, new Object[]{url,getC_Order_ID()}, get_Trx());
				log.fine("UbisSoftUrl -> #" + no);
				
		}
		
		//99788
		if(is_ValueChanged("C_BPartner_ID") || is_ValueChanged("C_BPartner_Location_ID") || is_ValueChanged("Bill_Location_ID"))
		{
			//Mettre le devis li� au Contrat
			int docId = MDocTypeInfo.getDocTypeDevisByStore(getCtx(), getC_DocTypeTarget_ID(), get_Trx());
			if(docId>0)
			{
				String update = "UPDATE C_ORDER set Updated = sysdate, UpdatedBy = ?, C_BPartner_ID = ?, C_BPartner_Location_ID = ?, Bill_BPartner_ID = ?, Bill_Location_ID = ?, AD_User_ID = ?, Bill_User_ID = ? where C_DocTypeTarget_ID = ? and POREFERENCE = ?";
				DB.executeUpdate(get_Trx(), update, getCtx().getAD_User_ID(), getC_BPartner_ID(), getC_BPartner_Location_ID(), getBill_BPartner_ID(), getBill_Location_ID(), getAD_User_ID(), getBill_User_ID(),docId, getPOReference());
			}
		}
		
		if (dti.isStore()  //MERGE
				|| dti.isPlacard() && dti.isCuisine()) //MERGE
		{
		// R�ajust PaySchedule
		int ops = DB.getSQLValue(get_Trx(), "select max(Z_OrderPaymSchedule_ID) from Z_OrderPaymSchedule WHERE C_Order_ID = ? "
				+ "AND Z_TypeEcheance_ID in (SELECT max(Z_TypeEcheance_ID) from Z_TypeEcheance WHERE IsAjust = 'Y' AND AD_Client_ID = "+getAD_Client_ID()+") ", this.getC_Order_ID()) ;
		if (ops > 0 ){
			MOrderPaymSchedule oppss = new MOrderPaymSchedule(getCtx(), ops, get_Trx());
			if (oppss != null){
				if (".".equalsIgnoreCase(oppss.getZ_NumAccept() ))
					oppss.setZ_NumAccept(" ");
				else
					oppss.setZ_NumAccept(".");
				oppss.save(get_Trx());
			}
			
		}
		}
		
		MDocType dt = MDocType.get(getCtx(), this.getC_DocTypeTarget_ID());
		//if (getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")){
		//MERGE
		if (dti.isCuisine()) {
			if (getPOReference() == null ) {
				Object params[] = {this.getDocumentNo().toUpperCase(),this.getC_Order_ID()};
				DB.executeUpdate("UPDATE C_Order SET POReference = ? WHERE C_Order_ID = ? ", params,get_Trx());
			}
			// Margin Calulation
			if (MOrder.DOCSTATUS_InProgress.equalsIgnoreCase(this.getDocStatus() ) 
					|| dti.isDirect() //MERGE
					|| dti.isStore() //MERGE
					|| dti.isDevis() // MERGE
					|| dti.isPlacard() //MERGE
					) //MERGE
				createOrderMargin();
			
		}
		
//		afterSaveSync("Z_UbiSoftUrl");
//		afterSaveSync("POReference");
//		afterSaveSync("Ref1");
		
		if(!this.getDocStatus().equals(MOrder.DOCSTATUS_Drafted))
			if(!isSOTrx() && getRef_Order_ID()>0)
				WSUtil.updateOrder(getCtx(), new MOrder(getCtx(),getRef_Order_ID(),get_Trx()), false, get_Trx());
			WSUtil.updateOrder(getCtx(), this, newRecord, get_Trx());
		
			
		
		if(is_ValueChanged("XX_Recouv_List") ) {
			set_ValueNoCheck("XX_Recouv_Date",new Timestamp(System.currentTimeMillis()));
			WSUtil.updateOrderRecouv(getCtx(), this, newRecord, get_Trx());
		}
		if (!success || newRecord)
			return success;
		
		

		//	Propagate Description changes
		if (is_ValueChanged("Description") || is_ValueChanged("POReference"))
		{
			String sql = "UPDATE C_Invoice i"
				+ " SET (Description,POReference)="
				+ "(SELECT Description, UPPER(POReference) "
				+ "FROM C_Order o WHERE i.C_Order_ID=o.C_Order_ID) "
				+ "WHERE DocStatus NOT IN ('RE','CL') AND C_Order_ID=?";

			int no = DB.executeUpdate(sql, new Object[]{getC_Order_ID()}, get_Trx());
			log.fine("Description -> #" + no);
		}
		
		

			
			
			


		//	Propagate Changes of Payment Info to existing (not reversed/closed) invoices
		/**ZCOM525 NE PAS TOUCHER UNE FACTURE SUR QUOI QUE CE SOIT 
		if (is_ValueChanged("PaymentRule") || is_ValueChanged("C_PaymentTerm_ID")
				|| is_ValueChanged("DateAcct") || is_ValueChanged("C_Payment_ID")
				|| is_ValueChanged("C_CashLine_ID"))
		{
			String sql = "UPDATE C_Invoice i "
				+ "SET (PaymentRule,C_PaymentTerm_ID,DateAcct,C_Payment_ID,C_CashLine_ID)="
				+ "(SELECT PaymentRule,C_PaymentTerm_ID,DateAcct,C_Payment_ID,C_CashLine_ID "
				+ "FROM C_Order o WHERE i.C_Order_ID=o.C_Order_ID) "
				+ "WHERE DocStatus NOT IN ('RE','CL') AND C_Order_ID=?";
			//	Don't touch Closed/Reversed entries
			int no = DB.executeUpdate(sql, new Object[]{getC_Order_ID()}, get_Trx());
			log.fine("Payment -> #" + no);
		}
		**/
		/*ZCOM525* START */
		if (is_ValueChanged("C_Payment_ID") || is_ValueChanged("C_CashLine_ID"))
		{
			String sql = "UPDATE C_Invoice i "
				+ "SET (C_Payment_ID,C_CashLine_ID)="
				+ "(SELECT C_Payment_ID,C_CashLine_ID "
				+ "FROM C_Order o WHERE i.C_Order_ID=o.C_Order_ID) "
				+ "WHERE DocStatus NOT IN ('RE','CL') AND C_Order_ID=" + getC_Order_ID();
			//	Don't touch Closed/Reversed entries
			int no = DB.executeUpdate(sql, get_Trx());
			log.fine("Payment -> #" + no);
		}
		/*ZCOM525* END */
		
		if (isSOTrx() && this.get_ValueAsString("SAV_STATUS") != null && ( (is_ValueChanged("SAV_STATUS") || is_ValueChanged("SAV_LIEU")) && ! newRecord ) )
		{
			int histSAV = DB.getSQLValue(get_Trx(), "select max(Z_SavStatus_ID) from Z_SavStatus where c_order_id = ? and SAV_STATUS = ? ", this.get_ID(), this.get_ValueAsString("SAV_STATUS"));
			if (histSAV < 1)
			{
				String sql2 = "Insert into Z_SAVSTATUS (AD_CLIENT_ID,AD_ORG_ID,C_ORDER_ID,CREATED,CREATEDBY,DATEMOUVEMENT,ISACTIVE,SAV_STATUS,UPDATED,UPDATEDBY,Z_SAVSTATUS_ID,SAV_LIEU)"
						  +"values (?,?,?,SysDate,?,SysDate,?,?,SysDate,?,ad_sequence_nextno('Z_SavStatus'),?)";
				ArrayList<Object> params2 = new ArrayList<Object>();
				params2.add(getAD_Client_ID());
				params2.add(this.getAD_Org_ID());
				params2.add(this.get_ID());
				params2.add(this.getUpdatedBy());
				params2.add("Y");
				params2.add(this.get_ValueAsString("SAV_STATUS"));
				params2.add(this.getUpdatedBy());
				params2.add(this.get_ValueAsString("SAV_LIEU"));
				DB.executeUpdate(sql2,params2.toArray(new Object[params2.size()]), get_Trx() );
			}	
			if(histSAV>0)
			{
				ArrayList<Object> params2 = new ArrayList<Object>();
				params2.add(this.getUpdatedBy());
				params2.add(this.get_ValueAsString("SAV_STATUS"));
				params2.add(this.get_ValueAsString("SAV_LIEU"));
				params2.add(histSAV);
				DB.executeUpdate("UPDATE Z_SAVSTATUS set updated = sysdate, DATEMOUVEMENT = sysdate, UPDATEDBY = ?,SAV_STATUS = ?, SAV_LIEU = ? where params2.toArray(new Object[params2.size()]) = ?",params2.toArray(new Object[params2.size()]), get_Trx());
			}
		}	


		//	Sync Lines
		afterSaveSync("AD_Org_ID");
		afterSaveSync("C_BPartner_ID");
		afterSaveSync("C_BPartner_Location_ID");
		afterSaveSync("DateOrdered");
		afterSaveSync("DatePromised");
		afterSaveSync("M_Warehouse_ID");
		afterSaveSync("M_Shipper_ID");
		afterSaveSync("C_Currency_ID");
//		afterSaveSync("POReference");
		
//		afterSaveSync("Z_UbiSoftUrl");
//		afterSaveSync("POReference");
//		afterSaveSync("Ref1");

		//
		//only in batch mode redistribute tax
		if(getCtx().isBatchMode()) {
			recomputeTaxes();
		}

		return true;
	}	//	afterSave

	/**
	 * Recompute all the taxes for the order
	 */
	private void recomputeTaxes() {
		String sql = "SELECT * from C_OrderLine WHERE C_OrderLine_ID in (SELECT MIN(C_OrderLine_ID) from C_OrderLine WHERE C_Order_ID=? GROUP BY C_Tax_ID)"; 
		PreparedStatement pstmt = DB.prepareStatement(sql, get_Trx());
		try {
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery ();
			while(rs.next()) {
				MOrderLine line = new MOrderLine(getCtx(), rs, get_Trx());
				line.updateHeaderTax();
			}
		}
		catch(SQLException e) {
			log.log(Level.SEVERE, "Batch MOrder save - " + sql.toString(), e);
		} finally {
			try {
				pstmt.close();
			}
			catch(Exception e){}
		}
	}


	private void afterSaveSync (String columnName)
	{
		if (is_ValueChanged(columnName))
		{
			String sql = "UPDATE C_OrderLine ol"
				+ " SET " + columnName + " ="
				+ "(SELECT " + columnName
				+ " FROM C_Order o WHERE ol.C_Order_ID=o.C_Order_ID) "
				+ "WHERE C_Order_ID = ?" ;
			int no = DB.executeUpdate(sql, getC_Order_ID(), get_Trx());
			log.fine(columnName + " Lines -> #" + no);
		}
	}	//	afterSaveSync

	/**
	 * 	Before Delete
	 *	@return true of it can be deleted
	 */
	@Override
	protected boolean beforeDelete ()
	{
		if (isProcessed())
			return false;
		
		DB.executeUpdate("DELETE FROM CM_CHAT where RECORD_ID = ? and AD_TABLE_ID = 259 ", getC_Order_ID(), null);

		for (MOrderLine line : getLines()) {
			if (!line.beforeDelete())
				return false;
		}
		return true;
	}	//	beforeDelete

	/**	Process Message 			*/
	private String		m_processMsg = null;

	/**
	 * 	Unlock Document.
	 * 	@return true if success
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		setProcessing(false);
		return true;
	}	//	unlockIt

	/**
	 * 	Invalidate Document
	 * 	@return true if success
	 */
	public boolean invalidateIt()
	{
		log.info(toString());
		setDocAction(DOCACTION_Prepare);
		return true;
	}	//	invalidateIt
	
	
	public boolean retaxIt()
	{
		this.calculateTaxTotal();
		this.save(get_Trx());
		return true;
	}	//	invalidateIt
	
	/**
	 * Appell� par Talend !
	 */
	public boolean changePart(int line, int fromProductID, int toProductID)
	{
		if (fromProductID < 1) 
			throw new InvalidParameterException("No From Product ID"); 	
		if (toProductID < 1) 
			throw new InvalidParameterException("No To Product ID");
		
		// If not isSotrx Reopen purchase Order
		if (!isSOTrx() && getDocStatus().equalsIgnoreCase(MOrder.DOCSTATUS_Completed)){
			boolean successReopen = DocumentEngine.processIt(this, DocActionConstants.ACTION_ReActivate);
			if (!successReopen) 
				throw new CompiereException("Unable to reopen Purchase Order " + getDocumentNo());
			save(get_Trx());
		}
		chgPart(line,fromProductID,toProductID);

		// If not isSotrx Reopen purchase Order
		if (!isSOTrx() && getDocStatus().equalsIgnoreCase(MOrder.DOCSTATUS_InProgress)){
			boolean successComplete = DocumentEngine.processIt(this, DocActionConstants.ACTION_Complete);
			if (!successComplete) 
				throw new CompiereException("Unable to Close Purchase Order " + getDocumentNo());
			save(get_Trx());
			if (getRef_Order_ID() >= 0){  // Change Also In SO Order
				MOrder soOrder = new MOrder(getCtx(), getRef_Order_ID(), get_Trx());
				if (soOrder != null && soOrder.isSOTrx()) {
					soOrder.chgPart(line,fromProductID,toProductID);
				}
			}
		}

		return true; // ^__^ // 
	}
	
	
	private void chgPart(int line, int fromProductID, int toProductID) {
		log.info("Line "+line+" "+fromProductID+" to "+toProductID);
		MProduct pt = new MProduct(getCtx(), toProductID, get_Trx());
		MOrderLine[] ols = getLines(fromProductID, " C_OrderLine.line = "+line, null);
		for (int i = 0; i < ols.length; i++) {
			if (ols[i].getQtyDelivered().compareTo(BigDecimal.ZERO) == 0 && ols[i].getQtyInvoiced().compareTo(BigDecimal.ZERO) == 0 
					&& ols[i].getQtyEntered().compareTo(BigDecimal.ZERO) != 0){
				try{
					createLine(toProductID, ols[i].getQtyEntered(), pt.getC_UOM_ID(), pt.getDescription());
					ols[i].setQtyOrdered(BigDecimal.ZERO);
					// sera fait au complete ols[i].setQtyReserved(BigDecimal.ZERO);
					ols[i].setDescription("RB : " + pt.getValue() +  ( getDescription() != null ? " " + getDescription() : " " ));
					ols[i].save();
				}
				catch (Exception e)
				{
					throw new CompiereException("Unable to replace part on order " + this.getDocumentNo(), e);
				}
				
			}
			else {
				throw new CompiereException("Change Part can not be done : Qty Delivered "+ols[i].getQtyDelivered()+"  Qty Invoiced "+ols[i].getQtyInvoiced());
			}
		}
	}


	public boolean addPart(int productID, BigDecimal qty)
	{
		if (productID < 1) throw new InvalidParameterException("No Product ID"); 	
		if (qty.compareTo(BigDecimal.ZERO) == 0) throw	new InvalidParameterException("Quantity");
		MProduct pt = new MProduct(getCtx(), productID, get_Trx());
		
		try {

			if (!isSOTrx() && getDocStatus().equalsIgnoreCase(MOrder.DOCSTATUS_Completed)){
				boolean successReopen = DocumentEngine.processIt(this, DocActionConstants.ACTION_ReActivate);
				if (!successReopen) throw new CompiereException("Unable to reopen Purchase Order " + getDocumentNo());
				save(get_Trx());
			}
		
		
			createLine(productID, qty, pt.getC_UOM_ID(), pt.getDescription());

			if (!isSOTrx() && getDocStatus().equalsIgnoreCase(MOrder.DOCSTATUS_InProgress)){
				boolean successComplete = DocumentEngine.processIt(this, DocActionConstants.ACTION_Complete);
				if (!successComplete) throw new CompiereException("Unable to Close Purchase Order " + getDocumentNo());
				save(get_Trx());
				if (getRef_Order_ID() >= 0){  // Change Also In SO Order
					MOrder soOrder = new MOrder(getCtx(), getRef_Order_ID(), get_Trx());
					if (soOrder != null && soOrder.isSOTrx()) soOrder.createLine(productID, qty, pt.getC_UOM_ID(), pt.getDescription());
				}
			}
		}
		catch (Exception e)
		{
			log.warning("Unable to addPart on order " + this.getDocumentNo() + " " + e.toString());
		}
		return true;
	}
	
	public int addPartFromInv(int productID, BigDecimal qty, BigDecimal price, String description)
	{
		if (productID < 1) throw new InvalidParameterException("No Product ID"); 	
		
		MProduct pt = new MProduct(getCtx(), productID, get_Trx());
		MOrderLine mol = null;
		try {

			if (!isSOTrx() && getDocStatus().equalsIgnoreCase(MOrder.DOCSTATUS_Completed)){
				boolean successReopen = DocumentEngine.processIt(this, DocActionConstants.ACTION_ReActivate);
				if (!successReopen) throw new CompiereException("Unable to reopen Purchase Order " + getDocumentNo());
				save(get_Trx());
			}
		
		
			mol = createLine(productID, qty, pt.getC_UOM_ID(), description==null?pt.getDescription():description, price);
			
			if (!isSOTrx() && getDocStatus().equalsIgnoreCase(MOrder.DOCSTATUS_InProgress)){
				boolean successComplete = DocumentEngine.processIt(this, DocActionConstants.ACTION_Complete);
				if (!successComplete) throw new CompiereException("Unable to Close Purchase Order " + getDocumentNo());
				save(get_Trx());
			}
		}
		catch (Exception e)
		{
			log.warning("Unable to addPart on order " + this.getDocumentNo() + " " + e.toString());
		}
		return mol==null?0:mol.getC_OrderLine_ID();
	}


	public MOrderLine createLine(int productID, BigDecimal qty, int uom, String description) {
		MOrderLine ol = new MOrderLine(this);
		ol.setM_Product_ID(productID);
		ol.setC_UOM_ID(uom);
		ol.setQtyEntered(qty);
		ol.setQtyOrdered(qty);
		ol.setDescription("AFS " + description);
		ol.setDatePromised(this.getDatePromised());
		ol.setPrice();
		ol.save(get_Trx());
		ol.updateHeaderTax();
		return ol;
	}

	public MOrderLine createLine(int productID, BigDecimal qty, int uom, String description, BigDecimal Price) {
		MOrderLine ol = new MOrderLine(this);
		ol.setM_Product_ID(productID);
		ol.setC_UOM_ID(uom);
		ol.setQtyEntered(qty);
		ol.setQtyOrdered(Env.ZERO );
		ol.setDescription("AFS " + description);
		ol.setDatePromised(this.getDatePromised());
		ol.setPrice(Price);
		ol.save(get_Trx());
		ol.updateHeaderTax();
		return ol;
	}

	/**************************************************************************
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid)
	 */
	public String prepareIt()
	{
		MDocType dt = MDocType.get(getCtx(), getC_DocTypeTarget_ID());
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), getC_DocTypeTarget_ID(), get_Trx());
		setIsReturnTrx(dt.isReturnTrx());
		setIsSOTrx(dt.isSOTrx());
		
		MDocTypeProxy dtp = new MDocTypeProxy(new MDocType(getCtx(), getC_DocTypeTarget_ID(), get_Trx()));
		String step  =dtp.getStatusFromDoctype();
		//if ((getCtx().getContext("#IsEGGO_CLIENTID").equals("Y"))
		if (dti != null && dti.isCuisine()
				&& get_Value("Z_OrderStepStatus") == null && step!=null)
		{
			set_Value("Z_OrderStepStatus",step);
		}

		//	Convert DocType to Target
		if (getC_DocType_ID() != getC_DocTypeTarget_ID() )
		{
			//	Cannot change Std to anything else if different warehouses
			if (getC_DocType_ID() != 0)
			{
				MDocType dtOld = MDocType.get(getCtx(), getC_DocType_ID());
				if (X_C_DocType.DOCSUBTYPESO_StandardOrder.equals(dtOld.getDocSubTypeSO())		//	From SO
						&& !X_C_DocType.DOCSUBTYPESO_StandardOrder.equals(dt.getDocSubTypeSO()))	//	To !SO
				{					
					Object[][] result = QueryUtil.executeQuery(
							"SELECT M_Warehouse_ID, Line FROM C_OrderLine WHERE C_Order_ID = ? AND M_Warehouse_ID <> ?",
							new Object[] { getC_Order_ID(), getM_Warehouse_ID() }, get_Trx());

					for (Object[] line : result) {
						if (((BigDecimal) line[0]).intValue() != getM_Warehouse_ID()) {
							log.warning("different Warehouse on line " + line[1]);
							m_processMsg = "@CannotChangeDocType@";
							return DocActionConstants.STATUS_Invalid;
						}
					}
				}
			}

			//	New or in Progress/Invalid
			if (DOCSTATUS_Drafted.equals(getDocStatus())
					|| DOCSTATUS_InProgress.equals(getDocStatus())
					|| DOCSTATUS_Invalid.equals(getDocStatus())
					|| (getC_DocType_ID() == 0))
			{
				setC_DocType_ID(getC_DocTypeTarget_ID());
			}
			else	//	convert only if offer
			{
				if (dt.isOffer())
					setC_DocType_ID(getC_DocTypeTarget_ID());
				else
				{
					m_processMsg = "@CannotChangeDocType@";
					return DocActionConstants.STATUS_Invalid;
				}
			}
		}	//	convert DocType
		
		//  Ordre de consignation 
			if (isSOTrx()){
				MDocType doctype = new MDocType(getCtx(), getC_DocTypeTarget_ID(),get_Trx());
				if ("Y".equalsIgnoreCase(doctype.get_ValueAsString("IsConsignation")) 
						//&& (getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")))
						&& dti.isCuisine()) // MERGE
				{
					generateConsignMvt(this,false);
					return DocActionConstants.STATUS_InProgress;
				}
			}	
			//  Ordre de consignation 

			//Devis - Calcule marge
			if (isSOTrx()){
				MDocType doctype = new MDocType(getCtx(), getC_DocTypeTarget_ID(),get_Trx());
				if ("ON".equalsIgnoreCase(doctype.get_ValueAsString("DocSubTypeSO")))
				{
					//generateConsignMvt(false);
					return DocActionConstants.STATUS_InProgress;
				}
			}	
			//Devis
			
		//	Mandatory Product Attribute Set Instance
		String mandatoryType = "='Y'";	//	IN ('Y','S')
		String sql = "SELECT COUNT(*) "
			+ "FROM C_OrderLine ol"
			+ " INNER JOIN M_Product p ON (ol.M_Product_ID=p.M_Product_ID)"
			+ " INNER JOIN M_AttributeSet pas ON (p.M_AttributeSet_ID=pas.M_AttributeSet_ID) "
			+ "WHERE pas.MandatoryType" + mandatoryType
			+ " AND COALESCE(ol.M_AttributeSetInstance_ID,0) = 0"
			+ " AND ol.C_Order_ID=?";
		int no = DB.getSQLValue(get_Trx(), sql, getC_Order_ID());
		if (no != 0)
		{
			m_processMsg = "@LinesWithoutProductAttribute@ (" + no + ")";
			return DocActionConstants.STATUS_Invalid;
		}

		//	Lines
		explodeBOM();

		if (!reserveStock(dt))
		{
			m_processMsg = "Cannot reserve Stock";
			return DocActionConstants.STATUS_Invalid;
		}
		if (!calculateTaxTotal())
		{
			m_processMsg = "Error calculating tax";
			return DocActionConstants.STATUS_Invalid;
		}

		//	Credit Check
		if (isSOTrx() && !isReturnTrx())
		{
			MBPartner bp = MBPartner.get(getCtx(), getC_BPartner_ID());
			if(!X_C_BPartner.SOCREDITSTATUS_NoCreditCheck.equals(bp.getSOCreditStatus()))
			{
				if (X_C_BPartner.SOCREDITSTATUS_CreditStop.equals(bp.getSOCreditStatus()))
				{
					m_processMsg = "@BPartnerCreditStop@ - @TotalOpenBalance@="
						+ bp.getTotalOpenBalance()
						+ ", @SO_CreditLimit@=" + bp.getSO_CreditLimit();
					return DocActionConstants.STATUS_Invalid;
				}
				else if (X_C_BPartner.SOCREDITSTATUS_CreditHold.equals(bp.getSOCreditStatus()))
				{
					m_processMsg = "@BPartnerCreditHold@ - @TotalOpenBalance@="
						+ bp.getTotalOpenBalance()
						+ ", @SO_CreditLimit@=" + bp.getSO_CreditLimit();
					return DocActionConstants.STATUS_Invalid;
				}
				BigDecimal grandTotal = MConversionRate.convertBase(getCtx(),
						getGrandTotal(), getC_Currency_ID(), getDateOrdered(),
						getC_ConversionType_ID(), getAD_Client_ID(), getAD_Org_ID());
				if (X_C_BPartner.SOCREDITSTATUS_CreditHold.equals(bp.getSOCreditStatus(grandTotal)))
				{
					m_processMsg = "@BPartnerOverOCreditHold@ - @TotalOpenBalance@="
						+ bp.getTotalOpenBalance() + ", @GrandTotal@=" + grandTotal
						+ ", @SO_CreditLimit@=" + bp.getSO_CreditLimit();
					return DocActionConstants.STATUS_Invalid;
				}
			}
		}
		
		// Commande WEB Test if all orderline have Action for Qty
//		PosCtx.setConstants(getCtx(),get_Trx());
		MOrgInfo moi = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_Trx());
		MOrgInfoProxy oif = new MOrgInfoProxy(moi);
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), getAD_Org_ID(), get_Trx());
		if (oif.isPOS() &&  orgPOS != null && orgPOS.getDocType_WebSales_ID() == getC_DocTypeTarget_ID()){
			String stockedProduct = " AND M_PRODUCT_ID IN ( SELECT p.M_Product_ID FROM M_PRODUCT p where p.m_product_id = C_OrderLine.M_Product_ID AND p.isstocked = 'Y')";
			int qtyOL = DB.getSQLValue(get_Trx(), "SELECT SUM(QtyEntered) from C_OrderLine WHERE C_Order_ID = ? and isActive = 'Y' " + stockedProduct, get_ID()) ;
			int qtyAction = DB.getSQLValue(get_Trx(), "SELECT sum(QtyEntered) from Z_ORDERLINEPOSACTION WHERE C_ORDERLINE_ID in (SELECT C_OrderLine_ID from C_OrderLine WHERE C_ORDER_ID = ? "+stockedProduct+")  and isActive = 'Y' ", get_ID()) ;
			if (qtyOL != qtyAction){
				m_processMsg = "La quantit� des lignes d'action ne correspond � la quantit� des lignes de commande";
				return DocActionConstants.STATUS_Invalid;
			}	
		}
		if ("Y".equalsIgnoreCase(dt.get_ValueAsString("CreateSched"))){
			int noSeq = DB.getSQLValue(get_Trx(), "select NVL(max(SeqNo),0) from z_orderpaymschedule where C_Order_ID = ? and Z_TYPEECHEANCE_ID in (Select Z_TYPEECHEANCE_ID from Z_TYPEECHEANCE where IsAjust = 'N' and AD_Client_ID = "+this.getAD_Client_ID()+")",this.getID());
			if(noSeq==0)
				noSeq = 10;
			int typeEchID = DB.getSQLValue(get_Trx(), "select max(z_typeecheance_id) from z_typeecheance where IsLivraison = 'Y' AND AD_Client_ID = "+getAD_Client_ID());
			int typeEchSigID = DB.getSQLValue(get_Trx(), "select max(z_typeecheance_id) from z_typeecheance where Value='01' AND AD_Client_ID = "+getAD_Client_ID());
			if (typeEchID > 0 ){
				
				int exist = DB.getSQLValue(get_Trx(),"select count(*) from z_orderpaymschedule where c_order_id = ? and Z_TypeEcheance_ID = ? ",  this.getID(),typeEchID);
				int existSign = DB.getSQLValue(get_Trx(),"select count(*) from z_orderpaymschedule where c_order_id = ? and Z_TypeEcheance_ID = ? ",  this.getID(),typeEchSigID);
				if (((exist < 1 && !dti.isDirect() ) //MERGE
						|| (existSign <1 && dti.isDirect()))) //MERGE
				{
				 MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), 0, get_Trx());
				 ops.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				 ops.setC_Order_ID(getC_Order_ID());
				 ops.setZ_TypeEcheance_ID(typeEchID);
				 ops.setSeqNo(noSeq);
				 ops.set_ValueNoCheck("DueDate", getDatePromised());
				 BigDecimal amt = getGrandTotal();
				 if(dti.isDirect()) //MERGE
				 {
					 ops.setZ_TypeEcheance_ID(typeEchSigID);
					 amt = amt.divide(new BigDecimal(10),BigDecimal.ROUND_HALF_UP);
				 }
				 ops.setTotalAmt(amt);
				 ops.save(get_Trx());
				}
			}
		}
		
		
		// S533 - Check Franco for Purchase Order
		
		// MERGE if (!isSOTrx() && (getAD_Client_ID() == 1000022) && !isCreditApproved() ){
		if (!isSOTrx() && ! dti.isCuisine() && ! isCreditApproved() ){ // MERGE
			MBPartner bp = new MBPartner(getCtx(),getC_BPartner_ID(),get_Trx());
			if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(BigDecimal.ZERO) != 0 ){
				if ("Y".equalsIgnoreCase(bp.get_ValueAsString("IsFrancoQty"))){
					if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(getTotalQty()) == 1){
						m_processMsg = "La quantit� franco fournisseur n'est pas respect�e : " + bp.get_ValueAsBigDecimal("FrancoAmtQty");
						return DocActionConstants.STATUS_Invalid;
					}	
				}
				else {  // Franco Montant
					if (bp.get_ValueAsBigDecimal("FrancoAmtQty").compareTo(getTotalLines()) == 1){
						m_processMsg = "Le montant franco fournisseur n'est pas atteint : " + bp.get_ValueAsBigDecimal("FrancoAmtQty");
						return DocActionConstants.STATUS_Invalid;
					}	
				}
			}
		}
		
		dtp = new MDocTypeProxy(new MDocType(getCtx(), getC_DocTypeTarget_ID(), get_Trx()));
		step  =dtp.getStatusFromDoctype();
		//if((getCtx().getContext("#IsEGGO_CLIENTID").equals("Y"))
		if (dti.isCuisine()
				&& get_Value("Z_OrderStepStatus") == null && step!=null)
		{
			set_Value("Z_OrderStepStatus",step);
		}

		//	if (!DOCACTION_Complete.equals(getDocAction()))		don't set for just prepare
		//		setDocAction(DOCACTION_Complete);
		return DocActionConstants.STATUS_InProgress;
	}	//	prepareIt

	private BigDecimal getTotalQty() {
		return DB.getSQLValueBD(get_Trx(), "select sum(ol.qtyentered) from c_orderline ol inner join m_product p on p.m_product_id = ol.m_product_id where p.isstocked = 'Y' and c_order_id = ?", get_ID());
	}


	/**
	 * 	Explode non stocked BOM.
	 * 	@return true if bom exploded
	 */
	private boolean explodeBOM()
	{
		boolean retValue = false;
		String where = "AND IsActive='Y' AND EXISTS "
			+ "(SELECT * FROM M_Product p WHERE C_OrderLine.M_Product_ID=p.M_Product_ID"
			+ " AND	p.IsBOM='Y' AND p.IsVerified='Y' AND p.IsStocked='N')";
		//
		String sql = "SELECT COUNT(*) FROM C_OrderLine "
			+ "WHERE C_Order_ID=? " + where;
		int count = DB.getSQLValue(get_Trx(), sql, getC_Order_ID());
		while (count != 0)
		{
			retValue = true;
			renumberLines (1000);		//	max 999 bom items

			//	Order Lines with non-stocked BOMs
			MOrderLine[] lines = getLines (where, "ORDER BY Line");
			for (MOrderLine line : lines) {
				MProduct product = MProduct.get (getCtx(), line.getM_Product_ID());
				log.fine(product.getName());
				//	New Lines
				int lineNo = line.getLine ();
				MBOMProduct[] boms = MBOMProduct.getBOMLines (product);
				ArrayList<MOrderLine> newLines = new ArrayList<MOrderLine>();
				for (MBOMProduct bom : boms) {
					MOrderLine newLine = new MOrderLine (this);
					newLine.setLine (++lineNo);
					newLine.setM_Product_ID (bom.getComponent ()
							.getM_Product_ID ());
					newLine.setC_UOM_ID (bom.getComponent ().getC_UOM_ID ());
					newLine.setQty (line.getQtyOrdered ().multiply (
							bom.getBOMQty ()));
					if (bom.getDescription () != null)
						newLine.setDescription (bom.getDescription ());
					//
					newLine.setPrice ();
					newLines.add(newLine);
				}
				PO.saveAll(get_Trx(), newLines);
				//	Convert into Comment Line
				line.setM_Product_ID (0);
				line.setM_AttributeSetInstance_ID (0);
				line.setPrice (Env.ZERO);
				line.setPriceLimit (Env.ZERO);
				line.setPriceList (Env.ZERO);
				line.setLineNetAmt (Env.ZERO);
				line.setFreightAmt (Env.ZERO);
				//
				String description = product.getName ();
				if (product.getDescription () != null)
					description += " " + product.getDescription ();
				if (line.getDescription () != null)
					description += " " + line.getDescription ();
				line.setDescription (description);
			}	//	for all lines with BOM
			PO.saveAll(get_Trx(), Arrays.asList(lines));

			count = DB.getSQLValue (get_Trx(), sql, getC_Order_ID ());
			renumberLines (10);
		}	//	while count != 0
		return retValue;
	}	//	explodeBOM


	
	/**
	 * 	Reserve Inventory.
	 * 	Counterpart: MInOut.completeIt()
	 * 	@param dt document type or null
	 * @param lines order lines (ordered by M_Product_ID for deadlock prevention)
	 * 	@return true if (un) reserved
	 */
	private boolean reserveStock (MDocType dt)
	{
		if (dt == null)
			dt = MDocType.get(getCtx(), getC_DocType_ID());

		// Reserved quantity and ordered quantity should not be updated for returns
		if (dt.isReturnTrx())
			return true;

		//	Binding
		boolean binding = !dt.isProposal();
		//	Not binding - i.e. Target=0
		if (DOCACTION_Void.equals(getDocAction())
				//	Closing Binding Quotation
				|| (X_C_DocType.DOCSUBTYPESO_Quotation.equals(dt.getDocSubTypeSO())
						&& DOCACTION_Close.equals(getDocAction()))
						|| isDropShip() )
			binding = false;
		boolean isSOTrx = isSOTrx();
		log.fine("Binding=" + binding + " - IsSOTrx=" + isSOTrx);
		//	Force same WH for all but SO/PO
		int header_M_Warehouse_ID = getM_Warehouse_ID();
		if (X_C_DocType.DOCSUBTYPESO_StandardOrder.equals(dt.getDocSubTypeSO())
				|| MDocBaseType.DOCBASETYPE_PurchaseOrder.equals(dt.getDocBaseType()))
			header_M_Warehouse_ID = 0;		//	don't enforce
		if (header_M_Warehouse_ID != 0) // enforce WH
		{
			if( 0 > DB.executeUpdate("UPDATE C_OrderLine SET M_Warehouse_ID = ?, AD_Org_ID = ? WHERE C_Order_ID = ?",
					new Object[] { header_M_Warehouse_ID, getAD_Org_ID(), getC_Order_ID() },
					get_Trx()) )
				return false;
		}		

		
		class Record {
			BigDecimal QtyOrdered;
			BigDecimal QtyReserved;
			BigDecimal QtyDelivered;
			int M_Product_ID;
			int M_Warehouse_ID;
			int M_AttributeSetInstance_ID;
			int Z_OrigOrderline_ID;
			int M_Locator_ID;
		};		
		// 3.8.0
		Iterable<Record> lines = QueryUtil.executeQuery(/*get_Trx(),*/
				// stocked items only
			"SELECT SUM(L.QtyOrdered), SUM(L.QtyReserved), SUM(L.QtyDelivered), L.M_Product_ID, L.M_Warehouse_ID, L.M_AttributeSetInstance_ID,L.M_Locator_ID, L.Z_OrigOrderline_ID "
			+ "FROM C_OrderLine L, M_Product P "
			+ "WHERE L.C_Order_ID = ? AND P.M_Product_ID = L.M_Product_ID AND P.IsStocked = 'Y' AND P.ProductType = 'I' "
			+ "GROUP BY L.M_Product_ID, L.M_Warehouse_ID, L.M_AttributeSetInstance_ID,L.M_Locator_ID, L.Z_OrigOrderline_ID "
			+ "ORDER BY L.M_Product_ID, L.M_Warehouse_ID, L.M_AttributeSetInstance_ID,L.M_Locator_ID, L.Z_OrigOrderline_ID ",
			new Callback<Record>() {
				@Override
				public Record cast(Object[] row) {
					Record r = new Record();
					r.QtyOrdered = (BigDecimal) row[0];
					r.QtyReserved = r.Z_OrigOrderline_ID > 0 ? BigDecimal.ZERO : (BigDecimal) row[1];
					r.QtyDelivered = (BigDecimal) row[2];
					r.M_Product_ID = ((BigDecimal) row[3]).intValue();
					r.M_Warehouse_ID = ((BigDecimal) row[4]).intValue();
					r.M_AttributeSetInstance_ID = row[5] != null ? ((BigDecimal) row[5]).intValue() : 0;
					r.M_Locator_ID = row[6]!=null?((BigDecimal) row[6]).intValue() : 0;
					return r;
				}
			}, new Object[] { getC_Order_ID()},get_Trx());
		
		//	Always check and (un) Reserve Inventory
		MOrg org = new MOrg(getCtx(), getAD_Org_ID(), get_Trx());
		MOrgInfo inf = org.getInfo();
		MOrgInfoProxy oip = new MOrgInfoProxy(inf);
		for (Record line : lines) {

			// getQty in consign  ( do not reserved )
			if(oip.isPOS()){
			//if (getAD_Client_ID() == 1000022){MERGE
				BigDecimal qtyCons = DB.getSQLValueBD(get_Trx(), "select nvl(sum(qtyOrdered),0) from c_orderline where c_order_id = " + getC_Order_ID() + " and m_product_id = ? and ZIsComplement = 'Y' ", line.M_Product_ID);
				line.QtyReserved = line.QtyReserved.add(qtyCons);
			}
			
			//	Binding
			BigDecimal target = binding ? line.QtyOrdered : Env.ZERO;
			BigDecimal difference = target.subtract(line.QtyReserved).subtract(line.QtyDelivered);
			if (difference.signum() != 0) {
				log.fine( " - Target=" + target + ",Difference=" + difference
						+ " - Ordered=" + line.QtyOrdered
						+ ",Reserved=" + line.QtyReserved + ",Delivered=" + line.QtyDelivered);

					BigDecimal ordered = isSOTrx ? Env.ZERO : difference;
					BigDecimal reserved = isSOTrx ? difference : Env.ZERO;
					int M_Locator_ID = 0;
					//	Get Locator to reserve
					if (line.M_AttributeSetInstance_ID != 0)	//	Get existing Location
						M_Locator_ID = Storage.getLocatorID(line.M_Warehouse_ID,
								line.M_Product_ID, line.M_AttributeSetInstance_ID,
								ordered, get_Trx());
					//	Get default Location
					if(line.M_Locator_ID>0 && isSOTrx)
						M_Locator_ID = line.M_Locator_ID;
					if (M_Locator_ID == 0)
					{
						MWarehouse wh = MWarehouse.get(getCtx(), line.M_Warehouse_ID);
						M_Locator_ID = wh.getDefaultM_Locator_ID();
					}
					//	Update Storage
					if (!Storage.addQtys(getCtx(), line.M_Warehouse_ID, M_Locator_ID,
							line.M_Product_ID,
							line.M_AttributeSetInstance_ID, 
							Env.ZERO, reserved, ordered, get_Trx()))
						return false;
					
					// BBR : SYNCHRO STOCK
					if(/*!isSOTrx && */dt.isZ_IsStorageEvent()){
						X_Z_StorageEvent ev = new X_Z_StorageEvent(getCtx(), 0, get_Trx());
						ev.setAD_Client_ID(getAD_Client_ID());
						ev.setAD_Org_ID(getAD_Org_ID());
						ev.setM_Locator_ID(M_Locator_ID);
						ev.setM_Product_ID(line.M_Product_ID);
						ev.setM_AttributeSetInstance_ID(line.M_AttributeSetInstance_ID);
						ev.setQtyType(isSOTrx ?MStorageDetail.QTYTYPE_Reserved:MStorageDetail.QTYTYPE_Ordered);
						ev.setQty(isSOTrx ?reserved:ordered);
						ev.save();
					}
					// BBR : SYNCHRO STOCK
			}
		}	//	reverse inventory

		if(oip.isPOS()){
		//if (getAD_Client_ID() == 1000022){//MERGE
			if( 0 > DB.executeUpdate( "UPDATE C_OrderLine SET QtyReserved = QtyReserved + (CASE ? WHEN 1 THEN QtyOrdered ELSE 0 END) - QtyReserved - QtyDelivered WHERE C_Order_ID = ? and ZIsComplement = 'N' ",
					new Object[]{ binding ? 1 : 0, getC_Order_ID()},
					get_Trx() ) )
				return false;
		} else {
			if( 0 > DB.executeUpdate( "UPDATE C_OrderLine SET QtyReserved = QtyReserved + (CASE ? WHEN 1 THEN QtyOrdered ELSE 0 END) - QtyReserved - QtyDelivered WHERE C_Order_ID = ?",
				new Object[]{ binding ? 1 : 0, getC_Order_ID()},
				get_Trx() ) )
				return false;
		}
		
		Object[][] volume_weight = QueryUtil.executeQuery(
				"SELECT SUM(P.Volume * L.QtyOrdered), SUM(P.Weight * L.QtyOrdered) "+
				"FROM C_OrderLine L, M_Product P " + 
				"WHERE L.C_Order_ID = ? AND P.M_Product_ID = L.M_Product_ID", 
				new Object[]{getC_Order_ID()}, 
				get_Trx() );		

		setVolume((BigDecimal) volume_weight[0][0]);
		setWeight((BigDecimal) volume_weight[0][1]);
		return true;
	}	//	reserveStock

	/**
	 * 	Calculate Tax and Total
	 * 	@return true if tax total calculated
	 */
	private boolean calculateTaxTotal()
	{
		log.fine("");
		//	Delete Taxes
		if( 0 > DB.executeUpdate("DELETE FROM C_OrderTax WHERE C_Order_ID=?", new Object[]{getC_Order_ID()}, get_Trx()) ){
			return false;
		}

		Object[][] taxIDs = QueryUtil.executeQuery("SELECT DISTINCT C_Tax_ID FROM C_OrderLine WHERE C_Order_ID = ?", new Object[]{getC_Order_ID()}, get_Trx());
		//	Lines
		ArrayList<MOrderTax> oTaxes = new ArrayList<MOrderTax>();
		for( Object[] taxIDs_row : taxIDs )
		{
			final int taxID = ((BigDecimal) taxIDs_row[0]).intValue();
			MOrderTax oTax = MOrderTax.get(getCtx(), getC_Order_ID(),
					taxID, getPrecision(), get_Trx(), getAD_Client_ID(),
					getAD_Org_ID(), isTaxIncluded());
			oTax.setIsTaxIncluded(isTaxIncluded());
			if (!oTax.calculateTaxFromLines())
				return false;
			oTaxes.add(oTax);
		}
		if (!PO.saveAll(get_Trx(), oTaxes))
			return false;

		Object[][] sumLineNet = QueryUtil.executeQuery("SELECT SUM(LineNetAmt) FROM C_OrderLine WHERE C_Order_ID = ?", new Object[]{getC_Order_ID()}, get_Trx());
		

		//	Taxes
		BigDecimal totalLines = (BigDecimal) sumLineNet[0][0];
		BigDecimal grandTotal = totalLines;
		MOrderTax[] taxes = getTaxes();
		for (MOrderTax oTax : taxes) {
			MTax tax = oTax.getTax();
			if (tax.isSummary())
			{
				MTax[] cTaxes = tax.getChildTaxes(false);
				List<MOrderTax> newOTaxes = new ArrayList<MOrderTax>();
				for (MTax cTax : cTaxes) {
					BigDecimal taxAmt = cTax.calculateTax(oTax.getTaxBaseAmt(), isTaxIncluded(), getPrecision());
					//
					MOrderTax newOTax = new MOrderTax(getCtx(), 0, get_Trx());
					newOTax.setClientOrg(this);
					newOTax.setC_Order_ID(getC_Order_ID());
					newOTax.setC_Tax_ID(cTax.getC_Tax_ID());
					newOTax.setPrecision(getPrecision());
					newOTax.setIsTaxIncluded(isTaxIncluded());
					newOTax.setTaxBaseAmt(oTax.getTaxBaseAmt());
					newOTax.setTaxAmt(taxAmt);
					
					newOTaxes.add(newOTax);
					//
					if (!isTaxIncluded())
						grandTotal = grandTotal.add(taxAmt);
				}

				if (!PO.saveAll(get_Trx(), newOTaxes))					
					return false;
				
				if (!oTax.delete(true, get_Trx()))
					return false;
			}
			else
			{
				if (!isTaxIncluded())
					grandTotal = grandTotal.add(oTax.getTaxAmt());
			}
		}
		//
		setTotalLines(totalLines);
		setGrandTotal(grandTotal);
		
		checkOrderPaySchedule();

		return true;
	}	//	calculateTaxTotal


	/**
	 * 	Approve Document
	 * 	@return true if success
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		setIsApproved(true);
		return true;
	}	//	approveIt

	/**
	 * 	Reject Approval
	 * 	@return true if success
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		setIsApproved(false);
		return true;
	}	//	rejectIt


	/**************************************************************************
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
//		EggoCtx.setConstants();
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		String DocSubTypeSO = dt.getDocSubTypeSO();

		//	Just prepare
		if (DOCACTION_Prepare.equals(getDocAction()))
		{
			setProcessed(false);

			return DocActionConstants.STATUS_InProgress;
			
			
			
		}
		
		
		if(!isSOTrx() && get_Value("XX_RefOAInterne")==null)
		{
			set_Value("XX_RefOAInterne", OrderUtil.getRefOAInterne(getCtx(), this, get_Trx()));
		}


		if(!isReturnTrx())
		{
			//	Offers
			if (X_C_DocType.DOCSUBTYPESO_Proposal.equals(DocSubTypeSO)
					|| X_C_DocType.DOCSUBTYPESO_Quotation.equals(DocSubTypeSO))
			{
				//	Binding
				if (X_C_DocType.DOCSUBTYPESO_Quotation.equals(DocSubTypeSO))
					reserveStock(dt);
				//	User Validation
				return DocActionConstants.STATUS_Completed;
			}
			//	Waiting Payment - until we have a payment
			if (!m_forceCreation
					&& X_C_DocType.DOCSUBTYPESO_PrepayOrder.equals(DocSubTypeSO)
					&& (getC_Payment_ID() == 0) && (getC_CashLine_ID() == 0))
			{
				setProcessed(true);
				return DocActionConstants.STATUS_WaitingPayment;
			}
		}

		//
		log.info(toString());
		StringBuffer info = new StringBuffer();

		/* nnayak - Bug 1720003 - We need to set the processed flag so the Tax Summary Line
		does not get recreated in the afterSave procedure of the MOrderLine class */
		setProcessed(true);

		//	Create SO Shipment - Force Shipment
		MInOut shipment = null;
		if (X_C_DocType.DOCSUBTYPESO_OnCreditOrder.equals(DocSubTypeSO)		//	(W)illCall(I)nvoice
				|| X_C_DocType.DOCSUBTYPESO_WarehouseOrder.equals(DocSubTypeSO)	//	(W)illCall(P)ickup
				|| X_C_DocType.DOCSUBTYPESO_POSOrder.equals(DocSubTypeSO)			//	(W)alkIn(R)eceipt
				|| X_C_DocType.DOCSUBTYPESO_PrepayOrder.equals(DocSubTypeSO))
		{
			if (!DELIVERYRULE_Force.equals(getDeliveryRule()))
			{
				MWarehouse wh = MWarehouse.get (getCtx(), getM_Warehouse_ID());
				if (!wh.isDisallowNegativeInv())
					setDeliveryRule(DELIVERYRULE_Force);
			}
			//
			shipment = generateShipment (dt, null);
			if (shipment == null)
				return DocActionConstants.STATUS_Invalid;
			info.append("@M_InOut_ID@: ").append(shipment.getDocumentNo());
			String msg = shipment.getProcessMsg();
			if ((msg != null) && (msg.length() > 0))
				info.append(" (").append(msg).append(")");
		}	//	Shipment


		//	Create SO Invoice - Always invoice complete Order
		if ( X_C_DocType.DOCSUBTYPESO_POSOrder.equals(DocSubTypeSO)
				|| X_C_DocType.DOCSUBTYPESO_OnCreditOrder.equals(DocSubTypeSO)
				|| X_C_DocType.DOCSUBTYPESO_PrepayOrder.equals(DocSubTypeSO))
		{
			MInvoice invoice = createInvoice (dt, shipment, null);
			if (invoice == null)
				return DocActionConstants.STATUS_Invalid;
			info.append(" - @C_Invoice_ID@: ").append(invoice.getDocumentNo());
			String msg = invoice.getProcessMsg();
			if ((msg != null) && (msg.length() > 0))
				info.append(" (").append(msg).append(")");
		}	//	Invoice

		//	Counter Documents

		if (dt.isCreateCounter())
		{
			MOrder counter = createCounterDoc();
			if (counter != null)
				info.append(" - @CounterDoc@: @Order@=").append(counter.getDocumentNo());
		}
		
		// Commande WEB Make Payment - Stock Mvt - Create Message 
//		PosCtx.setConstants(getCtx(),get_Trx());
		MOrgInfo moi = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_Trx());
		MOrgInfoProxy oif = new MOrgInfoProxy(moi);
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), getAD_Org_ID(), get_Trx());
		if (oif.isPOS() &&  orgPOS!= null && orgPOS.getDocType_WebSales_ID() == getC_DocTypeTarget_ID()){
			if(get_ValueAsBoolean("IsPayNow"))
			{
				generatePayment();
				set_ValueNoCheck("IsPayNow", false);
			}
			generateMvtNP();
		}	
		
		if(getRef_Order_ID()!=0)
		{
			int doctypeID = DB.getSQLValue(get_Trx(), "Select C_DocType_ID from C_Order where C_Order_ID = ?", getRef_Order_ID());
			MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), doctypeID, get_Trx());
			//Smile-3040
			Object[] params = {getAD_User_ID(),getRef_Order_ID()};
			if(dti != null && !isSOTrx() && dti.isOpenOV())//MERGE
			{
			//Si li� � ODV
				int no = DB.executeUpdate("UPDATE C_ORDER set ISOVREADONLY = 'N', updated = sysdate, updatedby= ? where C_Order_ID = ? and ISOVREADONLY ='Y' ", params, get_Trx());
			}		
		}
		m_processMsg = info.toString();
		return DocActionConstants.STATUS_Completed;
	}	//	completeIt




	/**
	 * 	Create Invoice
	 *	@param dt order document type
	 *	@param shipment optional shipment
	 *	@param invoiceDate invoice date
	 *	@return invoice or null
	 */
	public MInvoice createInvoice (MDocType dt, MInOut shipment, Timestamp invoiceDate)
	{
		log.info(dt.toString());
		MInvoice invoice = new MInvoice (this, dt.getC_DocTypeInvoice_ID(), invoiceDate);
		if (!invoice.save(get_Trx()))
		{
			m_processMsg = "Could not create Invoice";
			return null;
		}

		//	If we have a Shipment - use that as a base
		if (shipment != null)
		{
			if (!INVOICERULE_AfterDelivery.equals(getInvoiceRule()))
				setInvoiceRule(INVOICERULE_AfterDelivery);
			//
			MInOutLine[] sLines = shipment.getLines(false);
			ArrayList<MInvoiceLine> iLines = new ArrayList<MInvoiceLine>();
			for (MInOutLine sLine : sLines)
			{
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				iLine.setShipLine(sLine);
				//	Qty = Delivered
				iLine.setQtyEntered(sLine.getQtyEntered());
				iLine.setQtyInvoiced(sLine.getMovementQty());
				iLines.add(iLine);
				//
				sLine.setIsInvoiced(true);
			}
			if (!PO.saveAll(get_Trx(), iLines))
			{
				m_processMsg = "Could not create Invoice Line from Shipment Line";
				return null;
			}
			if (!PO.saveAll(get_Trx(), Arrays.asList(sLines)))
			{
				log.warning("Could not update Shipment lines");
			}
		}
		else	//	Create Invoice from Order
		{
			if (!INVOICERULE_Immediate.equals(getInvoiceRule()))
				setInvoiceRule(INVOICERULE_Immediate);
			//
			MOrderLine[] oLines = getLines();
			ArrayList<MInvoiceLine> iLines = new ArrayList<MInvoiceLine>();
			for (MOrderLine oLine : oLines) {
				//
				MInvoiceLine iLine = new MInvoiceLine(invoice);
				iLine.setOrderLine(oLine);
				//	Qty = Ordered - Invoiced
				iLine.setQtyInvoiced(oLine.getQtyOrdered().subtract(oLine.getQtyInvoiced()));
				if (oLine.getQtyOrdered().compareTo(oLine.getQtyEntered()) == 0)
					iLine.setQtyEntered(iLine.getQtyInvoiced());
				else
					iLine.setQtyEntered(iLine.getQtyInvoiced().multiply(oLine.getQtyEntered())
							.divide(oLine.getQtyOrdered(), 12, BigDecimal.ROUND_HALF_UP));
				iLines.add(iLine);
			}
			if (!PO.saveAll(get_Trx(),iLines))
			{
				m_processMsg = "Could not create Invoice Line from Order Line";
				return null;
			}
		}
		//	Manually Process Invoice
		boolean successInv = DocumentEngine.processIt(invoice, DocActionConstants.ACTION_Complete);
		invoice.save(get_Trx());
		setC_CashLine_ID(invoice.getC_CashLine_ID());
		if (!successInv)
		{
			m_processMsg = "@C_Invoice_ID@: " + invoice.getProcessMsg();
			return null;
		}
		return invoice;
	}	//	createInvoice

	/**
	 * 	Create Counter Document
	 * 	@return counter order
	 */
	private MOrder createCounterDoc()
	{
		//	Is this itself a counter doc ?
		if (getRef_Order_ID() != 0)
			return null;

		//	Org Must be linked to BPartner
		MOrg org = MOrg.get(getCtx(), getAD_Org_ID());
		//jz int counterC_BPartner_ID = org.getLinkedC_BPartner_ID(get_TrxName());
		int counterC_BPartner_ID = org.getLinkedC_BPartner_ID(get_Trx());
		if (counterC_BPartner_ID == 0)
			return null;
		//	Business Partner needs to be linked to Org
		//jz MBPartner bp = MBPartner.get (getCtx(), getC_BPartner_ID());
		MBPartner bp = new MBPartner (getCtx(), getC_BPartner_ID(), get_Trx());
		int counterAD_Org_ID = bp.getAD_OrgBP_ID_Int();
		if (counterAD_Org_ID == 0)
			return null;

		//jz MBPartner counterBP = MBPartner.get (getCtx(), counterC_BPartner_ID);
		MBPartner counterBP = new MBPartner (getCtx(), counterC_BPartner_ID, get_Trx());
		MOrgInfo counterOrgInfo = MOrgInfo.get(getCtx(), counterAD_Org_ID, null);
		log.info("Counter BP=" + counterBP.getName());

		//	Document Type
		int C_DocTypeTarget_ID = 0;
		MDocTypeCounter counterDT = MDocTypeCounter.getCounterDocType(getCtx(), getC_DocType_ID());
		if (counterDT != null)
		{
			log.fine(counterDT.toString());
			if (!counterDT.isCreateCounter() || !counterDT.isValid() || !counterDT.isActive())
				return null;
			C_DocTypeTarget_ID = counterDT.getCounter_C_DocType_ID();
		}
		else	//	indirect
		{
			C_DocTypeTarget_ID = MDocTypeCounter.getCounterDocType_ID(getCtx(), getC_DocType_ID());
			if (C_DocTypeTarget_ID <= 0)
				return null;

			counterDT = MDocTypeCounter.getCounterDocType(getCtx(), C_DocTypeTarget_ID);	
			if (counterDT != null) {
				log.fine("Indirect C_DocTypeTarget_ID=" + C_DocTypeTarget_ID);
				if (!counterDT.isCreateCounter() || !counterDT.isValid()
						|| !counterDT.isActive())
					return null;
			} else
				return null;


		}
		//	Deep Copy
		MOrder counter = copyFrom (this, getDateOrdered(),
				C_DocTypeTarget_ID, true, false, get_Trx());
		MDocType dt = MDocType.get(getCtx(), C_DocTypeTarget_ID);
		if (!dt.isDocNoControlled())
			counter.setDocumentNo(getDocumentNo());		//	copy if manual
		//
		counter.setAD_Org_ID(counterAD_Org_ID);
		counter.setM_Warehouse_ID(counterOrgInfo.getM_Warehouse_ID());
		//
		counter.setBPartner(counterBP);
		counter.setDatePromised(getDatePromised());		// default is date ordered
		//	Refernces (Should not be required
		counter.setSalesRep_ID(getSalesRep_ID());
		counter.save(get_Trx());

		//	Update copied lines
		MOrderLine[] counterLines = counter.getLines();
		for (MOrderLine counterLine : counterLines) {
			counterLine.setOrder(counter);	//	copies header values (BP, etc.)
			counterLine.setPrice();
			counterLine.setTax();
			counterLine.save(get_Trx());
		}
		log.fine(counter.toString());

		//	Document Action
		if (counterDT != null)
		{
			if (counterDT.getDocAction() != null)
			{
				counter.setDocAction(counterDT.getDocAction());
				DocumentEngine.processIt(counter, counterDT.getDocAction());
				counter.setProcessing(false);
				counter.save(get_Trx());
			}
		}
		else
		{
			// touch order to recalculate tax and totals
			counter.setIsActive(counter.isActive());
			counter.save();
		}
		return counter;
	}	//	createCounterDoc

	/**
	 * 	Void Document.
	 * 	Set Qtys to 0 - Sales: reverse all documents
	 * 	@return true if success
	 */
	public boolean voidIt()
	{
		//if it is a purchase order and has a matching receipt or Invoice, it can not be voided.
		if(!isSOTrx())
			if(isPOMatched())
			{
				m_processMsg="Cannot void the PO which has a matched Receipt or Invoice";
				return false;
			}

		log.info(toString());
		if (0 > DB.executeUpdate("UPDATE C_OrderLine " 
				+ "SET QtyLostSales = QtyOrdered, "
				+ "QtyEntered = 0, " 
				+ "QtyOrdered = 0, " 
				+ "LineNetAmt = 0, " 
				+ "Description = Description || ' | ' || ? || ' (' || QtyOrdered || ')' "
				+ "WHERE C_Order_ID = ? AND QtyOrdered <> 0", 
				new Object[] { Msg.getMsg(getCtx(), "Voided"), getC_Order_ID() }, 
				get_Trx())) {
			return false;
		}
		
		//	Update Taxes to zero
		if (0 > DB.executeUpdate("UPDATE C_OrderTax " 
				+ "SET TaxAmt = 0, " 
				+ "TaxBaseAmt = 0 " 
				+ "WHERE C_Order_ID = ? ", 
				new Object[] { getC_Order_ID() }, 
				get_Trx())) {
			return false;
		}
		

		addDescription(Msg.getMsg(getCtx(), "Voided"));
		//	Clear Reservations
		if (!reserveStock(null))
		{
			m_processMsg = "Cannot unreserve Stock (void)";
			return false;
		}

		if (!createReversals())
			return false;
		
		setTotalLines(Env.ZERO);
		setGrandTotal(Env.ZERO);

		setProcessed(true);
		setDocAction(DOCACTION_None);
		if(!isSOTrx()){
		DB.executeUpdate("UPDATE C_OrderLine " 
				+ "SET REF_ORDERLINE_ID = null" 
				+ " WHERE C_Order_ID = ? ", 
				new Object[] { getC_Order_ID() }, 
				get_Trx());
			return true;
		}
		
		return true;
	}	//	voidIt

	/**
	 * 	Create Shipment/Invoice Reversals
	 * 	@return true if success
	 */
	private boolean createReversals()
	{
		//	Cancel only Sales
		if (!isSOTrx())
			return true;

		log.info("");
		StringBuffer info = new StringBuffer();

		//	Reverse All *Shipments*
		info.append("@M_InOut_ID@:");
		MInOut[] shipments = getShipments(false);	//	get all (line based)
		for (MInOut ship : shipments) {
			//	if closed - ignore
			if (X_M_InOut.DOCSTATUS_Closed.equals(ship.getDocStatus())
					|| X_M_InOut.DOCSTATUS_Reversed.equals(ship.getDocStatus())
					|| X_M_InOut.DOCSTATUS_Voided.equals(ship.getDocStatus()) )
				continue;
			ship.set_Trx(get_Trx());

			//	If not completed - void - otherwise reverse it
			if (!X_M_InOut.DOCSTATUS_Completed.equals(ship.getDocStatus()))
			{
				if (DocumentEngine.processIt(ship, DocActionConstants.ACTION_Void))
					ship.setDocStatus(X_M_InOut.DOCSTATUS_Voided);
			}
			//	Create new Reversal with only that order
			else if (!ship.isOnlyForOrder(this))
			{
				ship.reverseCorrectIt(this);
				//	shipLine.setDocStatus(MInOut.DOCSTATUS_Reversed);
				info.append(" Parial ").append(ship.getDocumentNo());
			}
			else if (DocumentEngine.processIt(ship, DocActionConstants.ACTION_Reverse_Correct)) //	completed shipment
			{
				ship.setDocStatus(X_M_InOut.DOCSTATUS_Reversed);
				info.append(" ").append(ship.getDocumentNo());
			}
			else
			{
				m_processMsg = "Could not reverse Shipment " + ship;
				return false;
			}
			ship.setDocAction(X_M_InOut.DOCACTION_None);
		}	//	for all shipments
		PO.saveAll(get_Trx(), Arrays.asList(shipments));

		//	Reverse All *Invoices*
		info.append(" - @C_Invoice_ID@:");
		MInvoice[] invoices = getInvoices(false);	//	get all (line based)
		for (MInvoice invoice : invoices) {
			//	if closed - ignore
			if (X_C_Invoice.DOCSTATUS_Closed.equals(invoice.getDocStatus())
					|| X_C_Invoice.DOCSTATUS_Reversed.equals(invoice.getDocStatus())
					|| X_C_Invoice.DOCSTATUS_Voided.equals(invoice.getDocStatus()) )
				continue;
			invoice.set_Trx(get_Trx());

			//	If not completed - void - otherwise reverse it
			if (!X_C_Invoice.DOCSTATUS_Completed.equals(invoice.getDocStatus()))
			{
				if (DocumentEngine.processIt(invoice, DocActionConstants.ACTION_Void))
					invoice.setDocStatus(X_C_Invoice.DOCSTATUS_Voided);
			}
			else if (DocumentEngine.processIt(invoice, DocActionConstants.ACTION_Reverse_Correct))	//	completed invoice
			{
				invoice.setDocStatus(X_C_Invoice.DOCSTATUS_Reversed);
				info.append(" ").append(invoice.getDocumentNo());
			}
			else
			{
				m_processMsg = "Could not reverse Invoice " + invoice;
				return false;
			}
			invoice.setDocAction(X_C_Invoice.DOCACTION_None);
		}	//	for all shipments
		PO.saveAll(get_Trx(), Arrays.asList(invoices));

		//	Reverse All *RMAs*
		info.append("@C_Order_ID@:");
		MOrder[] rmas = getRMAs();
		for (MOrder rma : rmas) {
			//	if closed - ignore
			if (X_C_Order.DOCSTATUS_Closed.equals(rma.getDocStatus())
					|| X_C_Order.DOCSTATUS_Reversed.equals(rma.getDocStatus())
					|| X_C_Order.DOCSTATUS_Voided.equals(rma.getDocStatus()) )
				continue;
			rma.set_Trx(get_Trx());

			//	If not completed - void - otherwise reverse it
			if (!X_C_Order.DOCSTATUS_Completed.equals(rma.getDocStatus()))
			{
				if (DocumentEngine.processIt(rma, DocActionConstants.ACTION_Void))
					rma.setDocStatus(X_M_InOut.DOCSTATUS_Voided);
			}
			//	Create new Reversal with only that order
			else if (DocumentEngine.processIt(rma, DocActionConstants.ACTION_Reverse_Correct)) //	completed shipment
			{
				rma.setDocStatus(X_C_Order.DOCSTATUS_Reversed);
				info.append(" ").append(rma.getDocumentNo());
			}
			else
			{
				m_processMsg = "Could not reverse RMA " + rma;
				return false;
			}
			rma.setDocAction(X_M_InOut.DOCACTION_None);
		}	//	for all shipments
		PO.saveAll(get_Trx(), Arrays.asList(rmas));

		
		// Reverse incomplete tasks
		if(!reverseTasks(true)) {
			m_processMsg = Msg.getMsg(getCtx(), "CannotReverseTasks");
			return false;
		}
		
		m_processMsg = info.toString();
		return true;
	}	//	createReversals


	/**
	 * 	Close Document.
	 * 	Cancel not delivered Quantities
	 * 	@return true if success
	 */
	public boolean closeIt()
	{
		log.info(toString());

		//	Close Not delivered Qty - SO/PO
		MOrderLine[] lines = getLines();
		ArrayList<MOrderLine> linesToSave = new ArrayList<MOrderLine>();
		for (MOrderLine line : lines) {
			BigDecimal old = line.getQtyOrdered();
			if (old.compareTo(line.getQtyDelivered()) != 0)
			{
				line.setQtyLostSales(line.getQtyOrdered().subtract(line.getQtyDelivered()));
				line.setQtyOrdered(line.getQtyDelivered());
				//	QtyEntered unchanged
				line.addDescription("Close (" + old + ")");
				linesToSave.add(line);
			}
		}
		PO.saveAll(get_Trx(), linesToSave);
		
		recomputeTaxes();
		
		
		//	Clear Reservations
		if (!reserveStock(null))
		{
			m_processMsg = "Cannot unreserve Stock (close)";
			return false;
		}
		
		// Reverse incomplete tasks
		if(!reverseTasks(true)) {
			m_processMsg = Msg.getMsg(getCtx(), "CannotReverseTasks");
			return false;
		}
			
		setProcessed(true);
		setDocAction(DOCACTION_None);
		return true;
	}	//	closeIt

	/**
	 * 	Reverse Correction - same void
	 * 	@return true if success
	 */
	public boolean reverseCorrectIt()
	{
		log.info(toString());
		return DocumentEngine.processIt(this, DocActionConstants.ACTION_Void);
	}	//	reverseCorrectionIt

	/**
	 * 	Reverse Accrual - none
	 * 	@return false
	 */
	public boolean reverseAccrualIt()
	{
		log.info(toString());
		return false;
	}	//	reverseAccrualIt

	/**
	 * 	Re-activate.
	 * 	@return true if success
	 */
	public boolean reActivateIt()
	{
		log.info(toString());

		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		String DocSubTypeSO = dt.getDocSubTypeSO();

		//	Replace Prepay with POS to revert all doc
		if (X_C_DocType.DOCSUBTYPESO_PrepayOrder.equals (DocSubTypeSO))
		{
			MDocType newDT = null;
			MDocType[] dts = MDocType.getOfClient (getCtx());
			for (MDocType type : dts) {
				if (X_C_DocType.DOCSUBTYPESO_PrepayOrder.equals(type.getDocSubTypeSO()))
				{
					if (type.isDefault() || (newDT == null))
						newDT = type;
				}
			}
			if (newDT == null)
				return false;
			else
			{
				setC_DocType_ID (newDT.getC_DocType_ID());
				setIsReturnTrx(newDT.isReturnTrx());
			}
		}

		//	PO - just re-open
		if (!isSOTrx())
			log.info("Existing documents not modified - " + dt);
		//	Reverse Direct Documents
		else if (X_C_DocType.DOCSUBTYPESO_OnCreditOrder.equals(DocSubTypeSO)	//	(W)illCall(I)nvoice
				|| X_C_DocType.DOCSUBTYPESO_WarehouseOrder.equals(DocSubTypeSO)	//	(W)illCall(P)ickup
				|| X_C_DocType.DOCSUBTYPESO_POSOrder.equals(DocSubTypeSO))			//	(W)alkIn(R)eceipt
		{
			if (!createReversals())
				return false;
		}
		else
		{
			log.info("Existing documents not modified - SubType=" + DocSubTypeSO);
		}

		setDocAction(DOCACTION_Complete);
		setProcessed(false);
		return true;
	}	//	reActivateIt


	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		StringBuffer sb = new StringBuffer();
		sb.append(getDocumentNo());
		//	: Grand Total = 123.00 (#1)
		sb.append(": ").
		append(Msg.translate(getCtx(),"GrandTotal")).append("=").append(getGrandTotal());
		//	 - Description
		if ((getDescription() != null) && (getDescription().length() > 0))
			sb.append(" - ").append(getDescription());
		return sb.toString();
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg

	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return getSalesRep_ID();
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return getGrandTotal();
	}	//	getApprovalAmt
	
	/**************************************************************************
	 * 	Lock order for invoicing so two processes cannot invoice simultaneously.
	 * 	@return true if locked
	 */
	public boolean lockForInvoicing()
	{
		String sql = "UPDATE C_Order" 
			+ " SET Invoicing='Y' WHERE Invoicing='N' AND "
			+ " C_Order_ID = ? ";
		boolean success = DB.executeUpdate(sql, getC_Order_ID(), (Trx) null) == 1;	
		if (success)
			log.fine("success");
		else
			log.log(Level.WARNING, "failed");
		return success;
		
	}	//	lockForInvoicing

	/**************************************************************************
	 * 	Release order lock.
	 * 	@return true if unlocked
	 */
	public boolean unlockForInvoicing(Trx trx)
	{
		String sql = "UPDATE C_Order" 
			+ " SET Invoicing='N' WHERE Invoicing='Y' AND "
			+ " C_Order_ID = ? ";
		boolean success = DB.executeUpdate(sql, getC_Order_ID(), trx) == 1;	
		if (success)
			log.fine("success");
		else
			log.log(Level.WARNING, "failed");
		return success;
		
	}	//	unlockForInvoicing


	/**
	 * 	Generate Shipment
	 *	@param dt order document type
	 *	@param movementDate optional movement date (default today)
	 *	@return shipment or null
	 */
	public MInOut generateShipment (MDocType dt, Timestamp movementDate)
	{
		ArrayList<MInOutLine> ioLines = new ArrayList<MInOutLine>();
		
		log.info("For " + dt);
		MInOut shipment = new MInOut (this, dt.getC_DocTypeShipment_ID(), movementDate);
		if (!shipment.save(get_Trx()))
		{
			m_processMsg = "Could not create Shipment";
			return null;
		}

		MClient client = MClient.get(getCtx());
		MOrderLine[] olines = getLines ();
		for (MOrderLine oline : olines) {
			//log.fine("check: " + line);
			BigDecimal toDeliver = oline.getQtyOrdered()
			.subtract(oline.getQtyDelivered());
			MProduct product = oline.getProduct();

			//	Comments & lines w/o product & services
			if (((product == null) || !product.isStocked())
					&& ((oline.getQtyOrdered().signum() == 0 	//	comments
					)
					|| (toDeliver.signum() != 0)))		//	lines w/o product
			{
				ioLines.addAll(createLine (shipment, oline, toDeliver, null, false));
				continue;
			}

			//	Nothing to Deliver
			if ((product != null) && (toDeliver.signum() == 0))
				continue;

			//	Stored Product
			MProductCategory pc = MProductCategory.get(getCtx(), product.getM_Product_Category_ID());
			String MMPolicy = pc.getMMPolicy();
			if ((MMPolicy == null) || (MMPolicy.length() == 0))
				MMPolicy = client.getMMPolicy();
			//
			List<Storage.VO> storages = Storage.getWarehouse(getCtx(),
					oline.getM_Warehouse_ID(), oline.getM_Product_ID(), oline.getM_AttributeSetInstance_ID(),
					product.getM_AttributeSet_ID(), oline.getM_AttributeSetInstance_ID()==0, movementDate,
					X_AD_Client.MMPOLICY_FiFo.equals(MMPolicy), get_Trx());


			ioLines.addAll(createLine (shipment, oline, toDeliver, storages, true));
		}	//	for all order lines

		if(!PO.saveAll(get_Trx(), ioLines)) {
			m_processMsg = "Could not save shipment lines";
			return null;
		}
		//	Manually Process Shipment
		boolean successShipment = DocumentEngine.processIt(shipment, DocActionConstants.ACTION_Complete);
		shipment.save(get_Trx());
		if (!successShipment)
		{
			m_processMsg = "@M_InOut_ID@: " + shipment.getProcessMsg();
			return null;
		}
		return shipment;
	}	//	generate



	/**************************************************************************
	 * 	Create Line
	 *	@param order order
	 *	@param orderLine line
	 *	@param qty qty
	 *	@param storages storage info
	 *	@param force force delivery
	 */
	public ArrayList<MInOutLine> createLine (MInOut shipment, MOrderLine orderLine, BigDecimal qty,
			List<Storage.VO> storages, boolean force)
	{
		ArrayList<MInOutLine> lines = new ArrayList<MInOutLine>();
		//	Non Inventory Lines
		if (storages == null)
		{
			MInOutLine line = new MInOutLine (shipment);
			line.setOrderLine(orderLine, 0, Env.ZERO);
			line.setQty(qty);	//	Correct UOM
			if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
				line.setQtyEntered(qty
						.multiply(orderLine.getQtyEntered())
						.divide(orderLine.getQtyOrdered(), 12, BigDecimal.ROUND_HALF_UP));
			line.setLine(orderLine.getLine());
			
			//Redmine 19511
			if (!line.save())
				throw new IllegalStateException(
						"Could not create Shipment Line");
			
			//log.fine(line.toString());
			lines.add(line);
			return lines;
		}

		//	Product
		MProduct product = orderLine.getProduct();
		boolean linePerASI = false;
		if (product.getM_AttributeSet_ID() != 0)
		{
			MAttributeSet mas = MAttributeSet.get(getCtx(), product.getM_AttributeSet_ID());
			linePerASI = mas.isInstanceAttribute();
		}

		BigDecimal toDeliver = qty;
		for (Storage.VO storage : storages) {
			BigDecimal deliver = toDeliver;
			BigDecimal qtyAvailable = storage.getAvailableQty();
			if(qtyAvailable.compareTo(Env.ZERO) <= 0)
				continue;

			//	Not enough On Hand
			if (deliver.compareTo(qtyAvailable) > 0 )
			{
				deliver = qtyAvailable;
			}
			if ((deliver.signum() == 0) || (qtyAvailable.signum() <= 0))	//	zero deliver
				continue;
			int M_Locator_ID = storage.getM_Locator_ID();
			//
			MInOutLine line = null;
			if (!linePerASI)	//	find line with Locator
			{
				for (int ll = 0; ll < lines.size(); ll++)
				{
					MInOutLine test = lines.get(ll);
					if (test.getM_Locator_ID() == M_Locator_ID)
					{
						line = test;
						break;
					}
				}
			}
			if (line == null)	//	new line
			{
				line = new MInOutLine (shipment);
				line.setOrderLine(orderLine, M_Locator_ID, isSOTrx() ? deliver : Env.ZERO);
				line.setQty(deliver);
				lines.add(line);
			}
			else				//	existing line
				line.setQty(line.getMovementQty().add(deliver));
			if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
				line.setQtyEntered(line.getMovementQty().multiply(orderLine.getQtyEntered())
						.divide(orderLine.getQtyOrdered(), 12, BigDecimal.ROUND_HALF_UP));
			if (linePerASI)
				line.setM_AttributeSetInstance_ID(storage.getM_AttributeSetInstance_ID());
			//log.fine("ToDeliver=" + qty + "/" + deliver + " - " + line);
			
			//Redmine 19511
			if (!line.save())
				throw new IllegalStateException(
						"Could not create Shipment Line");
			
			toDeliver = toDeliver.subtract(deliver);
			//
			if (toDeliver.signum() == 0)
				break;
		}

		// Force remaining quantity to negative
		if (toDeliver.signum() != 0)
		{
			BigDecimal deliver = toDeliver;
			int M_Locator_ID=0;
			if(storages.size()>0)
				M_Locator_ID= storages.get(0).getM_Locator_ID();
			if (M_Locator_ID == 0)		//	Get default Location
			{
				int M_Warehouse_ID = orderLine.getM_Warehouse_ID();
				M_Locator_ID = MProductLocator.getFirstM_Locator_ID (product, M_Warehouse_ID);
				if (M_Locator_ID == 0)
				{
					MWarehouse wh = MWarehouse.get (getCtx(), M_Warehouse_ID);
					M_Locator_ID = wh.getDefaultM_Locator_ID();
				}
			}
			//
			MInOutLine line = null;
			if (!linePerASI)	//	find line with Locator
			{
				for (int ll = 0; ll < lines.size(); ll++)
				{
					MInOutLine test = lines.get(ll);
					if (test.getM_Locator_ID() == M_Locator_ID)
					{
						line = test;
						break;
					}
				}
			}
			if (line == null)	//	new line
			{
				line = new MInOutLine (shipment);
				line.setOrderLine(orderLine, M_Locator_ID, isSOTrx() ? deliver : Env.ZERO);
				line.setQty(deliver);
				lines.add(line);
			}
			else				//	existing line
				line.setQty(line.getMovementQty().add(deliver));
			if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
				line.setQtyEntered(line.getMovementQty().multiply(orderLine.getQtyEntered())
						.divide(orderLine.getQtyOrdered(), 12, BigDecimal.ROUND_HALF_UP));
			
			//Redmine 19511
			if (!line.save())
				throw new IllegalStateException(
						"Could not create Shipment Line");
		}
		return lines;
	}	//	createLine


	/**
	 * This retarded method is the GWT equivalent of GridTab.loadDependentInfo().
	 * @return
	 */
	private String getOrderTypeFromTargetDocType(int windowNo)
	{
		String orderType = "--";
		int C_DocTypeTarget_ID = getCtx().getContextAsInt(windowNo, "C_DocTypeTarget_ID");

		if( C_DocTypeTarget_ID != 0 )
		{
			String sql = "SELECT DocSubTypeSO FROM C_DocType WHERE C_DocType_ID=?";
			try
			{
				PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, C_DocTypeTarget_ID);
				ResultSet rs = pstmt.executeQuery();
				if (rs.next())
					orderType = rs.getString(1);
				rs.close();
				pstmt.close();
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, sql, e);
			}
		}

		if(orderType == null)
			return "";

		return orderType;
	}

	/**
	 * 	Check if the PO is Matched with Receipt or Invoice.
	 * 	@return true if PO is matched
	 */
	private boolean isPOMatched( )
	{
		String sql = "SELECT po.C_Orderline_ID FROM M_MatchPO po INNER JOIN C_Orderline o ON (po.C_Orderline_ID=o.C_Orderline_ID) " +
		"WHERE o.C_Order_ID=? AND po.isActive='Y'";

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1,getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				rs.close();
				pstmt.close();
				return true;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		return false;
	}

	@Override
	public void setProcessMsg(String processMsg) {
		m_processMsg = processMsg;
	}


	@Override
	public String getDocBaseType() {
		MDocType dt = MDocType.get(getCtx(), getC_DocTypeTarget_ID());
		return dt.getDocBaseType();
	}


	@Override
	public Timestamp getDocumentDate() {
		return getDateAcct();
	}


	@Override
	public QueryParams getLineOrgsQueryInfo() {
		return new QueryParams("SELECT DISTINCT AD_Org_ID FROM C_OrderLine WHERE C_Order_ID = ?",
				new Object[] { getC_Order_ID() });
	}

	
	private boolean reverseTasks(boolean onlyIncomplete) {
		/* Check if WMS licensed */
		SysEnv se = SysEnv.get("CWMS");
		/*se should always be null for eurocenter */
		se = null;
		
		if ((se == null) || !se.checkLicense())
			return true;

		Class<?>[] parameterTypes = new Class[]{MOrder.class, boolean.class};
		Object[] args = new Object[]{this, onlyIncomplete};

		try
		{
			Class<?> c = Class.forName("org.compiere.cwms.util.MWarehouseTaskUtil");
			if(c == null)
				return false;
			
			Object instance = c.newInstance();
			Method m = c.getMethod("reverseOrderTasks", parameterTypes);
			return (Boolean) m.invoke(instance, args);
		}
		catch (Exception e)
		{
			log.warning("Error reversing Warehouse Tasks:" + e.toString());
		}
		
		return false;
		
	}
	
	private void setBPartnerLocation(MBPartner bp){
		//		Set Locations
		MBPartnerLocation[] locs = bp.getLocations(false);
		if (locs != null)
		{
			for (MBPartnerLocation element : locs) {
				if (element.isShipTo())
					super.setC_BPartner_Location_ID(element.getC_BPartner_Location_ID());
				if (element.isBillTo())
					setBill_Location_ID(element.getC_BPartner_Location_ID());
			}
			//	set to first
			if ((getC_BPartner_Location_ID() == 0) && (locs.length > 0))
				super.setC_BPartner_Location_ID(locs[0].getC_BPartner_Location_ID());
			if ((getBill_Location_ID() == 0) && (locs.length > 0))
				setBill_Location_ID(locs[0].getC_BPartner_Location_ID());
		}
		if (getC_BPartner_Location_ID() == 0)
			log.log(Level.SEVERE, "MOrder.setBPartner - Has no Ship To Address: " + bp);
		if (getBill_Location_ID() == 0)
			log.log(Level.SEVERE, "MOrder.setBPartner - Has no Bill To Address: " + bp);		
	}
	
	public boolean equals(Object o)
	{
		if(this==o)
			return true;
		if(o==null || getClass() != o.getClass())
			return false;
		MOrder that = (MOrder)o;
		if(this.getC_Order_ID() == 0 || that.getC_Order_ID() ==0)
			return false;
		super.equals(o);
		return true;
	}
	
	
    public void setVendorID(int vendorId)
    {
        set_Value ("Vendor_ID", Integer.valueOf(vendorId));        
    }
    
    public int getVendorID() 
    {
        return get_ValueAsInt("Vendor_ID");
        
    }
    
    /** Set Description.
    @param Description2 Optional short description of the record */
    public void setDescription2 (String Description2)
    {
        set_Value ("Description2", Description2);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getDescription2() 
    {
        return (String)get_Value("Description2");
        
    }

	 /** Get Sav Status.
    @return Business Partner (Agent or Sales Rep) */
    public String getSav_Status() 
    {
        return get_ValueAsString("Sav_Status");
        
    }
    
    /** Set Sav Status.
    @param C_BPartner_ID Identifies a Business Partner */
    public void setSav_Status (String Sav_Status)
    {
        set_Value ("Sav_Status", Sav_Status);
        
    }
    
    
    /*
	public  int getCreateLocatorForCustomer(int orgID, String locVal,Ctx ctx)
	{	
		EggoCtx.setConstants();
		Trx newTrx = Trx.get( String.valueOf(System.currentTimeMillis()));
		
		MOrg org = new MOrg(ctx, orgID, newTrx);
		MOrgInfo inf = org.getInfo();
		String orgName = org.getValue();
		MWarehouse wh = null;
		
		String whName = EggoCtx.WH_CUSTOMER_CONS + "-" + orgName;
		int whID = DB.getSQLValue(get_Trx(), "select m_warehouse_id from m_warehouse where upper(value) = upper(?) ", whName);
		if (whID < 1){
			wh =new MWarehouse(ctx, 0 , newTrx);
			wh.setClientOrg(getAD_Client_ID(), orgID);
			wh.setValue(whName);
			wh.setName(whName);
			wh.setC_Location_ID(inf.getC_Location_ID());
			wh.save(newTrx);
			whID = wh.get_ID();
		}
		else wh = new MWarehouse(ctx, whID , newTrx);
		
		int locID = DB.getSQLValue(newTrx, "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + whID + " AND value = ? " , locVal);
		if (locID < 1 )
		{
			MLocator loc = new MLocator(wh, locVal);
			String xyz = (locVal.substring(0, locVal.indexOf("-"))+whName).replace("-", "").replace(" ", "");
			loc.setXYZ(xyz, xyz, xyz, xyz, xyz);
			loc.set_ValueNoCheck("Z_LocatorType_ID", 1000003);
			loc.save(newTrx);
			locID = loc.get_ID();
		}
		newTrx.commit();
		newTrx.close();
		return locID;
	}
	*/

	
	private  int getConsignationLocator(int orgID, Ctx ctx)
	{
		Trx newTrx = Trx.get( String.valueOf(System.currentTimeMillis()));
		MOrg org = new MOrg(ctx, orgID, newTrx);
		MOrgInfo inf = org.getInfo();
		//MOrgInfoProxy oip = new MOrgInfoProxy(inf);
		int whID = inf.getM_Warehouse_ID();
		//EG44
		//TODO Ajouter une cas a Cocher sur M_Locator
		int locID = DB.getSQLValue(get_Trx(), "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + whID + " AND  z_locatortype_id = "
				+ "(Select max(z_locatortype_id) from z_locatortype where M_Locator.AD_Client_ID = z_locatortype.AD_Client_ID and IsConsignation = 'Y')");//MERGE
		if (locID < 1 )
		{
			throw new CompiereException("Pas de emplacement CONSIGNATION pour l'organisation whID: " + whID);
		}	
		return locID;
	}
	
	public MOrderPaymSchedule[] getPaymScheduleLines(String whereClause, String orderClause) {

		ArrayList<MOrderPaymSchedule> list = new ArrayList<MOrderPaymSchedule> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM Z_OrderPaymSchedule WHERE C_Order_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderPaymSchedule psol = new MOrderPaymSchedule(getCtx(), rs, get_Trx());
				list.add(psol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderPaymSchedule[] lines = new MOrderPaymSchedule[list.size ()];
		list.toArray (lines);
		return lines;

	}
	
	
	public int prepareShipment() {

		DB.executeUpdate("DELETE Z_OrderShip WHERE C_Order_ID = ? ", get_ID(), get_Trx());

		StringBuffer sql = new StringBuffer( 
				"insert into Z_OrderShip (AD_CLIENT_ID,AD_ORG_ID,C_ORDER_ID,C_ORDERLINE_ID,created,createdby, ");

		sql = sql.append("isActive,M_PRODUCT_ID,M_Locator_ID,QTYTODELIVER,UPDATED,updatedby,Z_ORDERSHIP_ID, ");
		sql = sql.append("description) ");
		sql = sql.append("( ");
		sql = sql.append("select ad_client_id,ad_org_id,c_order_id,c_orderline_id,sysdate,createdby, ");
		sql = sql.append("     'Y',m_product_id,M_Locator_ID,qtyEntered - QtyDelivered, sysdate,updatedby,ad_sequence_nextno('Z_OrderShip'), ");
		sql = sql.append("     (select description from m_product where m_product_id = c_orderline.m_product_id) ");
		sql = sql.append("     from C_orderline ");
		sql = sql.append("     where c_order_id = ? and IsActive='Y' and qtyEntered - QtyDelivered <> 0 "); 
		sql = sql.append(") " );    				

		int ok = DB.executeUpdate(sql.toString(), get_ID(), get_Trx());
		return ok;
	}

	public ArrayList<MOrderShip> getPreparedShipLines(String whereClause, String orderClause) {

		ArrayList<MOrderShip> list = new ArrayList<MOrderShip> ();
		DB.executeUpdate("DELETE from Z_OrderShip WHERE C_Order_ID = ?", getC_Order_ID(), get_Trx());
		StringBuffer sqlins = new StringBuffer("SELECT ol.* FROM C_OrderLine ol ")
		.append(" inner join m_product p on (p.m_product_id = ol.m_product_id) ")
		.append("WHERE ol.IsActive='Y' and ol.C_Order_ID=? AND abs(ol.qtyDelivered) < abs(ol.qtyEntered) and (p.isStocked = 'Y' "
				+ "OR p.ProductType = 'S')  ").append(whereClause);
		if(orderClause!=null)
			sqlins = sqlins.append(" ORDER BY "+orderClause);
		PreparedStatement pstmtins = null;
		try
		{
			pstmtins = DB.prepareStatement(sqlins.toString(), get_Trx());
			pstmtins.setInt(1, getC_Order_ID());
			ResultSet rsins = pstmtins.executeQuery();
			while (rsins.next())
			{
				MOrderShip psol = new MOrderShip(getCtx(), 0, get_Trx());
				psol.setClientOrg(rsins.getInt("AD_Client_ID"), rsins.getInt("AD_Org_ID"));
				psol.setC_Order_ID(rsins.getInt("C_Order_ID"));
				psol.setC_OrderLine_ID(rsins.getInt("C_OrderLine_ID"));
				psol.setDescription(rsins.getString("Description"));
				psol.set_ValueNoCheck("M_Product_ID", rsins.getInt("M_Product_ID"));
				psol.set_ValueNoCheck("M_Locator_ID", rsins.getInt("M_Locator_ID"));
				psol.setM_Warehouse_ID(rsins.getInt("M_Warehouse_ID"));
// Tam decommentes ici
				BigDecimal toDeliv =rsins.getBigDecimal("QtyToDeliver");
//				BigDecimal toDeliv = (rsins.getBigDecimal("qtyToShip").compareTo(BigDecimal.ZERO) == 0)? rsins.getBigDecimal("qtyEntered").subtract(rsins.getBigDecimal("qtyDelivered")) : rsins.getBigDecimal("qtyToShip");

				psol.setQtyToDeliver(toDeliv);
				psol.save(get_Trx());
				psol.setM_Warehouse_ID(rsins.getInt("M_Warehouse_ID"));
				list.add(psol);
			}
			rsins.close();
			pstmtins.close();
			pstmtins = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sqlins.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmtins != null)
					pstmtins.close ();
			}
			catch (Exception e)
			{}
			pstmtins = null;
		}

		
		/*
		StringBuffer sql = new StringBuffer("SELECT * FROM Z_OrderShip WHERE C_Order_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(" ORDER BY "+orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderShip psol = new MOrderShip(getCtx(), rs, get_Trx());
				list.add(psol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		*/
		//MOrderShip[] lines = new MOrderShip[list.size ()];
		///list.toArray (lines);
//		
//		StringBuffer sqlserv = new StringBuffer("SELECT ol.* FROM C_OrderLine ol ")
//		.append(" inner join m_product p on (p.m_product_id = ol.m_product_id) ")
//		.append("WHERE ol.IsActive='Y' and ol.C_Order_ID=? AND abs(ol.qtyDelivered) < abs(ol.qtyEntered) and p.isStocked = 'N' ").append(whereClause);
//		PreparedStatement pstmtsrv = null;
//		try
//		{
//			pstmtsrv = DB.prepareStatement(sqlserv.toString(), get_Trx());
//			pstmtsrv.setInt(1, getC_Order_ID());
//			ResultSet rssrv = pstmtsrv.executeQuery();
//			while (rssrv.next())
//			{
//				DB.executeUpdate("UPDATE C_OrderLine SET QtyDelivered = QtyToDeliver WHERE C_Orderline_ID = ?", rssrv.getInt("C_Orderline_ID"), get_Trx());
//
//			}
//		}catch (Exception e)
//		{
//			log.log(Level.SEVERE, sql.toString(), e);
//		}
//		finally
//		{
//			try
//			{
//				if (pstmtsrv != null)
//					pstmtsrv.close ();
//			}
//			catch (Exception e)
//			{}
//			pstmt = null;
//		}

		
		
		
		DB.executeUpdate("UPDATE C_OrderLine SET QtyToDeliver = 0 WHERE C_Order_ID = ?", getC_Order_ID(), get_Trx());
		return list;

	}

	public String generateConsignMvt(MOrder ord, boolean isReturn) {
		String retStr = "";
		ConsignationUtil consUtil = new ConsignationUtil(getCtx(), getAD_Client_ID(), get_Trx());
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), ord.getC_DocTypeTarget_ID(), get_Trx());
		int consID = consUtil.getConsignment_Product_ID();
		if (consID <1) throw new CompiereException("Pas d'article CONSIGNATION d�fini pour la soci�t� ");
		int docTypeConsID = dti.getC_DocType_MVT_ID();
		if (docTypeConsID <1) throw new CompiereException("Pas de type de document CONSIGNATION d�fini ");
		
		String locVal = DB.getSQLValueString(get_Trx(), "select value || '-'  || TRIM(name) from c_bpartner where c_bpartner_id = ? ", getC_BPartner_ID());

		
		/*
		 
		int locCustomerID = getCreateLocatorForCustomer(getAD_Org_ID(),locVal,getCtx());
		int locConsignID = getConsignationLocator(getAD_Org_ID(),getCtx());
		*/
		
		int locCustomerID = getConsignationLocator(getAD_Org_ID(),getCtx());  //   To Locator
		int locConsignID = 0; //  Initialise from line locator
		
		int savedLocCustomerID = locCustomerID;
			
		String whereCl = "";
		if (!isReturn) whereCl = " AND ( qtyEntered - qtyDelivered ) > 0 AND qtyReturned = 0 AND M_Product_ID in (select  m_product_id p from m_product p where p.m_product_id = m_product_id and p.isStocked = 'Y' ) ";
		else whereCl = " AND ( qtyEntered - qtyDelivered ) <= 0 AND qtyReturned = 0 AND M_Product_ID in (select  m_product_id p from m_product p where p.m_product_id = m_product_id and p.isStocked = 'Y' ) "; 

		MOrderLine[] lines = this.getLines(whereCl, null);
		BigDecimal qty = BigDecimal.ZERO;
		for (int i = 0; i < lines.length; i++) {
			String docNo = getDocumentNo() + '-' + lines[i].getLine();

			locConsignID = lines[i].get_ValueAsInt("M_Locator_ID");     // From Locator

			
			if(isReturn) {
				docNo = docNo +"R";
				int tmp = savedLocCustomerID;
				locCustomerID = locConsignID;
				locConsignID = tmp;
				qty = (lines[i].getQtyDelivered());
			}
			else qty = lines[i].getQtyEntered().subtract(lines[i].getQtyDelivered());
			
			// Before out mvt from Consign Stock, now ask from orderline m_locator
			TransactionMessageProcessor.generateTransfert(this,docNo,getC_BPartner_ID(),lines[i].getM_Product_ID(),  qty , locConsignID, locCustomerID,docTypeConsID," and ad_client_id = " + getAD_Client_ID() , getCtx(),get_Trx());
			if (!isReturn){ 
				lines[i].setQtyDelivered(lines[i].getQtyEntered());
				lines[i].setQtyReserved(BigDecimal.ZERO);
			}else
			{	
				lines[i].setQtyReturned(lines[i].getQtyDelivered());
				lines[i].setQtyDelivered(BigDecimal.ZERO);
			}
			lines[i].save(get_Trx());
			retStr = retStr + " " + docNo;
		}
		return retStr;
	}
	public void setTotalInvSched() {
		DB.executeUpdate("UPDATE C_Order set totalInvSched = (select NVL(sum(totalamt),0) from Z_OrderPaymSchedule WHERE C_Order_ID = ? AND C_Invoice_ID > 0 ) where c_order_id = ?", new Object[] {this.get_ID(),this.get_ID()}, get_Trx());
	}

	public void setTotalPaySched() {
		String addsqlprom="(SELECT SUM(totalamt) FROM Z_ORDERPAYMSCHEDULE WHERE C_ORDER_ID=? and z_typeecheance_id=(select max(z_typeecheance_id) from z_typeecheance where ad_client_id="+getAD_Client_ID()+" and isprom='Y'))";//#73866
		BigDecimal totalamt=DB.getSQLValueBD(get_Trx(), addsqlprom, this.get_ID());
		if(totalamt==null)
			totalamt = Env.ZERO;
		addsqlprom="(Select SUM(cal.AMOUNT) from C_ALLOCATIONLINE cal "
				+" inner join C_Invoice ci on ci.C_INVOICE_ID = cal.C_INVOICE_ID "
				+" where cal.C_PAYMENT_ID is not null and ? = ci.C_ORder_ID "
				+" and not exists (select 1 from C_DOCTYPEINFO cdi where cdi.C_DOCTYPE_ID = ci.C_DOCTYPE_ID and cdi.ISEGGOPRO = 'Y') group by ci.C_ORDER_ID)";//#73866
		BigDecimal totalamtAlloc=DB.getSQLValueBD(get_Trx(), addsqlprom, this.get_ID());
		if(totalamtAlloc==null)
			totalamtAlloc = Env.ZERO;
		
		addsqlprom="(Select SUM(cal.AMOUNT) from C_ALLOCATIONLINE cal "
				+ "where cal.C_invoice_ID is null and cal.C_PAYMENT_ID is not null and ? = cal.C_ORder_ID "
				+ "and not exists (select 1 from C_ALLOCATIONLINE cal2 where cal2.C_ALLOCATIONLINE_ID <> cal.C_ALLOCATIONLINE_ID and cal2.C_PAYMENT_ID = cal.C_PAYMENT_ID and cal.C_ORder_ID <> cal2.C_ORder_ID) "
				+" group by cal.C_ORDER_ID)";//#73866
		BigDecimal totalamtAlloc2=DB.getSQLValueBD(get_Trx(), addsqlprom, this.get_ID());
		if(totalamtAlloc2==null)
			totalamtAlloc2 = Env.ZERO;
		//addsqlprom="Select sum(cp.PAYAMT) from C_PAYMENT cp "
		//		+ "where not exists (select 1 from C_ALLOCATIONLINE cal where cal.C_PAYMENT_ID = cp.C_PAYMENT_ID) and cp.C_ORDER_ID = ? group by cp.C_ORDER_ID";//#73866
		//BigDecimal totalamtPayAlone=DB.getSQLValueBD(get_Trx(), addsqlprom, this.get_ID());
		//if(totalamtPayAlone==null)
		BigDecimal totalamtPayAlone = Env.ZERO;
		DB.executeUpdate("UPDATE C_ORDER c1 set c1.UPDATED = sysdate, c1.UPDATEDBY = ? ,c1.totalPaySched = ?  where c1.C_ORder_ID = ?", 
				new Object[] {getCtx().getAD_User_ID(),totalamtPayAlone.add(totalamt.add(totalamtAlloc).add(totalamtAlloc2)),this.get_ID()}, get_Trx());//89352

		if(!this.getDocStatus().equals(MOrder.DOCSTATUS_Drafted))
			WSUtil.updateOrder(getCtx(), this, false, get_Trx());

		//add the total amount of promoter type of payment maturity
		/*
		if(totalamt==null || totalamt.compareTo(BigDecimal.ZERO)==0)
			DB.executeUpdate("UPDATE C_ORDER set UPDATED = sysdate, UPDATEDBY = ? ,totalPaySched = (Select NVL(sum(cp.Payamt),0) from (Select distinct Z_ORDERPAYMENT.C_PAYMENT_ID  from Z_ORDERPAYMENT "
					+ "where exists(SELECT 1 from Z_ORDERPAYMSCHEDULE where Z_ORDERPAYMSCHEDULE.C_ORDER_ID = ? and Z_ORDERPAYMENT.Z_ORDERPAYMSCHEDULE_ID = Z_ORDERPAYMSCHEDULE.Z_ORDERPAYMSCHEDULE_ID))t "
					+ "inner join C_PAYMENT cp on cp.C_PAYMENT_ID = t.C_PAYMENT_ID) where C_ORder_ID = ?", new Object[] {getCtx().getAD_User_ID(),this.get_ID(),this.get_ID()}, get_Trx());//89352
		else
			DB.executeUpdate("UPDATE C_ORDER set  UPDATED = sysdate, UPDATEDBY = ?,totalPaySched = (Select NVL(sum(cp.Payamt),0) from (Select distinct Z_ORDERPAYMENT.C_PAYMENT_ID  from Z_ORDERPAYMENT "
					+ "where exists(SELECT 1 from Z_ORDERPAYMSCHEDULE where Z_ORDERPAYMSCHEDULE.C_ORDER_ID = ? and Z_ORDERPAYMENT.Z_ORDERPAYMSCHEDULE_ID = Z_ORDERPAYMSCHEDULE.Z_ORDERPAYMSCHEDULE_ID))t "
					+ "inner join C_PAYMENT cp on cp.C_PAYMENT_ID = t.C_PAYMENT_ID)+"+totalamt+" where C_ORder_ID = ?", new Object[] {getCtx().getAD_User_ID(),this.get_ID(),this.get_ID()}, get_Trx());//89352
	*/
	}


	public void setPROMBPartner_ID(int BPartner_ID)
	{
		DB.executeUpdate("UPDATE C_ORDER set UPDATED = sysdate, UPDATEDBY = ?, PROM_BPARTNER_ID = ? where C_ORder_ID = ? and PROM_BPARTNER_ID is null", new Object[] {getCtx().getAD_User_ID(),BPartner_ID,this.get_ID()}, get_Trx());//89352
	}
	
	/**************************************************************************
	 * 	Get Lines of Order
	 * 	@param whereClause where clause or null (starting with AND)
	 * 	@param orderClause order clause
	 * 	@return lines
	 */
	public MOrderDownload[] getDownloadLines (String whereClause, String orderClause)
	{
		ArrayList<MOrderDownload> list = new ArrayList<MOrderDownload> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM C_OrderDownload WHERE C_Order_ID=? ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, getC_Order_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderDownload od = new MOrderDownload(getCtx(), rs, get_Trx());
				list.add(od);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderDownload[] lines = new MOrderDownload[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	// For Type WEB
	public boolean generatePayment() {
		int invoiceID = DB.getSQLValue(get_Trx(), "SELECT  C_Invoice_ID from C_Invoice where C_Order_ID = ? " , getC_Order_ID());
		
		MOrg org = new MOrg(getCtx(), getAD_Org_ID(), get_Trx());
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), getAD_Org_ID(), get_Trx());
		int bankAcctID = DB.getSQLValue(get_Trx(), "select c_bankaccount_id from z_orgpos where ad_org_id=?", getAD_Org_ID());
		int bankDocTypeID = DB.getSQLValue(get_Trx(),"select doctype_bankacct_id from z_orgpos where ad_org_id=?",getAD_Org_ID());

		MPayment paym =  new MPayment(getCtx(),0,get_Trx());
		paym.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
			paym.setC_BankAccount_ID(bankAcctID);
			paym.setC_DocType_ID(bankDocTypeID);
			int ZSubPR_ID = orgPOS.getZSubPaymentRule_ID();//MERGE
			if (this.get_ValueAsInt("ZSubPaymentRule_ID") > 0 ) ZSubPR_ID = this.get_ValueAsInt("ZSubPaymentRule_ID");
			paym.set_Value("ZSubPaymentRule_ID", ZSubPR_ID); 
			paym.setPayAmt(getGrandTotal());
			paym.setC_BPartner_ID(getC_BPartner_ID());
			if (invoiceID > 0)
				paym.setC_Invoice_ID(invoiceID);
			if (paym.getDescription() != null)
				paym.setDescription(paym.getDescription() + " - " + getDocumentNo());
			else
				paym.setDescription(getDocumentNo());
			paym.setC_Currency_ID(orgPOS.getC_Currency_ID());
			paym.set_Value("ZCreateFromOpenInvoice", "N");
			paym.set_Value("DueDate", getDateOrdered());
			paym.setC_ConversionType_ID(MConversionType.getDefault(getAD_Client_ID()));//MERGE
			paym.setChargeAmt(BigDecimal.ZERO);
			paym.setOProcessing("N");
			paym.setDocAction(MOrder.DOCACTION_Complete);
			paym.setC_Order_ID(getC_Order_ID());
			paym.setC_Invoice_ID(getC_Invoice_ID());
			paym.save(get_Trx());
			// Verify Ss-mth
			X_ZSubPaymentRule xZs = new X_ZSubPaymentRule(getCtx(), ZSubPR_ID, get_Trx());
			if(xZs.get_ValueAsBoolean("IsAllocated")){
				boolean successPay = DocumentEngine.processIt(paym, DocActionConstants.ACTION_Complete);
				if (!successPay) throw new CompiereException(paym.getProcessMsg());
			}
			paym.save(get_Trx());
			return true;
	}
	
	// For Type WEB
	// GenerateStockMvt + Generate Message 
	public boolean generateMvtNP()
	{
		boolean successMvt = false;
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(),getAD_Org_ID(), get_Trx());

		MInventory inventory = null;
		int oldProdID = 0;
		try{ 
//			MOrderLinePosAction[] posOrderLineActions = getLineActions("  AND Z_PosWfAction_ID in (select Z_PosWfAction_ID from Z_PosWfAction where IsStocked = 'Y' "  +  " )", null);
//			for (MOrderLinePosAction posOrderlineAction : posOrderLineActions) {
//
//						if (inventory == null){
//							inventory = new MInventory(MWarehouse.get(getCtx(), orgInfo.getM_Warehouse_ID()));
//							inventory.setDescription("Cde: " + getDocumentNo() + " Client :" + MBPartner.get(getCtx(), getC_BPartner_ID()).getValue() );
//							inventory.save(get_Trx());
//						}
//
//				//log.fine("check: " + line);
//				MOrderLine oline = new MOrderLine(getCtx(),posOrderlineAction.getC_OrderLine_ID(),get_Trx());
//				BigDecimal toDeliver = posOrderlineAction.getQtyEntered();
//				MProduct product = new MProduct(getCtx(), oline.getM_Product_ID(),get_Trx());
//				MPosWfAction action = new MPosWfAction(getCtx(),posOrderlineAction.getZ_PosWfAction_ID(),get_Trx());
//
//				//	Comments & lines w/o product & services
//				if (((product != null) || product.isStocked()) || (toDeliver.signum() != 0))		//	lines w/o product
//				{
//
//					Object[] params = {inventory.get_ID(),product.get_ID(),getDefaultLocator()};
//					int invID = DB.getSQLValue(get_Trx(), "select m_inventoryline_id from m_inventoryline where m_inventory_id = ? and m_product_id = ? and m_locator_id = ?", params);
//
//					if (invID > 1){
//						MInventoryLine invl = new MInventoryLine(getCtx(), invID, get_Trx());
//						if (action.isMvtIn()){
//							invl.setQtyInternalUse(invl.getQtyInternalUse().add(toDeliver.negate()));
//							oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver) );
//						}
//						else{
//							invl.setQtyInternalUse(invl.getQtyInternalUse().add(toDeliver));
//							oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver.negate()) );
//						}
//						invl.save(get_Trx());
//
//					}
//					else {
//						MInventoryLine invl = new MInventoryLine(inventory, getDefaultLocator(), product.get_ID(), oline.getM_AttributeSetInstance_ID(), BigDecimal.ZERO, BigDecimal.ZERO);
//						invl.setDescription(inventory.getDescription());
//						if (action.isMvtIn()){
//							invl.setQtyInternalUse(toDeliver.negate());
//							oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver) );
//						}
//						else{
//							invl.setQtyInternalUse(toDeliver);
//							oline.set_ValueNoCheck("QtyInProcess", ((BigDecimal) oline.get_Value("QtyInProcess")).add(toDeliver.negate()) );
//						}
//						invl.setC_Charge_ID(PosCtx.CHARGE_MVT_NP_ID);
//						invl.save(get_Trx());
//
//					}
//					oline.save(get_Trx());
//					
//					MOrg org = new MOrg(Env.getCtx(),oline.getAD_Org_ID(),get_Trx());
//					MWarehouse warehouse = new MWarehouse(getCtx(), org.getM_Warehouse_ID(),get_Trx());
//					MLocator locator = warehouse.getDefaultLocator();
//					Object[] params2 = {oline.getAD_Org_ID(),product.get_ID(),oline.getM_AttributeSetInstance_ID(),locator.get_ID(),"W"};
//					int exist = DB.getSQLValue(get_Trx(), "select 1 from M_StorageDetail where ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
//					String sql;
//					if(exist >= 0){
//						int qtyStorage = DB.getSQLValue(get_Trx(), "select qty from M_StorageDetail where ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?", params2);
//						sql = 	"UPDATE M_StorageDetail SET Qty = ?, updated = sysdate WHERE ad_org_id=? and m_product_id=? and m_attributesetinstance_id=? and m_locator_id=? and qtytype=?";
//						BigDecimal newQty = toDeliver.add(new BigDecimal(qtyStorage));
//						Object[] paramsUP = {newQty,oline.getAD_Org_ID(),product.get_ID(),oline.getM_AttributeSetInstance_ID(),locator.get_ID(),"W"};
//						DB.executeUpdate(sql,paramsUP,get_Trx());
//					}else{
//						sql = 	"INSERT INTO M_StorageDetail (AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,M_Locator_ID, M_Product_ID, M_AttributeSetInstance_ID,QtyType, Qty, DateLastInventory)"+
//									"values (?,?,?,sysdate,?,sysdate,?,?,?,?,?,?,sysdate)";
//						MOrder order = new MOrder(oline.getCtx(),oline.getC_Order_ID(),get_Trx());
//						Object[] paramsINS = {oline.getAD_Client_ID(),oline.getAD_Org_ID(),"Y",order.getAD_User_ID(),order.getAD_User_ID(),locator.get_ID(),product.get_ID(),
//								oline.getM_AttributeSetInstance_ID(),"W",toDeliver};
//						DB.executeUpdate(sql,paramsINS,get_Trx());
//					}
//					// BBR : SYNCHRO STOCK
//					MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
//					if(dt.isZ_IsStorageEvent()){
//						X_Z_StorageEvent ev = new X_Z_StorageEvent(getCtx(), 0, get_Trx());
//						ev.setAD_Client_ID(oline.getAD_Client_ID());
//						ev.setAD_Org_ID(oline.getAD_Org_ID());
//						ev.setM_Locator_ID(locator.get_ID());
//						ev.setM_Product_ID(product.get_ID());
//						ev.setM_AttributeSetInstance_ID(oline.getM_AttributeSetInstance_ID());
//						ev.setQtyType("W");
//						ev.setQty(toDeliver);
//						ev.save();
//					}
//					// BBR : SYNCHRO STOCK
//					
//					
//				}
//			}	//	for all order lines


		MOrderLinePosAction[] posOrderLineActions = null;
		MClient client = MClient.get(getCtx(), getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
			posOrderLineActions = getLineActions("  AND Z_PosWfAction_ID in (select Z_PosWfAction_ID from Z_PosWfAction where GenerateMsg = 'Y' " +clientProxy.getClientCheck()+ " )", null);
			for (MOrderLinePosAction posOrderlineAction : posOrderLineActions) {
				
				
				MOrderLine oline = new MOrderLine(getCtx(),posOrderlineAction.getParent().getC_OrderLine_ID(),get_Trx());
				MProduct product = new MProduct(getCtx(), oline.getM_Product_ID(),get_Trx());
				boolean genAction = MTransactionMsg.generateMsgFromOrder(this,posOrderlineAction,product.getM_Product_ID());
				if (!genAction) return false;
			}	//	for all order lines
		}
		catch(Exception e) { 
			throw new CompiereException(e.getMessage());
		}


//		if (inventory != null) {
//			successMvt = DocumentEngine.processIt(inventory, DocActionConstants.ACTION_Complete);
//			inventory.save(get_Trx());
//		}
//		else 
			successMvt = true;
		if (!successMvt)
		{
			//			m_processMsg = "@C_Invoice_ID@: " + invoice.getProcessMsg();
			return false;
		}

		return true;
	}
	
	
	public MOrderLinePosAction[] getLineActions (String whereClause, String orderClause)
	{
		ArrayList<MOrderLinePosAction> list = new ArrayList<MOrderLinePosAction> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM Z_OrderLinePosAction WHERE C_OrderLine_ID in (select C_OrderLine_ID from C_OrderLine where C_Order_id = ?  ) ");
		if (whereClause != null)
			sql.append(whereClause);
		if (orderClause != null)
			sql.append(" ").append(orderClause);
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_Trx());
			pstmt.setInt(1, get_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MOrderLinePosAction ol = new MOrderLinePosAction(getCtx(), rs, get_Trx());
				list.add(ol);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
			throw new CompiereException(e.getMessage());
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MOrderLinePosAction[] lines = new MOrderLinePosAction[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines

	private int getDefaultLocator()
	{
		int locID = DB.getSQLValue(null, "select max(M_Locator_ID) from M_Locator where M_Warehouse_id = " + MOrgInfo.get(getCtx(),this.getAD_Org_ID() , null).getM_Warehouse_ID() + " AND ISDEFAULT = 'Y' ");
		if (locID < 1 )
		{
			throw new CompiereException("Pas de magasin/emplacement par d�fault pour l'organisation du ticket");
		}	
		return locID;
	}
	
	public BigDecimal getTotalEch(){
		BigDecimal amt = BigDecimal.ZERO;
		amt = DB.getSQLValueBD(get_Trx(), "select sum(totalamt) from z_OrderPaymSchedule where C_Order_id = ? ", this.get_ID());
		return amt;
	}
	
	
	public void checkOrderPaySchedule(){
		MDocType dt = new MDocType(getCtx(), getC_DocTypeTarget_ID(), get_Trx());
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), getC_DocTypeTarget_ID(), get_Trx());
						
		if (dti != null && "Y".equalsIgnoreCase(dt.get_ValueAsString("CreateSched")) || dti.isOpenOV() ){
			int typeEchAdjID = DB.getSQLValue(get_Trx(), "select  max(z_typeecheance_id) from z_typeecheance where IsLivraison = 'Y' and AD_Client_ID = ?", getAD_Client_ID());
			if (typeEchAdjID < 1)
				typeEchAdjID = DB.getSQLValue(get_Trx(), "select max(z_typeecheance_id) from z_typeecheance where IsAjust = 'Y'  and AD_Client_ID = ? ", getAD_Client_ID());

			int typeEchID = DB.getSQLValue(get_Trx(), "select max(z_typeecheance_id) from z_typeecheance where IsLivraison = 'Y'  and AD_Client_ID = ? ", getAD_Client_ID());
			if (typeEchID > 0 ){

				int exist = DB.getSQLValue(get_Trx(),"select count(*) from z_orderpaymschedule where c_order_id = ?",this.get_ID()); 
				if (exist > 0){
					if (this.getGrandTotal().compareTo(this.getTotalEch()) != 0)
					{
						int ordPaySchedID = DB.getSQLValue(get_Trx(),"select z_orderpaymschedule_ID from z_orderpaymschedule where c_order_id = ? and Z_TypeEcheance_ID = ? AND C_Invoice_ID is null ",  this.getID(),typeEchAdjID);
						if (ordPaySchedID > 1){
							// Modifier le Montant
							MOrderPaymSchedule pm = new MOrderPaymSchedule(getCtx(), ordPaySchedID,get_Trx());
							pm.setTotalAmt(pm.getTotalAmt().add(this.getGrandTotal().subtract(getTotalEch())));
							pm.save(get_Trx());
						}				else
						{
							//Savoir si une de r�ajustement n'existe pas !
							typeEchAdjID = DB.getSQLValue(get_Trx(), "select max(z_typeecheance_id) from z_typeecheance where IsAjust = 'Y'  and AD_Client_ID = ? ", getAD_Client_ID());
							ordPaySchedID = DB.getSQLValue(get_Trx(),"select z_orderpaymschedule_ID from z_orderpaymschedule where c_order_id = ? and Z_TypeEcheance_ID = ? AND C_Invoice_ID is null ",  this.getID(),typeEchAdjID);
							if (ordPaySchedID > 1){
								MOrderPaymSchedule pm = new MOrderPaymSchedule(getCtx(), ordPaySchedID,get_Trx());
								pm.setTotalAmt(pm.getTotalAmt().add(this.getGrandTotal().subtract(getTotalEch())));
								pm.save(get_Trx());
							}
							else{
							// Create Adjuctement
							MOrderPaymSchedule ops = new MOrderPaymSchedule(getCtx(), 0, get_Trx());
							ops.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
							ops.setC_Order_ID(getC_Order_ID());
							ops.setZ_TypeEcheance_ID(typeEchAdjID);
							ops.setSeqNo(99);
							ops.set_ValueNoCheck("DueDate", getDatePromised());
							ops.setTotalAmt(this.getGrandTotal().subtract(getTotalEch()));
							ops.save(get_Trx());
							}
						}	
					}
				}
			}
		}
	}
	
	public void createOrderMargin()
	{
		BigDecimal pctCom = BigDecimal.ZERO;
		BigDecimal pctReal = BigDecimal.ZERO;

		try {
		MOrderMargin mom = MOrderMargin.getLastMargin(getCtx(), this.get_ID(), get_Trx());
		if(mom == null)
		{
			BigDecimal[] margins = MOrderMargin.getMargin(this);
			if (this.getTotalLines().compareTo(BigDecimal.ZERO) != 0 ) {   
				pctCom  = margins[0].multiply(new BigDecimal(100)).divide(this.getTotalLines(),BigDecimal.ROUND_HALF_UP);
				pctReal  = margins[1].multiply(new BigDecimal(100)).divide(this.getTotalLines(),BigDecimal.ROUND_HALF_UP);
			}
			MOrderMargin om = new MOrderMargin(getCtx(), 0, get_Trx());
			om.setClientOrg(this);
			om.setC_Order_ID(this.get_ID());
			om.setZ_OrderStepStatus(this.get_ValueAsString("Z_OrderStepStatus"));
			om.setMovementDate(new Timestamp(System.currentTimeMillis()));
			om.setLineTotalAmt(this.getTotalLines());
			om.setCommercialMargin(margins[0]);
			om.setCommercialMarginPct(pctCom);
			om.setRealMargin(margins[1]);
			om.setRealMarginPct(pctReal);
			if (! om.save(get_Trx())) 
				throw new CompiereException("Unable to save OrderMargin");
		}else
		{
			BigDecimal[] margins = MOrderMargin.getMargin(this);
			if (this.getTotalLines().compareTo(BigDecimal.ZERO) != 0 ) {   
				pctCom  = margins[0].multiply(new BigDecimal(100)).divide(this.getTotalLines(),BigDecimal.ROUND_HALF_UP);
				pctReal  = margins[1].multiply(new BigDecimal(100)).divide(this.getTotalLines(),BigDecimal.ROUND_HALF_UP);
			}
			int secSMidNi = getSecondsSinceMidnight();
			String sql = "select max(Z_ORDERMARGIN_ID) from z_ordermargin where c_order_id = ? and trunc(movementdate) = trunc(sysdate) and "
					 	+ " to_number(to_char(movementdate,'SSSSS')) >= " + ( secSMidNi - 60 ) + " and to_number(to_char(movementdate,'SSSSS')) <= " + ( secSMidNi + 180) ;  
			int omID = DB.getSQLValue(get_Trx(), sql, this.get_ID());
			if (omID < 1) omID = 0;

			
			MOrderMargin om = new MOrderMargin(getCtx(), omID, get_Trx());
			om.setClientOrg(this);
			om.setC_Order_ID(this.get_ID());
			om.setZ_OrderStepStatus(this.get_ValueAsString("Z_OrderStepStatus"));
			om.setMovementDate(new Timestamp(System.currentTimeMillis()));
			om.setLineTotalAmt(this.getTotalLines());
			om.setCommercialMargin(margins[0]);
			om.setCommercialMarginPct(pctCom);
			om.setRealMargin(margins[1]);
			om.setRealMarginPct(pctReal);
			if (! om.save(get_Trx())) throw new CompiereException("Unable to save OrderMargin");
		}
		
			}
			catch (Exception e)
			{
				log.log(Level.SEVERE, "Unable to save OrderMargin", e);
				throw new CompiereException("Error on OrderMargin" , e.getCause());
			}
		
	}
	
    public int getSecondsSinceMidnight() {         

        DateFormat dateFormat = new SimpleDateFormat();      
        java.util.Date date = new java.util.Date();

        dateFormat = new SimpleDateFormat("HH");
        date = new java.util.Date();
        int hour = Integer.parseInt(dateFormat.format(date));         

        dateFormat = new SimpleDateFormat("mm");
        date = new java.util.Date();
        int minute = Integer.parseInt(dateFormat.format(date));

        dateFormat = new SimpleDateFormat("ss");
        date = new java.util.Date();
        int second = Integer.parseInt(dateFormat.format(date));   

        return (hour* 3600) + (minute * 60) + second;      

     }
    
    
    
    /** Set Copy From.
    @param CopyFrom Copy From Record */
    public void setZ_UbiSoftUrl (String url)
    {
        set_Value ("Z_UbiSoftUrl", url);
        
    }
    
//    /** Get Copy From.
//    @return Copy From Record */
//    public String getZ_OrderStepStatus() 
//    {
//        return (String)get_Value("Z_OrderStepStatus");
//        
//    }
//    
//    /** Set Copy From.
//    @param CopyFrom Copy From Record */
//    public void setZ_OrderStepStatus (String url)
//    {
//        set_Value ("Z_OrderStepStatus", url);
//        
//    }
    
    /** Get Copy From.
    @return Copy From Record */
    public String getZ_UbiSoftUrl() 
    {
        return (String)get_Value("Z_UbiSoftUrl");
        
    }
    
    public static boolean isCompleteShip(int C_Order_ID)
    {
    	String sql = "Select distinct su from ((Select case when (sum(mol.qtyordered)- sum(mol.qtydelivered))>0 " +
    			"then 'N' else 'Y' end as su from C_OrderLine mol where mol.C_Order_ID = ? group by M_Product_ID)) order by su ASC";
    	PreparedStatement pstmt = null;
		boolean ret = false;
    	try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, C_Order_ID);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				ret = rs.getString(1).equals("Y")?true:false;
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
			throw new CompiereException(e.getMessage());
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
    	return ret;
    }


	public boolean IsShipByEBsoft() {
//		EggoCtx.setConstants();
		int eBnoShip = 0;
		StringBuffer prepSql = new StringBuffer("select count(*) from m_inout where c_order_id = ? ")
		.append(" and createdby = (select ad_user_id from ad_user where upper(name) = upper(?) and rownum=1) ");
		MClient client = MClient.get(getCtx(), getAD_Client_ID());
		MClientProxy clientProxy = new MClientProxy(client);
		String EBSOFT_USERNAME = clientProxy.getParameter("EBSOFT_USERNAME");
		eBnoShip = DB.getSQLValue(get_Trx(), prepSql.toString(), getC_Order_ID(), EBSOFT_USERNAME);
		if (eBnoShip > 0) return true;
		else return false;
	}

	private String z_comID;
	private String z_com;

	public String getZ_comID() {
		return z_comID;
	}


	public void setZ_comID(String z_comID) {
		this.z_comID = z_comID;
	}


	public String getZ_com() {
		return z_com;
	}


	public void setZ_com(String z_com) {
		this.z_com = z_com;
	}
	//#78082 
	public void setPriceList()
	{
		boolean IsSOTrx = isSOTrx();
		PreparedStatement pstmt=null;
		ResultSet rs= null;

		StringBuffer sqlListPrice =new StringBuffer("SELECT COALESCE(p.M_PriceList_ID,g.M_PriceList_ID) AS M_PriceList_ID,")
		.append(" COALESCE(p.PO_PriceList_ID,g.PO_PriceList_ID) AS PO_PriceList_ID")
		.append(" FROM C_BPartner p")
		.append(" INNER JOIN C_BP_Group g ON (p.C_BP_Group_ID=g.C_BP_Group_ID)")
		.append(" WHERE p.C_BPartner_ID=? AND p.IsActive='Y'");
		try
		{
			pstmt = DB.prepareStatement(sqlListPrice.toString(), (Trx) null);
			pstmt.setInt(1, getC_BPartner_ID());
			rs = pstmt.executeQuery();
			//
			if (rs.next())
			{
				//	PriceList & IsTaxIncluded & Currency
				Integer ii = Integer.valueOf(rs.getInt(IsSOTrx ? "M_PriceList_ID" : "PO_PriceList_ID"));
				if (!rs.wasNull())
					setM_PriceList_ID( ii);
				else
				{	//	get default PriceList
					int i = getCtx().getContextAsInt( "#M_PriceList_ID");
					if (i != 0)
						setM_PriceList_ID( Integer.valueOf(i));
				}
			}

		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, "bPartner", e);
		}
		finally{
			pstmt=null;
			rs=null;
		}
		 
	}
	
	@UICallout public void setZ_TypeOA_ID (String oldZ_TypeOA_ID,
			String newZ_TypeOA_ID, int windowNo) throws Exception
			{
		if ((newZ_TypeOA_ID == null) || (newZ_TypeOA_ID.length() == 0))
			return;

		int TypeOA_ID=Integer.parseInt(newZ_TypeOA_ID);
		if (TypeOA_ID == 0)
			return;
		MTypeOA toa = new MTypeOA(getCtx(), TypeOA_ID, get_Trx());
		if(toa.getZ_StatusPlan()!=null && get_Value("Z_StatusPlan")==null)
			set_ValueNoCheck("Z_StatusPlan", toa.getZ_StatusPlan());
			}
	//99970
	@UICallout public void setXX_IsSAV (String oldIsSAV,
			String newIsSAV, int windowNo) throws Exception
			{
		if ((newIsSAV == null) || (newIsSAV.length() == 0))
			return;

		if((newIsSAV.equals("Y") || newIsSAV.equals("N")) && get_Value("XX_SAV_Date")==null)
		{
			set_ValueNoCheck("XX_SAV_Date", new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
		}
	}
	
	@UICallout public void setXX_IsBonus (String oldXX_IsBonus,
			String newXX_IsBonus, int windowNo) throws Exception
			{
		if ((newXX_IsBonus == null) || (newXX_IsBonus.length() == 0))
			return;

		if((newXX_IsBonus.equals("Y") || newXX_IsBonus.equals("N")) && get_Value("XX_BonusDate")==null)
		{
			set_ValueNoCheck("XX_BonusDate", new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
		}
	}
	
	@UICallout public void setLVendorSent (String oldLVendorSent,
			String newLVendorSent, int windowNo) throws Exception
			{
		if ((newLVendorSent == null) || (newLVendorSent.length() == 0))
			return;

		if((newLVendorSent.equals("Y")) && get_Value("SentDate")==null)
		{
			set_ValueNoCheck("SentDate", new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
		}
	}
	
    public String getXX_IsSAV() 
    {
        return get_ValueAsString("XX_IsSAV");
        
    }
    
    public void setXX_IsSAV (String Sav_Status)
    {
        set_Value ("XX_IsSAV", Sav_Status);
        
    }
    
    private boolean IsFromPrintRappel = false;

	public boolean isIsFromPrintRappel() {
		return IsFromPrintRappel;
	}


	public void setIsFromPrintRappel(boolean isFromPrintRappel) {
		IsFromPrintRappel = isFromPrintRappel;
	}
    
}	//	MOrder