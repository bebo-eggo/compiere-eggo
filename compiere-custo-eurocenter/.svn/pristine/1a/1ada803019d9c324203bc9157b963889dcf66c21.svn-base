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
package org.compiere.acct;

import java.math.*;
import java.util.*;
import org.compiere.model.*;
import org.compiere.util.*;

/**
 *  Accounting Fact
 *
 *  @author 	Jorg Janke
 *  @version 	$Id: Fact.java 7514 2009-04-20 21:57:40Z freyes $
 */
public class Fact
{
	/**
	 *	Constructor
	 *  @param  document    pointer to document
	 *  @param  acctSchema  Account Schema to create accounts
	 *  @param  defaultPostingType  the default Posting type (actual,..) for this posting
	 */
	public Fact (Doc document, MAcctSchema acctSchema, String defaultPostingType)
	{
		m_doc = document;
		m_acctSchema = acctSchema;
		m_postingType = defaultPostingType;
		//
		log.config(toString());
	}	//	Fact


	/**	Log					*/
	private CLogger			log = CLogger.getCLogger(getClass());

	/** Document            */
	public Doc             m_doc = null;
	/** Accounting Schema   */
	private MAcctSchema	    m_acctSchema = null;
	/** Transaction			*/
	private Trx m_Trx;

	/** Posting Type        */
	private String		    m_postingType = null;

	/** Actual Balance Type */
	public static final String	POST_Actual = X_Fact_Acct.POSTINGTYPE_Actual;
	/** Budget Balance Type */
	public static final String	POST_Budget = X_Fact_Acct.POSTINGTYPE_Budget;;
	/** Encumbrance Posting */
	public static final String	POST_Commitment = X_Fact_Acct.POSTINGTYPE_Commitment;
	/** Encumbrance Posting */
	public static final String	POST_Reservation = X_Fact_Acct.POSTINGTYPE_Reservation;


	/** Is Converted        */
	private boolean		    m_converted = false;

	/** Lines               */
	private ArrayList<FactLine>	m_lines = new ArrayList<FactLine>();

	// SC740
	private int lineError = 0;

	/**
	 *  Dispose
	 */
	public void dispose()
	{
		m_lines.clear();
		m_lines = null;
	}   //  dispose

	/**
	 *	Create and convert Fact Line.
	 *  Used to create a DR and/or CR entry
	 *
	 *	@param  docLine     the document line or null
	 *  @param  account     if null, line is not created
	 *  @param  C_Currency_ID   the currency
	 *  @param  debitAmt    debit amount, can be null
	 *  @param  creditAmt  credit amount, can be null
	 *  @return Fact Line
	 */
	public FactLine createLine (DocLine docLine, MAccount account,
			int C_Currency_ID, BigDecimal debitAmt, BigDecimal creditAmt)
	{
		return createLine (docLine, account, C_Currency_ID, debitAmt, creditAmt, false);
	}
	
	/**
	 *	Create and convert Fact Line.
	 *  Used to create a DR and/or CR entry
	 *
	 *	@param  docLine     the document line or null
	 *  @param  account     if null, line is not created
	 *  @param  C_Currency_ID   the currency
	 *  @param  debitAmt    debit amount, can be null
	 *  @param  creditAmt  credit amount, can be null
	 *  @param  createZero boolean - if true, allow creation of zero line when no suspense balancing
	 *  @return Fact Line
	 */
	public FactLine createLine (DocLine docLine, MAccount account,
		int C_Currency_ID, BigDecimal debitAmt, BigDecimal creditAmt, boolean createZero)
	{
	//	log.fine("createLine - " + account	+ " - Dr=" + debitAmt + ", Cr=" + creditAmt);

		//  Data Check
		if (account == null)
		{
			log.info("No account for " + docLine 
				+ ": Amt=" + debitAmt + "/" + creditAmt 
				+ " - " + toString());			
			return null;
		}
		//
		FactLine line = new FactLine (m_doc.getCtx(), m_doc.get_Table_ID(), 
			m_doc.get_ID(),
			docLine == null ? 0 : docLine.get_ID(), m_Trx);
		//  Set Info & Account
		line.setDocumentInfo(m_doc, docLine);
		line.setPostingType(m_postingType);
		line.setAccount(m_acctSchema, account);

		// Amounts - if both debit and credit are zero we will skip line generation and return null 
		// with the following exception:
		//   If createZero = true, we will generate a zero line.
		if (!line.setAmtSource(C_Currency_ID, debitAmt, creditAmt) && 
				(!createZero))
		{
			if (docLine == null || docLine.getQty() == null || docLine.getQty().signum() == 0)
			{
				log.fine("Both amounts & qty = 0/Null - " + docLine		
					+ " - " + toString());			
				return null;
			}
			log.fine("Both amounts = 0/Null, Qty=" + docLine.getQty() + " - " + docLine		
				+ " - " + toString());			
		}
		//  Convert
		line.convert();
		//  Optionally overwrite Acct Amount
		if (docLine != null 
			&& (docLine.getAmtAcctDr() != null || docLine.getAmtAcctCr() != null))
			line.setAmtAcct(docLine.getAmtAcctDr(), docLine.getAmtAcctCr());
		//
		log.fine(line.toString());
		add(line);
		return line;
	}	//	createLine

