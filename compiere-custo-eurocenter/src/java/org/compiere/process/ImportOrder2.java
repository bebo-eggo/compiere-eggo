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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

import org.apache.commons.lang.StringUtils;
import org.compiere.Compiere;
import org.compiere.common.CompiereStateException;
import org.compiere.framework.PO;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MPInstance;
import org.compiere.model.MUOMConversion;
import org.compiere.model.MUser;
import org.compiere.model.Tax;
import org.compiere.model.X_C_Order;
import org.compiere.model.X_I_Order;
import org.compiere.util.CLogMgt;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Language;
import org.compiere.util.Login;
import org.compiere.util.Msg;
import org.jboss.mq.il.uil2.msgs.GetIDMsg;

import com.audaxis.compiere.model.MOrderLinePosAction;
import com.kenai.jffi.Array;

/**
 *	Import Order from I_Order
 *
 * 	@author 	Jorg Janke
 * 	@version 	$Id: ImportOrder.java,v 1.2 2006/07/30 00:51:02 jjanke Exp $
 */
public class ImportOrder2 extends SvrProcess
{
	/**	Client to be imported to		*/
	private int				m_AD_Client_ID = 0;
	/**	Organization to be imported to		*/
	private int				m_AD_Org_ID = 0;
	/**	Delete old Imported				*/
	private boolean			m_deleteOldImported = false;
	/**	Document Action					*/
	private String			m_docAction = "CO";

	/** Effective						*/
	private Timestamp		m_DateValue = null;

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? and Address1 = ? ";

	private static final boolean TESTMODE = false;
	/** Commit every 100 entities	*/
	private static final int	COMMITCOUNT = TESTMODE?100:Integer.parseInt(Ini.getProperty(Ini.P_IMPORT_BATCH_SIZE));
	
	private String IdImport = null;
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
		m_AD_Client_ID = getAD_Client_ID();
	}	//	prepare


	/**
	 *  Perrform process.
	 *  @return Message
	 *  @throws Exception
	 */
	@Override
	protected String doIt() throws java.lang.Exception
	{
		String sql = null;
		int no = 0;
		Ctx ctx = getCtx();

		//	****	Prepare	****
		X_I_Order io = new X_I_Order(getCtx(), getRecord_ID(),  get_Trx());
		IdImport = io.getAddress1();
		if(IdImport == null)
			throw new CompiereStateException("ID Import non présent !");
		
		sql = "DELETE FROM I_Order "
				  + "WHERE I_IsImported='Y' "
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Delete Old Impored =" + no);

		//	Set Client, Org, IsActive, Created/Updated
		sql = "UPDATE I_Order "
			  + "SET AD_Client_ID = COALESCE (AD_Client_ID,?), "
			  + " AD_Org_ID = COALESCE (AD_Org_ID,?), "
			  + " IsActive = COALESCE (IsActive, 'Y'), "
			  + " Created = COALESCE (Created, SysDate), "
			  + " CreatedBy = COALESCE (CreatedBy, 0), "
			  + " Updated = COALESCE (Updated, SysDate), "
			  + " UpdatedBy = COALESCE (UpdatedBy, 0),"
			  + " DateOrdered = COALESCE (DateOrdered, SysDate), "
			  + " I_ErrorMsg = NULL, "
			  + " I_IsImported = 'N' "
			  + "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL and Address1 = ?";
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID, m_AD_Org_ID,IdImport}, get_Trx());
		log.info ("Reset=" + no);

		
		sql =  "UPDATE I_Order "
				  + "SET DATEPromised = trunc(Sysdate) "
				  + "WHERE DATEPromised IS NULL"
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
			if (no != 0)
				log.warning ("DATEPromised=" + no);
		
		sql = "UPDATE I_Order i SET i.AD_Org_ID = (SELECT AD_Org_ID FROM AD_Org o WHERE o.Value=i.orgvalue) WHERE ( i.I_IsImported<>'Y'OR i.I_IsImported IS NULL) AND (i.AD_Org_ID IS NULL OR i.AD_Org_ID=0) "
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		
		
		String ts = DB.isPostgreSQL() ? "COALESCE(I_ErrorMsg,'')" : "I_ErrorMsg";  //java bug, it could not be used directly
		sql = "UPDATE I_Order o "
			+ "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Org, '"
			+ "WHERE (AD_Org_ID IS NULL OR AD_Org_ID=0"
			+ " OR EXISTS (SELECT * FROM AD_Org oo WHERE o.AD_Org_ID=oo.AD_Org_ID AND (oo.IsSummary='Y' OR oo.IsActive='N')))"
			+ " AND I_IsImported<>'Y'"
			+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Org=" + no);
		
