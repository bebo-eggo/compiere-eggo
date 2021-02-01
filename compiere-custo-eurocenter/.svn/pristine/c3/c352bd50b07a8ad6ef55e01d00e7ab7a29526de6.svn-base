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
package org.compiere.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.Compiere;
import org.compiere.common.CompiereStateException;
import org.compiere.framework.PO;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPInstance;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MProduct;
import org.compiere.model.MUser;
import org.compiere.model.X_C_Invoice;
import org.compiere.model.X_C_Order;
import org.compiere.model.X_I_Invoice;
import org.compiere.process.ImportInvoice2.XX_Matching;
import org.compiere.util.CLogMgt;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Language;
import org.compiere.util.Login;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.InvoiceUtil;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.proxy.MDoctypeInfoProxy;

/**
 *	Import Invoice from I_Invoice
 *
 * 	@author 	Jorg Janke
 * 	@version 	$Id: ImportInvoice.java,v 1.2 2006/07/30 00:51:01 jjanke Exp $
 */
public class ImportInvoice2 extends SvrProcess
{
	/**	Client to be imported to		*/
	private int				m_AD_Client_ID = 0;
	/**	Organization to be imported to		*/
	private int				m_AD_Org_ID = 0;
	/**	Delete old Imported				*/
	private boolean			m_deleteOldImported = false;
	/**	Document Action					*/
	private String			m_docAction = X_C_Invoice.DOCACTION_Prepare;


	/** Effective						*/
	private Timestamp		m_DateValue = null;

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? " ;	

	private static final boolean TESTMODE = false;
	/** Commit every 100 entities	*/
	private static final int	COMMITCOUNT = TESTMODE?100:Integer.parseInt(Ini.getProperty(Ini.P_IMPORT_BATCH_SIZE));
	
	private static String ss = "Select Value from AD_REF_LIST where AD_REFERENCE_ID = 1002467";
	ArrayList<String> listTaxesProduct = new ArrayList<String>();
	
	private static String ssx = "Select C_BPartner_ID, ValidateInvoice from C_BPartner where IsVendor = 'Y' and IsActive='Y' and Z_GLN is not null";
	private HashMap<Integer, String> BPartner_ValidateInvoice = new HashMap<Integer, String>() ;
	
