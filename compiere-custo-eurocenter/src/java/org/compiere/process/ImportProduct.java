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
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Level;

import org.compiere.Compiere;
import org.compiere.common.CompiereStateException;
import org.compiere.framework.PO;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAttribute;
import org.compiere.model.MAttributeSet;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MAttributeValue;
import org.compiere.model.MBPartner;
import org.compiere.model.MCost;
import org.compiere.model.MPInstance;
import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProduct;
import org.compiere.model.MProductCosting;
import org.compiere.model.MProductPO;
import org.compiere.model.MProductPrice;
import org.compiere.model.MTaxCategory;
import org.compiere.model.X_I_Product;
import org.compiere.model.X_M_Attribute;
import org.compiere.model.X_M_Product;
import org.compiere.model.X_M_Product_Trl;
import org.compiere.model.X_M_Replenish;
import org.compiere.model.X_Z_ProductTax;
import org.compiere.util.CLogMgt;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Login;
import org.compiere.util.Msg;

import com.audaxis.compiere.eurocenter.helper.PriceListVersionHelper;
import com.audaxis.compiere.util.CompiereException;

/**
 * Import Products from I_Product
 * 
 * @author Jorg Janke
 * @version $Id: ImportProduct.java,v 1.3 2006/07/30 00:51:01 jjanke Exp $
 */
public class ImportProduct extends SvrProcess {
	/** Client to be imported to */
	private int m_AD_Client_ID = 0;
	/** Delete old Imported */
	private boolean m_deleteOldImported = false;

	/** Effective */
	private Timestamp m_DateValue = null;
	/** Pricelist to Update */
	private int p_M_PriceList_Version_ID = 0;

	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? ";

	private static final boolean TESTMODE = false;
	/** Commit every 100 entities */
	private static final int COMMITCOUNT = TESTMODE ? 100 : Integer
			.parseInt(Ini.getProperty(Ini.P_IMPORT_BATCH_SIZE));

	/**
	 * Prepare - e.g., get Parameters.
	 */
	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal) element.getParameter())
						.intValue();
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(element.getParameter());
			else if (name.equals("M_PriceList_Version_ID"))
				p_M_PriceList_Version_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		if (m_DateValue == null)
			m_DateValue = new Timestamp(System.currentTimeMillis());
	} // prepare

	/**
	 * Perform process.
	 * 
	 * @return Message
	 * @throws Exception
	 */
	@Override
	protected String doIt() throws java.lang.Exception {
		String sql = null;
		int no = 0;

		// **** Prepare ****

		// Delete Old Imported
		if (m_deleteOldImported) {
			sql = "DELETE FROM I_Product WHERE I_IsImported='Y'"
					+ STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(),
					new Object[] { m_AD_Client_ID }, null);
			log.info("Delete Old Impored =" + no);
		}

		// Set Client, Org, IaActive, Created/Updated, ProductType
		sql = "UPDATE I_Product "
				+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ?),"
				+ " AD_Org_ID = COALESCE (AD_Org_ID, 0),"
				+ " IsActive = COALESCE (IsActive, 'Y'),"
				+ " Created = COALESCE (Created, SysDate),"
				+ " CreatedBy = COALESCE (CreatedBy, 0),"
				+ " Updated = COALESCE (Updated, SysDate),"
				+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
				+ " ProductType = COALESCE (ProductType, 'I'), Value = Trim(Value),"
				+ " I_ErrorMsg = NULL," + " I_IsImported = 'N' "
				+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL and IsActive='Y'";
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Reset=" + no);

		// Set Optional BPartner
		sql = "UPDATE I_Product i "
				+ "SET C_BPartner_ID=(SELECT C_BPartner_ID FROM C_BPartner p"
				+ " WHERE i.BPartner_Value=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE C_BPartner_ID IS NULL AND I_IsImported<>'Y' and i.IsActive='Y' "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("BPartner=" + no);
		//
		String ts = DB.isPostgreSQL() ? "COALESCE(I_ErrorMsg,'')"
				: "I_ErrorMsg"; // java bug, it could not be used directly
		sql = "UPDATE I_Product i "
				+ "SET I_IsImported='E', I_ErrorMsg="
				+ ts
				+ "||'ERR=Invalid BPartner,' "
				+ "WHERE i.BPartner_Value is NOT NULL AND i.C_BPartner_ID IS NULL and i.IsActive='Y'"
				+ " AND i.I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid BPartner=" + no);

		sql = "update I_Product i set i.Value = replace(i.Value,'\\\\','\\') where i.IsActive='Y' AND i.I_IsImported<>'Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Product Existing UPC=" + no);
		
		// **** Find Product
		// EAN/UPC
		sql = "UPDATE I_Product i "
				+ "SET M_Product_ID=(SELECT M_Product_ID FROM M_Product p"
				+ " WHERE i.Value=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
				+ "WHERE M_Product_ID IS NULL AND I_IsImported='N' and i.IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Product Existing UPC=" + no);

		commit();
		//********************************************************************************************/
		//********************************************************************************************/
		//***************************************** EC003 ********************************************/
		
		// Value : EC003    
//		sql = "UPDATE I_Product i "
//				+ "SET I_IsImported='E', I_ErrorMsg="
//				+ ts
//				+ "||'ERR=Cl� Article d�j� utilis�e,' "
//				+ "WHERE (SELECT count(p.M_Product_ID) FROM M_Product p WHERE p.Value = i.value) <> 0"
//				+ " AND I_IsImported='N'" + STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//				get_Trx());
//		log.info("Product Existing Value=" + no);

		// BP ProdNo
		// sql = "UPDATE I_Product i "
		// + "SET M_Product_ID=(SELECT M_Product_ID FROM M_Product_po p"
		// + " WHERE i.C_BPartner_ID=p.C_BPartner_ID"
		// +
		// " AND i.VendorProductNo=p.VendorProductNo AND i.AD_Client_ID=p.AD_Client_ID) "
		// + "WHERE M_Product_ID IS NULL"
		// + " AND I_IsImported='N'"
		// + STD_CLIENT_CHECK;
		// no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID},
		// get_Trx());
		// log.info("Product Existing Vendor ProductNo=" + no);


		
		// Set Product Category		
		sql = "UPDATE I_Product "
				+ "SET ProductCategory_Value=(SELECT MAX(Value) FROM M_Product_Category"
				+ " WHERE IsDefault='Y' AND AD_Client_ID=?) "
				+ "WHERE ProductCategory_Value IS NULL AND M_Product_Category_ID IS NULL and IsActive='Y'"
				+ " AND M_Product_ID IS NULL" // set category only if product
												// not found
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID,
				m_AD_Client_ID }, get_Trx());
		log.fine("Set Category Default Value=" + no);
		//

		
		//
		sql = "UPDATE I_Product i "
				+ "SET M_Product_Category_ID=(SELECT M_Product_Category_ID FROM M_Product_Category c"
				+ " WHERE i.ProductCategory_Value=c.Value AND i.AD_Client_ID=c.AD_Client_ID) "
				+ "WHERE ProductCategory_Value IS NOT NULL AND M_Product_Category_ID IS NULL and i.IsActive='Y'"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Set Category=" + no);

		// Copy From Product if Import does not have value
		String[] strFields = new String[] { "Value", "Name", "Description",
				"DocumentNote", "Help", "UPC", "SKU", "Classification",
				"ProductType", "Discontinued", "DiscontinuedBy", "ImageURL",
				"DescriptionURL" };
		for (String element : strFields) {
			sql = "UPDATE I_PRODUCT i "
					+ "SET "
					+ element
					+ " = (SELECT "
					+ element
					+ " FROM M_Product p"
					+ " WHERE i.M_Product_ID=p.M_Product_ID AND i.AD_Client_ID=p.AD_Client_ID) "
					+ "WHERE M_Product_ID IS NOT NULL" + " AND " + element
					+ " IS NULL" + " AND I_IsImported='N' and i.IsActive='Y'" + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(),
					new Object[] { m_AD_Client_ID }, get_Trx());
			if (no != 0)
				log.fine(element + " - default from existing Product=" + no);
		}
		
		
		//copy from product C_UOM_ID , ... if code bare on the same
		String[] numFields = new String[] { "C_UOM_ID",
				"M_Product_Category_ID", "Volume", "Weight", "ShelfWidth",
				"ShelfHeight", "ShelfDepth", "UnitsPerPallet" };
		for (String element : numFields) {
			sql = "UPDATE I_PRODUCT i "
					+ "SET "
					+ element
					+ " = (SELECT "
					+ element
					+ " FROM M_Product p"
					+ " WHERE i.M_Product_ID=p.M_Product_ID AND i.AD_Client_ID=p.AD_Client_ID) "
					+ "WHERE M_Product_ID IS NOT NULL" + " AND (" + element
					+ " IS NULL OR " + element + " =0)"
					+ " AND I_IsImported='N' and i.IsActive='Y'" + STD_CLIENT_CHECK;
			no = DB.executeUpdate(sql.toString(),
					new Object[] { m_AD_Client_ID }, get_Trx());
			if (no != 0)
				log.fine(element + " default from existing Product=" + no);
		}
		
		