//		Warehouse
			// if Warehouse key provided, get Warehouse ID			
			sql = "UPDATE I_Order o "
					+ "SET M_Warehouse_ID=(SELECT MAX(M_Warehouse_ID) FROM M_Warehouse w"
					+ " WHERE o.WarehouseValue=w.Value AND o.AD_Client_ID=w.AD_Client_ID AND o.AD_Org_ID = w.AD_Org_ID) "
					+ "WHERE M_Warehouse_ID IS NULL AND WarehouseValue IS NOT NULL"
					+ " AND I_IsImported<>'Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			if (no != 0)
				log.fine("Set Warehouse from Value =" + no);

			//Set W_Warehouse_ID for AD_Org !
			sql = "UPDATE I_Order o "
					  + "SET M_Warehouse_ID=(SELECT MAX(M_Warehouse_ID) FROM AD_OrgInfo w"
					  + " WHERE o.AD_Client_ID=w.AD_Client_ID AND o.AD_Org_ID=w.AD_Org_ID) "
					  + "WHERE M_Warehouse_ID IS NULL AND I_IsImported<>'Y'"
					  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			if (no != 0)
				log.fine("Set Warehouse=" + no);	

		//	Document Type - PO - SO
		sql = "UPDATE I_Order o "	//	PO Document Type Name
			  + "SET C_DocType_ID=(SELECT C_DocType_ID FROM C_DocType d WHERE d.Name=o.DocTypeName"
			  + " AND d.DocBaseType='POO' AND o.AD_Client_ID=d.AD_Client_ID) "
			  + "WHERE C_DocType_ID IS NULL AND IsSOTrx='N' AND DocTypeName IS NOT NULL AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set PO DocType=" + no);
		
		sql = "UPDATE I_Order "	//	Error Invalid Doc Type Name
			  + "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Type Doc invalide, ' "
			  + "WHERE C_DocType_ID IS NULL AND DocTypeName IS NOT NULL"
			  + " AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning ("Invalid DocTypeName=" + no);
		
		//	Set IsSOTrx
		sql = "UPDATE I_Order o SET IsSOTrx='Y' "
			  + "WHERE EXISTS (SELECT * FROM C_DocType d WHERE o.C_DocType_ID=d.C_DocType_ID AND d.DocBaseType='SOO' AND o.AD_Client_ID=d.AD_Client_ID)"
			  + " AND C_DocType_ID IS NOT NULL"
			  + " AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set IsSOTrx=Y=" + no);
		
		sql = "UPDATE I_Order o SET IsSOTrx='N' "
			  + "WHERE EXISTS (SELECT * FROM C_DocType d WHERE o.C_DocType_ID=d.C_DocType_ID AND d.DocBaseType='POO' AND o.AD_Client_ID=d.AD_Client_ID)"
			  + " AND C_DocType_ID IS NOT NULL"
			  + " AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set IsSOTrx=N=" + no);

		//	Payment Rule
		//  We support Payment Rule being input in the login language 
		Language language = Language.getLoginLanguage();		//	Base Language
		String AD_Language = language.getAD_Language();
		sql = "UPDATE I_Order O " + 
				"SET PaymentRule= " +
			  	"(SELECT R.value "+
			  	"  FROM AD_Ref_List R " + 
			  	"  left outer join AD_Ref_List_Trl RT " + 
			  	"  on RT.AD_Ref_List_ID = R.AD_Ref_List_ID and RT.AD_Language = ? " +
			  	"  WHERE R.AD_Reference_ID = 195 and coalesce( RT.Name, R.Name ) = O.PaymentRuleName ) " +
			    "WHERE PaymentRule is null AND PaymentRuleName IS NOT NULL AND I_IsImported<>'Y'" +
			  	STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {AD_Language, m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set PaymentRule=" + no);
		// do not set a default; if null, the import logic will derive from the business partner
		// do not error in absence of a default

		
		sql = "UPDATE I_Order o "
			  + "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Warehouse, ',M_Warehouse_ID = NULL "
			  + "WHERE o.WarehouseValue IS NOT NULL AND NOT EXISTS (SELECT 1 FROM M_Warehouse w "
			  + "WHERE o.WarehouseValue=w.Value AND o.AD_Client_ID=w.AD_Client_ID AND o.AD_Org_ID = w.AD_Org_ID) "
			  + " AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Warehouse=" + no);
		//	BP from Value
		sql = "UPDATE I_Order o "
		  + "SET C_BPartner_ID=(SELECT MAX(C_BPartner_ID) FROM C_BPartner bp"
		  + " WHERE o.BPartnerValue=bp.Value AND o.AD_Client_ID=bp.AD_Client_ID) "
		  + "WHERE C_BPartner_ID IS NULL AND BPartnerValue IS NOT NULL"
		  + " AND I_IsImported<>'Y'"
		  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set BP from Value=" + no);
		