	/**
	 *  Add Fact Line
	 *  @param line fact line
	 */
	void add (FactLine line)
	{
		m_lines.add(line);
	}   //  add

	/**
	 *	Create and convert Fact Line.
	 *  Used to create either a DR or CR entry
	 *
	 *	@param  docLine     Document Line or null
	 *  @param  accountDr   Account to be used if Amt is DR balance
	 *  @param  accountCr   Account to be used if Amt is CR balance
	 *  @param  C_Currency_ID Currency
	 *  @param  Amt if negative Cr else Dr
	 *  @return FactLine
	 */
	public FactLine createLine (DocLine docLine, MAccount accountDr, MAccount accountCr,
		int C_Currency_ID, BigDecimal Amt)
	{
		if (Amt.signum() < 0)
			return createLine (docLine, accountCr, C_Currency_ID, null, Amt.abs());
		else
			return createLine (docLine, accountDr, C_Currency_ID, Amt, null);
	}   //  createLine

	/**
	 *	Create and convert Fact Line.
	 *  Used to create either a DR or CR entry
	 *
	 *	@param  docLine Document line or null
	 *  @param  account   Account to be used
	 *  @param  C_Currency_ID Currency
	 *  @param  Amt if negative Cr else Dr
	 *  @return FactLine
	 */
	public FactLine createLine (DocLine docLine, MAccount account,
		int C_Currency_ID, BigDecimal Amt)
	{
		if (Amt.signum() < 0)
			return createLine (docLine, account, C_Currency_ID, null, Amt.abs());
		else
			return createLine (docLine, account, C_Currency_ID, Amt, null);
	}   //  createLine

	/**
	 *  Is Posting Type
	 *  @param  PostingType - see POST_*
	 *  @return true if document is posting type
	 */
	public boolean isPostingType (String PostingType)
	{
		return m_postingType.equals(PostingType);
	}   //  isPostingType

	/**
	 *	Is converted
	 *  @return true if converted
	 */
	public boolean isConverted()
	{
		return m_converted;
	}	//	isConverted

	/**
	 *	Get AcctSchema
	 *  @return AcctSchema
	 */
	public MAcctSchema getAcctSchema()
	{
		return m_acctSchema;
	}	//	getAcctSchema

	
	/**************************************************************************
	 *	Are the lines Source Balanced
	 *  @return true if source lines balanced
	 */
	public boolean isSourceBalanced()
	{
		//  No lines -> balanded
		if (m_lines.size() == 0)
			return true;
		BigDecimal balance = getSourceBalance();
		boolean retValue = balance.signum() == 0;
		if (retValue)
			log.finer(toString());
		else
			log.warning ("NO - Diff=" + balance + " - " + toString());
		return retValue;
	}	//	isSourceBalanced

	/**
	 *	Return Source Balance
	 *  @return source balance
	 */
	public BigDecimal getSourceBalance()
	{
		BigDecimal result = Env.ZERO;
		for (int i = 0; i < m_lines.size(); i++)
		{
			FactLine line = m_lines.get(i);
			result = result.add (line.getSourceBalance());
		}
	//	log.fine("getSourceBalance - " + result.toString());
		return result;
	}	//	getSourceBalance

	/**
	 *	Create Source Line for Suspense Balancing.
	 *  Only if Suspense Balancing is enabled and not a multi-currency document
	 *  (double check as otherwise the rule should not have fired)
	 *  If not balanced create balancing entry in currency of the document
	 *  @return FactLine
	 */
	public FactLine balanceSource()
	{
		if (!m_acctSchema.isSuspenseBalancing() || m_doc.isMultiCurrency())
			return null;
		BigDecimal diff = getSourceBalance();
		log.finer("Diff=" + diff);

		//  new line
		FactLine line = new FactLine (m_doc.getCtx(), m_doc.get_Table_ID(), 
			m_doc.get_ID(), 0, m_Trx);
		line.setDocumentInfo(m_doc, null);
		line.setPostingType(m_postingType);

		//  Amount
		if (diff.signum() < 0)   //  negative balance => DR
			line.setAmtSource(m_doc.getC_Currency_ID(), diff.abs(), Env.ZERO);
		else                                //  positive balance => CR
			line.setAmtSource(m_doc.getC_Currency_ID(), Env.ZERO, diff);
			
		//	Account
		line.setAccount(m_acctSchema, m_acctSchema.getSuspenseBalancing_Acct());

		//  Convert
		line.convert();
		//
		log.fine(line.toString());
		m_lines.add(line);
		return line;
	}   //  balancingSource

	
	/**************************************************************************
	 *  Are all segments balanced
	 *  @return true if segments are balanced
	 */
	public boolean isSegmentBalanced()
	{
		if (m_lines.size() == 0)
			return true;

		MAcctSchemaElement[] elements = m_acctSchema.getAcctSchemaElements();
		//  check all balancing segments
		for (int i = 0; i < elements.length; i++)
		{
			MAcctSchemaElement ase = elements[i];
			if (ase.isBalanced() && !isSegmentBalanced (ase.getElementType()))
				return false;
		}
		return true;
	}   //  isSegmentBalanced