//		// Copy From Product_PO if Import does not have value
//		String[] strFieldsPO = new String[] { "UPC", "PriceEffective",
//				"VendorProductNo", "VendorCategory", "Manufacturer",
//				"Discontinued", "DiscontinuedBy" };
//		for (String element : strFieldsPO) {
//			sql = "UPDATE I_PRODUCT i "
//					+ "SET "
//					+ element
//					+ " = (SELECT "
//					+ element
//					+ " FROM M_Product_PO p"
//					+ " WHERE i.M_Product_ID=p.M_Product_ID AND i.C_BPartner_ID=p.C_BPartner_ID AND i.AD_Client_ID=p.AD_Client_ID) "
//					+ "WHERE M_Product_ID IS NOT NULL AND C_BPartner_ID IS NOT NULL"
//					+ " AND " + element + " IS NULL" + " AND I_IsImported='N' and i.IsActive='Y'"
//					+ STD_CLIENT_CHECK;
//			no = DB.executeUpdate(sql.toString(),
//					new Object[] { m_AD_Client_ID }, get_Trx());
//			if (no != 0)
//				log.fine(element + " default from existing Product PO=" + no);
//		}

		
		
//		String[] numFieldsPO = new String[] { "C_UOM_ID", "C_Currency_ID",
//				"PriceList", "PricePO", "RoyaltyAmt", "Order_Min",
//				"Order_Pack", "CostPerOrder", "DeliveryTime_Promised" };
//		for (String element : numFieldsPO) {
//			sql = "UPDATE I_PRODUCT i "
//					+ "SET "
//					+ element
//					+ " = (SELECT "
//					+ element
//					+ " FROM M_Product_PO p"
//					+ " WHERE i.M_Product_ID=p.M_Product_ID AND i.C_BPartner_ID=p.C_BPartner_ID AND i.AD_Client_ID=p.AD_Client_ID) "
//					+ "WHERE M_Product_ID IS NOT NULL AND C_BPartner_ID IS NOT NULL and i.IsActive='Y'"
//					+ " AND (" + element + " IS NULL OR " + element + " =0)"
//					+ " AND I_IsImported='N'" + STD_CLIENT_CHECK;
//			no = DB.executeUpdate(sql.toString(),
//					new Object[] { m_AD_Client_ID }, get_Trx());
//			if (no != 0)
//				log.fine(element + " default from existing Product PO=" + no);
//		}

		// Invalid Category
		sql = "UPDATE I_Product SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Invalid ProdCategorty,' "
				+ "WHERE M_Product_Category_ID IS NULL"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid Category=" + no);

		//Erreur si changement de Cat�gorie -> Comptabilit�
		sql = "UPDATE I_Product SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Impossible de changer la cat�gorie -> Info compatable !,' "
				+ "WHERE exists (Select M_Product_Category_ID from M_Product where I_Product.M_Product_Category_ID<> M_Product.M_Product_Category_ID and M_Product.M_Product_ID=I_Product.M_Product_ID)"
				+ " and M_Product_Category_ID is not null and  M_Product_ID is not null  AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Change Category=" + no);

		// Set UOM (System/own)
		
		sql = "UPDATE I_Product i "
				+ "SET X12DE355 = "
				+ "(SELECT MAX(X12DE355) FROM C_UOM u WHERE u.IsDefault='Y' AND u.AD_Client_ID IN (0,i.AD_Client_ID)) "
				+ "WHERE X12DE355 IS NULL AND C_UOM_ID IS NULL and i.IsActive='Y'"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.fine("Set UOM Default=" + no);
		//
		
		
		sql = "UPDATE I_Product i "
				+ "SET C_UOM_ID = (SELECT C_UOM_ID FROM C_UOM u WHERE u.X12DE355=i.X12DE355 AND u.AD_Client_ID IN (0,i.AD_Client_ID)) "
				+ "WHERE C_UOM_ID IS NULL" + " AND I_IsImported<>'Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Set UOM=" + no);
				
		//
		sql = "UPDATE I_Product " + "SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Invalid UOM, ' " + "WHERE C_UOM_ID IS NULL"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid UOM=" + no);
		
		// Set Currency EC003
		// sql = "UPDATE I_Product i "
		// + "SET ISO_Code=(SELECT ISO_Code FROM C_Currency c"
		// + " INNER JOIN C_AcctSchema a ON (a.C_Currency_ID=c.C_Currency_ID)"
		// +
		// " INNER JOIN AD_ClientInfo ci ON (a.C_AcctSchema_ID=ci.C_AcctSchema1_ID)"
		// + " WHERE ci.AD_Client_ID=i.AD_Client_ID) "
		// + "WHERE C_Currency_ID IS NULL AND ISO_Code IS NULL"
		// + " AND I_IsImported<>'Y'"
		// + STD_CLIENT_CHECK;
		// no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID},
		// get_Trx());
		// log.fine("Set Currency Default=" + no);
		//
		sql = "UPDATE I_Product i "
				+ "SET C_Currency_ID=(SELECT C_Currency_ID FROM C_Currency c"
				+ " WHERE i.ISO_Code=c.ISO_Code AND c.AD_Client_ID IN (0,i.AD_Client_ID)) "
				+ "WHERE C_Currency_ID IS NULL" + " AND I_IsImported<>'Y' and i.IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("doIt- Set Currency=" + no);

		
		
		//
		sql = "UPDATE I_Product " + "SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Currency,' " + "WHERE C_Currency_ID IS NULL"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid Currency=" + no);
		
		// Verify ProductType
		sql = "UPDATE I_Product " + "SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Invalid ProductType,' "
				+ "WHERE ProductType NOT IN ('I','S')"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Invalid ProductType=" + no);
		
		// Unique UPC/Value
		sql = "UPDATE I_Product i "
				+ "SET I_IsImported='E', I_ErrorMsg="
				+ ts
				+ "||'ERR=Value not unique,' "
				+ "WHERE I_IsImported<>'Y'"
				// +
				// " AND Value IN (SELECT Value FROM I_Product ii WHERE i.AD_Client_ID=ii.AD_Client_ID GROUP BY Value HAVING COUNT(*) > 1)"
				// + STD_CLIENT_CHECK;
				+ " AND EXISTS (SELECT 1 FROM I_Product ii WHERE i.AD_Client_ID=ii.AD_Client_ID AND i.I_Product_ID<>ii.I_Product_ID AND i.Value=ii.Value) "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Not Unique Value=" + no);
		//
		sql = "UPDATE I_Product i "
				+ "SET I_IsImported='E', I_ErrorMsg="
				+ ts
				+ "||'ERR=UPC not unique,' "
				+ "WHERE I_IsImported<>'Y'"
				// +
				// " AND UPC IN (SELECT UPC FROM I_Product ii WHERE i.AD_Client_ID=ii.AD_Client_ID GROUP BY UPC HAVING COUNT(*) > 1)"
				// + STD_CLIENT_CHECK;
				+ " AND EXISTS (SELECT 1 FROM I_Product ii WHERE ii.I_Product_ID<>i.I_Product_ID AND i.AD_Client_ID=ii.AD_Client_ID AND i.UPC=ii.UPC) "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Not Unique UPC=" + no);

		// Mandatory Value
		sql = "UPDATE I_Product i " + "SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=No Mandatory Value,' " + "WHERE Value IS NULL and i.IsActive='Y'"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("No Mandatory Value=" + no);
		
		// Mandatory Value Name
		sql = "UPDATE I_Product i " + "SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Name Is Mandatory,' " + "WHERE Name IS NULL and i.IsActive='Y'"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Name Is null=" + no);


		// Vendor Product No
//		 sql = "UPDATE I_Product i "
//		 + "SET I_IsImported='E', I_ErrorMsg="+ts
//		 +"||'ERR=No Fournisseur Obligatoire,' "
//		 + "WHERE I_IsImported<>'Y'"+
//		 " AND VendorProductNo IS NULL" //AND (C_BPartner_ID IS NOT NULL OR BPartner_Value IS NOT NULL)"
//		 + STD_CLIENT_CHECK;
//		 no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID},
//		 get_Trx());
//		 log.info( "No Mandatory VendorProductNo=" + no);
		//Forcer si le code fournisseur est null