//		Payment Term
			sql = "UPDATE I_Order o "
				  + "SET C_PaymentTerm_ID=(SELECT C_PaymentTerm_ID FROM C_BPartner p"
				  + " WHERE o.AD_Client_ID=p.AD_Client_ID and p.C_BPartner_ID = o.C_BPartner_ID) "
				  + "WHERE C_PaymentTerm_ID IS NULL AND PaymentTermValue IS NULL AND I_IsImported<>'Y' and o.IsSotrx='Y'"
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set PaymentTerm=" + no);
			
//			Payment Term
				sql = "UPDATE I_Order o "
					  + "SET C_PaymentTerm_ID=(SELECT PO_PAYMENTTERM_ID FROM C_BPartner p"
					  + " WHERE o.AD_Client_ID=p.AD_Client_ID and p.C_BPartner_ID = o.C_BPartner_ID) "
					  + "WHERE C_PaymentTerm_ID IS NULL AND PaymentTermValue IS NULL AND I_IsImported<>'Y' and o.IsSotrx='N'"
					  + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
				log.fine("Set PaymentTerm=" + no);
		
//		Payment Term
			sql = "UPDATE I_Order o "
				  + "SET C_PaymentTerm_ID=(SELECT C_PaymentTerm_ID FROM C_PaymentTerm p"
				  + " WHERE o.PaymentTermValue=p.Value AND o.AD_Client_ID=p.AD_Client_ID) "
				  + "WHERE C_PaymentTerm_ID IS NULL AND PaymentTermValue IS NOT NULL AND I_IsImported<>'Y'"
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set PaymentTerm=" + no);
			
			sql = "UPDATE I_Order o "
				  + "SET C_PaymentTerm_ID=(SELECT MAX(C_PaymentTerm_ID) FROM C_PaymentTerm p"
				  + " WHERE p.IsDefault='Y' AND o.AD_Client_ID=p.AD_Client_ID) "
				  + "WHERE C_PaymentTerm_ID IS NULL AND o.PaymentTermValue IS NULL AND I_IsImported<>'Y'"
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set Default PaymentTerm=" + no);
					
			
			//MPRICE
			sql = "UPDATE I_Order o "
				  + "SET M_PRICELIST_ID=(SELECT M_PRICELIST_ID FROM C_BPartner p"
				  + " WHERE o.C_BPartner_ID=p.C_BPartner_ID AND o.AD_Client_ID=p.AD_Client_ID) "
				  + "WHERE M_PRICELIST_ID IS NULL AND I_IsImported<>'Y' AND 'Y' = o.IsSotrx"
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set M_PRICELIST_ID=" + no);
			
			//MPRICE
			sql = "UPDATE I_Order o "
				  + "SET M_PRICELIST_ID=(SELECT PO_PRICELIST_ID FROM C_BPartner p"
				  + " WHERE o.C_BPartner_ID=p.C_BPartner_ID AND o.AD_Client_ID=p.AD_Client_ID) "
				  + "WHERE M_PRICELIST_ID IS NULL AND I_IsImported<>'Y' AND 'N' = o.IsSotrx"
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set M_PRICELIST_ID=" + no);
			
			//Price List
			sql = "UPDATE I_Order o "
				  + "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p WHERE p.IsDefault='Y'"
				  + " AND p.C_Currency_ID=o.C_Currency_ID AND p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
				  + "WHERE M_PriceList_ID IS NULL AND I_IsImported<>'Y'"
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set Default Currency PriceList=" + no);
		//	Price List
		sql = "UPDATE I_Order o "
			  + "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p WHERE p.IsDefault='Y'"
			  + " AND p.C_Currency_ID=o.C_Currency_ID AND p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_PriceList_ID IS NULL AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set Default Currency PriceList=" + no);
		
		sql = "UPDATE I_Order o "
			  + "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p WHERE p.IsDefault='Y'"
			  + " AND p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_PriceList_ID IS NULL AND C_Currency_ID IS NULL AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set Default PriceList=" + no);
		
		sql = "UPDATE I_Order o "
			  + "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p "
			  + " WHERE p.C_Currency_ID=o.C_Currency_ID AND p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_PriceList_ID IS NULL AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set Currency PriceList=" + no);
		
		sql = "UPDATE I_Order o "
			  + "SET M_PriceList_ID=(SELECT MAX(M_PriceList_ID) FROM M_PriceList p "
			  + " WHERE p.IsSOPriceList=o.IsSOTrx AND o.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_PriceList_ID IS NULL AND C_Currency_ID IS NULL AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set PriceList=" + no);

		//
		sql = "UPDATE I_Order "
			  + "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No PriceList, ' "
			  + "WHERE M_PriceList_ID IS NULL"
			  + " AND I_IsImported<>'Y'"
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning("No PriceList=" + no);
			//
			sql = "UPDATE I_Order "
				  + "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=No PaymentTerm, ' "
				  + "WHERE C_PaymentTerm_ID IS NULL"
				  + " AND I_IsImported<>'Y'"
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			if (no != 0)
				log.warning ("No PaymentTerm=" + no);
		
		// Check for Duplicate Document Number/BP/Doc Type Combinations
		sql =  "UPDATE I_Order i "
				  + "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Duplicate Document No, ' "
				  + "WHERE EXISTS (SELECT 1 FROM C_Order o WHERE o.C_BPartner_ID=i.C_BPartner_ID "
				  + " AND o.C_DocTypeTarget_ID = i.C_DocType_ID"
				  + " AND o.DocumentNo = i.DocumentNo and o.AD_Client_ID = i.AD_Client_ID)"
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning ("Duplicate Document Number=" + no);
		
		sql = "update I_Order i set i.ProductValue = replace(i.ProductValue,'\\\\','\\') where i.IsActive='Y' AND i.I_IsImported<>'Y' "+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning ("Product=" + no);
		