	private int countErrorMntTot = 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) 
		{
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal)element.getParameter()).intValue();
			else if (name.equals("AD_Org_ID"))
				m_AD_Org_ID = ((BigDecimal)element.getParameter()).intValue();
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(element.getParameter());
			else if (name.equals("DocAction"))
				m_docAction = (String)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		if (m_DateValue == null)
			m_DateValue = new Timestamp (System.currentTimeMillis());
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try
		{
			stmt = DB.prepareStatement(ss.toString(), null);
			rs = stmt.executeQuery();
			while (rs.next())
			{
				listTaxesProduct.add(rs.getString(1));
			}
		}catch (Exception e)
		{
			log.log(Level.SEVERE, ss.toString(), e);
		}finally 
		{
			Util.closeCursor(stmt, rs);
		}
		
		stmt = null;
		rs = null;
		try
		{
			stmt = DB.prepareStatement(ssx.toString(), null);
			rs = stmt.executeQuery();
			while (rs.next())
			{
				BPartner_ValidateInvoice.put(rs.getInt(1),rs.getString(2));
			}
		}catch (Exception e)
		{
			log.log(Level.SEVERE, ssx.toString(), e);
		}finally 
		{
			Util.closeCursor(stmt, rs);
		}
		
	}	//	prepare


	/**
	 *  Perrform process.
	 *  @return clear Message
	 *  @throws Exception
	 */
	@Override
	protected String doIt() throws java.lang.Exception
	{
		String sql = null;
		int no = 0;

		//	****	Prepare	****

		//	Delete Old Imported
		if (m_deleteOldImported)
		{
			sql = "DELETE FROM I_Invoice "
					+ "WHERE I_IsImported='Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
			log.fine("Delete Old Impored =" + no);
		}

		//	Set Client, Org, IsActive, Created/Updated
		sql = "UPDATE I_Invoice "
				+ "SET AD_Client_ID = COALESCE (AD_Client_ID,?),"
				+ " AD_Org_ID = COALESCE (AD_Org_ID,?),"
				+ " IsActive = COALESCE (IsActive, 'Y'),"
				+ " Created = COALESCE (Created, SysDate),"
				+ " CreatedBy = COALESCE (CreatedBy, 0),"
				+ " Updated = COALESCE (Updated, SysDate),"
				+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
				+ " I_ErrorMsg = NULL,"
				+ " I_IsImported = 'N' "
				+ "WHERE (I_IsImported<>'Y' OR I_IsImported IS NULL) "+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID, m_AD_Org_ID,m_AD_Client_ID}, get_Trx());
		log.info ("Reset=" + no);

		//Initialise C_OrderPO_ID et C_OrderLinePO_ID
		sql = "UPDATE I_Invoice "
				+ "SET C_OrderPO_ID = NULL, "
				+ "C_OrderLinePO_ID = NULL "
				+ "WHERE I_IsImported <> 'Y' AND IsForceToInvoice= 'N' ";
		no = DB.executeUpdate(sql.toString(), get_Trx());
		log.info ("Reset=" + no);
		
		String ts = DB.isPostgreSQL()?"COALESCE(I_ErrorMsg,'')":"I_ErrorMsg";  //java bug, it could not be used directly
		Language language = Language.getLoginLanguage();		//	Base Language
		String AD_Language = language.getAD_Language();

		/*
		sql = "UPDATE I_Invoice o "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Org, '"
				+ "WHERE (AD_Org_ID IS NULL OR AD_Org_ID=0"
				+ " OR EXISTS (SELECT * FROM AD_Org oo WHERE o.AD_Org_ID=oo.AD_Org_ID AND (oo.IsSummary='Y' OR oo.IsActive='N')))"
				+ " AND I_IsImported<>'Y' " 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Org=" + no);

		//	Document Type - PO - SO
		sql = "UPDATE I_Invoice o "
				+ "SET C_DocType_ID=(SELECT C_DocType_ID FROM C_DocType d WHERE d.Name=o.DocTypeName"
				+ " AND d.DocBaseType IN ('API','APC') AND o.AD_Client_ID=d.AD_Client_ID) "
				+ "WHERE C_DocType_ID IS NULL AND IsSOTrx='N' AND DocTypeName IS NOT NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine("Set PO DocType=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET C_DocType_ID=(SELECT C_DocType_ID FROM C_DocType d WHERE d.Name=o.DocTypeName"
				+ " AND d.DocBaseType IN ('ARI','ARC') AND o.AD_Client_ID=d.AD_Client_ID) "
				+ "WHERE C_DocType_ID IS NULL AND IsSOTrx='Y' AND DocTypeName IS NOT NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine("Set SO DocType=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET C_DocType_ID=(SELECT C_DocType_ID FROM C_DocType d WHERE d.Name=o.DocTypeName"
				+ " AND d.DocBaseType IN ('API','ARI','APC','ARC') AND o.AD_Client_ID=d.AD_Client_ID) "
				+ "WHERE C_DocType_ID IS NULL AND DocTypeName IS NOT NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine("Set DocType=" + no);
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid DocTypeName, ' "
				+ "WHERE C_DocType_ID IS NULL AND DocTypeName IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid DocTypeName=" + no);
		//	DocType Default
		sql = "UPDATE I_Invoice o "
				+ "SET C_DocType_ID=(SELECT MAX(C_DocType_ID) FROM C_DocType d WHERE d.IsDefault='Y'"
				+ " AND d.DocBaseType='API' AND o.AD_Client_ID=d.AD_Client_ID) "
				+ "WHERE C_DocType_ID IS NULL AND IsSOTrx='N' AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine("Set PO Default DocType=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET C_DocType_ID=(SELECT MAX(C_DocType_ID) FROM C_DocType d WHERE d.IsDefault='Y'"
				+ " AND d.DocBaseType='ARI' AND o.AD_Client_ID=d.AD_Client_ID) "
				+ "WHERE C_DocType_ID IS NULL AND IsSOTrx='Y' AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine("Set SO Default DocType=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET C_DocType_ID=(SELECT MAX(C_DocType_ID) FROM C_DocType d WHERE d.IsDefault='Y'"
				+ " AND d.DocBaseType IN('ARI','API') AND o.AD_Client_ID=d.AD_Client_ID) "
				+ "WHERE C_DocType_ID IS NULL AND IsSOTrx IS NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine("Set Default DocType=" + no);
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No DocType, ' "
				+ "WHERE C_DocType_ID IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No DocType=" + no);

		//	Set IsSOTrx
		sql = "UPDATE I_Invoice o SET IsSOTrx='Y' "
				+ "WHERE EXISTS (SELECT * FROM C_DocType d WHERE o.C_DocType_ID=d.C_DocType_ID AND d.DocBaseType='ARI' AND o.AD_Client_ID=d.AD_Client_ID)"
				+ " AND C_DocType_ID IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set IsSOTrx=Y=" + no);
		sql = "UPDATE I_Invoice o SET IsSOTrx='N' "
				+ "WHERE EXISTS (SELECT * FROM C_DocType d WHERE o.C_DocType_ID=d.C_DocType_ID AND d.DocBaseType='API' AND o.AD_Client_ID=d.AD_Client_ID)"
				+ " AND C_DocType_ID IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set IsSOTrx=N=" + no);

		//	Price List
		sql = "UPDATE I_Invoice o "
				+ "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p WHERE p.IsDefault='Y'"
				+ " AND p.C_Currency_ID=o.C_Currency_ID AND p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_PriceList_ID IS NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Default Currency PriceList=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p WHERE p.IsDefault='Y'"
				+ " AND p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_PriceList_ID IS NULL AND C_Currency_ID IS NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Default PriceList=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p "
				+ " WHERE p.C_Currency_ID=o.C_Currency_ID AND p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_PriceList_ID IS NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Currency PriceList=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p "
				+ " WHERE p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_PriceList_ID IS NULL AND C_Currency_ID IS NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set PriceList=" + no);
		//
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No PriceList, ' "
				+ "WHERE M_PriceList_ID IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning("No PriceList=" + no);

		//	Payment Rule
		//  We support Payment Rule being input in the login language 
		sql = "UPDATE I_Invoice O " + 
				"SET PaymentRule= " +
				"(SELECT R.Value "+
				"  FROM AD_Ref_List R " + 
				"  left outer join AD_Ref_List_Trl RT " + 
				"  on RT.AD_Ref_List_ID = R.AD_Ref_List_ID and RT.AD_Language = ? " +
				"  WHERE R.AD_Reference_ID = 195 and coalesce( RT.Name, R.Name ) = O.PaymentRuleName ) " +
				"WHERE PaymentRule is null AND PaymentRuleName IS NOT NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{ AD_Language, m_AD_Client_ID }, false, get_Trx());
		log.fine("Set PaymentRule=" + no);
		// do not set a default; if null, the import logic will derive from the business partner
		// do not error in absence of a default

		//	Payment Term
		sql = "UPDATE I_Invoice o "
				+ "SET C_PaymentTerm_ID=(SELECT C_PaymentTerm_ID FROM C_PaymentTerm p"
				+ " WHERE o.PaymentTermValue=p.Value AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE C_PaymentTerm_ID IS NULL AND PaymentTermValue IS NOT NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set PaymentTerm=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET C_PaymentTerm_ID=(SELECT MAX(C_PaymentTerm_ID) FROM C_PaymentTerm p"
				+ " WHERE p.IsDefault='Y' AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE C_PaymentTerm_ID IS NULL AND o.PaymentTermValue IS NULL AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Default PaymentTerm=" + no);
		//
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No PaymentTerm, ' "
				+ "WHERE C_PaymentTerm_ID IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No PaymentTerm=" + no);

		//	BP from EMail
		sql = "UPDATE I_Invoice o "
				+ "SET (C_BPartner_ID,AD_User_ID)=(SELECT C_BPartner_ID,AD_User_ID FROM AD_User u"
				+ " WHERE o.EMail=u.EMail AND o.AD_Client_ID=u.AD_Client_ID AND u.C_BPartner_ID IS NOT NULL) "
				+ "WHERE C_BPartner_ID IS NULL AND EMail IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set BP from EMail=" + no);
		//	BP from ContactName
		sql = "UPDATE I_Invoice o "
				+ "SET (C_BPartner_ID,AD_User_ID)=(SELECT C_BPartner_ID,AD_User_ID FROM AD_User u"
				+ " WHERE o.ContactName=u.Name AND o.AD_Client_ID=u.AD_Client_ID AND u.C_BPartner_ID IS NOT NULL) "
				+ "WHERE C_BPartner_ID IS NULL AND ContactName IS NOT NULL"
				+ " AND EXISTS (SELECT Name FROM AD_User u WHERE o.ContactName=u.Name AND o.AD_Client_ID=u.AD_Client_ID AND u.C_BPartner_ID IS NOT NULL GROUP BY Name HAVING COUNT(*)=1)"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set BP from ContactName=" + no);
		//	BP from Value
		sql = "UPDATE I_Invoice o "
				+ "SET C_BPartner_ID=(SELECT MAX(C_BPartner_ID) FROM C_BPartner bp"
				+ " WHERE o.BPartnerValue=bp.Value AND o.AD_Client_ID=bp.AD_Client_ID) "
				+ "WHERE C_BPartner_ID IS NULL AND BPartnerValue IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set BP from Value=" + no);
		//	Default BP
		sql = "UPDATE I_Invoice o "
				+ "SET C_BPartner_ID=(SELECT C_BPartnerCashTrx_ID FROM AD_ClientInfo c"
				+ " WHERE o.AD_Client_ID=c.AD_Client_ID) "
				+ "WHERE C_BPartner_ID IS NULL AND BPartnerValue IS NULL AND Name IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Default BP=" + no);

		//	Existing Location ? Exact Match
		sql = "UPDATE I_Invoice o "
				+ "SET C_BPartner_Location_ID=(SELECT C_BPartner_Location_ID"
				+ " FROM C_BPartner_Location bpl INNER JOIN C_Location l ON (bpl.C_Location_ID=l.C_Location_ID)"
				+ " WHERE o.C_BPartner_ID=bpl.C_BPartner_ID AND bpl.AD_Client_ID=o.AD_Client_ID"
				+ " AND DUMP(o.Address1)=DUMP(l.Address1) AND DUMP(o.Address2)=DUMP(l.Address2)"
				+ " AND DUMP(o.City)=DUMP(l.City) AND DUMP(o.Postal)=DUMP(l.Postal)"
				+ " AND DUMP(o.C_Region_ID)=DUMP(l.C_Region_ID) AND DUMP(o.C_Country_ID)=DUMP(l.C_Country_ID)) "
				+ "WHERE C_BPartner_ID IS NOT NULL AND C_BPartner_Location_ID IS NULL"
				+ " AND I_IsImported='N'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Found Location=" + no);
		//	Set Location from BPartner
		sql = "UPDATE I_Invoice o "
				+ "SET C_BPartner_Location_ID=(SELECT MAX(C_BPartner_Location_ID) FROM C_BPartner_Location l"
				+ " WHERE l.C_BPartner_ID=o.C_BPartner_ID AND o.AD_Client_ID=l.AD_Client_ID"
				+ " AND ((l.IsBillTo='Y' AND o.IsSOTrx='Y') OR o.IsSOTrx='N')"
				+ ") "
				+ "WHERE C_BPartner_ID IS NOT NULL AND C_BPartner_Location_ID IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set BP Location from BP=" + no);
		//
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No BP Location, ' "
				+ "WHERE C_BPartner_ID IS NOT NULL AND C_BPartner_Location_ID IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No BP Location=" + no);

		// Check for Duplicate Document Number/BP/Doc Type Combinations
		sql = "UPDATE I_Invoice i "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Duplicate Document No, ' "
				+ "WHERE EXISTS (SELECT 1 FROM C_Invoice inv WHERE inv.C_BPartner_ID=i.C_BPartner_ID "
				+ " AND inv.C_DocTypeTarget_ID = i.C_DocType_ID"
				+ " AND inv.DocumentNo = i.DocumentNo)"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Duplicate Document Number=" + no);

		//	Set Country
		/**
		sql = "UPDATE I_Invoice o "
			  + "SET CountryCode=(SELECT CountryCode FROM C_Country c WHERE c.IsDefault='Y'"
			  + " AND c.AD_Client_ID IN (0, o.AD_Client_ID) AND ROWNUM=1) "
			  + "WHERE C_BPartner_ID IS NULL AND CountryCode IS NULL AND C_Country_ID IS NULL"
			  + " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Country Default=" + no);
		 **/
		/*
		sql = "UPDATE I_Invoice o "
				+ "SET C_Country_ID=(SELECT C_Country_ID FROM C_Country c"
				+ " WHERE o.CountryCode=c.CountryCode AND c.IsSummary='N' AND c.AD_Client_ID IN (0, o.AD_Client_ID)) "
				+ "WHERE C_BPartner_ID IS NULL AND C_Country_ID IS NULL AND CountryCode IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Country=" + no);
		//
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Country, ' "
				+ "WHERE C_BPartner_ID IS NULL AND C_Country_ID IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Country=" + no);

		//	Set Region
		sql = "UPDATE I_Invoice o "
				+ "Set RegionName=(SELECT MAX(Name) FROM C_Region r"
				+ " WHERE r.IsDefault='Y' AND r.C_Country_ID=o.C_Country_ID"
				+ " AND r.AD_Client_ID IN (0, o.AD_Client_ID)) "
				+ "WHERE C_BPartner_ID IS NULL AND C_Region_ID IS NULL AND RegionName IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Region Default=" + no);
		//
		sql = "UPDATE I_Invoice o "
				+ "Set C_Region_ID=(SELECT C_Region_ID FROM C_Region r"
				+ " WHERE r.Name=o.RegionName AND r.C_Country_ID=o.C_Country_ID"
				+ " AND r.AD_Client_ID IN (0, o.AD_Client_ID)) "
				+ "WHERE C_BPartner_ID IS NULL AND C_Region_ID IS NULL AND RegionName IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Region=" + no);
		//
		sql = "UPDATE I_Invoice o "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Region, ' "
				+ "WHERE C_BPartner_ID IS NULL AND C_Region_ID IS NULL "
				+ " AND EXISTS (SELECT * FROM C_Country c"
				+ " WHERE c.C_Country_ID=o.C_Country_ID AND c.HasRegion='Y')"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Region=" + no);

		//	Product
		sql = "UPDATE I_Invoice o "
				+ "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
				+ " WHERE o.ProductValue=p.Value AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Product_ID IS NULL AND ProductValue IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Product from Value=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
				+ " WHERE o.UPC=p.UPC AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Product_ID IS NULL AND UPC IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Product from UPC=" + no);
		sql = "UPDATE I_Invoice o "
				+ "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
				+ " WHERE o.SKU=p.SKU AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Product_ID IS NULL AND SKU IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Product fom SKU=" + no);
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Product, ' "
				+ "WHERE M_Product_ID IS NULL AND (ProductValue IS NOT NULL OR UPC IS NOT NULL OR SKU IS NOT NULL)"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Product=" + no);

		// Charge
		sql = "UPDATE I_Invoice i "
				+ "SET C_Charge_ID=(SELECT MAX(C_Charge_ID) FROM C_Charge c"
				+ " WHERE i.ChargeName=c.Name AND i.AD_Client_ID=c.AD_Client_ID) "
				+ "WHERE C_Charge_ID IS NULL AND ChargeName IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Charge from Name=" + no);

		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Charge, ' "
				+ "WHERE C_Charge_ID IS NULL AND (ChargeName IS NOT NULL)"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Charge=" + no);

		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Both Charge and Product are specified, ' "
				+ "WHERE C_Charge_ID IS NOT NULL AND M_Product_ID IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Charge and Product are specified=" + no);

		//	Tax
		sql = "UPDATE I_Invoice o "
				+ "SET C_Tax_ID=(SELECT MAX(C_Tax_ID) FROM C_Tax t"
				+ " WHERE o.TaxIndicator=t.TaxIndicator AND o.AD_Client_ID=t.AD_Client_ID) "
				+ "WHERE C_Tax_ID IS NULL AND TaxIndicator IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set Tax=" + no);
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Tax, ' "
				+ "WHERE C_Tax_ID IS NULL AND TaxIndicator IS NOT NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Tax=" + no);

		commit();

		//	-- New BPartner ---------------------------------------------------
		sql =  "UPDATE I_Invoice "
				+ "SET BPartnerValue = COALESCE(EMail,Name) " 
				+ "WHERE C_BPartner_ID IS NULL "
				+ "AND BPartnerValue IS NULL "
				+ "AND (Email IS NOT NULL OR Name IS NOT NULL)"
				+ "AND I_IsImported='N'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine ("Update BPartnerValue from Email/Name=" + no);

		sql =  "UPDATE I_Invoice "
				+ "SET Name = COALESCE(ContactName,BPartnerValue) " 
				+ "WHERE C_BPartner_ID IS NULL "
				+ "AND Name IS NULL "
				+ "AND (ContactName IS NOT NULL OR BPartnerValue IS NOT NULL) "
				+ "AND I_IsImported='N'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.fine ("Update Name from ContactName/BPartnerValue=" + no);

		//	BP from Value
		sql =  "UPDATE I_Invoice o "
				+ "SET C_BPartner_ID=(SELECT MAX(C_BPartner_ID) FROM C_BPartner bp"
				+ " WHERE o.BPartnerValue=bp.Value AND o.AD_Client_ID=bp.AD_Client_ID) "
				+ "WHERE C_BPartner_ID IS NULL AND BPartnerValue IS NOT NULL"
				+ " AND I_IsImported='N'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set BP from updated Value=" + no);

		 */

		//	NOBILIA
	
		sql = "UPDATE I_Invoice i "
				+ "SET AD_Org_ID = (SELECT o.AD_Org_ID  FROM AD_OrgInfo o where o.IsOrgAdmin='Y' and o.ad_client_id = i.ad_client_id) "
				+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL";
		no = DB.executeUpdate(sql.toString(), get_Trx());
		log.info ("Reset=" + no);
		
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Magasin entete inconnu, ' "
				+ "WHERE (AD_Org_ID IS NULL OR AD_Org_ID = 0) "
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No AD_Org_ID=" + no);

		sql =  "UPDATE I_Invoice o "
				+ "SET C_BPartner_ID=(SELECT MAX(C_BPartner_ID) FROM C_BPartner bp "
				+ "WHERE bp.Z_GLN = o.ZZ_VatNumber AND o.AD_Client_ID=bp.AD_Client_ID and bp.isVendor = 'Y') "//85220 
				+ "WHERE ZZ_VatNumber IS NOT NULL "
				+ "AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set BP from updated Value=" + no);

		sql =  "UPDATE I_Invoice o "
				+ "SET (C_BPartner_Location_ID, C_Location_ID)=(SELECT C_BPartner_Location_ID,C_Location_ID "
				+ "FROM C_BPartner_Location bpl WHERE bpl.C_BPartner_ID = o.C_BPartner_ID AND o.AD_Client_ID=bpl.AD_Client_ID " 
				+ "AND exists (select 1 from C_BPartner where C_BPartner.C_BPartner_ID = bpl.C_BPartner_ID and bpl.C_BPartner_Location_ID = C_BPartner.Z_DEFAULT_ADR_ID) ) "
				+ "WHERE C_BPartner_ID IS NOT NULL AND I_IsImported<>'Y' and C_BPartner_Location_ID is null " 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set BP from updated Value=" + no);

		
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Fournisseur inconnu, ' "
				+ "WHERE C_BPartner_ID IS NULL "
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No C_BPartner_ID=" + no);
		
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Adresse Fournisseur inconnue, ' "
				+ "WHERE C_BPartner_Location_ID IS NULL "
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No C_BPartner_Location_ID=" + no);

		sql =  "UPDATE I_Invoice o "
				+ "SET C_DocType_ID = (SELECT dt.C_DocType_ID FROM C_DocType dt "
				+ "inner join C_DocTypeInfo dti on dti.c_DocType_ID = dt.C_DocType_ID  "
				+ "WHERE o.DocTypeName = dti.Z_InvTypeImport and o.AD_Client_Id = dt.AD_Client_Id) "
				+ "WHERE I_IsImported <>'Y' and C_DocType_ID is null "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set C_DocType_ID from BP=" + no);

		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Type de document inconnu, ' "
				+ "WHERE C_DocType_ID IS NULL "
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No C_DocType_ID=" + no);

		sql =  "UPDATE I_Invoice o "
				+ "SET SalesRep_ID = (SELECT max(AD_User_ID) FROM AD_User u " 
				+ "Where IsVendorNobilia = 'Y' AND o.AD_Client_ID=u.AD_Client_ID) "
				+ "WHERE I_IsImported <>'Y' AND SalesRep_ID is null"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set SalesRep_ID from BP=" + no);

		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Représentant inconnu, ' "
				+ "WHERE SalesRep_ID IS NULL "
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No SalesRep_ID=" + no);

		sql =  "UPDATE I_Invoice o "
				+ "SET M_PriceList_ID = (SELECT PO_PriceList_ID FROM C_BPartner bp " 
				+ "Where bp.C_BPartner_ID=o.C_BPartner_ID) "
				+ "WHERE o.C_BPartner_ID IS NOT NULL AND I_IsImported <>'Y' "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set M_PriceList_ID from BP=" + no);

		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Liste de prix manquante, ' "
				+ "WHERE M_PriceList_ID IS NULL "
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No M_PriceList_ID=" + no);

		sql = "UPDATE I_Invoice O " 
				+ "SET PaymentRule= 'T' " 
				+ "WHERE I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{ m_AD_Client_ID }, false, get_Trx());
		log.fine("Set PaymentRule=" + no);

		//Suivant parametrage tiers fournisseurs : 1=admin, 2=Buyer, 3=Seller, 4=Shipto
		sql = "UPDATE I_Invoice o "
				+ "SET ZZ_OrgLine_ID= (case (select Z_OrgLine from C_BPartner where C_BPartner.C_BPartner_ID = o.C_BPartner_ID) "
				+ "when '1' then (SELECT o.AD_Org_ID  FROM AD_OrgInfo oi where oi.IsOrgAdmin='Y' and oi.ad_client_id = o.ad_client_id)"
				+ "when '2' then (SELECT oi.AD_Org_ID FROM AD_Org oi WHERE oi.Z_GLN= o.ZZ_BuyerGnl AND o.AD_Client_ID=oi.AD_Client_ID )"
				+ "when '3' then (SELECT oi.AD_Org_ID FROM AD_Org oi WHERE oi.Z_GLN= o.ZZ_SellerGnl AND o.AD_Client_ID=oi.AD_Client_ID )"
				+ "when '4' then (SELECT oi.AD_Org_ID FROM AD_Org oi WHERE oi.Z_GLN= o.ZZ_ShipToGnl AND o.AD_Client_ID=oi.AD_Client_ID )"
				+ "ELSE null END)"
				+ "WHERE ZZ_OrgLine_ID is null AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{ m_AD_Client_ID }, false, get_Trx());
		log.fine("Set ZZ_OrgLine_ID=" + no);

		
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Magasin ligne inconnu, ' "
				+ "WHERE ZZ_OrgLine_ID IS NULL "
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No ZZ_OrgLine_ID=" + no);
		
		//PaymentTermValue 
		sql = "UPDATE I_Invoice o "
				+ "SET C_PaymentTerm_ID=(SELECT max(C_PaymentTerm_ID) FROM C_PaymentTerm pt "
				+ "WHERE pt.VALUE=o.ZZ_NobiliaCreditTerm AND o.AD_Client_ID=pt.AD_Client_ID) "
				+ "WHERE C_PaymentTerm_ID IS NULL "
				+ "AND I_IsImported <>'Y' " 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set C_PaymentTerm_ID =" + no);
		
		sql = "UPDATE I_Invoice o "
				+ "SET C_PaymentTerm_ID=(SELECT max(pt.PO_PAYMENTTERM_ID) FROM C_BPartner pt "
				+ "WHERE o.ZZ_NobiliaCreditTerm is null AND o.AD_Client_ID=pt.AD_Client_ID and pt.C_BPARTNER_ID = o.C_BPARTNER_ID) "
				+ "WHERE C_PaymentTerm_ID IS NULL  "
				+ "AND I_IsImported <>'Y' " + STD_CLIENT_CHECK;
		
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		log.fine("Set C_PaymentTerm_ID =" + no);
		
		//PaymentTermValue 
				sql = "UPDATE I_Invoice o "
						+ "SET C_PaymentTerm_ID=(SELECT max(PO_PaymentTerm_ID) FROM C_BPartner pt "
						+ "WHERE pt.C_BPartner_ID=o.C_BPartner_ID AND o.AD_Client_ID=pt.AD_Client_ID) "
						+ "WHERE C_PaymentTerm_ID IS NULL "
						+ "AND I_IsImported <>'Y' " 
						+ STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
				log.fine("Set C_PaymentTerm_ID =" + no);
		
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Délai de paiement inconnu, ' "
				+ "WHERE C_PaymentTerm_ID IS NULL "
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid PaymentTerm=" + no);

		//94100
		//Check percent
		/*
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Pourcentage non cohérent XML <> paremetrage, ' "
				+ "WHERE C_PaymentTerm_ID IS NOT NULL AND I_Invoice.ZZ_PCTDISCOUNT is not null "
				+ "AND exists (Select 1 FROM C_PaymentTerm cpt where cpt.C_PaymentTerm_ID = I_Invoice.C_PaymentTerm_ID and (cpt.DISCOUNT*100) <> I_Invoice.ZZ_PCTDISCOUNT)"
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Pourcentage=" + no);
		*/
		//	Product
		sql = "UPDATE I_Invoice o "
				+ "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product_PO p"
				+ " WHERE o.ProductValue=p.VENDORPRODUCTNO AND o.AD_Client_ID=p.AD_Client_ID and p.C_BPartner_ID = o.C_BPartner_ID) "
				+ "WHERE M_Product_ID IS NULL AND ProductValue IS NOT NULL"
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		sql = "UPDATE I_Invoice o "
				+ "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
				+ " WHERE o.ProductValue=p.Value AND o.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Product_ID IS NULL AND ProductValue IS NOT NULL"
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		
		log.fine("Set Product from Value=" + no);
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Article inconnu, ' "
				+ "WHERE M_Product_ID IS NULL AND (ProductValue IS NOT NULL)"
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Product=" + no);
		
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Article inconnu, ' "
				+ "WHERE M_Product_ID IS NULL "
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Product=" + no);

		////Evolution #86715 Ordre ACHAT
		sql = "UPDATE I_Invoice o "
				+ " SET C_OrderPO_ID=(SELECT MAX(C_Order_ID) FROM C_Order ord"
				+ " WHERE ord.DocumentNo = o.ZZ_PODocNo AND o.AD_Client_ID=ord.AD_Client_ID and ord.C_BPartner_ID = o.C_BPartner_ID) "
				+ " WHERE  IsForceToInvoice = 'N' AND ZZ_PODocNo IS NOT NULL AND C_OrderPO_ID IS NULL"
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());	
		log.fine("Set Product from Value=" + no);
		//OA non trouvée
		sql = "UPDATE I_Invoice "
				+ "SET  I_ErrorMsg="+ts +"||'ERR=OA non trouvée, ' "
				+ "WHERE C_OrderPO_ID IS NULL AND ZZ_PODocNo IS NOT NULL"
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		//OA présente sur une facture non traitée
		log.fine("Set Product from Value=" + no);
		sql = "UPDATE I_Invoice "
				+ "SET  I_ErrorMsg="+ts +"||'ERR=OA présente sur une facture non traitée, ' "
				+ "WHERE C_OrderPO_ID IS NOT NULL AND EXISTS (SELECT i.DOCUMENTNO FROM  c_invoice i "
				+ "WHERE i.DOCSTATUS in ('DR','IP') and i.C_ORDER_ID = C_OrderPO_ID ) "
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Product=" + no);
		
		//Verif code
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			sql = "Select * from I_Invoice where I_IsImported <>'Y' and Z_ProductTax is not null "+STD_CLIENT_CHECK;
			pstmt = DB.prepareStatement (sql.toString(), get_Trx());
			pstmt.setInt(1, m_AD_Client_ID);
			rs = pstmt.executeQuery ();

			while (rs.next ())
			{
				X_I_Invoice imp = new X_I_Invoice (getCtx(), rs, get_Trx());
				int id = 0;
				if(imp.get_Value("Z_ProductTax")!=null ){
					List<String> items = Arrays.asList(imp.get_ValueAsString("Z_ProductTax").split(";"));
					for(String str : items) 
					{
						//Vérifier que le code est dans les taxes
						List<String> str1 = Arrays.asList(str.split(","));
						if(!listTaxesProduct.contains(str1.get(0).toString()) && id!=imp.getI_Invoice_ID())
						{
							imp.setI_ErrorMsg(imp.getI_ErrorMsg()+"ERR=Code taxe article inconnu,");
							imp.setI_IsImported("E");
							imp.save();
							id = imp.getI_Invoice_ID();
						}
					}
			}
			}
		}
		catch (SQLException e) {
			log.log(Level.SEVERE, "BP - " + sql.toString(), e);
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		
		String msg = Msg.getMsg(getCtx(), "EC_DUPLICAT_POREFERENCE");
		sql = "UPDATE I_Invoice i "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR="+msg+", ' "
				+ "WHERE (I_IsImported<>'Y' OR I_IsImported IS NULL) and exists (select 1 from C_Invoice WHERE C_Invoice.ISSOTRX='N' " 
				+ "AND C_Invoice.POReference = i.POReference AND C_Invoice.POReference IS NOT NULL "
        		+ "AND C_Invoice.C_BPartner_ID = i.C_BPartner_ID and C_Invoice.AD_CLIENT_ID = i.AD_CLIENT_ID) "
        		+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] {m_AD_Client_ID}, get_Trx());
		if (no > 0)
			log.warning("EC_DUPLICAT_POREFERENCE=" + no);
		
		sql = "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Erreur sur lignes factures avec meme No Fournisseur, ' "
				+ "WHERE exists (select 1 from I_Invoice i where i.I_Invoice_ID <> I_Invoice.I_Invoice_ID and I_Invoice.POREFERENCE = i.POREFERENCE and i.AD_Client_ID = I_Invoice.AD_Client_ID and i.I_IsImported='E')"
				+ " AND I_IsImported <>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID}, get_Trx());
		commit();
		
		Map <String, MBPartner> bpartnerMap = new HashMap <String, MBPartner>();		
		Map <String, List<MLocation>> bpLocationMap= new HashMap <String, List<MLocation>>();
		Map <String, List<MUser>> bpUserMap= new HashMap <String, List<MUser>>();

		//Evolution #86715 
		sql =   "SELECT I_Invoice_ID, C_OrderPO_ID, 0, M_Product_ID, QtyOrdered "
				+ "FROM i_invoice "
				+ "WHERE I_Invoice.C_OrderPO_ID IS NOT NULL AND I_Invoice.M_Product_ID IS NOT NULL AND I_IsImported = 'N'";
		PreparedStatement pstmt_matching = null;
		ResultSet rs_matching = null;

		pstmt_matching = DB.prepareStatement (sql.toString(), get_Trx());
		rs_matching = pstmt_matching.executeQuery ();
		List<XX_Matching> liste1 = populate(rs_matching);

		sql =  "SELECT i_invoice_id, o.C_Order_ID, o.C_OrderLine_ID, o.M_Product_ID, o.QtyOrdered "
				+ "FROM i_invoice i INNER JOIN C_OrderLine o ON (o.C_Order_ID = i.C_OrderPO_ID AND o.M_Product_ID  = i.M_Product_ID) "
				+ "WHERE i.C_OrderPO_ID IS NOT NULL AND i.M_Product_ID IS NOT NULL AND I_IsImported = 'N' ";
		pstmt_matching = null;
		rs_matching = null;

		pstmt_matching = DB.prepareStatement (sql.toString(), get_Trx());
		rs_matching = pstmt_matching.executeQuery ();
		List<XX_Matching> liste2 = populate(rs_matching);
		
		if( !liste1.isEmpty() && !liste2.isEmpty())
			match_OrderLine(liste1, liste2);
		
		//	Go through remaining invoice Records w/o C_BPartner_ID
		sql =  	"SELECT * FROM I_Invoice "
				+ "WHERE I_IsImported='N' "
				+ "AND C_BPartner_ID IS NULL "
				+ "AND BPartnerValue IS NOT NULL" 
				+ STD_CLIENT_CHECK
				+ " ORDER by BPartnerValue ";
		pstmt = null;
		rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_Trx());
			pstmt.setInt(1, m_AD_Client_ID);
			rs = pstmt.executeQuery ();

			while (rs.next ())
			{
				X_I_Invoice imp = new X_I_Invoice (getCtx(), rs, get_Trx());

				MBPartner bp = bpartnerMap.get(imp.getBPartnerValue());

				if(bp == null) {
					if(bpartnerMap.size() >= COMMITCOUNT) {
						saveBPartners(bpartnerMap, bpLocationMap, bpUserMap);
						bpartnerMap.clear();
						bpLocationMap.clear();
						bpUserMap.clear();
					}

					bp = new MBPartner (getCtx(), -1, get_Trx());
					bp.setClientOrg (imp.getAD_Client_ID (), imp.getAD_Org_ID ());
					bp.setValue (imp.getBPartnerValue());
					bp.setName (imp.getName());
					bpartnerMap.put(imp.getBPartnerValue(), bp);
				}

				List<MLocation> bpLocations = bpLocationMap.get(imp.getBPartnerValue());
				if(bpLocations == null) {
					bpLocations = new ArrayList <MLocation>();
					bpLocationMap.put(imp.getBPartnerValue(), bpLocations);
				}

				MLocation location = null;
				for(MLocation loc : bpLocations) {
					if(loc.equals(imp.getC_Country_ID(), imp.getC_Region_ID(), 
							imp.getPostal(), "", imp.getCity(), 
							imp.getAddress1(), imp.getAddress2())) {
						location = loc;
						break;
					}
				}

				if(location == null) {
					location = new MLocation (getCtx(), 0, get_Trx());
					location.setAddress1 (imp.getAddress1 ());
					location.setAddress2 (imp.getAddress2 ());
					location.setCity (imp.getCity ());
					location.setPostal (imp.getPostal ());
					if (imp.getC_Region_ID () != 0)
						location.setC_Region_ID (imp.getC_Region_ID ());
					location.setC_Country_ID (imp.getC_Country_ID ());
					bpLocations.add(location);
				}

				List<MUser> bpUsers = bpUserMap.get(imp.getBPartnerValue());
				if(bpUsers == null) {
					bpUsers = new ArrayList <MUser>();
					bpUserMap.put(imp.getBPartnerValue(), bpUsers);
				}

				MUser contact = null;
				for(MUser user : bpUsers) {
					if(user.getName().equals(imp.getContactName()) ||
							user.getName().equals(imp.getName())) {
						contact = user;
						break;
					}
				}

				if(contact == null) {
					contact = new MUser (getCtx(), 0, get_Trx());
					if (imp.getContactName () == null)
						contact.setName (imp.getName ());
					else
						contact.setName (imp.getContactName ());
					contact.setEMail (imp.getEMail ());
					contact.setPhone (imp.getPhone ());
					bpUsers.add(contact);
				}
			}
		}
		catch (SQLException e) {
			log.log(Level.SEVERE, "BP - " + sql.toString(), e);
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}

		saveBPartners(bpartnerMap, bpLocationMap, bpUserMap);
		sql =  "UPDATE I_Invoice "
				+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No BPartner, ' "
				+ "WHERE C_BPartner_ID IS NULL"
				+ " AND I_IsImported<>'Y'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		if (no != 0)
			log.warning ("No BPartner=" + no);

		commit();
		
		no = DB.getSQLValue(get_Trx(), "select count(*) from  I_Invoice where I_IsImported = 'E' "+STD_CLIENT_CHECK, m_AD_Client_ID);

		//	-- New Invoices -----------------------------------------------------
		int noInsert = 0;
		int noInsertLine = 0;

		Map<Integer, X_I_Invoice> importInvoiceMap = new HashMap<Integer, X_I_Invoice>();
		Map <MInvoice, List<MInvoiceLine>> invoiceMap = new HashMap<MInvoice, List<MInvoiceLine>>();

		//	Go through Invoice Records w/o
		sql = "SELECT * FROM I_Invoice "
				+ "WHERE I_IsImported='N' " 
				+ STD_CLIENT_CHECK
				+ " ORDER BY Ad_Org_ID,POReference,C_BPartner_ID, C_BPartner_Location_ID, I_Invoice_ID";
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_Trx());
			pstmt.setInt(1, m_AD_Client_ID);
			rs = pstmt.executeQuery ();
			//	Group Change
			int oldC_BPartner_ID = 0;
			int oldC_BPartner_Location_ID = 0;
			int oldAD_Org_ID = 0;
			String oldDocumentNo = "";
			String oldPOReference = "";

			//
			MInvoice invoice = null;

			int lineNo = 0;

			List<MInvoiceLine> invoiceLines = null;
			while (rs.next ())
			{
				X_I_Invoice imp = new X_I_Invoice (getCtx (), rs, get_Trx());

				//Set DocumentNO depending on the C_DocType
				//imp.setDocumentNo(MSequence.getDocumentNo (imp.getC_DocType_ID(), get_Trx()) );

				//String cmpDocumentNo = imp.getDocumentNo();
				String cmpPOReference = (String) imp.getPOReference();

				//if (cmpDocumentNo == null)
				//	cmpDocumentNo = "";
				if (cmpPOReference == null)
					cmpPOReference = "";
				//	New Invoice
				if (oldAD_Org_ID != imp.getAD_Org_ID() 
						|| oldC_BPartner_ID != imp.getC_BPartner_ID() 
						|| oldC_BPartner_Location_ID != imp.getC_BPartner_Location_ID()
						|| !oldPOReference.equals(cmpPOReference)	)
				{
					if(invoiceMap.size() >= COMMITCOUNT) {
						//getCtx().setBatchMode(false);
						saveInvoices (invoiceMap, importInvoiceMap);
						//getCtx().setBatchMode(true);
						invoiceMap.clear();
						importInvoiceMap.clear();
					}

					//	Group Change
					oldAD_Org_ID = imp.getAD_Org_ID();
					oldC_BPartner_ID = imp.getC_BPartner_ID();
					oldC_BPartner_Location_ID = imp.getC_BPartner_Location_ID();
					oldDocumentNo = imp.getDocumentNo();
					if (oldDocumentNo == null)
						oldDocumentNo = "";

					oldPOReference = (String) imp.getPOReference();
					if (oldPOReference == null)
						oldPOReference = "";
					//
					invoice = new MInvoice (imp);
					
					//!!! invoice.setC_Payment_ID(imp.getC_PaymentTerm_ID());
					//#75603
					if (!invoice.isSOTrx()) {
						MDocType doc = new MDocType(getCtx(), invoice.getC_DocTypeTarget_ID(), get_Trx() );
						invoice.set_Value("Z_ActionARCO",doc.get_Value("Z_ActionARCO"));
					}//#75603

					//#78082 
					MDocTypeInfo docinfo=MDocTypeInfo.get(getCtx(), invoice.getC_DocTypeTarget_ID(), get_Trx());
					if(docinfo!=null)
					{
						MDoctypeInfoProxy proxy= new MDoctypeInfoProxy(docinfo);
						if(proxy!=null && proxy.getM_PriceList_ID()>0)
							invoice.setM_PriceList_ID(proxy.getM_PriceList_ID());
						else
							invoice.setPriceList();
					}
					else
						invoice.setPriceList();
					MBPartner mb = new MBPartner(getCtx(), oldC_BPartner_ID, get_Trx());
					boolean s = mb.get_ValueAsBoolean("Z_ApprovedInv");
					invoice.set_Value("Z_ApprovedInv", s);
					//
							//62531
					if(!invoice.isSOTrx() && mb.get_ValueAsInt("ZSubPaymentRulePO_ID") > 0 && (invoice.getDocStatus() != null && invoice.getDocStatus().equalsIgnoreCase("DR")))
					{
						invoice.set_ValueNoCheck("ZSubPaymentRule_ID", mb.get_ValueAsInt("ZSubPaymentRulePO_ID"));
					}
					//	Default SalesRep from person running the import, if not specified
					if (invoice.getSalesRep_ID() == 0)
						invoice.setSalesRep_ID(getAD_User_ID());
					if(imp.getPOReference()!="")
						invoice.setPOReference(imp.getPOReference());
					invoice.setC_PaymentTerm_ID(imp.getC_PaymentTerm_ID());
					if(imp.get_ValueAsTimestamp("DueDate")!=null)
						invoice.set_ValueNoCheck("DueDate", imp.get_ValueAsTimestamp("DueDate"));
					if(imp.getC_PaymentTerm_ID()>0)
					{
						MPaymentTerm mpt = new MPaymentTerm(getCtx(), imp.getC_PaymentTerm_ID(), get_Trx() );
						if(imp.get_Value("ZZ_NobiliaCreditTerm")!=null && !mpt.getName().equals(imp.get_Value("ZZ_NobiliaCreditTerm").toString()))
							invoice.set_ValueNoCheck("PaymentTerm", imp.get_Value("ZZ_NobiliaCreditTerm").toString());
					}
					
					noInsert++;
					
					//Evolution #86715 set Order_ID
					invoice.setC_Order_ID(imp.get_ValueAsInt("C_OrderPO_ID"));

					invoiceLines = new ArrayList<MInvoiceLine>();
					invoiceMap.put(invoice, invoiceLines);
					lineNo = 10;
				}

				importInvoiceMap.put(imp.getI_Invoice_ID(), imp);
				imp.setC_Invoice_ID (invoice.getC_Invoice_ID());
				//	New InvoiceLine
				MInvoiceLine line = new MInvoiceLine (invoice, imp.getI_Invoice_ID());
				if (imp.getLineDescription() != null)
					line.setDescription(imp.getLineDescription());
				line.setLine(lineNo);
				line.setAD_Org_ID(imp.get_ValueAsInt("ZZ_OrgLine_ID"));
				lineNo += 10;
				if (imp.getM_Product_ID() != 0)
					line.setM_Product_ID(imp.getM_Product_ID(), true);

				if (imp.getC_Charge_ID() != 0)
					line.setC_Charge_ID(imp.getC_Charge_ID());

				line.setQty(imp.getQtyOrdered());
				line.setPrice();
				BigDecimal price = imp.getPriceActual();
				if (price != null && Env.ZERO.compareTo(price) != 0)
					line.setPrice(price);
				if (imp.getC_Tax_ID() != 0)
					line.setC_Tax_ID(imp.getC_Tax_ID());
				else
				{
					line.setTax();
					imp.setC_Tax_ID(line.getC_Tax_ID());
				}
				BigDecimal taxAmt = imp.getTaxAmt();
				if (taxAmt != null && Env.ZERO.compareTo(taxAmt) != 0)
					line.setTaxAmt(taxAmt);

				//Evolution #86715 set OrderLine_ID
				if(imp.get_ValueAsInt("C_OrderLinePO_ID")>0)
				{
					line.setC_OrderLine_ID(imp.get_ValueAsInt("C_OrderLinePO_ID"));
				//Evolution #86715 set InOutLine_ID
					sql = "SELECT M_InOutLine_ID "
						+ "FROM M_MatchPO m  "
						+ "WHERE C_OrderLine_ID = ? and M_InOutLine_ID > 0 AND C_InvoiceLine_ID is NULL "
						+ "AND NOT EXISTS (select 1 from M_MatchInv where M_InOutLine_ID = m.M_InOutLine_ID )";
					int m_InOutLine_ID = DB.getSQLValue(get_Trx(),sql.toString(), line.getC_OrderLine_ID());
					if(m_InOutLine_ID>0)
						line.setM_InOutLine_ID(m_InOutLine_ID);
				}
				if(imp.get_ValueAsInt("C_OrderLinePO_ID")>0)
				{
					MOrderLine mol = new MOrderLine(getCtx(), imp.get_ValueAsInt("C_OrderLinePO_ID"), get_Trx());
					MOrder mo = new MOrder(getCtx(), mol.getC_Order_ID(),  get_Trx());
					line.set_ValueNoCheck("POReference",mo.getPOReference());
				}else
				if(imp.getPOReference()!=null && imp.getPOReference()!="")
					line.set_ValueNoCheck("POReference",imp.getPOReference());
				
				noInsertLine ++;
				invoiceLines.add(line);

				imp.setI_IsImported(X_I_Invoice.I_ISIMPORTED_Yes);
				imp.setProcessed(true);
			}
			rs.close();
			pstmt.close();
		}
		catch (Exception e) {
			log.log(Level.SEVERE, "CreateInvoice", e);
		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		//getCtx().setBatchMode(false);
		saveInvoices (invoiceMap, importInvoiceMap);
		//getCtx().setBatchMode(true);
		//	Set Error to indicator to not imported
		addLog (0, null, new BigDecimal (no), "@Errors@");
		//
		addLog (0, null, new BigDecimal (noInsert), "@C_Invoice_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noInsertLine), "@C_InvoiceLine_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (countErrorMntTot), "Factures importées mais non traitées");
		return "";
	}	//	doIt

	public void saveBPartners (Map<String, MBPartner> bpartnerMap, 
			Map<String, List<MLocation>> bpLocationMap,
			Map<String, List<MUser>> bpUserMap) throws Exception {

		if(bpartnerMap.isEmpty()) 
			return;


		List<MBPartner> bpartnersToSave = new ArrayList<MBPartner>(bpartnerMap.values());
		if(!PO.saveAll(get_Trx(), bpartnersToSave)) 
			throw new CompiereStateException("Could not save Business Partners");

		List<MLocation> locationsToSave = new ArrayList<MLocation>();
		for(List<MLocation> locations : bpLocationMap.values())
			locationsToSave.addAll(locations);

		if(!PO.saveAll(get_Trx(), locationsToSave)) 
			throw new CompiereStateException("Could not save Locations");

		List <MBPartnerLocation> bpLocationsToSave = new ArrayList<MBPartnerLocation> ();
		for(Map.Entry<String, List<MLocation>> entry : bpLocationMap.entrySet()) {
			MBPartner bp = bpartnerMap.get(entry.getKey());
			for(MLocation loc : entry.getValue()) {
				MBPartnerLocation bpl = new MBPartnerLocation (bp);
				bpl.setC_Location_ID (loc.getC_Location_ID ());
				bpLocationsToSave.add(bpl);
			}
		}

		if(!PO.saveAll(get_Trx(), bpLocationsToSave)) 
			throw new CompiereStateException("Could not save BP Locations");

		List <MUser> usersToSave = new ArrayList<MUser>();
		for(Map.Entry<String, List<MUser>> entry : bpUserMap.entrySet()) {
			MBPartner bp = bpartnerMap.get(entry.getKey());
			for(MUser user : entry.getValue()) {
				user.setC_BPartner_ID(bp.getC_BPartner_ID());
				usersToSave.add(user);
			}
		}

		if(!PO.saveAll(get_Trx(), usersToSave)) 
			throw new CompiereStateException("Could not save Users");

		// Update BPs for new Business Partners
		String sql =  "UPDATE I_Invoice o "
				+ "SET C_BPartner_ID=(SELECT MAX(C_BPartner_ID) FROM C_BPartner bp "
				+ "WHERE o.BPartnerValue=bp.Value "
				+ "AND o.AD_Client_ID=bp.AD_Client_ID) "
				+ "WHERE C_BPartner_ID IS NULL "
				+ "AND BPartnerValue IS NOT NULL "
				+ "AND I_IsImported='N'" 
				+ STD_CLIENT_CHECK;
		int no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set BP for newly created BPs =" + no);

		//	Update BP Location for new Business Partners
		sql =  "UPDATE I_Invoice o "
				+ "SET (BillTo_ID, C_BPartner_Location_ID)=(SELECT C_BPartner_Location_ID,C_BPartner_Location_ID "
				+ "FROM C_BPartner_Location bpl "
				+ "INNER JOIN C_Location l ON (bpl.C_Location_ID=l.C_Location_ID) "
				+ "WHERE o.C_BPartner_ID=bpl.C_BPartner_ID AND bpl.AD_Client_ID=o.AD_Client_ID "
				+ "AND DUMP(o.Address1)=DUMP(l.Address1) AND DUMP(o.Address2)=DUMP(l.Address2) "
				+ "AND DUMP(o.City)=DUMP(l.City) AND DUMP(o.Postal)=DUMP(l.Postal) "
				+ "AND DUMP(o.C_Region_ID)=DUMP(l.C_Region_ID) AND DUMP(o.C_Country_ID)=DUMP(l.C_Country_ID)) "
				+ "WHERE C_BPartner_ID IS NOT NULL "
				+ "AND C_BPartner_Location_ID IS NULL "
				+ "AND I_IsImported='N'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set BP Location for newly created BPs=" + no);

		//	Set User for new Business Partners
		sql =  "UPDATE I_Invoice o "
				+ "SET AD_User_ID=(SELECT AD_User_ID FROM AD_User u "
				+ "WHERE u.AD_Client_ID=o.AD_Client_ID "
				+ "AND u.C_BPartner_ID=o.C_BPartner_ID " 
				+ "AND u.Name=COALESCE(o.ContactName, o.Name) )"
				+ "WHERE C_BPartner_ID IS NOT NULL "
				+ "AND AD_User_ID IS NULL "
				+ "AND EXISTS (SELECT 1 FROM AD_User u WHERE o.C_BPartner_ID=u.C_BPartner_ID "
				+ "AND o.AD_Client_ID=u.AD_Client_ID "
				+ "AND u.Name=COALESCE(o.ContactName, o.Name)) "
				+ "AND I_IsImported<>'N'" 
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
		log.fine("Set User for newly created BPs=" + no);

		commit();
	}	

	public void saveInvoices (	Map<MInvoice, List<MInvoiceLine>> invoiceMap,
			Map<Integer, X_I_Invoice> importInvoiceMap) throws Exception{

		if(invoiceMap.isEmpty()) 
			return;

		List<MInvoice> invoicesToSave = new ArrayList<MInvoice>(invoiceMap.keySet());
		if(!PO.saveAll(get_Trx(), invoicesToSave)) 
			throw new CompiereStateException("Could not save Invoices");

		List<MInvoiceLine> invoiceLinesToSave = new ArrayList<MInvoiceLine>();
		for(Map.Entry<MInvoice, List<MInvoiceLine>> entry : invoiceMap.entrySet()) {
			MInvoice invoice = entry.getKey();
			for(MInvoiceLine invoiceLine : entry.getValue()) {
				invoiceLine.setC_Invoice_ID(invoice.getC_Invoice_ID());
				invoiceLinesToSave.add(invoiceLine);
			}
		}

		if(!PO.saveAll(get_Trx(), invoiceLinesToSave)) 
			throw new CompiereStateException("Could not save Invoices");
		commit();
		List<X_I_Invoice> importInvoicesToSave = new ArrayList<X_I_Invoice>();
		for(MInvoiceLine line :invoiceLinesToSave) {
			X_I_Invoice imp = importInvoiceMap.get(line.getI_Invoice_ID());
			if(imp.get_Value("Z_ProductTax")!=null){
				List<String> items = Arrays.asList(imp.get_ValueAsString("Z_ProductTax").split(";"));
				for(String str : items) 
				{
					
					List<String> str1 = Arrays.asList(str.split(","));
					InvoiceUtil.addModifyRecupelLine(getCtx(),line.getC_Invoice_ID(),line.getM_Product_ID(),line.getParent().getC_BPartner_ID(),
						(double) Double.parseDouble(str1.get(1)),(String) str1.get(0),
						false,get_Trx());
				}
			}else
			{
				InvoiceUtil.addModifyRecupelLine(getCtx(),line.getC_Invoice_ID(),line.getM_Product_ID(),line.getParent().getC_BPartner_ID(),
						0,null,true,get_Trx());
			}
			
			if(imp != null) {
				imp.setC_InvoiceLine_ID(line.getC_InvoiceLine_ID());
				imp.setC_Invoice_ID(line.getC_Invoice_ID());
				importInvoicesToSave.add(imp);
			}
		}

		commit();


		if(!PO.saveAll (get_Trx(), invoicesToSave))
			throw new CompiereStateException("Could not save Invoice");

		if(!PO.saveAll (get_Trx(), importInvoicesToSave)) 
			throw new CompiereStateException("Could not save Import Invoice records ");
		
		
		for(MInvoice invoice : invoicesToSave) {
			int C_Invoice_id = invoice.getC_Invoice_ID();
			for(X_I_Invoice imp : importInvoicesToSave) {
				if(C_Invoice_id != imp.getC_Invoice_ID())
					continue;
				else
				if(C_Invoice_id == imp.getC_Invoice_ID())
				{
					invoice.calculateTaxTotal();
					if(invoice.getGrandTotal().doubleValue()==(imp.get_ValueAsBigDecimal("InvoiceTotalAmt").doubleValue()))
					{
						if(BPartner_ValidateInvoice.get(invoice.getC_BPartner_ID()).equals("Y"))
						{
							invoice.setDocAction(DocActionConstants.ACTION_Complete);
							if(!DocumentEngine.processIt(invoice, DocActionConstants.ACTION_Complete)) {
								// Ignore errors in processing
								log.warning("Could not process Invoice : " + invoice.getDocumentNo());
								log.warning("msg : " + invoice.getProcessMsg());
								imp.setI_ErrorMsg("Impossible de traiter la facture, traitement manuel");
								imp.save(get_Trx());
							}
						}else
						{
							imp.setI_ErrorMsg("Facture non traitée, traitement manuel");
							countErrorMntTot++;
							imp.save(get_Trx());
						}
					}
					else
					{
						imp.setI_ErrorMsg("Montants totaux incohérents, traiter la facture manuellement");
						countErrorMntTot++;
						imp.save(get_Trx());
					}
					invoice.save(get_Trx());
					break;
				}
			}

			
		}
		
		commit();
	}

	public static void main(String[] args)
	{
		System.setProperty ("PropertyFile", "/home/namitha/Useful/Compiere.properties");
		Compiere.startup(true);
		CLogMgt.setLoggerLevel(Level.INFO, null);
		CLogMgt.setLevel(Level.INFO);
		//	Same Login entries as entered
		Ini.setProperty(Ini.P_UID, "GardenAdmin");
		Ini.setProperty(Ini.P_PWD, "GardenAdmin");
		Ini.setProperty(Ini.P_ROLE, "GardenWorld Admin");
		Ini.setProperty(Ini.P_CLIENT, "GardenWorld");
		Ini.setProperty(Ini.P_ORG, "HQ");
		Ini.setProperty(Ini.P_WAREHOUSE, "HQ Warehouse");
		Ini.setProperty(Ini.P_LANGUAGE, "English");
		Ini.setProperty(Ini.P_IMPORT_BATCH_SIZE, "100");

		Ctx ctx = Env.getCtx();
		Login login = new Login(ctx);
		if (!login.batchLogin(null, null))
			System.exit(1);

		//	Reduce Log level for performance
		CLogMgt.setLoggerLevel(Level.WARNING, null);
		CLogMgt.setLevel(Level.WARNING);

		//	Data from Login Context
		int AD_Client_ID = ctx.getAD_Client_ID();
		int AD_User_ID = ctx.getAD_User_ID();
		//	Hardcoded
		int AD_Process_ID = 207;
		int AD_Table_ID = 0;
		int Record_ID = 0;

		//	Step 1: Setup Process
		MPInstance instance = new MPInstance(Env.getCtx(), AD_Process_ID, Record_ID);
		instance.save();

		ProcessInfo pi = new ProcessInfo("Import", AD_Process_ID, AD_Table_ID, Record_ID);
		pi.setAD_Client_ID(AD_Client_ID);
		pi.setAD_User_ID(AD_User_ID);
		pi.setIsBatch(false);  //  want to wait for result
		pi.setAD_PInstance_ID (instance.getAD_PInstance_ID());

		DB.startLoggingUpdates();

		// Step 3: Run the process directly
		ImportInvoice2 test = new ImportInvoice2();
		test.m_AD_Client_ID = ctx.getAD_Client_ID();
		test.m_AD_Org_ID = ctx.getAD_Org_ID();
		test.m_deleteOldImported = true;
		test.m_docAction = X_C_Order.DOCACTION_Complete;

		long start = System.currentTimeMillis();

		test.startProcess(ctx, pi, null);

		long end = System.currentTimeMillis();
		long durationMS = end - start;
		long duration = durationMS/1000;
		System.out.println("Total: " + duration + "s");

		// Step 4: get results
		if (pi.isError())
			System.err.println("Error: " + pi.getSummary());
		else
			System.out.println("OK: " + pi.getSummary());
		System.out.println(pi.getLogInfo());

		// stop logging database updates
		String logResult = DB.stopLoggingUpdates(0);
		System.out.println(logResult);

	}

	private void match_OrderLine(List<XX_Matching> liste1, List<XX_Matching> liste2) {
		for (XX_Matching l1 : liste1) {
			for (XX_Matching l2 : liste2) {
				if( l1.c_Order_ID == l2.c_Order_ID && l1.m_Product_ID == l2.m_Product_ID && l1.qty.equals(l2.qty) ){
					l1.c_OrderLine_ID = l2.c_OrderLine_ID;
					break;
				}
				if( l1.c_Order_ID == l2.c_Order_ID && l1.m_Product_ID == l2.m_Product_ID && l1.c_OrderLine_ID == 0){
					l1.c_OrderLine_ID = l2.c_OrderLine_ID;
					break;
				}
				
			}
			if(l1.c_OrderLine_ID != 0)
			{
				X_I_Invoice imp = new X_I_Invoice (getCtx(), l1.i_Invoice_ID, get_Trx());	
				imp.set_Value("C_OrderLinePO_ID", l1.c_OrderLine_ID);
				imp.save();
			}
			if(l1.c_OrderLine_ID == 0)
			{
				//CreateLine
				X_I_Invoice imp = new X_I_Invoice (getCtx(), l1.i_Invoice_ID, get_Trx());
				MOrder mox = new MOrder(getCtx(), imp.get_ValueAsInt("C_OrderPO_ID"), get_Trx());
				if(mox != null)
				{
					MProduct pt = new MProduct(getCtx(), l1.m_Product_ID, get_Trx());
					MOrderLine ol = mox.createLine(l1.m_Product_ID, new BigDecimal(l1.qty), pt.getC_UOM_ID(), "Nouvelle ligne Import Facture");
					ol.setQtyOrdered(Env.ZERO);
					ol.setPrice(Env.ZERO);
					ol.save(get_Trx());
					ol.updateHeaderTax();
					imp.set_Value("C_OrderLinePO_ID", ol.getC_OrderLine_ID());
					imp.save();
				}
			}
		}
	}


	public List<XX_Matching> populate(ResultSet rs ){
		List<XX_Matching> liste = new ArrayList<XX_Matching>(); ;
		
		try {
			while (rs.next())
			{
				XX_Matching m = new XX_Matching(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getDouble(5));
				liste.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return liste;
	}




	public class XX_Matching
	{
		int i_Invoice_ID;
		int c_Order_ID;
		int c_OrderLine_ID;
		int m_Product_ID;
		Double qty;
		
		public XX_Matching(int invoice_id, int order_id, int orderLine_ID, int product_ID, double qty){
			 this.i_Invoice_ID= invoice_id;
			 this.c_Order_ID= order_id;
			 this.c_OrderLine_ID = orderLine_ID;
			 this.m_Product_ID = product_ID;
			 this.qty = qty;

		}
	}
}