//		sql = "UPDATE I_Product SET VendorProductNo=Value "
//				+ "WHERE C_BPartner_ID IS NOT NULL AND VendorProductNo IS NULL and IsActive='Y'"
//				+ " AND I_IsImported='N'" + STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//				get_Trx());
//		log.info("VendorProductNo Set to Value=" + no);
		
		
		
		
//		sql = "UPDATE I_Product i "
//				+ "SET I_IsImported='E', I_ErrorMsg="
//				+ ts
//				+ "||'ERR=VendorProductNo not unique,' "
//				+ "WHERE I_IsImported<>'Y'"
//				+ " AND C_BPartner_ID IS NOT NULL"
//				// + " AND (C_BPartner_ID, VendorProductNo) IN "
//				// +
//				// " (SELECT C_BPartner_ID, VendorProductNo FROM I_Product ii WHERE i.AD_Client_ID=ii.AD_Client_ID GROUP BY C_BPartner_ID, VendorProductNo HAVING COUNT(*) > 1)"
//				+ " AND EXISTS (SELECT 1 FROM I_Product ii WHERE i.AD_Client_ID=ii.AD_Client_ID AND i.I_Product_ID<>ii.I_Product_ID "
//				+ " AND i.C_BPartner_ID=ii.C_BPartner_ID AND i.VendorProductNo=ii.VendorProductNo and ii .IsActive='Y') and i.IsActive='Y' "
//				+ STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//				get_Trx());
//		if (no != 0)
//			log.warning("Not Unique VendorProductNo=" + no);
		

		// Recheck after BP - Product do check on  BP - VendorProduct
//		sql = "UPDATE I_Product i" 
//		 + " SET I_IsImported='E', I_ErrorMsg= "
//		 + ts 
//		 + "||'ERR=VendorProductNo not unique,' "  
//		 + "WHERE I_IsImported<>'Y' "
//		 + "AND C_BPartner_ID IS NOT NULL "
//		 + " AND EXISTS (SELECT 1 FROM M_Product_PO ii WHERE i.AD_Client_ID=ii.AD_Client_ID "  
//		 + " AND i.C_BPartner_ID=ii.C_BPartner_ID AND i.M_Product_ID<>ii.M_Product_ID AND i.VendorProductNo=ii.VendorProductNo and ii.IsActive='Y') and i.IsActive='Y' " 
//		 + STD_CLIENT_CHECK;
//		 no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//				 get_Trx());
//		 if (no != 0)
//			 log.warning("Not Unique VendorProductNo Exist On Another BP Product=" + no);
		 
//		// Recheck after BP - Product do check on  BP - VendorProduct
//			sql = "UPDATE I_Product i" 
//			 + " SET I_IsImported='E', I_ErrorMsg= "
//			 + ts 
//			 + "||'ERR=VendorProductNo not unique,' "  
//			 + "WHERE I_IsImported<>'Y' "
//			 + "AND C_BPartner_ID IS NOT NULL "
//			 + " AND EXISTS (SELECT 1 FROM M_Product_PO ii WHERE i.AD_Client_ID=ii.AD_Client_ID "  
//			 + " AND i.C_BPartner_ID<>ii.C_BPartner_ID AND i.M_Product_ID<>ii.M_Product_ID AND i.VendorProductNo=ii.VendorProductNo and ii.IsActive='Y') and i.IsActive='Y' " 
//			 + STD_CLIENT_CHECK;
//			 no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//					 get_Trx());
//			 if (no != 0)
//				 log.warning("Not Unique VendorProductNo Exist On Another BP Product=" + no);
//
//
//		
		// Get Default Tax Category		
		int C_TaxCategory_ID = 0;
		MTaxCategory tc = MTaxCategory.getDefault(getCtx());
		if (tc != null)
			C_TaxCategory_ID = tc.getC_TaxCategory_ID();
		log.fine("C_TaxCategory_ID=" + C_TaxCategory_ID);

		// AttributeSet : EC003
		sql = "UPDATE I_Product "
				+ "SET M_AttributeSet_ID= (SELECT M_AttributeSet_ID FROM M_AttributeSet WHERE UPPER(VALUE)=UPPER(Name_AttributeSet) and I_Product.AD_Client_ID =M_AttributeSet.AD_Client_ID) "
				+ " WHERE I_IsImported<>'Y' AND M_AttributeSet_ID IS NULL and IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("M_AttributeSet Set FROM Name_Attribute=" + no);		
		