//		Set Bill Location from BPartner
			sql =  "UPDATE I_Order o "
				  + "SET BillTo_ID=(SELECT MAX(C_BPartner_Location_ID) FROM C_BPartner_Location l"
				  + " WHERE l.C_BPartner_ID=o.C_BPartner_ID AND o.AD_Client_ID=l.AD_Client_ID and l.IsActive='Y' "
				  + " AND ((l.IsBillTo='Y'))"
				  + ") "
				  + "WHERE C_BPartner_ID IS NOT NULL AND BillTo_ID IS NULL "
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set BP BillTo from BP=" + no);
			
			//	Set Location from BPartner
			sql =  "UPDATE I_Order o "
				  + "SET C_BPartner_Location_ID=(SELECT MAX(C_BPartner_Location_ID) FROM C_BPartner_Location l"
				  + " WHERE l.C_BPartner_ID=o.C_BPartner_ID AND o.AD_Client_ID=l.AD_Client_ID and l.IsActive='Y' "
				  + " AND ((l.IsBillTo='Y' ))"
				  + ") "
				  + "WHERE C_BPartner_ID IS NOT NULL AND C_BPartner_Location_ID IS NULL "
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set BP Location from BP=" + no);
		
		//	Product
		sql =  "UPDATE I_Order o "
			  + "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
			  + " WHERE o.ProductValue=p.Value AND o.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_Product_ID IS NULL AND ProductValue IS NOT NULL"
			  + " AND I_IsImported<>'Y'" 
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set Product from Value=" + no);
		
		sql =  "UPDATE I_Order o "
			  + "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
			  + " WHERE o.UPC=p.UPC AND o.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_Product_ID IS NULL AND UPC IS NOT NULL"
			  + " AND I_IsImported<>'Y'" 
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set Product from UPC=" + no);
		
		sql =  "UPDATE I_Order o "
			  + "SET M_Product_ID=(SELECT MAX(M_Product_ID) FROM M_Product p"
			  + " WHERE o.SKU=p.SKU AND o.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE M_Product_ID IS NULL AND SKU IS NOT NULL"
			  + " AND I_IsImported<>'Y'" 
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set Product fom SKU=" + no);
		
		sql =  "UPDATE I_Order "
			  + "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Invalid Product, ' "
			  + "WHERE M_Product_ID IS NULL AND (ProductValue IS NOT NULL OR UPC IS NOT NULL OR SKU IS NOT NULL)"
			  + " AND I_IsImported<>'Y'" 
			  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning ("Invalid Product=" + no);
		
		sql =  "update I_Order set Z_TYPEOA_ID = (select Z_TYPEOA_ID from Z_S_S_FAMILLE "
				+ " inner join M_Product mp on Z_S_S_FAMILLE.Z_S_S_FAMILLE_ID = mp.Z_S_S_FAMILLE_ID where mp.M_Product_ID = I_Order.M_Product_ID) where Z_TYPEOA_ID is null and M_PRODUCT_ID is not null "
				+ " AND I_IsImported<>'Y'" 
			    + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Set Z_TYPEOA_ID=" + no);
		
			sql =  "update I_Order set Z_TYPEOA_ID = (select Z_TYPEOA_ID from Z_TYPEOA where Z_TYPEOA.value = 'MARCH' and Z_TYPEOA.AD_Client_ID = I_Order.AD_Client_ID) where Z_TYPEOA_ID is null and M_PRODUCT_ID is not null "
					+ " AND I_IsImported<>'Y'" 
				    + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
				log.fine("Set Z_TYPEOA_ID=" + no);	
		
		sql =  "UPDATE I_Order "
				  + "SET I_IsImported='E', I_ErrorMsg="+ts +"||'ERR=Both Charge and Product are specified, ' "
				  + "WHERE C_Charge_ID IS NOT NULL AND M_Product_ID IS NOT NULL"
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
		if (no != 0)
			log.warning ("Charge and Product are specified=" + no);
			
		
		
		//update I_Order set i_isimported='E', i_errormsg = ''getPListLastVersionPriceList(M_Pricelist_ID,M_Product_ID,DateOrdered) 
		String msgX = Msg.getMsg(getCtx(), "ProductNotOnPriceList").replace("'", "''");
		sql =  "UPDATE I_Order o "
				  + "SET o.i_isimported='E', o.i_errormsg = ' "+msgX
				  + "'||o.i_errormsg WHERE getPListLastVersionPriceList(o.M_Pricelist_ID,o.M_Product_ID,o.DateOrdered) is null " 
				  + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("ProductNotOnPricelist=" + no);
		
		
		//Mettre l'ensemble de l'ordre en E si une ligne foire !
		sql = "Update I_Order set  i_isimported='E', i_errormsg = 'Tiers not exists -'||i_errormsg " +
				"where C_BPartner_ID is null  "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Order not OK=" + no);
		
		//SalesRep_ID
		sql =  "UPDATE I_Order o "
				  + "SET SalesRep_ID=(SELECT MAX(AD_User_ID) FROM AD_User p"
				  + " WHERE o.ContactName=p.Name  and p.IsActive='Y'  AND o.AD_Client_ID=p.AD_Client_ID and exists (select 1 from C_BPartner cb where cb.C_BPartner_ID = p.C_BPartner_ID and cb.IsEmployee = 'Y' and cb.IsActive='Y' and cb.IsSalesRep = 'Y' )) "
				  + "WHERE SalesRep_ID IS NULL AND ContactName IS NOT NULL "
				  + " AND I_IsImported<>'Y'" 
				  + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql, new Object[] {m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("SalesRep_ID from Name=" + no);
			
			//Mettre l'ensemble de l'ordre en E si une ligne foire !
			sql = "Update I_Order set  i_isimported='E', i_errormsg = 'Acheteur non trouvé -'||i_errormsg " +
					"where SalesRep_ID is null  AND Phone IS NOT NULL "
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
			log.fine("Order not OK=" + no);
				
		//Mettre l'ensemble de l'ordre en E si une ligne foire !
		sql = "Update I_Order set  i_isimported='E', i_errormsg = 'Order Not Ok -'||i_errormsg " +
				"where exists (select 1 from I_Order io where io.i_isimported='E' and io.POREFERENCE = I_Order.POREFERENCE and I_Order.AD_Client_ID =io.AD_Client_ID ) "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Order not OK=" + no);
		
		//Mettre l'ensemble de l'ordre en E si une ligne foire !
				sql = "Update I_Order set  i_isimported='E', i_errormsg = 'Fichier importé avec erreur -'||i_errormsg " +
						"where exists (select 1 from I_Order io where io.i_isimported='E' and io.Address1 = I_Order.Address1 and I_Order.AD_Client_ID =io.AD_Client_ID and io.I_Order_ID <> I_Order.I_Order_ID) "
						+ STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
				log.fine("Order not OK=" + no);

		commit();

		//	-- New Orders -----------------------------------------------------
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int noInsert = 0;
		int noInsertLine = 0;
		
		Map<Integer, X_I_Order> importOrderMap = new HashMap<Integer, X_I_Order>();
		Map <MOrder, List<MOrderLine>> orderMap = new HashMap <MOrder, List<MOrderLine>> ();
		Map <MOrderLine, List<X_I_Order>> orderLineMap = new HashMap <MOrderLine, List<X_I_Order>> ();
		
		//	Go through Order Records w/o
		sql =  "SELECT * FROM I_Order "
			  + "WHERE I_IsImported='N' and IsActive = 'Y' " 
			  + STD_CLIENT_CHECK
			  + "ORDER BY Ad_Org_ID,M_WareHouse_ID,C_DocType_ID,Z_TYPEOA_ID,DateOrdered,DatePromised,C_BPartner_ID,POREFERENCE,M_Product_ID,PriceActual,LineDescription, I_Order_ID";
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_Trx());
			pstmt.setInt(1, m_AD_Client_ID);
			pstmt.setString(2, IdImport);
			rs = pstmt.executeQuery ();
			//
			String oldDescription = null;
			String oldDescriptionLine = null;
			int oldMWarehouse_ID = 0;
			int oldC_BPartner_ID = 0;
			int oldBillTo_ID = 0;
			int oldC_BPartner_Location_ID = 0;
			String oldPOReference = null;
			int oldAD_Org_ID = 0;
			int oldDocumentType = 0;
			Timestamp olddateOrdered = null;
			Timestamp olddatePromise = null;
			int oldTypeOA_ID=0;
			//
			MOrder order = null;
			int lineNo = 0;
			List<MOrderLine> orderLines = null;
			ArrayList<Integer> impLines = null;
			int oldProductID = 0;
			MOrderLine oldLine = null;
			MOrderLine line = null;
			boolean newOrder = false;
			BigDecimal oldPrice =  Env.ZERO;
			while (rs.next ())
			{
				X_I_Order imp = new X_I_Order (ctx, rs, get_Trx());
				String cmpPOReference = imp.get_ValueAsString("POReference");
				if (cmpPOReference == null)
					cmpPOReference = "";
				
				//	New Order
				if (order==null 
					|| oldAD_Org_ID != imp.getAD_Org_ID() 
					|| oldC_BPartner_ID != imp.getC_BPartner_ID() 
					|| oldDocumentType !=imp.getC_DocType_ID()
					|| !StringUtils.equals(oldPOReference,cmpPOReference)
					|| !olddateOrdered.equals(imp.getDateOrdered())
					|| !olddatePromise.equals(imp.get_ValueAsTimestamp("DatePromised"))
					|| oldMWarehouse_ID!=imp.getM_Warehouse_ID()
					|| !StringUtils.equals(oldDescription, imp.getDescription())
					//|| !StringUtils.equals(oldDescriptionLine, imp.getLineDescription())
					|| oldTypeOA_ID!=imp.get_ValueAsInt("Z_TypeOA_ID"))
				{
					if(orderMap.size() >= COMMITCOUNT) {
						saveOrders(orderMap, importOrderMap);
						orderMap.clear();
						importOrderMap.clear();
					}
					
					oldAD_Org_ID = imp.getAD_Org_ID();
					oldC_BPartner_ID = imp.getC_BPartner_ID();
					oldPOReference = imp.get_ValueAsString("POReference");
					oldDocumentType = imp.getC_DocType_ID();
					if (oldPOReference == null)
						oldPOReference = "";
					olddateOrdered = imp.getDateOrdered();
					olddatePromise = imp.get_ValueAsTimestamp("DatePromised");
					oldMWarehouse_ID = imp.getM_Warehouse_ID();
					oldDescription = imp.getDescription();
					oldTypeOA_ID = imp.get_ValueAsInt("Z_TypeOA_ID");
					//
					order = new MOrder (imp);
					order.setPOReference(imp.get_ValueAsString("POReference"));
					order.setC_DocType_ID(imp.getC_DocType_ID());
					order.setBPartner(new MBPartner(ctx, imp.getC_BPartner_ID(), get_Trx()));
					order.setBill_BPartner_ID(imp.getC_BPartner_ID());
					order.setDatePromised(imp.get_ValueAsTimestamp("DatePromised"));
					order.setDocAction(m_docAction==null?X_C_Order.DOCACTION_Prepare:m_docAction);
					
					order.setDocStatus(MOrder.DOCSTATUS_Drafted);
					order.setSalesRep_ID(getAD_User_ID());
					order.set_Value("Z_TypeOA_ID", imp.get_ValueAsInt("Z_TypeOA_ID"));
					//
					noInsert++;
					//
					orderLines = new ArrayList<MOrderLine>();
					
					orderMap.put(order, orderLines);
					if(imp.get_ValueAsInt("Line")!=0)
						lineNo=imp.get_ValueAsInt("Line");
					else
						lineNo = 10;
					if(!imp.get_ValueAsString("POReference").equals("") && imp.get_ValueAsString("POReference").length()>0)
						order.setPOReference(imp.get_ValueAsString("POReference"));
					newOrder = true;
				}
				else
					newOrder = false;
				importOrderMap.put(imp.getI_Order_ID(), imp);
				
				if(oldProductID==imp.getM_Product_ID() 
						&& imp.getPriceActual()!=null 
						&& oldPrice.equals(imp.getPriceActual()) 
						&& !newOrder
						&& StringUtils.equals(oldDescriptionLine, imp.getLineDescription())) {
					line.setQty(line.getQtyOrdered().add(imp.getQtyOrdered()));
					impLines.add(imp.getI_Order_ID());
					line.SetIOrderList(impLines);
				}
				
				else
				{
				//	New OrderLine
					impLines = new ArrayList<Integer>();
					line = new MOrderLine (order,imp.getI_Order_ID());
					impLines.add(imp.getI_Order_ID());
					line.SetIOrderList(impLines);
					oldDescriptionLine = imp.getLineDescription();
				if(imp.get_ValueAsInt("Line")!=0)
				{
					line.setLine(imp.get_ValueAsInt("Line"));
					lineNo = imp.get_ValueAsInt("Line");
				}
				else
					line.setLine(lineNo);
				lineNo += 10;

				// gwu: 1712639, added support for UOM conversions
				boolean convertUOM = false;
				
				if (imp.getM_Product_ID() != 0)
				{
					line.setM_Product_ID(imp.getM_Product_ID(), true);
					convertUOM = false; 
					oldProductID  =imp.getM_Product_ID();
				}

				if (imp.getC_Charge_ID() != 0)
				{
					line.setC_Charge_ID(imp.getC_Charge_ID());
					convertUOM = false;
				}
				
				line.setQty(imp.getQtyOrdered());
				if(imp.get_Value("PriceActual")!=null ){
					line.setPriceActual( imp.getPriceActual() );
					oldPrice = imp.getPriceActual();
				}
				else
				{
					line.setPrice();
				}
				
				
				if (imp.getC_Tax_ID() != 0)
					line.setC_Tax_ID(imp.getC_Tax_ID());
				else
				{
					int tax = Tax.getTaxWithCocontractant(getCtx(), order.getBill_Location_ID(), order.getC_BPartner_Location_ID(), order.getAD_Org_ID(), line.getM_Product_ID(), 0, 
							order.getDateOrdered(), order.getDateOrdered(), order.getC_DocType_ID(), order.isSOTrx(), MBPartner.get(getCtx(), order.getC_BPartner_ID()).get_ValueAsBoolean("IsCoContractant"), line.getM_Warehouse_ID());
					if(tax>0)
						line.setC_Tax_ID(tax);
					else
						line.setTax();
					//imp.setC_Tax_ID(line.getC_Tax_ID());
				}
				if (imp.getFreightAmt() != null)
					line.setFreightAmt(imp.getFreightAmt());
				if (imp.getLineDescription() != null)
					line.setDescription(imp.getLineDescription());
				//oldLine = line;
				orderLines.add(line);
				noInsertLine ++;
				}
				
				
				
				
				//	Update Import
				imp.setI_IsImported(X_I_Order.I_ISIMPORTED_Yes);
				imp.setProcessed(true);
			}
			rs.close();
			pstmt.close();
		}
		catch (Exception e)	{
			log.log(Level.SEVERE, "Order - " + sql.toString(), e);
		}
		
		
		saveOrders(orderMap, importOrderMap);
		
		//	Set Error to indicator to not imported
		sql =  "UPDATE I_Order "
			+ "SET I_IsImported='N', Updated=SysDate "
			+ "WHERE I_IsImported<>'Y'"
			+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		//
		addLog (0, null, new BigDecimal (noInsert), "@C_Order_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noInsertLine), "@C_OrderLine_ID@: @Inserted@");
		return "#" + noInsert + "/" + noInsertLine;
	}	//	doIt

	public void saveBPartners (Map<String, MBPartner> bpartnerMap, 
									Map<String, List<MLocation>> bpLocationMap,
									Map<String, List<MUser>> bpUserMap) throws Exception {
		
		if(bpartnerMap.isEmpty()) 
			return;
		
		
		//List<MBPartner> bpartnersToSave = new ArrayList<MBPartner>(bpartnerMap.values());
		//if(!PO.saveAll(get_Trx(), bpartnersToSave)) 
		//	throw new CompiereStateException("Could not save Business Partners");
		 
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
		
//		List <MUser> usersToSave = new ArrayList<MUser>();
//		for(Map.Entry<String, List<MUser>> entry : bpUserMap.entrySet()) {
//			MBPartner bp = bpartnerMap.get(entry.getKey());
//			for(MUser user : entry.getValue()) {
//				user.setC_BPartner_ID(bp.getC_BPartner_ID());
//				usersToSave.add(user);
//			}
//		}
//		
//		if(!PO.saveAll(get_Trx(), usersToSave)) 
//			throw new CompiereStateException("Could not save Users");

//		// Update BPs for new Business Partners
//		String sql =  "UPDATE I_Order o "
//				  + "SET C_BPartner_ID=(SELECT MAX(C_BPartner_ID) FROM C_BPartner bp "
//				  + "WHERE o.BPartnerValue=bp.Value "
//				  + "AND o.AD_Client_ID=bp.AD_Client_ID) "
//				  + "WHERE C_BPartner_ID IS NULL "
//				  + "AND BPartnerValue IS NOT NULL "
//				  + "AND I_IsImported='N'" 
//				  + STD_CLIENT_CHECK;
//		int no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
//		log.fine("Set BP for newly created BPs =" + no);

		//	Update BP Location for new Business Partners
		String sql =  "UPDATE I_Order o "
			  + "SET (C_BPartner_Location_ID)=(SELECT max(C_BPartner_Location_ID) "
			  + "FROM C_BPartner_Location bpl "
			  + "INNER JOIN C_Location l ON (bpl.C_Location_ID=l.C_Location_ID) "
			  + "WHERE o.C_BPartner_ID=bpl.C_BPartner_ID AND bpl.AD_Client_ID=o.AD_Client_ID "
			  + "AND DUMP(o.Address1)=DUMP(l.Address1) AND DUMP(o.Address2)=DUMP(l.Address2) "
			  + "AND DUMP(o.City)=DUMP(l.City) AND DUMP(o.Postal)=DUMP(l.Postal) "
			  + "AND DUMP(o.C_Region_ID)=DUMP(l.C_Region_ID) AND DUMP(o.C_Country_ID)=DUMP(l.C_Country_ID)) "
			  + "WHERE o.C_BPartner_ID IS NOT NULL and o.Address1 is not null "
			  + "AND I_IsImported='N'" 
			  + STD_CLIENT_CHECK;
		int no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID,IdImport}, get_Trx());
		log.fine("Set BP Location for newly created BPs=" + no);
		
