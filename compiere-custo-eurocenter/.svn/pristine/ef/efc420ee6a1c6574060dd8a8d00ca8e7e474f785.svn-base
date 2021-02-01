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
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;

import org.compiere.api.UICallout;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Env.QueryParams;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;
import com.sun.mail.imap.protocol.ENVELOPE;

/**
*	Bank Statement Model
*
*	@author Eldir Tomassen/Jorg Janke
*	@version $Id: MBankStatement.java,v 1.3 2006/07/30 00:51:03 jjanke Exp $
*/
public class MBankStatement extends X_C_BankStatement implements DocAction
{
    /** Logger for class MBankStatement */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MBankStatement.class);
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 	Standard Constructor
	 *	@param ctx context
	 *	@param C_BankStatement_ID id
	 *	@param trx transaction
	 */
	public MBankStatement (Ctx ctx, int C_BankStatement_ID, Trx trx)
	{
		super (ctx, C_BankStatement_ID, trx);
		if (C_BankStatement_ID == 0)
		{
		//	setC_BankAccount_ID (0);	//	parent
			setStatementDate (new Timestamp(System.currentTimeMillis()));	// @Date@
			setDocAction (DOCACTION_Complete);	// CO
			setDocStatus (DOCSTATUS_Drafted);	// DR
			setBeginningBalance(Env.ZERO);
			setStatementDifference(Env.ZERO);
			setEndingBalance (Env.ZERO);
			setIsApproved (false);	// N
			setIsManual (true);	// Y
			setPosted (false);	// N
			super.setProcessed (false);
		}
	}	//	MBankStatement

	/**
	 * 	Load Constructor
	 * 	@param ctx Current context
	 * 	@param rs result set
	 *	@param trx transaction
	 */
	public MBankStatement(Ctx ctx, ResultSet rs, Trx trx)
	{
		super(ctx, rs, trx);
	}	//	MBankStatement

 	/**
 	 * 	Parent Constructor
	 *	@param account Bank Account
 	 * 	@param isManual Manual statement
 	 **/
	public MBankStatement (MBankAccount account, boolean isManual)
	{
		this (account.getCtx(), 0, account.get_Trx());
		setClientOrg(account);
		setC_BankAccount_ID(account.getC_BankAccount_ID());
		setStatementDate(new Timestamp(System.currentTimeMillis()));
		setBeginningBalance(account.getCurrentBalance());
		setName(getStatementDate().toString());
		setIsManual(isManual);
	}	//	MBankStatement

	/**
	 * 	Create a new Bank Statement
	 *	@param account Bank Account
	 */
	public MBankStatement(MBankAccount account)
	{
		this(account, false);
	}	//	MBankStatement

	/**	Lines							*/
	private MBankStatementLine[] 	m_lines = null;

 	/**
 	 * 	Get Bank Statement Lines
 	 * 	@param requery requery
 	 *	@return line array
 	 */
 	public MBankStatementLine[] getLines (boolean requery)
 	{
		if ((m_lines != null) && !requery)
			return m_lines;
		//
 		ArrayList<MBankStatementLine> list = new ArrayList<MBankStatementLine>();
 		String sql = "SELECT * FROM C_BankStatementLine "
 			+ "WHERE C_BankStatement_ID=?"
 			+ "ORDER BY Line";
 		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getC_BankStatement_ID());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				list.add (new MBankStatementLine(getCtx(), rs, get_Trx()));
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "getLines", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}

		MBankStatementLine[] retValue = new MBankStatementLine[list.size()];
		list.toArray(retValue);
		return retValue;
 	}	//	getLines

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
		String sql = "UPDATE C_BankStatementLine SET Processed='"
			+ (processed ? "Y" : "N")
			+ "' WHERE C_BankStatement_ID=" + getC_BankStatement_ID();
		int noLine = DB.executeUpdate(sql, get_Trx());
		m_lines = null;
		log.fine("setProcessed - " + processed + " - Lines=" + noLine);
	}	//	setProcessed

	/**
	 * 	Set Org - Callout
	 *	@param oldAD_Org_ID old org
	 *	@param newAD_Org_ID new org
	 *	@param windowNo window no
	 */
	@UICallout public void setAD_Org_ID (String oldAD_Org_ID,
			String newAD_Org_ID, int windowNo) throws Exception
	{
		// reset bank account when org is changed
		//Anomalie #52950	Valeur par défaut non reconnue
		//setC_BankAccount_ID(1);
	}	//	setAD_Org_ID

	/**
	 * 	Get Bank Account
	 *	@return bank Account
	 */
	public MBankAccount getBankAccount()
	{
		return MBankAccount.get(getCtx(), getC_BankAccount_ID());
	}	//	getBankAccount

	/**
	 *	Set Bank Account
	 *	@param C_BankAccount_ID bank Account
	 */
	@Override
	public void setC_BankAccount_ID(int C_BankAccount_ID)
	{
		super.setC_BankAccount_ID(C_BankAccount_ID);
	}

	/**
	 * 	Set Bank Account - Callout
	 *	@param oldC_BankAccount_ID old Bank
	 *	@param newC_BankAccount_ID new Bank
	 *	@param windowNo window no
	 */
	@UICallout public void setC_BankAccount_ID (String oldC_BankAccount_ID,
			String newC_BankAccount_ID, int windowNo) throws Exception
	{
		if ((newC_BankAccount_ID == null) || (newC_BankAccount_ID.length() == 0))
			return;
		int C_BankAccount_ID = Integer.parseInt(newC_BankAccount_ID);
		if (C_BankAccount_ID == 0)
			return;
		setC_BankAccount_ID(C_BankAccount_ID);
		//
		MBankAccount ba = getBankAccount();
		BigDecimal BeginningBalance = new BigDecimal(0);
		BeginningBalance = DB.getSQLValueBD(get_Trx(), "Select NVL(GETCASHAMOUT (?,"+ba.getC_BankAccount_ID()+"),0) from DUAL", this.getAD_Org_ID());
		if(ba.getBankAccountType().equals("X") && !BeginningBalance.equals(Env.ZERO))
			//BeginningBalance = derniere caisse traitée
			setBeginningBalance(BeginningBalance);
		else
			setBeginningBalance(ba.getCurrentBalance());
		set_Value("Z_BankAccount_ID", C_BankAccount_ID);
	}	//	setC_BankAccount_ID

	/**
	 * 	Get Document No
	 *	@return name
	 */
	public String getDocumentNo()
	{
		return getName();
	}	//	getDocumentNo

	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		return getBankAccount().getName() + " " + getDocumentNo();
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
	//	ReportEngine re = ReportEngine.get (getCtx(), ReportEngine.INVOICE, getC_Invoice_ID());
	//	if (re == null)
			return null;
	//	return re.getPDF(file);
	}	//	createPDF


	/**
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		setEndingBalance(getBeginningBalance().add(getStatementDifference()));
		//Redmine 43450: par défaut le montant de caise doit etre egale au solde final
		if (is_new())
			set_Value("CashAmount", getBeginningBalance().add(getStatementDifference()));
		
		//#39013
		BigDecimal cashDiff = getEndingBalance().subtract(get_ValueAsBigDecimal("CashAmount"));
		set_ValueNoCheck("CashDiff",cashDiff);
		if (cashDiff!=null && cashDiff.compareTo(BigDecimal.ZERO)!=0)
			set_ValueNoCheck("CreateDiffLine", true);
		
		//Redmine 44676
		if (is_ValueChanged("Name")
				|| is_ValueChanged("C_BankAccount_ID")){
			int no = QueryUtil.getSQLValue(get_Trx(), "SELECT COUNT(*) FROM C_BankStatement WHERE NAME=? AND C_BankAccount_ID=? AND C_BankStatement_ID <>?",
				getName(), getC_BankAccount_ID(), getC_BankStatement_ID());
			if (no>0)
				log.saveWarning("Warning", 
						": "+ Msg.getMsg(getCtx(), "EC_BANKSTATEMENT_NAME_EXIST"));
		}
		//
		
		return true;
	}	//	beforeSave

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
		log.info("invalidateIt - " + toString());
		setDocAction(DOCACTION_Prepare);
		return true;
	}	//	invalidateIt

	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid)
	 */
	public String prepareIt()
	{
		MBankStatementLine[] lines = getLines(true);

		for (MBankStatementLine line : lines) {
			if( (line.getC_Invoice_ID() != 0) && (line.getC_Payment_ID() == 0) )
			{
				m_processMsg = "@LineHasInvoiceButNoPayment@";
				return DocActionConstants.STATUS_Invalid;
			}
		}
		//Savoir si il n'existe pas une caisse de type X pour ce magasin non CO ou CL
		MBankAccount mba = MBankAccount.get(getCtx(), getC_BankAccount_ID());
		int nox = DB.getSQLValue(get_Trx(),"Select max(C_bankstatement_ID) from c_bankstatement " +
				"inner join C_BankAccount cb on (cb.C_BankAccount_ID = c_bankstatement.C_BankAccount_ID) where C_Bankstatement_ID <> ? and trunc(c_bankstatement.STATEMENTDATE) < ? " +
				"and c_bankstatement.AD_Org_ID = ? and c_bankstatement.DocStatus not in ('CO','CL','VO') and c_bankstatement.processed = 'N' and cb.BankAccountType = 'X' ", new Object[] { getC_BankStatement_ID(),getStatementDate(), getAD_Org_ID() });
		if(nox>0 && mba.getBankAccountType().equals("X"))
		{
			m_processMsg = Msg.getMsg(getCtx(), "CAISSE_NOT_CLOSE");
			return DocActionConstants.STATUS_Invalid;
		}

		//	Lines
		BigDecimal total = Env.ZERO;
		Timestamp minDate = getStatementDate();
		Timestamp maxDate = minDate;
		for (MBankStatementLine line : lines) {
			total = total.add(line.getStmtAmt());
			if (line.getDateAcct().before(minDate))
				minDate = line.getDateAcct();
			if (line.getDateAcct().after(maxDate))
				maxDate = line.getDateAcct();
		}
		setStatementDifference(total);
		setEndingBalance(getBeginningBalance().add(total));
		m_processMsg = MPeriod.isOpen(this, lines, minDate, MDocBaseType.DOCBASETYPE_BankStatement);
		if (m_processMsg == null)
			m_processMsg = MPeriod.isOpen(this, lines, maxDate, MDocBaseType.DOCBASETYPE_BankStatement);
		if (m_processMsg != null)
			return DocActionConstants.STATUS_Invalid;

		if (!DOCACTION_Complete.equals(getDocAction()))
			setDocAction(DOCACTION_Complete);
		return DocActionConstants.STATUS_InProgress;
	}	//	prepareIt

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

	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		
		//	Set Payment reconciled
		//#39013
		BigDecimal cashDiff = get_ValueAsBD("CashDiff"); 

		boolean createDiffLine= get_ValueAsBoolean("CreateDiffLine"); 
		//if(1==1)
		//	return DocActionConstants.STATUS_Invalid;
		if(cashDiff != null && createDiffLine && cashDiff.compareTo(BigDecimal.ZERO) != 0 ) 
		{
			MBankStatementLine line = new MBankStatementLine(this); 
			
			line.setDescription("Différence Caisse du " + new SimpleDateFormat("dd/MM/yyyy").format(new Date()));
			line.setDateAcct(getStatementDate());
			line.setValutaDate(getStatementDate()); 
			line.setDateAcct(getStatementDate()); 
			line.setStmtAmt(cashDiff.negate());    
			line.setTrxAmt(BigDecimal.ZERO);   
			line.setC_Currency_ID(getC_Currency_ID()); 
			
			String sql="select c_charge_id from c_charge where iscashdiff='Y' and isactive='Y' and ad_client_id=? and rownum=1"; 
			int c_charge_id = DB.getSQLValue(get_Trx(), sql, getAD_Client_ID()); 
			if(c_charge_id > 0)
				line.setC_Charge_ID(c_charge_id);    
			
			// reset diffcash 
			if(line.save()) {
				int no = DB.executeUpdate("update c_bankstatement set  cashdiff = 0 where c_bankstatement_id = " + get_ID(), get_Trx()); 
				log.info("XXX => " +no);
			}
		}
		//#39013
		
		MBankStatementLine[] lines = getLines(true); 
		for (MBankStatementLine line : lines)
		{
			if (line.getC_Payment_ID() != 0)
			{
				MPayment payment = new MPayment (getCtx(), line.getC_Payment_ID(), get_Trx());
				payment.setIsReconciled(true);
				payment.save(get_Trx());
			}
		}
		//	Update Bank Account
		MBankAccount ba = MBankAccount.get(getCtx(), getC_BankAccount_ID());
		ba.setCurrentBalance(getEndingBalance());
		ba.save(get_Trx());
		
		// Cloture de Caisse
		if ("X".equals(ba.getBankAccountType())) {
			
			PreparedStatement ps = null;
			ResultSet rs = null;
			MPayment p = null;
			
			//Reverse des paiements de type transfert liés à ce bankstatement
			String sql0 = "select * from c_payment where xx_bankstatment_id = ? and description not like '#ANN#%'";
			try {
				ps = DB.prepareStatement(sql0, get_Trx());
				ps.setInt(1, this.get_ID());
				rs = ps.executeQuery();
				while (rs.next()) {
					p = new MPayment(getCtx(),rs, get_Trx());
					p.setDescription("#ANN# " + p.getDescription() != null ? p.getDescription() : "");
					p.setDocAction(MPayment.DOCACTION_Reverse_Correct);
					p.save();
					p.reverseCorrectIt();
					if (!MPayment.DOCSTATUS_Reversed.equals(p.getDocStatus())) {
						m_processMsg = Msg.getMsg(getCtx(), "EC_ERRORPMTTFT");
						return DocActionConstants.STATUS_Invalid;
					}
				}		
			} catch (Exception e) {
				m_processMsg = Msg.getMsg(getCtx(), "EC_ERRORPMTTFT");
				return DocActionConstants.STATUS_Invalid;
			} finally {
				Util.closeCursor(ps, rs);
			}
			
			
			
			
			StringBuffer sql1 = new StringBuffer("select  z.zsubpaymentrule_id ,bkdto.c_bankaccount_id, bkdto.c_bankaccountdoc_id, max(bkdto.c_doctype_id) as c_doctype_id, ")
			.append(" max(NVL(z.c_charge_id,0)) as c_charge_id, MAX((select sum(bsl2.stmtAmt) from c_bankstatementline bsl2 where bsl2.C_BankStatement_ID=bsl.C_BankStatement_ID AND bsl2.PAY_SUBPAYMENTRULE_ID=z.zsubpaymentrule_id)) as payamt, ")
			.append(" max(p.ad_client_id) as ad_client_id, max(p.ad_org_id) as ad_org_id, max(bka.accountno || ' - ' || z.name ) as description, p.c_currency_id ")
			.append(" from c_bankstatementline bsl  ")
			.append(" inner join c_payment p on p.c_payment_id = bsl.c_payment_id ")
			.append(" inner join zsubpaymentrule z on z.zsubpaymentrule_id = p.zsubpaymentrule_id ")
			.append(" inner join c_bankaccount bka on bka.c_bankaccount_id = p.c_bankaccount_id ")
			.append(" inner join c_bankaccountdoc bkd on bkd.c_bankaccountdoc_id = p.c_bankaccountdoc_id  ")
			.append(" inner join c_bankaccount bkato on bkato.c_bankaccount_id = bkd.c_bankaccount_to_id ")
			.append(" inner join c_bankaccountdoc bkdto on bkdto.c_bankaccount_id = bkato.c_bankaccount_id and  bkdto.zsubpaymentrule_id = z.zsubpaymentrule_id  ")
			.append(" where bsl.c_bankstatement_id = ? and z.isclosingcash = 'Y'  and NVL(bkd.c_bankaccount_to_id,0) > 0 and bkd.xx_banktftdetail = 'N' ")
			.append(" group by z.zsubpaymentrule_id, bkdto.c_bankaccount_id,  bkdto.c_bankaccountdoc_id, p.c_currency_id ")
			.append(" union   all ")
			.append(" select  z.zsubpaymentrule_id ,bkdto.c_bankaccount_id, bkdto.c_bankaccountdoc_id, bkdto.c_doctype_id, NVL(z.c_charge_id,0) as c_charge_id, p.payamt , p.ad_client_id, p.ad_org_id,  ")
			.append(" bka.accountno || ' - ' || z.name || ' - ' || p.documentno || ' - ' || bp.name as description, p.c_currency_id ")
			.append(" from c_bankstatementline bsl  ")
			.append(" inner join c_payment p on p.c_payment_id = bsl.c_payment_id ")
			.append(" inner join zsubpaymentrule z on z.zsubpaymentrule_id = p.zsubpaymentrule_id ")
			.append(" inner join c_bankaccount bka on bka.c_bankaccount_id = p.c_bankaccount_id ")
			.append(" inner join c_bankaccountdoc bkd on bkd.c_bankaccountdoc_id = p.c_bankaccountdoc_id  ")
			.append(" inner join c_bankaccount bkato on bkato.c_bankaccount_id = bkd.c_bankaccount_to_id ")
			.append(" inner join c_bankaccountdoc bkdto on bkdto.c_bankaccount_id = bkato.c_bankaccount_id and  bkdto.zsubpaymentrule_id = z.zsubpaymentrule_id  ")
			.append(" inner join c_bpartner bp on bp.c_bpartner_id = p.c_bpartner_id ")
			.append(" where bsl.c_bankstatement_id = ? and z.isclosingcash = 'Y'  and NVL(bkd.c_bankaccount_to_id,0) > 0 and bkd.xx_banktftdetail = 'Y' ")
			.append(" order by zsubpaymentrule_id, c_bankaccount_id,  c_bankaccountdoc_id, c_currency_id ");

			try {
				
				int C_BPartner_ID = DB.getSQLValue(null, "SELECT C_BPartner_ID FROM C_BPartner WHERE IsBankTft='Y' AND AD_Client_ID = ?",getAD_Client_ID());
				if (C_BPartner_ID<=0) {
					m_processMsg = Msg.getMsg(getCtx(), "EC_BPARTNERBKTFT");
					return DocActionConstants.STATUS_Invalid;
				}
				
				ps = DB.prepareStatement(sql1.toString(), get_Trx());
				ps.setInt(1, this.get_ID());
				ps.setInt(2, this.get_ID());
				rs = ps.executeQuery();
				while (rs.next()) {
					p = new MPayment(getCtx(),0, get_Trx());
					p.setAD_Client_ID(rs.getInt(7));
					p.setAD_Org_ID(rs.getInt(8));
					p.setC_BPartner_ID(C_BPartner_ID);
					p.setC_BankAccount_ID(rs.getInt(2));
					p.set_Value("ZSubPaymentRule_ID", rs.getInt(1));
					p.set_Value("C_BankAccountDoc_ID", rs.getInt(3));
					p.setC_DocType_ID(rs.getInt(4));
					p.setDateTrx(this.getStatementDate());
					p.setDateAcct(this.getStatementDate());
					p.setDescription(rs.getString(9) );
					if(rs.getInt(5) > 0)
						p.setC_Charge_ID(rs.getInt(5));
					p.setPayAmt(rs.getBigDecimal(6));
					p.setDocStatus("DR");
					p.setDocAction("CO");
					p.set_Value("XX_BankStatment_ID", this.getC_BankStatement_ID());
					p.setC_Currency_ID(rs.getInt(10));
					p.save();
					p.setDocStatus(p.completeIt());
					if (!MPayment.DOCSTATUS_Completed.equals(p.getDocStatus())) {
						m_processMsg = Msg.getMsg(getCtx(), "EC_ERRORPMTTFT");
						return DocActionConstants.STATUS_Invalid;
					} else {
						p.setDocAction(MPayment.DOCACTION_Close);
						p.setProcessed(true);
						p.save();
					}
				}		
			} catch (Exception e) {
				m_processMsg = Msg.getMsg(getCtx(), "EC_ERRORPMTTFT");
				return DocActionConstants.STATUS_Invalid;
			} finally {
				Util.closeCursor(ps, rs);
			}			
		}
		
		

		return DocActionConstants.STATUS_Completed;
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	@return false
	 */
	public boolean voidIt()
	{
		log.info(toString());
		if (DOCSTATUS_Closed.equals(getDocStatus())
			|| DOCSTATUS_Reversed.equals(getDocStatus())
			|| DOCSTATUS_Voided.equals(getDocStatus()))
		{
			m_processMsg = "Document Closed: " + getDocStatus();
			setDocAction(DOCACTION_None);
			return false;
		}

		//	Not Processed
		if (DOCSTATUS_Drafted.equals(getDocStatus())
			|| DOCSTATUS_Invalid.equals(getDocStatus())
			|| DOCSTATUS_InProgress.equals(getDocStatus())
			|| DOCSTATUS_Approved.equals(getDocStatus())
			|| DOCSTATUS_NotApproved.equals(getDocStatus()) )
			;
		//	Std Period open?
		else
		{
			m_processMsg = DocumentEngine.isPeriodOpen(this);
			if (m_processMsg != null)
				return false;
			if (MFactAcct.delete(Table_ID, getC_BankStatement_ID(), get_Trx()) < 0)
				return false;	//	could not delete
		}

		//	Set lines to 0
		MBankStatementLine[] lines = getLines(true);
		for (MBankStatementLine line : lines) {
			//	BigDecimal old = line.getStmtAmt();
			if (line.getStmtAmt().compareTo(Env.ZERO) != 0)
			{
				String description = Msg.getMsg(getCtx(), "Voided") + " ("
					+ Msg.translate(getCtx(), "StmtAmt") + "=" + line.getStmtAmt();
				if (line.getTrxAmt().compareTo(Env.ZERO) != 0)
					description += ", " + Msg.translate(getCtx(), "TrxAmt") + "=" + line.getTrxAmt();
				if (line.getChargeAmt().compareTo(Env.ZERO) != 0)
					description += ", " + Msg.translate(getCtx(), "ChargeAmt") + "=" + line.getChargeAmt();
				if (line.getInterestAmt().compareTo(Env.ZERO) != 0)
					description += ", " + Msg.translate(getCtx(), "InterestAmt") + "=" + line.getInterestAmt();
				description += ")";
				line.addDescription(description);
				//
				line.setStmtAmt(Env.ZERO);
				line.setTrxAmt(Env.ZERO);
				line.setChargeAmt(Env.ZERO);
				line.setInterestAmt(Env.ZERO);
				line.save(get_Trx());
				//
				if (line.getC_Payment_ID() != 0)
				{
					MPayment payment = new MPayment (getCtx(), line.getC_Payment_ID(), get_Trx());
					payment.setIsReconciled(false);
					payment.save(get_Trx());
				}
			}
		}
		addDescription(Msg.getMsg(getCtx(), "Voided"));
		BigDecimal voidedDifference = getStatementDifference();
		setStatementDifference(Env.ZERO);

		if (isProcessed())
		{
			//	Update Bank Account only if document was Completed previously
			MBankAccount ba = MBankAccount.get(getCtx(), getC_BankAccount_ID());
			ba.setCurrentBalance( ba.getCurrentBalance().subtract( voidedDifference ) );
			ba.save(get_Trx());
		}

		setProcessed(true);
		setDocAction(DOCACTION_None);
		return true;
	}	//	voidIt

	/**
	 * 	Close Document.
	 * 	@return true if success
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());

		setDocAction(DOCACTION_None);
		return true;
	}	//	closeIt

	/**
	 * 	Reverse Correction
	 * 	@return false
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt

	/**
	 * 	Reverse Accrual
	 * 	@return false
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt

	/**
	 * 	Re-activate
	 * 	@return false
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());
		return false;
	}	//	reActivateIt


	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		StringBuffer sb = new StringBuffer();
		sb.append(getName());
		//	: Total Lines = 123.00 (#1)
		sb.append(": ")
			.append(Msg.translate(getCtx(),"StatementDifference")).append("=").append(getStatementDifference())
			.append(" (#").append(getLines(false).length).append(")");
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
		return getUpdatedBy();
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount.
	 * 	Statement Difference
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return getStatementDifference();
	}	//	getApprovalAmt

	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
	//	MPriceList pl = MPriceList.get(getCtx(), getM_PriceList_ID());
	//	return pl.getC_Currency_ID();
	//	return 0;
		if (getC_BankAccount_ID() > 0) {
			MBankAccount bkacc = new MBankAccount(getCtx(), getC_BankAccount_ID(), get_Trx());
			return bkacc.getC_Currency_ID();
		}
		else return 0; 
	}	//	getC_Currency_ID

	@Override
	public void setProcessMsg(String processMsg) {
		m_processMsg = processMsg;
	}

	@Override
	public String getDocBaseType() {
		return MDocBaseType.DOCBASETYPE_BankStatement;
	}

	@Override
	public Timestamp getDocumentDate() {
		return getStatementDate();
	}

	@Override
	public QueryParams getLineOrgsQueryInfo() {
		return new QueryParams("SELECT DISTINCT AD_Org_ID FROM C_BankStatementLine WHERE C_BankStatement_ID = ?",
				new Object[] { getC_BankStatement_ID() });
	}
	
	//Redmine 43450
	@UICallout public void setCashAmount (String oldCashAmount,
			String newCashAmount, int windowNo) throws Exception
	{
		if ((newCashAmount == null) || (newCashAmount.length() == 0))
			return;
		BigDecimal cashAmount = new BigDecimal(newCashAmount);
		
		BigDecimal cashDiff = getEndingBalance().subtract(cashAmount);
		
		set_ValueNoCheck("CashDiff",cashDiff);
		if (cashDiff!=null && cashDiff.compareTo(BigDecimal.ZERO)!=0)
			set_ValueNoCheck("CreateDiffLine", true);
	}	//	setCashAmount
	
 }	//	MBankStatement