//		sql = "UPDATE I_Product "
//				+ "SET M_AttributeSet_ID= (SELECT M_AttributeSet_ID FROM M_Product_Category pc WHERE pc.M_Product_Category_ID= I_Product.M_Product_Category_ID)"
//				+ " WHERE I_IsImported<>'Y' AND M_AttributeSet_ID IS NULL"
//				+ STD_CLIENT_CHECK;
//		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
//				get_Trx());
//		log.info("M_AttributeSet Set FROM Product Catgory =" + no);
		
		// Mandatory Value
		sql = "UPDATE I_Product i SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Collection d''attribut non trouv�e,' WHERE Name_AttributeSet IS not NULL and M_AttributeSet_ID is null and i.IsActive='Y'"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Collection d'attribut non trouv�e=" + no);
		// Marque
		sql = "UPDATE I_Product "
				+ "SET Y_Marque_ID= (SELECT max(Y_Marque_ID) FROM Y_Marque m WHERE UPPER(Value_Y_Marque)= UPPER(m.Value) and I_Product.AD_Client_ID = m.AD_Client_ID)"
				+ " WHERE I_IsImported<>'Y' AND Y_Marque_ID IS NULL and IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Y_Marque_ID =" + no);
		
		sql = "UPDATE I_Product i SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Marque non trouv�e,' WHERE Value_Y_Marque IS not NULL and Y_Marque_ID is null"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Marque non trouv�e=" + no);	
		// Gamme
		sql = "UPDATE I_Product "
				+ "SET Z_Gamme_ID= (SELECT Z_Gamme_ID FROM Z_Gamme m WHERE UPPER(Value_Y_Gamme)= UPPER(m.Value) and I_Product.AD_Client_ID = m.AD_Client_ID)"
				+ " WHERE I_IsImported<>'Y' AND Z_Gamme_ID IS NULL and IsActive='Y' "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Z_Gamme_ID =" + no);
	
		sql = "UPDATE I_Product i SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Gamme non trouv�e,' WHERE Value_Y_Gamme IS not NULL and Z_Gamme_ID is null"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Gamme non trouv�e=" + no);
		// S. Famille
		sql = "UPDATE I_Product "
				+ "SET Z_S_Famille_ID= (SELECT Z_S_Famille_ID FROM Z_S_Famille WHERE UPPER(Value_Z_S_Famille) = UPPER(Z_S_Famille.Value) AND "
				+ "Z_S_Famille.M_Product_Category_ID = I_Product.M_Product_Category_ID and I_Product.AD_Client_ID = Z_S_Famille.AD_Client_ID)"
				+ " WHERE I_IsImported<>'Y' AND Z_S_Famille_ID IS NULL and IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Z_S_Famille_ID =" + no);
		
		sql = "UPDATE I_Product i SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=Sous Famille non trouv�e,' WHERE Value_Z_S_Famille IS not NULL and Z_S_Famille_ID is null"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("Sous Famille non trouv�e=" + no);
		// S.S Famille
		sql = "UPDATE I_Product "
				+ "SET Z_S_S_Famille_ID= (SELECT Z_S_S_Famille_ID FROM Z_S_S_Famille WHERE UPPER(Value_Z_S_S_Famille) = UPPER(Z_S_S_Famille.Value) AND "
				+ "Z_S_S_Famille.Z_S_Famille_ID = I_Product.Z_S_Famille_ID and I_Product.AD_Client_ID = Z_S_S_Famille.AD_Client_ID)"
				+ " WHERE I_IsImported<>'Y' AND Z_S_S_Famille_ID IS NULL and IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Z_S_S_Famille_ID =" + no);

		sql = "UPDATE I_Product i SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=S S Famille non trouv�e,' WHERE Value_Z_S_S_Famille IS not NULL and Z_S_S_Famille_ID is null"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("S S Famille non trouv�e=" + no);
		// S.S.S Famille
		sql = "UPDATE I_Product "
				+ "SET Z_S_S_S_Famille_ID= (SELECT Z_S_S_S_Famille_ID FROM Z_S_S_S_Famille WHERE UPPER(Value_Z_S_S_S_Famille) = UPPER(Z_S_S_S_Famille.Value) AND "
				+ "Z_S_S_S_Famille.Z_S_S_Famille_ID = I_Product.Z_S_S_Famille_ID and I_Product.AD_Client_ID = Z_S_S_S_Famille.AD_Client_ID)"
				+ " WHERE I_IsImported<>'Y' AND Z_S_S_S_Famille_ID IS NULL and IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("Z_S_S_S_Famille_ID =" + no);
				
		sql = "UPDATE I_Product i SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=SSS famille non trouv�e,' WHERE Value_Z_S_S_S_Famille IS not NULL and Z_S_S_S_Famille_ID is null and  i.isactive='Y'"
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		if (no != 0)
			log.warning("SSS famille non trouv�e=" + no);
		
		// Tax Category
		sql = "UPDATE I_Product "
				+ "SET C_TaxCategory_ID= (SELECT C_TaxCategory_ID FROM C_TaxCategory WHERE UPPER(Name_TaxCategory) = UPPER(C_TaxCategory.Name) AND C_TaxCategory.AD_CLIENT_ID = ? )"
				+ " WHERE I_IsImported<>'Y' AND C_TaxCategory_ID IS NULL and IsActive='Y'"
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID , m_AD_Client_ID },
				get_Trx());
		log.info("C_TaxCategory_ID =" + no);

		sql = "UPDATE I_Product "
				+ "SET I_IsImported='E', I_ErrorMsg="
				+ ts
				+ "||'ERR=Cat�gorie TVA non trouv�e,' "
				+ " WHERE "
				+ " C_TaxCategory_ID IS NULL AND I_IsImported='N' "
				+ STD_CLIENT_CHECK;
		no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
				get_Trx());
		log.info("S.S.Famille =" + no);
		
		// verifier type SAV 
				String tmp = "(select adrl.value from AD_Ref_List adrl where adrl.ad_reference_id = " +
				"(SELECT adr.ad_reference_id " +
				"FROM AD_Reference adr " +
				"WHERE adr.name = 'M_Product SAV Type'))";

				sql = "UPDATE I_Product " + "SET I_IsImported='E', I_ErrorMsg=" + ts
				+ "||'ERR=type SAV inexistante,' "
				+ "WHERE Value_TypeSAV IS NOT NULL and Value_TypeSAV NOT IN "
				+ tmp
				+ " AND I_IsImported<>'Y'" + STD_CLIENT_CHECK;

				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
						get_Trx());
				log.info("Type SAV not Exists=" + no);

				
				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID }, get_Trx());
				log.fine("Set Value_TypeSAV  =" + no);

				//
				
				sql = "UPDATE I_Product SET I_Product.PO_Pricelist_ID = (Select M_Pricelist_ID from M_Pricelist where M_Pricelist.Name = I_Product.PO_PricelistName and I_Product.AD_Client_ID = M_Pricelist.AD_Client_ID) "
						+ "WHERE I_Product.PO_Pricelist_ID is null and I_Product.PO_PricelistName is not null and I_Product.IsActive='Y'"
						+ " AND I_Product.I_IsImported='N'" + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
						get_Trx());
				log.info("PO_Pricelist_ID Set to Name=" + no);
				
				sql = "UPDATE I_Product "
						+ "SET I_IsImported='E', I_ErrorMsg="
						+ ts
						+ "||'ERR=Pricelist PO not exist' "
						+ " WHERE "
						+ " I_Product.PO_Pricelist_ID is null and I_Product.PO_PricelistName is not null AND I_IsImported='N' "
						+ STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
						get_Trx());
				log.info("Pricelist PO not exist =" + no);
				
				sql = "UPDATE I_Product SET I_Product.SO_Pricelist_ID = (Select M_Pricelist_ID from M_Pricelist where M_Pricelist.Name = I_Product.SO_PricelistName and I_Product.AD_Client_ID = M_Pricelist.AD_Client_ID) "
						+ "WHERE I_Product.SO_Pricelist_ID is null and I_Product.SO_PricelistName is not null and I_Product.IsActive='Y'"
						+ " AND I_Product.I_IsImported='N'" + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
						get_Trx());
				log.info("SO_Pricelist_ID Set to Name=" + no);
				
				sql = "UPDATE I_Product "
						+ "SET I_IsImported='E', I_ErrorMsg="
						+ ts
						+ "||'ERR=Pricelist SO not exist' "
						+ " WHERE "
						+ " I_Product.SO_Pricelist_ID is null and I_Product.SO_PricelistName is not null AND I_IsImported='N' "
						+ STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
						get_Trx());
				
				sql = "UPDATE I_Product SET Origine = trim(upper(Origine)) "
						+ "WHERE I_Product.Origine is not null and XX_Origine is null and I_Product.IsActive='Y'"
						+ " AND I_Product.I_IsImported='N'" + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
						get_Trx());
				log.info("PO_Pricelist_ID Set to Name=" + no);
				
				sql = "UPDATE I_Product SET XX_Origine = (select max(C_Country_ID) from C_Country where C_Country.CountryCode = I_Product.Origine) "
						+ "WHERE I_Product.Origine is not null and XX_Origine is null and I_Product.IsActive='Y'"
						+ " AND I_Product.I_IsImported='N'" + STD_CLIENT_CHECK;
				no = DB.executeUpdate(sql.toString(), new Object[] { m_AD_Client_ID },
						get_Trx());
				log.info("PO_Pricelist_ID Set to Name=" + no);
				
		get_Trx().commit();

		 //-------------------------------------------------------------------
		 
		 int noUpdate = 0;
		 int noInsert = 0;
		 /**
		 * Changes for uptake of bulk sql update : PO.saveAll
		 * Go through all records
		 */

		 log.fine("start separating ... ");
		 sql = "SELECT * FROM I_Product WHERE I_IsImported='N' and isactive='Y'" +
		 STD_CLIENT_CHECK;
		 sql += " ORDER BY BPartner_Value, Value";
		
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 //EC003
		 try {
		 // Loop through records
		 pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
		 pstmt.setInt(1, m_AD_Client_ID);
		 rs = pstmt.executeQuery();
		 while(rs.next()){
		 X_I_Product imp = new X_I_Product(getCtx(), rs, get_Trx());
		 if(imp.get_ValueAsString("Attributs")!=null && imp.get_ValueAsString("Attributs").length()!=0)	
			 //Savoir si l'article � d�j� une Instance si oui delete
			 createAttributeSetInstance(imp);
		 }
		 }catch (Exception e) {
		 log.log(Level.SEVERE, "Locator - " + sql.toString(), e);
		 }
		 finally {
		 DB.closeResultSet(rs);
		 DB.closeStatement(pstmt);
		 }
		 //
		
		 commit();
		
		 
		 List<MProduct> productsToSave = new ArrayList<MProduct>();
		 Map<Integer,X_I_Product> importProductMap = new
		 HashMap<Integer,X_I_Product>();
		
		 try {
		 // Loop through records
		 pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
		 pstmt.setInt(1, m_AD_Client_ID);
		 rs = pstmt.executeQuery();

		 
		 while(rs.next()){
			 X_I_Product imp = new X_I_Product(getCtx(), rs, get_Trx());
			 importProductMap.put(imp.getI_Product_ID(), imp);
			 int I_Product_ID = imp.getI_Product_ID();
			 int M_Product_ID = imp.getM_Product_ID();
			 int C_BPartner_ID = imp.getC_BPartner_ID();
			 boolean newProduct = M_Product_ID == 0;
			 log.fine("I_Product_ID=" + I_Product_ID + ", M_Product_ID=" +
			 M_Product_ID
			 + ", C_BPartner_ID=" + C_BPartner_ID);
			 MProduct product = null;
			 if(newProduct) { // Insert new Product
				 product = new MProduct(M_Product_ID, imp);
				 if (imp.get_Value("Discontinued") != null)
				 product.setDiscontinued(imp.isDiscontinued());
				 if (imp.get_Value("IsWebStoreFeatured") != null)
				 product.setIsWebStoreFeatured(imp.get_ValueAsBoolean("IsWebStoreFeatured"));
				 if (imp.get_Value("IsPurchased") != null)
					 product.setIsPurchased(imp.get_ValueAsBoolean("IsPurchased"));
				 //EC0037
				 if(imp.get_Value("OldValue")!=null)
					 product.set_ValueNoCheck("OldValue", imp.get_Value("OldValue"));
				 product.setAD_Client_ID(m_AD_Client_ID);
				 product.setAD_Org_ID(0);
				 product.setProductType(X_M_Product.PRODUCTTYPE_Item);
				 if (imp.get_Value("Z_Gamme_ID") != null )
					 product.set_Value("Z_Gamme_ID", imp.get_Value("Z_Gamme_ID"));
				 if(imp.get_ValueAsTimestamp("Z_GammeChange")!=null)
					 product.set_Value("Z_GammeChange",imp.get_ValueAsTimestamp("Z_GammeChange"));
				 if (imp.get_Value("Value_TypeSAV") != null )
					 product.set_ValueNoCheck("SAVType", imp.get_Value("Value_TypeSAV"));
				 if(imp.get_Value("Description")!=null)
					 product.setDescription(imp.get_Value("Description").toString());
				 if(imp.get_Value("CodeDouanier")!=null)
					 product.set_Value("CodeDouanier",imp.get_Value("CodeDouanier"));
				 if(imp.get_Value("XX_Origine")!=null)
					 product.set_Value("XX_Origine", imp.get_Value("XX_Origine"));
				 productsToSave.add(product);
				 noInsert++;
			 }
			 else 
			 {
				 product = new MProduct(M_Product_ID, imp);
				 if(imp.get_Value("OldValue")!=null)
					 product.set_ValueNoCheck("OldValue", imp.get_Value("OldValue"));
				 product.setAD_Client_ID(m_AD_Client_ID);
				 if (imp.get_Value("Discontinued") != null)
				 product.setDiscontinued(imp.isDiscontinued());
				 if (imp.get_Value("IsWebStoreFeatured") != null)
					 product.setIsWebStoreFeatured(imp.get_ValueAsBoolean("IsWebStoreFeatured"));
				 if (imp.get_Value("IsPurchased") != null)
					 product.setIsPurchased(imp.get_ValueAsBoolean("IsPurchased"));
				 product.setAD_Org_ID(0);
				 product.setProductType(X_M_Product.PRODUCTTYPE_Item);
				 if (imp.get_Value("Z_Gamme_ID") != null )
				 product.set_Value("Z_Gamme_ID", imp.get_Value("Z_Gamme_ID"));
				 if (imp.get_Value("Value_TypeSAV") != null )
				 product.set_ValueNoCheck("SAVType", imp.get_Value("Value_TypeSAV"));
				 if(imp.get_Value("CodeDouanier")!=null)
					 product.set_Value("CodeDouanier",imp.get_Value("CodeDouanier"));
				 if(imp.get_Value("XX_Origine")!=null)
					 product.set_Value("XX_Origine", imp.get_Value("XX_Origine"));
				 productsToSave.add(product);
				 noUpdate++;
			 }
		 
			 if(productsToSave.size() > COMMITCOUNT)
			 {
				 saveProducts(productsToSave, importProductMap);
				 productsToSave.clear();
				 importProductMap.clear();
			 }
		 }
		 saveProducts(productsToSave, importProductMap);
	}
	catch (Exception e) 
		{
		log.log(Level.SEVERE, "Locator - " + sql.toString(), e);
//		throw new CompiereException("Could not save Product - Invalid pricelist BPartner");
		}
		finally 
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		

		// Set Error to indicator to not imported
		 sql = "UPDATE I_Product "
		 + "SET I_IsImported='N', Updated=SysDate "
		 + "WHERE I_IsImported<>'Y'"
		 + STD_CLIENT_CHECK;
		 no = DB.executeUpdate(sql.toString(), new Object[]{m_AD_Client_ID},
		 get_Trx());
		 addLog (0, null, new BigDecimal (no), "@Errors@");
		 addLog (0, null, new BigDecimal (noInsert),
		 "@M_Product_ID@: @Inserted@");
		 addLog (0, null, new BigDecimal (noUpdate),
		 "@M_Product_ID@: @Updated@");
		return "";
	} // doIt

	private void saveProducts(List<MProduct> productsToSave,
			Map<Integer, X_I_Product> importProductMap) {

		if (productsToSave.isEmpty() || importProductMap.isEmpty())
			return;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (MProduct product : productsToSave) {
			if (product.is_ValueChanged("M_Product_Category_ID"))
				product.setCategoryChanged(true);
		}

		if (!PO.saveAll(get_Trx(), productsToSave))
			throw new CompiereStateException("Could not save products");

		List<MProductCosting> productCostingToSave = new ArrayList<MProductCosting>();
		List<MCost> costsToSave = new ArrayList<MCost>();
		MAcctSchema[] mas = MAcctSchema.getClientAcctSchema(getCtx(),
				getAD_Client_ID(), get_Trx());
		List<MProduct> productsNew = new ArrayList<MProduct>();
		List<MProduct> productsChanged = new ArrayList<MProduct>();
		for (int vv=0; vv < productsToSave.size();vv++) {
			MProduct product = productsToSave.get(vv);
			X_I_Product imp = importProductMap.get(product.getI_Product_ID());
			imp.setM_Product_ID(product.getM_Product_ID());

			if (product.isNew()) {
				for (MAcctSchema element : mas) {
					// Old
					MProductCosting pcOld = new MProductCosting(product,
							element.getC_AcctSchema_ID());
					productCostingToSave.add(pcOld);
				}
				productsNew.add(product);
			} else
				productsChanged.add(product);

			if (product.isNew() || product.isCategoryChanged()) {
				List<MCost> costs = MCost.getAll(product);
				//Smile 2767
				List<MCost> costs2 = new ArrayList<MCost>();
				if (costs != null && costs.size() > 0)
				{
					if(product.isNew()){
					for (int i = 0; i < costs.size(); i++) {
						MCost mc = costs.get(i);
						mc.setCurrentCostPrice(imp.getPricePO());
						mc.save();
						costs2.add(mc);
					}
					if(costs2!=null && costs2.size()>0)
						costsToSave.addAll(costs2);
					}
					
				}else
					costsToSave.addAll(costs);
			}
		}

		if (!PO.saveAll(get_Trx(), costsToSave))
			throw new CompiereStateException("Could not save cost records");

		//MAJ Cost
		
		if (!PO.saveAll(get_Trx(), productCostingToSave))
			throw new CompiereStateException("Could not save product costing");

		// Bulk Insert Accounting records
		if (productsNew != null && productsNew.size() > 0)
			if (!PO.insert_AccountingAll("M_Product_Acct",
					"M_Product_Category_Acct",
					"p.M_Product_Category_ID = a.M_Product_Category_ID",
					new ArrayList<PO>(productsNew)))
				throw new CompiereStateException(
						"Could not insert product accouting");

		if (productsChanged != null && productsChanged.size() > 0)
			if (!PO.update_AccountingAll("M_Product_Acct",
					"M_Product_Category_Acct",
					"p.M_Product_Category_ID = a.M_Product_Category_ID",
					new ArrayList<PO>(productsChanged)))
				throw new CompiereStateException(
						"Could not update product accounting");

		//Attention liste de prix par societe IDSociete,IDlist
		int SO_PriceList_ID =0;
		int PO_PriceList_ID =0;
		String PO_PriceList_IDS = Msg.getMsg(getCtx(),
				"EUROCENTER_PO_PRICELIST_IMPORT");
		StringTokenizer st=new StringTokenizer(PO_PriceList_IDS,";");
		Hashtable<Integer, Integer> ht = new Hashtable<Integer, Integer>();
		while ( st.hasMoreTokens() ) {
			StringTokenizer st2=new StringTokenizer(st.nextToken(),",");
			
			while ( st2.hasMoreTokens() ) {
				ht.put((Integer.valueOf(st2.nextToken().toString())),(Integer.valueOf(st2.nextToken().toString())));
			}
			
		}
		PO_PriceList_ID = ((Integer) ht.get(m_AD_Client_ID)).intValue();
		//PO_PriceList_IDS.
		// EC003
		int [][] values = null;
		String SO_PriceList_IDS = Msg.getMsg(getCtx(),
				"EUROCENTER_SO_PRICELIST_IMPORT");
		st=new StringTokenizer(SO_PriceList_IDS,";");
		ht = new Hashtable<Integer, Integer>();
		while ( st.hasMoreTokens() ) {
			StringTokenizer st2=new StringTokenizer(st.nextToken(),",");
			while ( st2.hasMoreTokens() ) {
				ht.put((Integer.valueOf(st2.nextToken().toString())),(Integer.valueOf(st2.nextToken().toString())));
			}	
			}
		SO_PriceList_ID = ((Integer) ht.get(m_AD_Client_ID)).intValue();
		MPriceList pl = null;
		MPriceList plPO = null; 
		//Ajouter un parametre date pour la liste OV pour update prix
		MPriceListVersion plv = null;
		//Ajouter un parametre date pour la liste OA pour update prix
		MPriceListVersion plvPO = null;
		MProductPrice pp = null;
		//int SO_PriceList_ID =0;
		//int PO_PriceList_ID =0;
		if (SO_PriceList_ID == 0)
			log.warning("No SO Price Liste");
		else
			pl = MPriceList.get(getCtx(), SO_PriceList_ID, get_Trx());
		if (PO_PriceList_ID == 0)
			log.warning("No PO Price Liste");
		else
			plPO = MPriceList.get(getCtx(), PO_PriceList_ID, get_Trx());

		int noInsertPO = 0;
		List<MProductPO> productPOsToSave = new ArrayList<MProductPO>();
		List<MProductPrice> priceListsToSave = new ArrayList<MProductPrice>();
		List<X_I_Product> importProductsToSave = new ArrayList<X_I_Product>(
				importProductMap.values());
		List<X_Z_ProductTax> productTaxToSave = new ArrayList<X_Z_ProductTax>();
		List<X_M_Replenish> productRepleToSave = new ArrayList<X_M_Replenish>();

		int PO_BPartner_ID = -1;

		for (X_I_Product imp : importProductsToSave) {
			log.warning(imp.getValue());
			int C_BPartner_ID = imp.getC_BPartner_ID();
			int M_Product_ID = imp.getM_Product_ID();
			// PO Info
//			if (C_BPartner_ID != 0) {
//				// If Product existed, try to update first
//				MProductPO productPO = MProductPO.getOfVendorProduct(getCtx(),
//						C_BPartner_ID, M_Product_ID, get_Trx());
//				
//				if (productPO == null) {
//					productPO = new MProductPO(getCtx(), 0, get_Trx());
//					noInsertPO++;
//				}
//				PO.copyValues(imp, productPO);
//				productPO.setAD_Client_ID(m_AD_Client_ID);
//				productPO.setC_BPartner_ID(C_BPartner_ID);
//				productPO.setM_Product_ID(M_Product_ID);
//				productPO.setIsCurrentVendor(true);
//				productPOsToSave.add(productPO);
//			}
			if (C_BPartner_ID != 0 && imp.getVendorProductNo()!=null) {
				// If Product existed, try to update first
				MProductPO productPO = MProductPO.getOfVendorProduct(getCtx(),
						C_BPartner_ID, M_Product_ID,m_AD_Client_ID, get_Trx());
				//Savoir si il existe un autre PO, mettre � Default � N
				if (productPO == null) {
					productPO = new MProductPO(getCtx(), 0, get_Trx());
					if(imp.getVendorProductNo()!=null)
						productPO.setVendorProductNo(imp.getVendorProductNo());
					productPO.setC_Currency_ID(imp.getC_Currency_ID());
					if (imp.getUPC()!=null)
						productPO.setUPC(imp.getUPC());
					if(imp.getPricePO().doubleValue()!=0)
						productPO.setPricePO(imp.getPricePO());
					productPO.setAD_Client_ID(m_AD_Client_ID);
					productPO.setC_BPartner_ID(C_BPartner_ID);
					productPO.setM_Product_ID(M_Product_ID);
					productPO.setIsCurrentVendor(imp.get_ValueAsBoolean("IsDefaultVendor"));
					if(imp.get_Value("Order_Pack")!=null)
						productPO.setOrder_Pack(imp.getOrder_Pack());
					productPOsToSave.add(productPO);
					noInsertPO++;
				}
				else
				{
					//mettre � jour !
					if(imp.getVendorProductNo()!=null)
						productPO.setVendorProductNo(imp.getVendorProductNo());
					productPO.setC_Currency_ID(imp.getC_Currency_ID());
					if (imp.getUPC()!=null)
						productPO.setUPC(imp.getUPC());
					if(imp.getPricePO().doubleValue()!=0)
						productPO.setPricePO(imp.getPricePO());
					productPO.setAD_Client_ID(m_AD_Client_ID);
					productPO.setC_Currency_ID(imp.getC_Currency_ID());
					productPO.setC_BPartner_ID(C_BPartner_ID);
					productPO.setM_Product_ID(M_Product_ID);
					productPO.setIsCurrentVendor(imp.get_ValueAsBoolean("IsDefaultVendor"));
					if(imp.get_Value("Order_Pack")!=null)
						productPO.setOrder_Pack(imp.getOrder_Pack());
					productPOsToSave.add(productPO);
					noInsertPO++;
				}
				//PO.copyValues(imp, productPO);
//				productPO.setAD_Client_ID(m_AD_Client_ID);
//				productPO.setC_BPartner_ID(C_BPartner_ID);
//				productPO.setM_Product_ID(M_Product_ID);
//				productPO.setIsCurrentVendor(true);
//				productPOsToSave.add(productPO);
			}


//			if (p_M_PriceList_Version_ID != 0) {
//				BigDecimal PriceList = imp.getPriceList().equals(Env.ZERO)? imp.getPriceStd():imp.getPriceList();
//				BigDecimal PriceStd = imp.getPriceStd();
//				BigDecimal PriceLimit = imp.getPriceLimit().equals(Env.ZERO)? imp.getPriceStd():imp.getPriceLimit();
//
//				pp = MProductPrice.get(getCtx(), p_M_PriceList_Version_ID,
//						M_Product_ID, get_Trx());
//				if (pp == null)
//					pp = new MProductPrice(getCtx(), p_M_PriceList_Version_ID,
//							M_Product_ID, get_Trx());
//				pp.setPrices(PriceList, PriceStd, PriceLimit);
//				priceListsToSave.add(pp);
//			}

			// EC003
			if(imp.get_ValueAsInt("SO_Pricelist_ID")!=0)
			{
				SO_PriceList_ID = imp.get_ValueAsInt("SO_Pricelist_ID");
				pl = MPriceList.get(getCtx(), SO_PriceList_ID, get_Trx());
			}
			if (SO_PriceList_ID != 0
					&& (imp.get_Value("PriceStd") != null 
					//&& imp.getPriceStd().compareTo(BigDecimal.ZERO) != 0
					)) {
				//Aller rechercher la derniere version de prix cr��e de la liste non folder
				//Aller rechercher la dernier version avec la meme date
				plv = PriceListVersionHelper.getPriceListLastVersion(pl," AND trunc(ValidFrom)="+DB.TO_DATE(new Timestamp(getCtx().getContextAsTime("#Date")))+" AND Is_ZFolder = 'N' and AD_Client_ID="+m_AD_Client_ID, get_Trx());
				//plv = PriceListVersionHelper.getPriceListVersion(pl,new Timestamp(getCtx().getContextAsTime("#Date"))," AND Is_ZFolder = 'N' and AD_Client_ID="+m_AD_Client_ID, get_Trx());
				if (plv == null) {
					plv = new MPriceListVersion(pl);
					plv.setValidFrom(new Timestamp(getCtx().getContextAsTime(
							"#Date")));
					//plv.setName();
					plv.setName(dateFormat.format(getCtx()
							.getContextAsTime("#Date"))+" "+pl.getName());
					plv.setM_DiscountSchema_ID(pl.getPriceListVersion(
							new Timestamp(getCtx().getContextAsTime("#Date")))
							.getM_DiscountSchema_ID());
					plv.setAD_Client_ID(m_AD_Client_ID);
					plv.setAD_Org_ID(pl.getAD_Org_ID());
					plv.save();
				}
				BigDecimal PriceList = imp.getPriceList().equals(Env.ZERO)?imp.getPriceStd():imp.getPriceList();
				BigDecimal PriceStd = imp.getPriceStd();
				BigDecimal PriceLimit = imp.getPriceLimit().equals(Env.ZERO)?imp.getPriceStd():imp.getPriceLimit();
				pp = MProductPrice.get(getCtx(),
						plv.getM_PriceList_Version_ID(), M_Product_ID,
						get_Trx());
				if (pp == null)
					pp = new MProductPrice(getCtx(),
							plv.getM_PriceList_Version_ID(), M_Product_ID,
							get_Trx());
				pp.setPrices(PriceList, PriceStd, PriceLimit);
				pp.setAD_Org_ID(plv.getAD_Org_ID());
				priceListsToSave.add(pp);

			}
			if(imp.get_ValueAsInt("PO_PriceList_ID")!=0)
			{
				PO_PriceList_ID = imp.get_ValueAsInt("PO_PriceList_ID");
				plPO = MPriceList.get(getCtx(), PO_PriceList_ID, get_Trx());
			}
			
			if (PO_PriceList_ID !=0 && imp.get_Value("PricePO") != null 
			//&& imp.getPricePO().compareTo(BigDecimal.ZERO) != 0
					) {
						//Aller rechercher la derniere version de prix cr��e de la liste non folder
						plvPO = PriceListVersionHelper.getPriceListLastVersion(plPO," AND trunc(ValidFrom)="+DB.TO_DATE(new Timestamp(getCtx().getContextAsTime("#Date")))+" AND Is_ZFolder = 'N' and AD_Client_ID="+m_AD_Client_ID, get_Trx());
						if (plvPO == null) {
							plvPO = new MPriceListVersion(plPO);
							plvPO.setValidFrom(new Timestamp(getCtx().getContextAsTime(
									"#Date")));
							//plv.setName();
							plvPO.setName(dateFormat.format(getCtx()
									.getContextAsTime("#Date"))+" "+plPO.getName() );
							plvPO.setM_DiscountSchema_ID(plPO.getPriceListVersion(
									new Timestamp(getCtx().getContextAsTime("#Date")))
									.getM_DiscountSchema_ID());
							plvPO.setAD_Client_ID(m_AD_Client_ID);
							plvPO.setAD_Org_ID(plPO.getAD_Org_ID());
							plvPO.save();
						}
						
						//plvPO = PriceListVersionHelper.getPriceListVersion(plPO,new Timestamp(getCtx().getContextAsTime("#Date"))," AND Is_ZFolder = 'N' and AD_Client_ID="+m_AD_Client_ID, get_Trx());
						
						//plvPO.setValidFrom(new Timestamp(getCtx()
						//		.getContextAsTime("#Date")));
						//plvPO.setName();
						//plvPO.setName(plPO.getName()+" "+ dateFormat.format(getCtx()
						//		.getContextAsTime("#Date")));
						//plvPO.setM_DiscountSchema_ID(pl.getPriceListVersion(
						//		new Timestamp(getCtx()
						//				.getContextAsTime("#Date")))
						//		.getM_DiscountSchema_ID());
						plvPO.save(get_Trx());

						BigDecimal PriceList = imp.getPricePO();
						BigDecimal PriceStd = imp.getPricePO();
						BigDecimal PriceLimit = imp.getPricePO();
						pp = MProductPrice.get(getCtx(),
								plvPO.getM_PriceList_Version_ID(),
								M_Product_ID, get_Trx());
						if (pp == null)
							pp = new MProductPrice(getCtx(),
									plvPO.getM_PriceList_Version_ID(),
									M_Product_ID, get_Trx());
						pp.setPrices(PriceList, PriceStd, PriceLimit);
						pp.setAD_Client_ID(m_AD_Client_ID);
						pp.setAD_Org_ID(plPO.getAD_Org_ID());
						priceListsToSave.add(pp);
					
//				} else {
//					BigDecimal PriceList = imp.getPricePO();
//					BigDecimal PriceStd = imp.getPricePO();
//					BigDecimal PriceLimit = imp.getPricePO();
//					pp = MProductPrice.get(getCtx(),
//							plvPO.getM_PriceList_Version_ID(), M_Product_ID,
//							get_Trx());
//					if (pp == null)
//						pp = new MProductPrice(getCtx(),
//								plvPO.getM_PriceList_Version_ID(),
//								M_Product_ID, get_Trx());
//					pp.setAD_Client_ID(m_AD_Client_ID);
//					pp.setPrices(PriceList, PriceStd, PriceLimit);
//					priceListsToSave.add(pp);
//
//				}
			}
		
			// EC003 : ProductTax
			X_Z_ProductTax ptax = new X_Z_ProductTax(getCtx(), 0, get_Trx());
			//Savoir si il a d�j� des taxes
			int lists[] = X_Z_ProductTax.getAllIDs(X_Z_ProductTax.Table_Name, " M_Product_ID = "+imp.getM_Product_ID()+" and AD_Client_ID="+m_AD_Client_ID, get_Trx());
			if(lists.length==0)
			{
				if(!imp.get_ValueAsBigDecimal("Z_ProductTaxRecupel").equals(Env.ZERO))
				{
					ptax.setAD_Client_ID(m_AD_Client_ID);
					ptax.setAD_Org_ID(0);
					ptax.setM_Product_ID(imp.getM_Product_ID());
					ptax.setValue("Recupel");
					ptax.setName("R�cupel");
					ptax.setPriceStd(imp.get_ValueAsBigDecimal("Z_ProductTaxRecupel"));

					productTaxToSave.add(ptax);
				}
				if(!imp.get_ValueAsBigDecimal("Z_ProductTaxBebat").equals(Env.ZERO))
				{
					ptax = new X_Z_ProductTax(getCtx(), 0, get_Trx());
					ptax.setAD_Client_ID(m_AD_Client_ID);
					ptax.setAD_Org_ID(0);
					ptax.setM_Product_ID(imp.getM_Product_ID());
					ptax.setValue("Bebat");
					ptax.setName("B�bat");
					ptax.setPriceStd(imp.get_ValueAsBigDecimal("Z_ProductTaxBebat"));

					productTaxToSave.add(ptax); 
				}
				if(!imp.get_ValueAsBigDecimal("Z_ProductTaxAuvibel").equals(Env.ZERO))
				{
					ptax = new X_Z_ProductTax(getCtx(), 0, get_Trx());
					ptax.setAD_Client_ID(m_AD_Client_ID);
					ptax.setAD_Org_ID(0);
					ptax.setM_Product_ID(imp.getM_Product_ID());
					ptax.setValue("Auvibel");
					ptax.setName("Auvibel");
					ptax.setPriceStd(imp.get_ValueAsBigDecimal("Z_ProductTaxAuvibel"));

					productTaxToSave.add(ptax);
				}
			}
			else
				for (int i = 0; i < lists.length; i++) {
					X_Z_ProductTax pt = new X_Z_ProductTax(getCtx(), lists[i], get_Trx());
					if(pt.getValue().equals("Recupel") && imp.get_Value("Z_ProductTaxRecupel")!=null && !pt.get_ValueAsBigDecimal("PriceStd").equals(imp.get_ValueAsBigDecimal("Z_ProductTaxRecupel")))
					{
						pt.setPriceStd(imp.get_ValueAsBigDecimal("Z_ProductTaxRecupel"));
						productTaxToSave.add(pt);
						continue;
					}
					if(pt.getValue().equals("Bebat") && imp.get_Value("Z_ProductTaxBebat")!=null && !pt.get_ValueAsBigDecimal("PriceStd").equals(imp.get_ValueAsBigDecimal("Z_ProductTaxBebat")))
					{
						pt.setPriceStd(imp.get_ValueAsBigDecimal("Z_ProductTaxBebat"));
						productTaxToSave.add(pt);
						continue;
					}
					if(pt.getValue().equals("Auvibel") && imp.get_Value("Z_ProductTaxAuvibel")!=null && !pt.get_ValueAsBigDecimal("PriceStd").equals(imp.get_ValueAsBigDecimal("Z_ProductTaxAuvibel")))
					{
						pt.setPriceStd(imp.get_ValueAsBigDecimal("Z_ProductTaxAuvibel"));
						productTaxToSave.add(pt);
						continue;
					}
				}
			
			//
			//Update Traduction NL
			
			if(imp.get_Value("Description_nl_NL")!=null && !imp.get_Value("Description_nl_NL").toString().equals(""))
			{
				DB.executeUpdate("update M_Product_Trl set DESCRIPTION = '"+imp.get_Value("Description_nl_NL").toString().replace("'", "''")+"' where M_Product_ID="+M_Product_ID+" and AD_Language='nl_NL' and AD_CLIENT_ID="+m_AD_Client_ID, get_Trx());
			}
			if(imp.get_Value("Description")!=null)
				DB.executeUpdate("update M_Product_Trl set DESCRIPTION = '"+imp.get_Value("Description").toString().replace("'", "''")+"' where M_Product_ID="+M_Product_ID+" and AD_Language='fr_FR' and AD_CLIENT_ID="+m_AD_Client_ID, get_Trx());
			imp.setI_IsImported(X_I_Product.I_ISIMPORTED_Yes);
			imp.setProcessed(true);
			
			
				
			//Cr�ation r�appro
			//Si min et max sont <>0 !
			//Level_Max - Level_Min
			//Simple parametrage pour tous les magasins
			//Voir un nouveau systeme d'import des parametres d'appro
//			if(!imp.get_ValueAsBigDecimal("Level_Max").equals(imp.get_ValueAsBigDecimal("Level_Min")))
//			{
//				X_M_Replenish rep = new X_M_Replenish(getCtx(), 0, get_Trx());
//				rep.setAD_Org_ID(0);
//				rep.setLevel_Min(imp.get_ValueAsBigDecimal("Level_Min"));
//				rep.setLevel_Min(imp.get_ValueAsBigDecimal("Level_Max"));
//				rep.setM_Product_ID(imp.getM_Product_ID());
//				//?????????
//				rep.setReplenishType(X_M_Replenish.REPLENISHTYPE_MaintainMaximumLevel);
//				//////////
//				//Warehouse ?????????? WarehouseSource ???????????
//				productRepleToSave.add(rep);
//			}
			
			
			
		}

		if (!PO.saveAll(get_Trx(), productPOsToSave))
			throw new CompiereStateException(
					"Could not save product purchasing");

		// EC003
		if (!PO.saveAll(get_Trx(), productTaxToSave))
			throw new CompiereStateException(
					"Could not save import product tax records");

		if (!PO.saveAll(get_Trx(), priceListsToSave))
			throw new CompiereStateException("Could not save price lists");

//		if (!PO.saveAll(get_Trx(), productRepleToSave))
//			throw new CompiereStateException(
//					"Could not save replenishment lists");
		if (!PO.saveAll(get_Trx(), importProductsToSave))
			throw new CompiereStateException(
					"Could not save import product records");


		//commit();
	}

	public static void main(String[] args) {
		System.setProperty("PropertyFile",
				"/home/namitha/Useful/Compiere.properties");
		Compiere.startup(true);
		CLogMgt.setLoggerLevel(Level.INFO, null);
		CLogMgt.setLevel(Level.INFO);
		// Same Login entries as entered
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

		// Reduce Log level for performance
		CLogMgt.setLoggerLevel(Level.WARNING, null);
		CLogMgt.setLevel(Level.WARNING);

		// Data from Login Context
		int AD_Client_ID = ctx.getAD_Client_ID();
		int AD_User_ID = ctx.getAD_User_ID();
		// Hardcoded
		int AD_Process_ID = 196;
		int AD_Table_ID = 0;
		int Record_ID = 0;

		// Step 1: Setup Process
		MPInstance instance = new MPInstance(Env.getCtx(), AD_Process_ID,
				Record_ID);
		instance.save();

		ProcessInfo pi = new ProcessInfo("Import", AD_Process_ID, AD_Table_ID,
				Record_ID);
		pi.setAD_Client_ID(AD_Client_ID);
		pi.setAD_User_ID(AD_User_ID);
		pi.setIsBatch(false); // want to wait for result
		pi.setAD_PInstance_ID(instance.getAD_PInstance_ID());

		DB.startLoggingUpdates();

		// Step 3: Run the process directly
		ImportProduct test = new ImportProduct();
		test.m_AD_Client_ID = ctx.getAD_Client_ID();
		test.m_deleteOldImported = true;

		long start = System.currentTimeMillis();

		test.startProcess(ctx, pi, null);

		long end = System.currentTimeMillis();
		long durationMS = end - start;
		long duration = durationMS / 1000;
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

	private void createAttributeSetInstance(X_I_Product imp) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		ArrayList<String> values = getAttributeValues(imp
				.get_ValueAsString("Attributs"));
		MAttributeSet as = new MAttributeSet(getCtx(),
				imp.get_ValueAsInt("M_AttributeSet_ID"), get_Trx());
		if (as == null)
			return;
		//
		int m_M_AttributeSetInstance_ID = imp
				.get_ValueAsInt("M_AttributeSetInstance_ID");
		MAttributeSetInstance m_masi = new MAttributeSetInstance(getCtx(),
				m_M_AttributeSetInstance_ID, get_Trx());
		
		m_masi.setM_AttributeSet_ID(as.get_ID());
		
		String mandatory = "";
		int index = 0;
		if (as.isLot()) {
			String text = values.get(index++);
			log.fine("Lot=" + text);
			m_masi.setLot(text);

			// String key = windowCtx.get( LOT );
			// KeyNamePair pp = (KeyNamePair) fLot.listBoxVO.getOption( key );
			//
			// if (pp != null && pp.getKey() != -1)
			// {
			// m_masi.setM_Lot_ID( pp.getKey() );
			// }
			// else
			// {
			// m_masi.setM_Lot_ID(0);
			// }
			//
			if (as.isLotMandatory() && (text == null || text.length() == 0))
				mandatory += " - " + Msg.translate(getCtx(), "Lot");
				// m_changed = true;
		} // Lot

		
		if (as.isSerNo()) {
			String text = values.get(index++);
			log.fine("SerNo=" + text);
			m_masi.setSerNo(text);
			if (as.isSerNoMandatory() && (text == null || text.length() == 0))
				mandatory += " - " + Msg.translate(getCtx(), "SerNo");
		} // SerNo

		if (as.isGuaranteeDate()) {
			String time = values.get(index++);
			Timestamp ts = null;
			
			try {
				ts = new Timestamp(sdf.parse(time).getTime());
			} catch (Exception e) {
				ts = null;
			}
			
			if (ts == null )
			mandatory += " - " + "Erreur dans l'attribut N�: "+index+"(format de Date)";
			
			log.fine("GuaranteeDate=" + ts);
			m_masi.setGuaranteeDate(ts);

			if (as.isGuaranteeDateMandatory() && ts == null)
				mandatory += " - " + Msg.translate(getCtx(), "GuaranteeDate");
		} // GuaranteeDate

		// *** Save Attributes ***
		// New Instance
		m_masi.save();
		
		m_M_AttributeSetInstance_ID = m_masi.getM_AttributeSetInstance_ID();
		m_masi.getDescription();

		// Save Instance Attributes
		MAttribute[] attributes = as.getMAttributes(false);
		for (MAttribute element : attributes) {
			if (X_M_Attribute.ATTRIBUTEVALUETYPE_List.equals(element
					.getAttributeValueType())) {
				
				
				String key = null;
				try {
					key = new String(values.get(index++));
				} catch (Exception e) {
					key = null;
				}
				log.fine(element.getName() + "=" + key);
				
				
				if (element.isMandatory() && key == null)
					mandatory += " - " + element.getName();
				
				
				MAttributeValue[] atvalues = element.getMAttributeValues(); // optional
																			// =
																			// null
				MAttributeValue value = null;

				for (int j = 0; j < atvalues.length; ++j) {
					if (atvalues[j] != null
							&& key != null
							&& atvalues[j].toString().equals(key)) 
							{
								value = atvalues[j];
								break;
							}
				}
//				if (value == null) 
//				{
//					imp.setI_IsImported("E");
//					imp.setI_ErrorMsg("Erreur dans l'attribut N�: "+index);
//					imp.save();
//					return;
//				}
				
				element.setMAttributeInstance(m_M_AttributeSetInstance_ID,
						value);
			} else if (X_M_Attribute.ATTRIBUTEVALUETYPE_Number.equals(element
					.getAttributeValueType())) {
				BigDecimal value = null;
				String val = values.get(index++);
				try {
					value = new BigDecimal(val!=null ? val.replace(",", "."):"0");
				} catch (Exception e) { 
					value = null;
				}
				log.fine(element.getName() + "=" + value);
				if (element.isMandatory() && value == null)
					mandatory += " - " + element.getName();
				
				if (value == null) 
				{
					imp.setI_IsImported("E");
					imp.setI_ErrorMsg("Erreur dans l'attribut N�: "+index);
					imp.save();
					return;
				}
				
				element.setMAttributeInstance(m_M_AttributeSetInstance_ID,
						value);
			} else {
				String value = values.get(index++);
				log.fine(element.getName() + "=" + value);
				if (element.isMandatory()
						&& (value == null || value.length() == 0))
					mandatory += " - " + element.getName();
				element.setMAttributeInstance(m_M_AttributeSetInstance_ID,
						value);
			}
		} // for all attributes

		// Save Model
		m_masi.setDescription();
		m_masi.save();
		//
		if (mandatory.length() > 0) {
			imp.setI_ErrorMsg(imp.getI_ErrorMsg() + ", " + mandatory);
			imp.setI_IsImported("E");
		} else
			imp.set_Value("M_AttributeSetInstance_ID",
					m_M_AttributeSetInstance_ID);
		imp.save(get_Trx());
	} // saveSelection

	private ArrayList<String> getAttributeValues(String strValues) {
		while (strValues.contains(";;"))
			strValues = strValues.replace(";;", ";null;");
		if(strValues.endsWith(";"))
			strValues = strValues +"null";
		ArrayList<String> ret = new ArrayList<String>();
		StringTokenizer st = new StringTokenizer(strValues, ";");
		while (st.countTokens() > 0)
		{
			String next = st.nextToken();
			if(next.equals("null"))
				ret.add(null);
			else
				ret.add(next);
		}
			return ret;
	}// getAttributeValues

} // ImportProduct