//		//	Set User for new Business Partners
//		sql =  "UPDATE I_Order o "
//			  + "SET AD_User_ID=(SELECT AD_User_ID FROM AD_User u "
//			  + "WHERE u.AD_Client_ID=o.AD_Client_ID "
//			  + "AND u.C_BPartner_ID=o.C_BPartner_ID " 
//			  + "AND u.Name=COALESCE(o.ContactName, o.Name) )"
//			  + "WHERE C_BPartner_ID IS NOT NULL "
//			  + "AND AD_User_ID IS NULL "
//			  + "AND EXISTS (SELECT 1 FROM AD_User u WHERE o.C_BPartner_ID=u.C_BPartner_ID "
//			  + "AND o.AD_Client_ID=u.AD_Client_ID "
//			  + "AND u.Name=COALESCE(o.ContactName, o.Name)) "
//			  + "AND I_IsImported<>'N'" 
//			  + STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID}, get_Trx());
//		log.fine("Set User for newly created BPs=" + no);
		
		commit();
	}	
	
	public void saveOrders (	Map<MOrder, List<MOrderLine>> orderMap,
								Map<Integer, X_I_Order> importOrderMap) throws Exception{
		
		if(orderMap.isEmpty()) 
			return;
		
		List<MOrder> ordersToSave = new ArrayList<MOrder>(orderMap.keySet());
		if(!PO.saveAll(get_Trx(), ordersToSave)) 
			throw new CompiereStateException("Could not save Orders");
		
		List<MOrderLine> orderLinesToSave = new ArrayList<MOrderLine>();
		for(Map.Entry<MOrder, List<MOrderLine>> entry : orderMap.entrySet()) {
			MOrder order = entry.getKey();
			for(MOrderLine orderLine : entry.getValue()) {
				orderLine.setC_Order_ID(order.getC_Order_ID());
				
				orderLinesToSave.add(orderLine);
			}
		}
		
		if(!PO.saveAll(get_Trx(), orderLinesToSave)) 
			throw new CompiereStateException("Could not save Orders");
		//Calcule Tax
		if(m_docAction == null)
		{
			//Calcule Tax des lignes
			
		}
		
		List<X_I_Order> importOrdersToSave = new ArrayList<X_I_Order>();
		/*
		for(MOrderLine line :orderLinesToSave)
		{
			X_I_Order imp = importOrderMap.get(line.getI_Order_ID());
			if(imp != null) {
				imp.setC_OrderLine_ID(line.getC_OrderLine_ID());
				imp.setC_Order_ID(line.getC_Order_ID());
				if(m_docAction == null
						|| 1 == 1)      // Valide Benja B.      
				{
					line.updateHeaderTax();
					line.save();
				}
				importOrdersToSave.add(imp);
			}
		}
		*/
		for(MOrderLine line :orderLinesToSave)
		{
			ArrayList<Integer> ll = line.getIOrderList();
			for (int i = 0; i < ll.size(); i++) {
				X_I_Order imp = importOrderMap.get(ll.get(i));
				if(imp != null) {
					imp.setC_OrderLine_ID(line.getC_OrderLine_ID());
					imp.setC_Order_ID(line.getC_Order_ID());
					if(m_docAction == null
							|| 1 == 1)      // Valide Benja B.      
					{
						line.updateHeaderTax();
						line.save();
					}
					importOrdersToSave.add(imp);
				}
			}
		}
		
		commit();
		
		for(MOrder order : ordersToSave) {
			if(m_docAction!=null && !DocumentEngine.processIt(order, m_docAction))
			{
				// Ignore errors in processing
				log.warning("Could not process Order : " + order.getDocumentNo());
			}
			
			if(!order.save())
				throw new CompiereStateException("Could not save Order");

			// Need to commit after each order to prevent deadlocks
			commit();
		}
			
		if(!PO.saveAll (get_Trx(), importOrdersToSave))
			throw new CompiereStateException("Could not save Import Order records");

		commit();
	}
	
	public static void main(String[] args)
    {
		System.setProperty ("PropertyFile", "//home//namitha//Useful//Compiere.properties");
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
		int AD_Process_ID = 206;
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
		ImportOrder2 test = new ImportOrder2();
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
}	//	ImportOrder