	/**
	 *  Is Source Segment balanced.
	 *  @param  segmentType - see AcctSchemaElement.SEGMENT_*
	 *  Implemented only for Org
	 *  Other sensible candidates are Project, User1/2
	 *  @return true if segments are balanced
	 */
	public boolean isSegmentBalanced (String segmentType)
	{
		if (segmentType.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Organization))
		{
			HashMap<Integer,BigDecimal> map = new HashMap<Integer,BigDecimal>();
			//  Add up values by key
			for (int i = 0; i < m_lines.size(); i++)
			{
				FactLine line = m_lines.get(i);
				Integer key = new Integer(line.getAD_Org_ID());
				BigDecimal bal = line.getSourceBalance();
				BigDecimal oldBal = map.get(key);
				if (oldBal != null)
					bal = bal.add(oldBal);
				map.put(key, bal);
			//	System.out.println("Add Key=" + key + ", Bal=" + bal + " <- " + line);
			}
			//  check if all keys are zero
			Iterator<BigDecimal> values = map.values().iterator();
			while (values.hasNext())
			{
				BigDecimal bal = values.next();
				if (bal.signum() != 0)
				{
					map.clear();
					log.warning ("(" + segmentType + ") NO - " + toString() + ", Balance=" + bal);
					return false;
				}
			}
			map.clear();
			log.finer("(" + segmentType + ") - " + toString());
			return true;
		}
		log.finer("(" + segmentType + ") (not checked) - " + toString());
		return true;
	}   //  isSegmentBalanced

	/**
	 *  Balance all segments.
	 *  - For all balancing segments
	 *      - For all segment values
	 *          - If balance <> 0 create dueTo/dueFrom line
	 *              overwriting the segment value
	 */
	public void balanceSegments()
	{
		MAcctSchemaElement[] elements = m_acctSchema.getAcctSchemaElements();
		//  check all balancing segments
		for (int i = 0; i < elements.length; i++)
		{
			MAcctSchemaElement ase = elements[i];
			if (ase.isBalanced())
				balanceSegment (ase.getElementType());
		}
	}   //  balanceSegments

	/**
	 *  Balance Source Segment
	 *  @param elementType segment element type
	 */
	private void balanceSegment (String elementType)
	{
		//  no lines -> balanced
		if (m_lines.size() == 0)
			return;

		log.fine ("(" + elementType + ") - " + toString());

		//  Org
		if (elementType.equals(X_C_AcctSchema_Element.ELEMENTTYPE_Organization))
		{
			HashMap<Integer,Balance> map = new HashMap<Integer,Balance>();
			//  Add up values by key
			for (int i = 0; i < m_lines.size(); i++)
			{
				FactLine line = m_lines.get(i);
				Integer key = new Integer(line.getAD_Org_ID());
			//	BigDecimal balance = line.getSourceBalance();
				Balance oldBalance = map.get(key);
				if (oldBalance == null)
				{
					oldBalance = new Balance (line.getAmtSourceDr(), line.getAmtSourceCr());
					map.put(key, oldBalance);
				}
				else
					oldBalance.add(line.getAmtSourceDr(), line.getAmtSourceCr());
			//	log.info ("Key=" + key + ", Balance=" + balance + " - " + line);
			}

			//  Create entry for non-zero element
			Iterator<Integer> keys = map.keySet().iterator();
			while (keys.hasNext())
			{
				Integer key = keys.next();
				Balance difference = map.get(key);
				log.info (elementType + "=" + key + ", " + difference);
				//
				if (!difference.isZeroBalance())
				{
					//  Create Balancing Entry
					FactLine line = new FactLine (m_doc.getCtx(), m_doc.get_Table_ID(), 
						m_doc.get_ID(), 0, m_Trx);
					line.setDocumentInfo(m_doc, null);
					line.setPostingType(m_postingType);
					//Evolution #37233  COMPTA: Migration custo SC403 écritures de liaison pour équilibrage des organisations
					MAccount intercompanyAcct = MAccount.get(Env.getCtx(), (Integer)MOrg.get(Env.getCtx(), key.intValue()).get_Value("AD_Intercompany_Acct"));
					//Evolution #37233
					//  Amount & Account
					if (difference.getBalance().signum() < 0)
					{
						if (difference.isReversal())
						{
							line.setAmtSource(m_doc.getC_Currency_ID(), Env.ZERO, difference.getPostBalance());
							//Evolution #37233  COMPTA: Migration custo SC403 écritures de liaison pour équilibrage des organisations
							//line.setAccount(m_acctSchema, m_acctSchema.getDueTo_Acct(elementType));
							line.setAccount(m_acctSchema, intercompanyAcct);
						}
						else
						{
							line.setAmtSource(m_doc.getC_Currency_ID(), difference.getPostBalance(), Env.ZERO);
							//Evolution #37233  COMPTA: Migration custo SC403 écritures de liaison pour équilibrage des organisations
							//line.setAccount(m_acctSchema, m_acctSchema.getDueFrom_Acct(elementType));
							line.setAccount(m_acctSchema, intercompanyAcct);
						}
					}
					else
					{
						if (difference.isReversal())
						{
							line.setAmtSource(m_doc.getC_Currency_ID(), difference.getPostBalance(), Env.ZERO);
							//Evolution #37233  COMPTA: Migration custo SC403 écritures de liaison pour équilibrage des organisations
							//line.setAccount(m_acctSchema, m_acctSchema.getDueFrom_Acct(elementType));
							line.setAccount(m_acctSchema, intercompanyAcct);
						}
						else
						{
							line.setAmtSource(m_doc.getC_Currency_ID(), Env.ZERO, difference.getPostBalance());
							//Evolution #37233  COMPTA: Migration custo SC403 écritures de liaison pour équilibrage des organisations
							//line.setAccount(m_acctSchema, m_acctSchema.getDueTo_Acct(elementType));
							line.setAccount(m_acctSchema, intercompanyAcct);
						}
					}
					line.convert();
					line.setAD_Org_ID(key.intValue());
					//
					m_lines.add(line);
					log.fine("(" + elementType + ") - " + line);
				}
			}
			map.clear();
		}
	}   //  balanceSegment

	
	/**************************************************************************
	 *	Are the lines Accounting Balanced
	 *  @return true if accounting lines are balanced
	 */
	public boolean isAcctBalanced()
	{
		//  no lines -> balanced
		if (m_lines.size() == 0)
			return true;
		BigDecimal balance = getAcctBalance();
		boolean retValue = balance.signum() == 0;
		if (retValue)
			log.finer(toString());
		else
			log.warning("NO - Diff=" + balance + " - " + toString());
		return retValue;
	}	//	isAcctBalanced

	/**
	 *	Return Accounting Balance
	 *  @return true if accounting lines are balanced
	 */
	protected BigDecimal getAcctBalance()
	{
		BigDecimal result = Env.ZERO;
		for (int i = 0; i < m_lines.size(); i++)
		{
			FactLine line = m_lines.get(i);
			result = result.add(line.getAcctBalance());
		}
	//	log.fine(result.toString());
		return result;
	}	//	getAcctBalance

	/**
	 *  Balance Accounting Currency.
	 *  If the accounting currency is not balanced,
	 *      if Currency balancing is enabled
	 *          create a new line using the currency balancing account with zero source balance
	 *      or
	 *          adjust the line with the largest balance sheet account
	 *          or if no balance sheet account exist, the line with the largest amount
	 *  @return FactLine
	 */
	public FactLine balanceAccounting()
	{
		BigDecimal diff = getAcctBalance();		//	DR-CR
		log.fine("Balance=" + diff 
			+ ", CurrBal=" + m_acctSchema.isCurrencyBalancing() 
			+ " - " + toString());
		FactLine line = null;

		BigDecimal BSamount = Env.ZERO;
		FactLine BSline = null;
		BigDecimal PLamount = Env.ZERO;
		FactLine PLline = null;

		//  Find line biggest BalanceSheet or P&L line
		for (int i = 0; i < m_lines.size(); i++)
		{
			FactLine l = m_lines.get(i);
			BigDecimal amt = l.getAcctBalance().abs();
			if (l.isBalanceSheet() && amt.compareTo(BSamount) > 0)
			{
				BSamount = amt;
				BSline = l;
			}
			else if (!l.isBalanceSheet() && amt.compareTo(PLamount) > 0)
			{
				PLamount = amt;
				PLline = l;
			}
		}
		
		//  Create Currency Balancing Entry
		if (m_acctSchema.isCurrencyBalancing())
		{
			line = new FactLine (m_doc.getCtx(), m_doc.get_Table_ID(), 
				m_doc.get_ID(), 0, m_Trx);
			line.setDocumentInfo (m_doc, null);
			line.setPostingType (m_postingType);
			line.setAccount (m_acctSchema, m_acctSchema.getCurrencyBalancing_Acct());
			
			//  Amount
			line.setAmtSource(m_doc.getC_Currency_ID(), Env.ZERO, Env.ZERO);
			line.convert();
			//	Accounted
			BigDecimal drAmt = Env.ZERO;
			BigDecimal crAmt = Env.ZERO;
			boolean isDR = diff.signum() < 0;
			BigDecimal difference = diff.abs();
			if (isDR)
				drAmt = difference;
			else
				crAmt = difference;
			//	Switch sides
			boolean switchIt = BSline != null 
				&& ((BSline.isDrSourceBalance() && isDR)
					|| (!BSline.isDrSourceBalance() && !isDR));
			if (switchIt)
			{
				drAmt = Env.ZERO;
				crAmt = Env.ZERO;
				if (isDR)
					crAmt = difference.negate();
				else
					drAmt = difference.negate();
			}
			line.setAmtAcct(drAmt, crAmt);
			log.fine(line.toString());
			m_lines.add(line);
		}
		else	//  Adjust biggest (Balance Sheet) line amount
		{
			if (BSline != null)
				line = BSline;
			else
				line = PLline;
			if (line == null)
				log.severe ("No Line found");
			else
			{
				log.fine("Adjusting Amt=" + diff + "; Line=" + line);
				line.currencyCorrect(diff);
				log.fine(line.toString());
			}
		}   //  correct biggest amount

		return line;
	}   //  balanceAccounting

	/**
	 * 	Check Accounts of Fact Lines
	 *	@return true if success
	 */
	public boolean checkAccounts()
	{
		//  no lines -> nothing to distribute
		if (m_lines.size() == 0)
			return true;
		
		//	For all fact lines
		for (int i = 0; i < m_lines.size(); i++)
		{
			FactLine line = m_lines.get(i);
			MAccount account = line.getAccount();
			if (account == null)
			{
				log.warning("No Account for " + line);
				lineError = line.getDocLine().get_ID();//SC740
				return false;
			}
			MElementValue ev = account.getAccount();
			if (ev == null)
			{
				log.warning("No Element Value for " + account 
					+ ": " + line);
				lineError = line.getDocLine().get_ID();//SC740
				return false;
			}
			if (ev.isSummary())
			{
				log.warning("Cannot post to Summary Account " + ev 
					+ ": " + line);
				lineError = line.getDocLine().get_ID();//SC740
				return false;
			}
			if (!ev.isActive())
			{
				log.warning("Cannot post to Inactive Account " + ev 
					+ ": " + line);
				lineError = line.getDocLine().get_ID();//SC740
				return false;
			}

		}	//	for all lines
		
		return true;
	}	//	checkAccounts
	
	/**
	 * 	GL Distribution of Fact Lines
	 *	@return true if success
	 */
	public boolean distribute()
	{
		//  no lines -> nothing to distribute
		if (m_lines.size() == 0)
			return true;
		ArrayList<FactLine>	copyOfm_lines = new ArrayList<FactLine>();//SC21483
		ArrayList<FactLine> newLines = new ArrayList<FactLine>();
		//	For all fact lines
		for (int i = 0; i < m_lines.size(); i++)
		{
			FactLine dLine = m_lines.get(i);
			//ZCOM814 START Warning the object compte must be a clone else you break the posting
			//MAccount compte=dLine.getAccount();
			MAccount compte= MAccount.get(Env.getCtx(), dLine.getAccount().getC_ValidCombination_ID());
			//compte.setAccount_ID(dLine.getAccount().getAccount_ID());		
			//ZCOM898 récupérer les éléments de la combinaison s'ils ne sont pas défini au niveau du document (dLine)
			if (dLine.getM_Product_ID() == 0)
				compte.setM_Product_ID(dLine.getAccount().getM_Product_ID());
			else
				compte.setM_Product_ID(dLine.getM_Product_ID());
			
			if (dLine.getUser1_ID() == 0)
				compte.setUser1_ID(dLine.getAccount().getUser1_ID());
			else
				compte.setUser1_ID(dLine.getUser1_ID());
			
			if (dLine.getUser2_ID() == 0)	
				compte.setUser2_ID(dLine.getAccount().getUser2_ID());
			else
				compte.setUser2_ID(dLine.getUser2_ID());
			
			if (dLine.getAD_OrgTrx_ID() == 0)
			    compte.setAD_OrgTrx_ID(dLine.getAccount().getAD_OrgTrx_ID());
			else
				compte.setAD_OrgTrx_ID(dLine.getAD_OrgTrx_ID());
			
			if (dLine.getC_BPartner_ID() == 0)
				compte.setC_BPartner_ID(dLine.getAccount().getC_BPartner_ID());
			else
				compte.setC_BPartner_ID(dLine.getC_BPartner_ID());
			
			if (dLine.getC_Campaign_ID() == 0)
				compte.setC_Campaign_ID(dLine.getAccount().getC_Campaign_ID());
			else
				compte.setC_Campaign_ID(dLine.getC_Campaign_ID());
			
			if (dLine.getC_SalesRegion_ID() == 0)
				compte.setC_SalesRegion_ID(dLine.getAccount().getC_SalesRegion_ID());
			else
				compte.setC_SalesRegion_ID(dLine.getC_SalesRegion_ID());
			
			if (dLine.getC_Project_ID() == 0)
				compte.setC_Project_ID(dLine.getAccount().getC_Project_ID());
			else
				compte.setC_Project_ID(dLine.getC_Project_ID());
			
			MDistribution[] distributions = MDistribution.get (compte,m_postingType, m_doc.getC_DocType_ID());
			
			if (distributions!= null)
				log.info("la distribution donne: "+distributions);
			//ZCOM814 END
//ZCOM814 	MDistribution[] distributions = MDistribution.get (dLine.getAccount(), 
//ZCOM814		m_postingType, m_doc.getC_DocType_ID());
			//	No Distribution for this line
			if (distributions == null || distributions.length == 0)
				continue;
			//	Just the first
			if (distributions.length > 1)
				log.warning("More then one Distributiion for " + dLine.getAccount());
			MDistribution distribution = distributions[0]; 
			//	Add Reversal
			FactLine reversal = dLine.reverse("REV - " + distribution.getName());
			log.info("Reversal=" + reversal);
//ZCOM849 	newLines.add(reversal);		//	saved in postCommit
			//	Prepare
			distribution.distribute(dLine.getAccount(), dLine.getSourceBalance(), dLine.getC_Currency_ID());
			MDistributionLine[] lines = distribution.getLines(false);
			boolean OverwriteAcct = distribution.getAccount_ID() != 0 ? true:false;  //ZCOM849
			int AccountDL_ID = lines[0].getAccount_ID(); //ZCOM849
			for (int j = 0; j < lines.length; j++)
			{
				MDistributionLine dl = lines[j];
				if (!dl.isActive() || dl.getAmt().signum() == 0)
					continue;
				
				//ZCOM849 START
				if (distribution.getAccount_ID() != 0 && !dl.isOverwriteAcct())
					OverwriteAcct = false;
				if (dl.getAccount_ID() != AccountDL_ID)				  
					OverwriteAcct = false;
				//ZCOM849 END
				
				FactLine factLine = new FactLine (m_doc.getCtx(), m_doc.get_Table_ID(),
// #12508 - #12388					m_doc.get_ID(), 0, m_trxName);
					m_doc.get_ID(), dLine.getLine_ID() , m_Trx);  // #12508 - #12388

				//  Set Info & Account
				factLine.setDocumentInfo(m_doc, dLine.getDocLine());
				factLine.setAccount(m_acctSchema, dl.getAccount());
				factLine.setPostingType(m_postingType);
				factLine.setQty(dLine.getQty()); //ZCOM991
				//ZCOM814 START
				if (dl.getM_Product_ID() > 0)
					factLine.setM_Product_ID(dl.getM_Product_ID());
				if (dl.getUser1_ID() > 0)
					factLine.setUser1_ID(dl.getUser1_ID()); 
				if (dl.getUser2_ID() > 0)
					factLine.setUser2_ID(dl.getUser2_ID());
				if (dl.getC_BPartner_ID() > 0)
					factLine.setC_BPartner_ID(dl.getC_BPartner_ID()); 
				if (dl.getC_Campaign_ID() > 0)
				factLine.setC_Campaign_ID(dl.getC_Campaign_ID());
				if (dl.getC_Project_ID() > 0)
					factLine.setC_Project_ID(dl.getC_Project_ID());
				if (dl.getC_SalesRegion_ID() > 0)
					factLine.setC_SalesRegion_ID(dl.getC_SalesRegion_ID());
				
				//ZCOM814 END
				if (dl.isOverwriteOrg())	//	set Org explicitly
					factLine.setAD_Org_ID(dl.getOrg_ID());
				//

				//SC1199 START
				if (dl.getAmt().signum() < 0)
					factLine.setAmtSource(dLine.getC_Currency_ID(), null, dl.getAmt().abs());  //SC707
				else
					factLine.setAmtSource(dLine.getC_Currency_ID(), dl.getAmt(), null);

				//SC1199 END
				
				//  Convert
				factLine.convert();
				//
				String description = distribution.getName() + " #" + dl.getLine();
				if (dl.getDescription() != null)
					description += " - " + dl.getDescription();
				factLine.addDescription(description);
				//
				log.info(factLine.toString());
				newLines.add(factLine);
			}
			
			//Redmine16223  start récuperer la perte sur la distribution
			if (newLines.size() > 0)
			{
				BigDecimal diffAcct=Env.ZERO,diffSrc=Env.ZERO,acctAmt=Env.ZERO,srcAmt=Env.ZERO,srcBalance=Env.ZERO,acctBalance=Env.ZERO;
				acctAmt=getTotAcctAmt(newLines);
				srcAmt=getTotSrcAmt(newLines);
				acctBalance=dLine.getAcctBalance();
				srcBalance=dLine.getSourceBalance();
				diffAcct=((acctBalance.abs()).subtract(acctAmt.abs())).abs();
				diffSrc=((srcBalance.abs()).subtract(srcAmt.abs())).abs();
				balanceAcctAmtAfterDistribution(newLines,acctAmt,acctBalance,diffAcct,srcAmt,srcBalance,diffSrc);
			}
			//Redmine16223  end

			//ZCOM849
			String msg = Msg.getMsg(Env.getCtx(),"OverwriteAcctUsingNewAcct");
			if (msg == null || msg.equals("")) msg = "N";
			if (OverwriteAcct && msg.equals("Y"))
				reversal.setAccount_ID(AccountDL_ID);
			
			//SC985
			reversal.set_Value("Z_IsAllocated", true);
			
			newLines.add(reversal);
			for (int k = 0; k < newLines.size(); k++) //SC21483	
				copyOfm_lines.add(newLines.get(k));
			newLines.clear();
			//ZCOM849
			
		}	//	for all lines
		
		//	Add Lines
		for (int i = 0; i < copyOfm_lines.size(); i++)
			m_lines.add(copyOfm_lines.get(i));
		
		return true;
	}	//	distribute
	
	//SC 1199
	private void setFactLineAmt(FactLine fl, int currency, BigDecimal dr, BigDecimal cr) {
		fl.setAmtSource(currency, dr, cr);		
	}
	/**
	 * Balance  Amounts after distribution 
	 * 
	 * @param newLines
	 * @param  BigDecimal acctAmt
	 * @param  BigDecimal acctBalance
	 * @param  BigDecimal diffAcct
	
	 * @param  BigDecimal srcAmt
	 * @param  BigDecimal srcBalance
	 * @param  BigDecimal diffsrc 
	 */
	public void balanceAcctAmtAfterDistribution(ArrayList<FactLine> newLines,
			BigDecimal acctAmt,BigDecimal acctBalance, BigDecimal diffAcct,
			BigDecimal srcAmt,BigDecimal srcBalance, BigDecimal diffSrc)
	{
		/* 
		  a:Montant sur l'ecriture comptable
          b:Montant total des lignes de ditribution
        */
		if (acctBalance.signum() == acctAmt.signum()) // a et b sont  du meme signe                                    
		{
			BigDecimal newAmtAcct = Env.ZERO;  BigDecimal newAmtSrc = Env.ZERO;
			if (acctBalance.compareTo(acctAmt) >= 0) { // a>b
				if (newLines.get(newLines.size() - 1).getAmtAcctDr().signum() != 0) {
					newAmtAcct = newLines.get(newLines.size() - 1).getAmtAcctDr().add(diffAcct);
					newLines.get(newLines.size() - 1).setAmtAcctDr(newAmtAcct);
	
					newAmtSrc = newLines.get(newLines.size() - 1).getAmtSourceDr().add(diffSrc);
					newLines.get(newLines.size() - 1).setAmtSourceDr(newAmtSrc);
				} else {
					newAmtAcct = newLines.get(newLines.size() - 1).getAmtAcctCr().add(diffAcct);
					newLines.get(newLines.size() - 1).setAmtAcctCr(newAmtAcct);
					
					newAmtSrc = newLines.get(newLines.size() - 1).getAmtSourceCr().add(diffSrc);
					newLines.get(newLines.size() - 1).setAmtSourceCr(newAmtSrc);
	
				}
			} else { // a<b
				if (newLines.get(newLines.size() - 1).getAmtAcctDr().signum() != 0) {
					newAmtAcct = newLines.get(newLines.size() - 1).getAmtAcctDr().subtract(diffAcct);
					newLines.get(newLines.size() - 1).setAmtAcctDr(newAmtAcct);
					
					newAmtSrc = newLines.get(newLines.size() - 1).getAmtSourceDr().subtract(diffSrc);
					newLines.get(newLines.size() - 1).setAmtSourceDr(newAmtSrc);
				
				} else {
					newAmtAcct = newLines.get(newLines.size() - 1).getAmtAcctCr().subtract(diffAcct);
					newLines.get(newLines.size() - 1).setAmtAcctCr(newAmtAcct);

					newAmtSrc = newLines.get(newLines.size() - 1).getAmtSourceCr().subtract(diffSrc);
					newLines.get(newLines.size() - 1).setAmtSourceCr(newAmtSrc);
				}
			}
		} else { // a et b sont de signe different
			BigDecimal newAmtAcctTo = Env.ZERO, newAmtSrcTo = Env.ZERO;
			
			if (acctBalance.compareTo(acctAmt) >= 0) // a>b
			{
				if (acctBalance.abs().compareTo(acctAmt.abs()) >= 0) {
					if (newLines.get(newLines.size() - 1).getAmtAcctDr().signum() != 0) {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctDr().subtract(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctDr(newAmtAcctTo);

						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceDr().subtract(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceDr(newAmtSrcTo);
						
					} else {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctCr().subtract(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctCr(newAmtAcctTo);

						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceCr().subtract(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceCr(newAmtSrcTo);

					}
				} else // abs a < abs b
				{
					if (newLines.get(newLines.size() - 1).getAmtAcctDr().signum() != 0) {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctDr().add(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctDr(newAmtAcctTo);
						
						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceDr().add(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceDr(newAmtSrcTo);
					} else {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctCr().add(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctCr(newAmtAcctTo);

						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceCr().add(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceCr(newAmtSrcTo);
					}

				}

			} else // a<b
			{
				if (acctBalance.abs().compareTo(acctAmt.abs()) >= 0) {
					if (newLines.get(newLines.size() - 1).getAmtAcctDr().signum() != 0) {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctDr().add(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctDr(newAmtAcctTo);
						
						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceDr().add(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceDr(newAmtSrcTo);
						
					} else {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctCr().add(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctCr(newAmtAcctTo);

						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceCr().add(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceCr(newAmtSrcTo);
						
					}
				} else // abs a < abs b
				{
					if (newLines.get(newLines.size() - 1).getAmtAcctDr().signum() != 0) {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctDr().subtract(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctDr(newAmtAcctTo);
						
						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceDr().subtract(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceDr(newAmtSrcTo);
						
					} else {
						newAmtAcctTo = newLines.get(newLines.size() - 1).getAmtAcctCr().subtract(diffAcct);
						newLines.get(newLines.size() - 1).setAmtAcctCr(newAmtAcctTo);
						
						newAmtSrcTo = newLines.get(newLines.size() - 1).getAmtSourceCr().subtract(diffSrc);
						newLines.get(newLines.size() - 1).setAmtSourceCr(newAmtSrcTo);
					}

				}

			}
		}
	}
	
	/**
	 * Get The Total Accounting Amt
	 * 
	 * @param newLines
	 * @return  BigDecimal Total
	 */
	public BigDecimal getTotAcctAmt(ArrayList<FactLine> newLines) {
		BigDecimal totDistAmt = Env.ZERO;
		for (int j = 0; j < newLines.size(); j++) {
			if (newLines.get(j).getAmtAcctCr().signum() != 0)
				totDistAmt = totDistAmt.add(newLines.get(j).getAmtAcctCr());
			else
				totDistAmt = totDistAmt.add(newLines.get(j).getAmtAcctDr());
		}
		return totDistAmt;
	}
	
	/**
	 * Get The Total Source Amt
	 * 
	 * @param newLines
	 * @return  BigDecimal Total
	 */
	public BigDecimal getTotSrcAmt(ArrayList<FactLine> newLines) {
		BigDecimal totDistAmt = Env.ZERO;
		for (int j = 0; j < newLines.size(); j++) {
			if (newLines.get(j).getAmtSourceCr().signum() != 0)
				totDistAmt = totDistAmt.add(newLines.get(j).getAmtSourceCr());
			else
				totDistAmt = totDistAmt.add(newLines.get(j).getAmtSourceDr());
		}
		return totDistAmt;
	}

	/**************************************************************************
	 * String representation
	 * @return String
	 */
	@Override
	public String toString()
	{
		StringBuffer sb = new StringBuffer("Fact[");
		sb.append(m_doc.toString());
		sb.append(",").append(m_acctSchema.toString());
		sb.append(",PostType=").append(m_postingType);
		sb.append("]");
		return sb.toString();
	}	//	toString

	/**
	 *	Get Lines
	 *  @return FactLine Array
	 */
	public FactLine[] getLines()
	{
		FactLine[] temp = new FactLine[m_lines.size()];
		m_lines.toArray(temp);
		return temp;
	}	//	getLines

	/**
	 *  Save Fact
	 *  @param trxName transaction
	 *  @return true if all lines were saved
	 */
	public boolean save (Trx trx)
	{
		//  save Lines
		for (int i = 0; i < m_lines.size(); i++)
		{
			FactLine fl = m_lines.get(i);
		//	log.fine("save - " + fl);
			if (!fl.save(trx))  //  abort on first error
			{
				// SC740
				if (fl.getLine_ID() != 0)
					lineError = fl.getLine_ID();
				return false;
		}
		}
		return true;
	}   //  commit

	// SC740
	public int getLineError()
	{
		return this.lineError;
	}
	/**
	 * 	Get Transaction
	 *	@return trx
	 */
	public Trx get_Trx() 
	{
		return m_Trx;
	}	//	getTrxName
	/**
	 * @deprecated
	 * 	Get Transaction
	 *	@return trx
	 */
	public Trx get_TrxName() 
	{
		return m_Trx;
	}	//	getTrxName

	/**
	 * 	Fact Balance Utility
	 *	
	 *  @author Jorg Janke
	 *  @version $Id: Fact.java 7514 2009-04-20 21:57:40Z freyes $
	 */
	public class Balance
	{
		/**
		 * 	New Balance
		 *	@param dr DR
		 *	@param cr CR
		 */
		public Balance (BigDecimal dr, BigDecimal cr)
		{
			DR = dr;
			CR = cr;
		}
		
		/** DR Amount	*/
		public BigDecimal DR = Env.ZERO;
		/** CR Amount	*/
		public BigDecimal CR = Env.ZERO;
		
		/**
		 * 	Add 
		 *	@param dr DR
		 *	@param cr CR
		 */
		public void add (BigDecimal dr, BigDecimal cr)
		{
			DR = DR.add(dr);
			CR = CR.add(cr);
		}
		
		/**
		 * 	Get Balance
		 *	@return balance
		 */
		public BigDecimal getBalance()
		{
			return DR.subtract(CR);
		}	//	getBalance
		
		/**
		 * 	Get Post Balance
		 *	@return absolute balance - negative if reversal
		 */
		public BigDecimal getPostBalance()
		{
			BigDecimal bd = getBalance().abs();
			if (isReversal())
				return bd.negate();
			return bd;
		}	//	getPostBalance

		/**
		 * 	Zero Balance
		 *	@return true if 0
		 */
		public boolean isZeroBalance()
		{
			return getBalance().signum() == 0;
		}	//	isZeroBalance
		
		/**
		 * 	Reversal
		 *	@return true if both DR/CR are negative or zero
		 */
		public boolean isReversal()
		{
			return DR.signum() <= 0 && CR.signum() <= 0;
		}	//	isReversal
		
		/**
		 * 	String Representation
		 *	@return info
		 */
		@Override
		public String toString ()
		{
			StringBuffer sb = new StringBuffer ("Balance[");
			sb.append ("DR=").append(DR)
				.append ("-CR=").append(CR)
				.append(" = ").append(getBalance())
				.append ("]");
			return sb.toString ();
		} //	toString
		
	}	//	Balance
	
}   //  Fact
