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

import java.sql.*;
import java.util.logging.*;

import org.compiere.framework.PO;
import org.compiere.util.*;

/**
 *	Tax Handling
 *
 * 	@author 	Jorg Janke
 * 	@version 	$Id: Tax.java,v 1.3 2006/07/30 00:51:02 jjanke Exp $
 */
public class Tax
{
	/**	Logger							*/
	static private CLogger			log = CLogger.getCLogger (Tax.class);

	
	/**************************************************************************
	 *	Get Tax ID - converts parameters to call Get Tax.
	 *  <pre>
	 *		M_Product_ID/C_Charge_ID	->	C_TaxCategory_ID
	 *		billDate, shipDate			->	billDate, shipDate
	 *		AD_Org_ID					->	billFromC_Location_ID
	 *		M_Warehouse_ID				->	shipFromC_Location_ID
	 *		billC_BPartner_Location_ID  ->	billToC_Location_ID
	 *		shipC_BPartner_Location_ID 	->	shipToC_Location_ID
	 *
	 *  if IsSOTrx is false, bill and ship are reversed
	 *  </pre>
	 * 	@param ctx	context
	 * 	@param M_Product_ID product
	 * 	@param C_Charge_ID product
	 * 	@param billDate invoice date
	 * 	@param shipDate ship date
	 * 	@param AD_Org_ID org
	 * 	@param M_Warehouse_ID warehouse
	 * 	@param billC_BPartner_Location_ID invoice location
	 * 	@param shipC_BPartner_Location_ID ship location
	 * 	@param IsSOTrx is a sales p_trx
	 * 	@return C_Tax_ID
	 *  If error it returns 0 and sets error log (TaxCriteriaNotFound)
	 */
	public static int get (Ctx ctx, int M_Product_ID, int C_Charge_ID,
		Timestamp billDate, Timestamp shipDate,
		int AD_Org_ID, int M_Warehouse_ID,
		int billC_BPartner_Location_ID, int shipC_BPartner_Location_ID,
		boolean IsSOTrx
		/*ZCOMP35*/ , int C_DocType_ID	
	)
	{
		/* ZCOMP35-1 SEARCH M_WAREHOUSE_ID based on AD_ORG_ID IF ZERO */
		if (M_Warehouse_ID == 0) {
			int [] IDs = PO.getAllIDs("M_Warehouse","AD_Org_ID = " + AD_Org_ID + " AND ROWNUM = 1", null);
            if (IDs.length > 0)
            	M_Warehouse_ID = IDs[0];
		}
		/* ZCOMP35-1 SEARCH M_WAREHOUSE_ID based on AD_ORG_ID IF ZERO */

		if (M_Product_ID != 0)
			return getProduct (ctx, M_Product_ID, billDate, shipDate, AD_Org_ID, M_Warehouse_ID,
				billC_BPartner_Location_ID, shipC_BPartner_Location_ID, IsSOTrx
				/*ZCOMP35*/		, C_DocType_ID	
			);
		else if (C_Charge_ID != 0)
			return getCharge (ctx, C_Charge_ID, billDate, shipDate, AD_Org_ID, M_Warehouse_ID,
				billC_BPartner_Location_ID, shipC_BPartner_Location_ID, IsSOTrx
				/*ZCOMP35*/		, C_DocType_ID	
			);
		else
			return getExemptTax (ctx, AD_Org_ID,IsSOTrx,0);
	}	//	get

	/**
	 *	Get Tax ID - converts parameters to call Get Tax.
	 *  <pre>
	 *		C_Charge_ID					->	C_TaxCategory_ID
	 *		billDate, shipDate			->	billDate, shipDate
	 *		AD_Org_ID					->	billFromC_Location_ID
	 *		M_Warehouse_ID				->	shipFromC_Location_ID
	 *		billC_BPartner_Location_ID  ->	billToC_Location_ID
	 *		shipC_BPartner_Location_ID 	->	shipToC_Location_ID
	 *
	 *  if IsSOTrx is false, bill and ship are reversed
	 *  </pre>
	 * 	@param ctx	context
	 * 	@param C_Charge_ID product
	 * 	@param billDate invoice date
	 * 	@param shipDate ship date
	 * 	@param AD_Org_ID org
	 * 	@param M_Warehouse_ID warehouse
	 * 	@param billC_BPartner_Location_ID invoice location
	 * 	@param shipC_BPartner_Location_ID ship location
	 * 	@param IsSOTrx is a sales p_trx
	 * 	@return C_Tax_ID
	 *  If error it returns 0 and sets error log (TaxCriteriaNotFound)
	 */
	public static int getCharge (Ctx ctx, int C_Charge_ID,
		Timestamp billDate, Timestamp shipDate,
		int AD_Org_ID, int M_Warehouse_ID,
		int billC_BPartner_Location_ID, int shipC_BPartner_Location_ID,
		boolean IsSOTrx
		/*ZCOMP35*/		, int C_DocType_ID	
	)
	{
		if (M_Warehouse_ID == 0)
			M_Warehouse_ID = ctx.getContextAsInt( "M_Warehouse_ID");
		if (M_Warehouse_ID == 0)
		{
			log.warning("No Warehouse - C_Charge_ID=" + C_Charge_ID);
			return 0;
		}
		int C_TaxCategory_ID = 0;
		int shipFromC_Location_ID = 0;
		int shipToC_Location_ID = 0;
		int billFromC_Location_ID = 0;
		int billToC_Location_ID = 0;
		String IsTaxExempt = null;

		//	Get all at once
		String sql = "SELECT c.C_TaxCategory_ID, o.C_Location_ID, il.C_Location_ID, b.IsTaxExempt,"
			 + " w.C_Location_ID, sl.C_Location_ID "
			 + "FROM C_Charge c, AD_OrgInfo o,"
			 + " C_BPartner_Location il INNER JOIN C_BPartner b ON (il.C_BPartner_ID=b.C_BPartner_ID),"
			 + " M_Warehouse w, C_BPartner_Location sl "
			 + "WHERE c.C_Charge_ID=?"
			 + " AND o.AD_Org_ID=?"
			 + " AND il.C_BPartner_Location_ID=?"
			 + " AND w.M_Warehouse_ID=?"
			 + " AND sl.C_BPartner_Location_ID=?";
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt (1, C_Charge_ID);
			pstmt.setInt (2, AD_Org_ID);
			pstmt.setInt (3, billC_BPartner_Location_ID);
			pstmt.setInt (4, M_Warehouse_ID);
			pstmt.setInt (5, shipC_BPartner_Location_ID);
			ResultSet rs = pstmt.executeQuery ();
			boolean found = false;
			if (rs.next ())
			{
				C_TaxCategory_ID = rs.getInt (1);
				billFromC_Location_ID = rs.getInt (2);
				billToC_Location_ID = rs.getInt (3);
				IsTaxExempt = rs.getString (4);
				shipFromC_Location_ID = rs.getInt (5);
				shipToC_Location_ID = rs.getInt (6);
				found = true;
			}
			rs.close ();
			pstmt.close ();
			//
			if (!found)
			{
				log.warning("Not found for C_Charge_ID=" + C_Charge_ID 
					+ ", AD_Org_ID=" + AD_Org_ID + ", M_Warehouse_ID=" + M_Warehouse_ID
					+ ", C_BPartner_Location_ID=" + billC_BPartner_Location_ID 
					+ "/" + shipC_BPartner_Location_ID);
				return 0;
			}
			else if ("Y".equals (IsTaxExempt))
				return getExemptTax (ctx, AD_Org_ID,IsSOTrx,C_TaxCategory_ID);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
			return 0;
		}

		//	Reverese for PO
		if (!IsSOTrx)
		{
			int temp = billFromC_Location_ID;
			billFromC_Location_ID = billToC_Location_ID;
			billToC_Location_ID = temp;
			temp = shipFromC_Location_ID;
			shipFromC_Location_ID = shipToC_Location_ID;
			shipToC_Location_ID = temp;
		}

		//ZCOMP35
		shipToC_Location_ID = webTaxLogic(ctx,shipFromC_Location_ID,shipToC_Location_ID,IsSOTrx,shipC_BPartner_Location_ID);
		//ZCOMP35

		//Redmine 29795 - //45183
		if ((MDocBaseType.DOCBASETYPE_ARInvoice.equals
				(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
				(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
					&& isBPTaxExempt(ctx, shipC_BPartner_Location_ID) 
					&& !isBPTransfrontalier(ctx, shipToC_Location_ID))
			shipToC_Location_ID = billFromC_Location_ID;
		
		//
		log.fine("C_TaxCategory_ID=" + C_TaxCategory_ID
		  + ", billFromC_Location_ID=" + billFromC_Location_ID
		  + ", billToC_Location_ID=" + billToC_Location_ID
		  + ", shipFromC_Location_ID=" + shipFromC_Location_ID
		  + ", shipToC_Location_ID=" + shipToC_Location_ID);
		return get (ctx, C_TaxCategory_ID, IsSOTrx,
		  shipDate, shipFromC_Location_ID, shipToC_Location_ID,
		  billDate, billFromC_Location_ID, billToC_Location_ID
		  ,AD_Org_ID //ZCOM467
		  /*ZCOMP35*/ , C_DocType_ID    
		);
	}	//	getCharge


	/**
	 *	Get Tax ID - converts parameters to call Get Tax.
	 *  <pre>
	 *		M_Product_ID				->	C_TaxCategory_ID
	 *		billDate, shipDate			->	billDate, shipDate
	 *		AD_Org_ID					->	billFromC_Location_ID
	 *		M_Warehouse_ID				->	shipFromC_Location_ID
	 *		billC_BPartner_Location_ID  ->	billToC_Location_ID
	 *		shipC_BPartner_Location_ID 	->	shipToC_Location_ID
	 *
	 *  if IsSOTrx is false, bill and ship are reversed
	 *  </pre>
	 * 	@param ctx	context
	 * 	@param M_Product_ID product
	 * 	@param billDate invoice date
	 * 	@param shipDate ship date
	 * 	@param AD_Org_ID org
	 * 	@param M_Warehouse_ID warehouse
	 * 	@param billC_BPartner_Location_ID invoice location
	 * 	@param shipC_BPartner_Location_ID ship location
	 * 	@param IsSOTrx is a sales p_trx
	 * 	@return C_Tax_ID
	 *  If error it returns 0 and sets error log (TaxCriteriaNotFound)
	 */
	public static int getProduct (Ctx ctx, int M_Product_ID,
		Timestamp billDate, Timestamp shipDate,
		int AD_Org_ID, int M_Warehouse_ID,
		int billC_BPartner_Location_ID, int shipC_BPartner_Location_ID,
		boolean IsSOTrx
		/*ZCOMP35*/		, int C_DocType_ID	
	)
	{
		String variable = "";
		int C_TaxCategory_ID = 0;
		int shipFromC_Location_ID = 0;
		int shipToC_Location_ID = 0;
		int billFromC_Location_ID = 0;
		int billToC_Location_ID = 0;
		String IsTaxExempt = null;

		try
		{
			//	Get all at once
			String sql = "SELECT p.C_TaxCategory_ID, o.C_Location_ID, il.C_Location_ID, b.IsTaxExempt,"
				+ " w.C_Location_ID, sl.C_Location_ID "
				+ "FROM M_Product p, AD_OrgInfo o,"
				+ " C_BPartner_Location il INNER JOIN C_BPartner b ON (il.C_BPartner_ID=b.C_BPartner_ID),"
				+ " M_Warehouse w, C_BPartner_Location sl "
				+ "WHERE p.M_Product_ID=?"
				+ " AND o.AD_Org_ID=?"
				+ " AND il.C_BPartner_Location_ID=?"
				+ " AND w.M_Warehouse_ID=?"
				+ " AND sl.C_BPartner_Location_ID=?";
			PreparedStatement  pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, M_Product_ID);
			pstmt.setInt(2, AD_Org_ID);
			pstmt.setInt(3, billC_BPartner_Location_ID);
			pstmt.setInt(4, M_Warehouse_ID);
			pstmt.setInt(5, shipC_BPartner_Location_ID);
			ResultSet rs = pstmt.executeQuery();
			boolean found = false;
			if (rs.next())
			{
				C_TaxCategory_ID = rs.getInt(1);
				billFromC_Location_ID = rs.getInt(2);
				billToC_Location_ID = rs.getInt(3);
				IsTaxExempt = rs.getString(4);
				shipFromC_Location_ID = rs.getInt(5);
				shipToC_Location_ID = rs.getInt(6);
				found = true;
			}
			rs.close();
			pstmt.close();
			//
			if (found && "Y".equals(IsTaxExempt))
			{
				log.fine("Business Partner is Tax exempt");
				return getExemptTax(ctx, AD_Org_ID,IsSOTrx,C_TaxCategory_ID);
			}
			else if (found)
			{
				if (!IsSOTrx)
				{
					int temp = billFromC_Location_ID;
					billFromC_Location_ID = billToC_Location_ID;
					billToC_Location_ID = temp;
					temp = shipFromC_Location_ID;
					shipFromC_Location_ID = shipToC_Location_ID;
					shipToC_Location_ID = temp;
				}
				log.fine("C_TaxCategory_ID=" + C_TaxCategory_ID
					+ ", billFromC_Location_ID=" + billFromC_Location_ID
					+ ", billToC_Location_ID=" + billToC_Location_ID
					+ ", shipFromC_Location_ID=" + shipFromC_Location_ID
					+ ", shipToC_Location_ID=" + shipToC_Location_ID);
				
				/*ZCOMP35*/
				shipToC_Location_ID = webTaxLogic(ctx,shipFromC_Location_ID,shipToC_Location_ID,IsSOTrx, shipC_BPartner_Location_ID);
				// END OF ZCOMP35
				
				//Redmine 29795 - //45183
				if ((MDocBaseType.DOCBASETYPE_ARInvoice.equals
						(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
						(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
							&& isBPTaxExempt(ctx, shipC_BPartner_Location_ID)
							&& !isBPTransfrontalier(ctx, shipToC_Location_ID))
					shipToC_Location_ID = billFromC_Location_ID;

				return get(ctx, C_TaxCategory_ID, IsSOTrx,
					shipDate, shipFromC_Location_ID, shipToC_Location_ID,
					billDate, billFromC_Location_ID, billToC_Location_ID
					,AD_Org_ID  //ZCOM467
					/*ZCOMP35*/ , C_DocType_ID
				);
			}

			// ----------------------------------------------------------------

			//	Detail for error isolation

		//	M_Product_ID				->	C_TaxCategory_ID
			sql = "SELECT C_TaxCategory_ID FROM M_Product "
				+ "WHERE M_Product_ID=?";
			variable = "M_Product_ID";
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, M_Product_ID);
			rs = pstmt.executeQuery();
			found = false;
			if (rs.next())
			{
				C_TaxCategory_ID = rs.getInt(1);
				found = true;
			}
			rs.close();
			pstmt.close();
			if (C_TaxCategory_ID == 0)
			{
				log.saveError("TaxCriteriaNotFound", Msg.translate(ctx, variable)
					+ (found ? "" : " (Product=" + M_Product_ID + " not found)"));
				return 0;
			}
			log.fine("C_TaxCategory_ID=" + C_TaxCategory_ID);

		//	AD_Org_ID					->	billFromC_Location_ID
			sql = "SELECT C_Location_ID FROM AD_OrgInfo "
				+ "WHERE AD_Org_ID=?";
			variable = "AD_Org_ID";
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, AD_Org_ID);
			rs = pstmt.executeQuery();
			found = false;
			if (rs.next())
			{
				billFromC_Location_ID = rs.getInt (1);
				found = true;
			}
			rs.close();
			pstmt.close();
			if (billFromC_Location_ID == 0)
			{
				log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
				  + (found ? "" : " (Info/Org=" + AD_Org_ID + " not found)"));
				return 0;
			}

		//	billC_BPartner_Location_ID  ->	billToC_Location_ID
			sql = "SELECT l.C_Location_ID, b.IsTaxExempt "
				+ "FROM C_BPartner_Location l INNER JOIN C_BPartner b ON (l.C_BPartner_ID=b.C_BPartner_ID) "
				+ "WHERE C_BPartner_Location_ID=?";
			variable = "BillTo_ID";
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, billC_BPartner_Location_ID);
			rs = pstmt.executeQuery();
			found = false;
			if (rs.next())
			{
				billToC_Location_ID = rs.getInt(1);
				IsTaxExempt = rs.getString(2);
				found = true;
			}
			rs.close();
			pstmt.close();
			if (billToC_Location_ID == 0)
			{
				log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
					+ (found ? "" : " (BPLocation=" + billC_BPartner_Location_ID + " not found)"));
				return 0;
			}
			if ("Y".equals(IsTaxExempt))
				return getExemptTax(ctx, AD_Org_ID,IsSOTrx,C_TaxCategory_ID);

			//  Reverse for PO
			if (!IsSOTrx)
			{
				int temp = billFromC_Location_ID;
				billFromC_Location_ID = billToC_Location_ID;
				billToC_Location_ID = temp;
			}
			log.fine("billFromC_Location_ID = " + billFromC_Location_ID);
			log.fine("billToC_Location_ID = " + billToC_Location_ID);

			//-----------------------------------------------------------------

		//	M_Warehouse_ID				->	shipFromC_Location_ID
			sql = "SELECT C_Location_ID FROM M_Warehouse "
				+ "WHERE M_Warehouse_ID=?";
			variable = "M_Warehouse_ID";
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, M_Warehouse_ID);
			rs = pstmt.executeQuery();
			found = false;
			if (rs.next())
			{
				shipFromC_Location_ID = rs.getInt (1);
				found = true;
			}
			rs.close();
			pstmt.close();
			if (shipFromC_Location_ID == 0)
			{
				log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
					+ (found ? "" : " (Warehouse=" + M_Warehouse_ID + " not found)"));
				return 0;
			}

		//	shipC_BPartner_Location_ID 	->	shipToC_Location_ID
			sql = "SELECT C_Location_ID FROM C_BPartner_Location "
				+ "WHERE C_BPartner_Location_ID=?";
			variable = "C_BPartner_Location_ID";
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, shipC_BPartner_Location_ID);
			rs = pstmt.executeQuery();
			found = false;
			if (rs.next())
			{
				shipToC_Location_ID = rs.getInt (1);
				found = true;
			}
			rs.close();
			pstmt.close();
			if (shipToC_Location_ID == 0)
			{
				log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
					+ (found ? "" : " (BPLocation=" + shipC_BPartner_Location_ID + " not found)"));
				return 0;
			}

			//  Reverse for PO
			if (!IsSOTrx)
			{
				int temp = shipFromC_Location_ID;
				shipFromC_Location_ID = shipToC_Location_ID;
				shipToC_Location_ID = temp;
			}
			log.fine("shipFromC_Location_ID = " + shipFromC_Location_ID);
			log.fine("shipToC_Location_ID = " + shipToC_Location_ID);
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, "getProduct (" + variable + ")", e);
		}

		/*ZCOMP35*/
		shipToC_Location_ID = webTaxLogic(ctx,shipFromC_Location_ID,shipToC_Location_ID,IsSOTrx,shipC_BPartner_Location_ID);
		// END OF ZCOMP35

		//Redmine 29795 - //45183
		if ((MDocBaseType.DOCBASETYPE_ARInvoice.equals
				(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
				(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
					&& isBPTaxExempt(ctx, shipC_BPartner_Location_ID)
					&& !isBPTransfrontalier(ctx, shipToC_Location_ID))
			shipToC_Location_ID = billFromC_Location_ID;
		
		return get (ctx, C_TaxCategory_ID, IsSOTrx,
			shipDate, shipFromC_Location_ID, shipToC_Location_ID,
			billDate, billFromC_Location_ID, billToC_Location_ID
			,AD_Org_ID //ZCOM467
			/*ZCOMP35*/ , C_DocType_ID		
		);
	}	//	getProduct

	/**
	 * 	Get Exempt Tax Code
	 * 	@param ctx context
	 * 	@param AD_Org_ID org to find client
	 * 	@return C_Tax_ID
	 */
	private static int getExemptTax (Ctx ctx, int AD_Org_ID,boolean IsSOTrx, int C_TaxCategory_ID)
	{
		int C_Tax_ID = 0;
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT t.C_Tax_ID FROM C_Tax t INNER JOIN AD_Org o ON (t.AD_Client_ID=o.AD_Client_ID) ");
		sql.append("WHERE t.IsTaxExempt='Y' AND t.IsActive = 'Y' AND o.AD_Org_ID=? AND (t.SOPOType = 'B' ");
		if (IsSOTrx)
			sql.append("OR t.SOPOType = 'S') ");
		else
			sql.append("OR t.SOPOType = 'P') ");	
		if (C_TaxCategory_ID != 0)
			sql.append("AND C_TaxCategory_ID = ? ");	
			
			
		sql.append("ORDER BY t.SOPOType DESC, t.rate DESC");
		
		boolean found = false;
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
			pstmt.setInt(1, AD_Org_ID);
			if (C_TaxCategory_ID != 0)
				pstmt.setInt(2, C_TaxCategory_ID);
			
						
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				C_Tax_ID = rs.getInt (1);
				found = true;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		log.fine("TaxExempt=Y - C_Tax_ID=" + C_Tax_ID);
		if (C_Tax_ID == 0)
			log.saveError("TaxCriteriaNotFound", Msg.getMsg(ctx, "TaxNoExemptFound")
				+ (found ? "" : " (Tax/Org=" + AD_Org_ID + " not found)"));
		return C_Tax_ID;
	}	//	getExemptTax

	
	/**************************************************************************
	 *	Get Tax ID (Detail).
	 *  If error return 0 and set error log (TaxNotFound)
	 *  @param ctx context
	 *	@param C_TaxCategory_ID tax category
	 * 	@param IsSOTrx Sales Order Trx
	 *	@param shipDate ship date (ignored)
	 *	@param shipFromC_Locction_ID ship from (ignored)
	 *	@param shipToC_Location_ID ship to (ignored)
	 *	@param billDate invoice date
	 *	@param billFromC_Location_ID invoice from
	 *	@param billToC_Location_ID invoice to
	 *	@return C_Tax_ID
	 */
	protected static int get (Ctx ctx,
		int C_TaxCategory_ID, boolean IsSOTrx,
		Timestamp shipDate, int shipFromC_Locction_ID, int shipToC_Location_ID,
		Timestamp billDate, int billFromC_Location_ID, int billToC_Location_ID
		,int AD_Org_ID //ZCOM467
		/*ZCOMP35*/ , int C_DocType_ID			
	)
	{
//		//	C_TaxCategory contains CommodityCode
//		
//		//	API to Tax Vendor comes here
//
//		if (CLogMgt.isLevelFine())
//		{
//			log.info("(Detail) - Category=" + C_TaxCategory_ID 
//				+ ", SOTrx=" + IsSOTrx);
//			log.config("(Detail) - BillFrom=" + billFromC_Location_ID 
//				+ ", BillTo=" + billToC_Location_ID + ", BillDate=" + billDate);
//		}
//
//		MTax[] taxes = MTax.getAll (ctx);
//		MLocation lFrom = new MLocation (ctx, billFromC_Location_ID, null); 
//		MLocation lTo = new MLocation (ctx, billToC_Location_ID, null); 
//		log.finer("From=" + lFrom);
//		log.finer("To=" + lTo);
//		
//		// This object assigns a priority to a given tax/taxPostal record.
//		// Any dual specified field beats any combination of single fields,
//		// and single fields are used to decide between otherwise equal dual specifications.
//		// Zip > Region > Country
//		class MTaxPriority {
//			MTax tax;
//			int priority = 0;
//			
//			public MTaxPriority(MTax t, MTaxPostal tp){
//				tax = t;
//				final int DUAL_ZIP = 32;
//				final int DUAL_REGION = 16;
//				final int DUAL_COUNTRY = 8;
//				final int ZIP = 4;
//				final int REGION = 2;
//				final int COUNTRY = 1;
//				
//				if(tp != null){
//					if(tp.getPostal_To() == null)
//						priority += ZIP;
//					else
//						priority += DUAL_ZIP;
//				}
//				
//				int countryTotal = ((tax.getC_Country_ID() == 0)?0:1) + ((tax.getTo_Country_ID() == 0)?0:1);
//				if(countryTotal == 1)
//					priority += COUNTRY;
//				if(countryTotal == 2)
//					priority += DUAL_COUNTRY;
//				
//				int regionTotal = ((tax.getC_Region_ID() == 0)?0:1) + ((tax.getTo_Region_ID() == 0)?0:1);
//				if(regionTotal == 1)
//					priority += REGION;
//				if(regionTotal == 2)
//					priority += DUAL_REGION;
//			}
//			
//			public int getC_Tax_ID(){
//				return tax.getC_Tax_ID();
//			}
//			
//			public Timestamp getValidFrom(){
//				return tax.getValidFrom();
//			}
//			
//			// returns true if this MTaxPriority beats the one being compared to
//			// The MTaxPriority with higher priority wins.
//			// If the priorities are tied, then the one with the more recent date wins. 
//			public boolean trumps(MTaxPriority compareTax){
//				if(priority > compareTax.priority ||
//						(priority == compareTax.priority && getValidFrom().after(compareTax.getValidFrom())))
//					return true;
//				else 
//					return false;
//			}
//		}
//
//		ArrayList<MTaxPriority> results = new ArrayList<MTaxPriority>();
//		for (MTax tax : taxes) {
//			if (tax.isTaxExempt()
//				|| !tax.isActive() 
//				|| tax.getC_TaxCategory_ID() != C_TaxCategory_ID
//				|| tax.getParent_Tax_ID() != 0)	//	user parent tax
//				continue;
//			if (IsSOTrx && X_C_Tax.SOPOTYPE_PurchaseTax.equals(tax.getSOPOType()))
//				continue;
//			if (!IsSOTrx && X_C_Tax.SOPOTYPE_SalesTax.equals(tax.getSOPOType()))
//				continue;
//
//			if (CLogMgt.isLevelFinest())
//			{
//				log.finest(tax.toString());
//				log.finest("From Country - " + (tax.getC_Country_ID() == lFrom.getC_Country_ID() 
//					|| tax.getC_Country_ID() == 0));
//				log.finest("From Region - " + (tax.getC_Region_ID() == lFrom.getC_Region_ID() 
//					|| tax.getC_Region_ID() == 0));
//				log.finest("To Country - " + (tax.getTo_Country_ID() == lTo.getC_Country_ID() 
//					|| tax.getTo_Country_ID() == 0));
//				log.finest("To Region - " + (tax.getTo_Region_ID() == lTo.getC_Region_ID() 
//					|| tax.getTo_Region_ID() == 0));
//				log.finest("Date valid - " + (!tax.getValidFrom().after(billDate)));
//			}
//			
//				//	From Country
//			if ((tax.getC_Country_ID() == lFrom.getC_Country_ID() 
//					|| tax.getC_Country_ID() == 0)
//				//	From Region
//				&& (tax.getC_Region_ID() == lFrom.getC_Region_ID() 
//					|| tax.getC_Region_ID() == 0)
//				//	To Country
//				&& (tax.getTo_Country_ID() == lTo.getC_Country_ID() 
//					|| tax.getTo_Country_ID() == 0)
//				//	To Region
//				&& (tax.getTo_Region_ID() == lTo.getC_Region_ID() 
//					|| tax.getTo_Region_ID() == 0)
//				//	Date
//				&& !tax.getValidFrom().after(billDate)
//				)
//			{
//				if (!tax.isPostal())
//				{
//					results.add(new MTaxPriority(tax, null));
//					continue;
//				}
//				//
//				MTaxPostal[] postals = tax.getPostals(false);
//				for (MTaxPostal postal : postals) {
//					if (postal.isActive()
//						//	Postal From is mandatory
//						&& postal.getPostal().startsWith(lFrom.getPostal())
//						//	Postal To is optional
//						&& (postal.getPostal_To() == null 
//							|| postal.getPostal_To().startsWith(lTo.getPostal()))
//						)
//					{
//						results.add(new MTaxPriority(tax, postal));
//						continue;
//					}
//				}	//	for all postals
//			}
//		}	//	for all taxes
//		
//		//	One Result
//		if (results.size() == 1)
//			return results.get(0).getC_Tax_ID();
//		//	Multiple results - different valid from dates
//		if (results.size() > 1)
//		{
//			MTaxPriority latest = null;
//			for (int i = 0; i < results.size(); i++)
//			{
//				MTaxPriority taxPriority = results.get(i);
//				if (latest == null 
//					|| taxPriority.trumps(latest)){
//					latest = taxPriority;
//				}
//			}
//			return latest.getC_Tax_ID();
//		}		
//
//		//	Default Tax
//		for (MTax tax : taxes) {
//			if (!tax.isDefault() || !tax.isActive()
//				|| tax.getParent_Tax_ID() != 0)	//	user parent tax
//				continue;
//			if (IsSOTrx && X_C_Tax.SOPOTYPE_PurchaseTax.equals(tax.getSOPOType()))
//				continue;
//			if (!IsSOTrx && X_C_Tax.SOPOTYPE_SalesTax.equals(tax.getSOPOType()))
//				continue;
//			log.fine("(default) - " + tax);
//			return tax.getC_Tax_ID();
//		}	//	for all taxes
//		
//		log.saveError("TaxNotFound", "");
//		return 0;
		//ZCOM467
		int	C_Tax_ID = 0;


		
		log.fine("C_DocType_ID= " + C_DocType_ID);
		/*ZCOMP35 START */
		if (C_DocType_ID == 0){
			log.config("Document Type is NULL");
		}
		/*ZCOMP35* END */
		//	C_TaxCategory contains CommodityCode
		//	API to Tax Vendor comes here

		if (CLogMgt.isLevelFine())
		{
			log.info("(Detail) - Category=" + C_TaxCategory_ID 
				+ ", SOTrx=" + IsSOTrx);
			log.config("(Detail) - BillFrom=" + billFromC_Location_ID 
				+ ", BillTo=" + billToC_Location_ID + ", BillDate=" + billDate);
		}


		/**********************************************************************
		 *	own table lookup
		 *	- uses billFromC_Location, shipToC_Location, billDate
		 */
		log.fine("Searching for TAX ...");
		String sql = "SELECT t.C_Tax_ID, t.ValidFrom "
			+ "FROM C_Tax t, C_Location lf, C_Location lt, Z_Taxzoneline z1, Z_Taxzoneline z2, AD_Org o" ;
			if (C_DocType_ID != 0)
				 sql = sql + ", Z_TAXDOCTYPE z3";
			sql = sql 
			+ " WHERE t.Parent_Tax_ID IS NULL"
			+ " AND t.IsActive = 'Y'" //ZCOM999
			+ " AND t.C_TaxCategory_ID=?"   //  C_TaxCategory_ID
			+ " AND lf.C_Location_ID=?"     //  billFromC_Location_ID
			+ " AND z1.Z_TAXZONELINE_C_ID=lf.C_Country_ID"
				  + " and z1.IsActive = 'Y'"
			+ " AND z1.Z_Taxzone_ID=t.Z_Taxzone_ID"
			+ " AND lt.C_Location_ID=?"     //  shipToC_Location_ID
			+ " AND z2.Z_TAXZONELINE_C_ID=lt.C_Country_ID"
				+ " and z2.IsActive = 'Y'"
			+ " AND z2.Z_Taxzone_ID=t.Z_to_Taxzone_ID";

			if (C_DocType_ID != 0)
			{
				 sql = sql                
			+ " AND z3.C_Tax_ID=t.C_Tax_ID"
			+ " AND z3.C_Doctype_ID=? ";
			}
			//45183
			if((MDocBaseType.DOCBASETYPE_ARInvoice.equals
					(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
					(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
					&& isBPTransfrontalier(ctx, shipToC_Location_ID))
			{
				if( !isBPTaxExempt2(ctx, shipToC_Location_ID) )
					sql = sql + " AND z2.IsTaxNotNull = 'Y' and z2.IsTransfrontalier='Y' ";
				else
					sql = sql + " AND z2.IsTaxNotNull = 'N' and z2.IsTransfrontalier='Y' ";
			}

				 sql = sql           
		    + " AND o.AD_Org_ID=?"
		    //ZCOM479 + " AND o.AD_Client_ID=t.AD_Client_ID"	      
		    + " AND (o.AD_Client_ID=t.AD_Client_ID or t.c_tax_id = 0)" //ZCOM479
			+ " ORDER BY t.iscocontractant, t.ValidFrom DESC"; /*COMP35** must be desc */
		try
		{
			log.fine("SQL: "+sql);
			
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			
			log.fine("C_TaxCategory_ID= " + C_TaxCategory_ID);		
			log.fine("billFromC_Location_ID= " + billFromC_Location_ID);	
			log.fine("shipToC_Location_ID= " + shipToC_Location_ID);	

			pstmt.setInt(1, C_TaxCategory_ID);
			pstmt.setInt(2, billFromC_Location_ID);
			pstmt.setInt(3, shipToC_Location_ID);
			if (C_DocType_ID != 0)
			  {
				pstmt.setInt(4, C_DocType_ID);
				pstmt.setInt(5, AD_Org_ID);
			  }
			else    
			   pstmt.setInt(4, AD_Org_ID);
			   
			ResultSet rs = pstmt.executeQuery();
			//	Take latest one -> wrong, needs to search
			boolean noTax = true;
			while (rs.next() && noTax)
			{
				Timestamp taxDate = rs.getTimestamp(2);
				//	we have the tax rate,
				//	if the tax valid from date is after or equal bill date
				if (taxDate == null || taxDate.after(billDate)){
					log.fine("FOUND TAX but not correct Tax Date : "+taxDate+" BillDate="+billDate);
					continue;
				}
				noTax = false;
				C_Tax_ID = rs.getInt(1);
			}
			rs.close();
			pstmt.close();

			/*COMP35** START */
			if (noTax){
			log.fine("Searching for TAX without Document Type ...");
			sql = "SELECT t.C_Tax_ID, t.ValidFrom "
				+ "FROM C_Tax t, C_Location lf, C_Location lt, Z_Taxzoneline z1, Z_Taxzoneline z2, AD_Org o"
				+ " WHERE t.Parent_Tax_ID IS NULL"
				+ " AND t.IsActive = 'Y'" //ZCOM999
				+ " AND t.SOPOType<>?"				//	#1 Exclude
				+ " AND t.C_TaxCategory_ID=?"   //  C_TaxCategory_ID
				+ " AND lf.C_Location_ID=?"     //  billFromC_Location_ID
				+ " AND z1.Z_TAXZONELINE_C_ID=lf.C_Country_ID"
					  + " and z1.IsActive = 'Y'"
				+ " AND z1.Z_Taxzone_ID=t.Z_Taxzone_ID"
				+ " AND lt.C_Location_ID=?"     //  shipToC_Location_ID
				+ " AND z2.Z_TAXZONELINE_C_ID=lt.C_Country_ID"
					+ " and z2.IsActive = 'Y'"
				+ " AND z2.Z_Taxzone_ID=t.Z_to_Taxzone_ID"
			    + " AND o.AD_Org_ID=?"
			    //ZCOM479 + " AND o.AD_Client_ID=t.AD_Client_ID"	      
			    + " AND (o.AD_Client_ID=t.AD_Client_ID or t.ad_client_id = 0)" //ZCOM479
				+ " ORDER BY t.ValidFrom desc"; /*COMP35** must be desc */
					 ;
					pstmt = DB.prepareStatement(sql, null);
					pstmt.setString(1,  IsSOTrx ? "P" : "S");
					pstmt.setInt(2, C_TaxCategory_ID);
			pstmt.setInt(3, billFromC_Location_ID);
			pstmt.setInt(4, shipToC_Location_ID);
			pstmt.setInt(5,  AD_Org_ID);

			rs = pstmt.executeQuery();
			while (rs.next() && noTax)
			{
				Timestamp taxDate = rs.getTimestamp(2);
				if (taxDate == null || taxDate.after(billDate))
					continue;
				noTax = false;
				C_Tax_ID = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
		}	//	no destination country
		log.fine("SQL: "+sql);

			//	Try with no destination country in tax table
			if (noTax)
			{
				log.fine("OriginTax");
				sql = "SELECT t.C_Tax_ID, t.ValidFrom "
					+ "FROM C_Tax t, C_Location lf "
					+ "WHERE t.Parent_Tax_ID IS NULL"
					+ " AND t.IsActive = 'Y'" //ZCOM999
					+ " AND t.SOPOType<>?"				//	#1 Exclude
					+ " AND t.C_TaxCategory_ID=?"       //  #2 C_TaxCategory_ID
					+ " AND lf.C_Location_ID=?"         //  #3 billFromC_Location_ID
					+ " AND t.C_Country_ID=lf.C_Country_ID"
					+ " AND (t.C_Region_ID=lf.C_Region_ID OR (t.C_Region_ID IS NULL AND lf.C_Region_ID IS NULL))"
					+ " AND t.To_Country_ID IS NULL AND t.To_Region_ID IS NULL "
					+ "ORDER BY t.ValidFrom DESC";
				pstmt = DB.prepareStatement(sql, null);
				pstmt.setString(1, IsSOTrx ? "P" : "S");	//	exclude
				pstmt.setInt(2, C_TaxCategory_ID);
				pstmt.setInt(3, billFromC_Location_ID);
				rs = pstmt.executeQuery();
				while (rs.next() && noTax)
				{
					Timestamp taxDate = rs.getTimestamp(2);
					if (taxDate == null || taxDate.after(billDate))
						continue;
					noTax = false;
					C_Tax_ID = rs.getInt(1);
				}
				rs.close();
				pstmt.close();
			}	//	no destination country
			log.fine("SQL: "+sql);
				
			//  Get Default Tax
			if (noTax)
			{
				log.fine("DefaultTax");
				sql = "SELECT t.C_Tax_ID, t.ValidFrom "
					+ "FROM C_Tax t, C_Location lf "
					+ "WHERE t.AD_Client_ID=lf.AD_Client_ID"    //  get Client from bill-from
					+ " AND t.IsActive = 'Y'" //ZCOM999
					+ " AND t.SOPOType<>?"				//	#1 Exclude
					+ " AND lf.C_Location_ID=?"     	//  #2 billFromC_Location_ID
					+ " AND t.IsDefault='Y' "
					+ "ORDER BY t.ValidFrom DESC";

				pstmt = DB.prepareStatement(sql, null);
				
				log.fine("C_TaxCategory_ID= " + C_TaxCategory_ID);		
				log.fine("billFromC_Location_ID= " + billFromC_Location_ID);	
				log.fine("shipToC_Location_ID= " + shipToC_Location_ID);	
				/*
				pstmt.setInt(1, C_TaxCategory_ID);
				pstmt.setInt(2, billFromC_Location_ID);
				pstmt.setInt(3, shipToC_Location_ID);
				*/
				pstmt.setString(1, IsSOTrx ? "P" : "S");	//	exclude
				
				pstmt.setInt(2, billFromC_Location_ID);
				
				rs = pstmt.executeQuery();
				//	Take latest one -> wrong, needs to search
				noTax = true;
				while (rs.next() && noTax)
				{
					Timestamp taxDate = rs.getTimestamp(2);
					//	we have the tax rate,
					//	if the tax valid from date is after or equal bill date
					if (taxDate == null || taxDate.after(billDate)){
						log.fine("FOUND TAX but not correct Tax Date : "+taxDate+" BillDate="+billDate);
						continue;
					}
					noTax = false;
					C_Tax_ID = rs.getInt(1);
				}
				rs.close();
				pstmt.close();
			}
			/*COMP35** END */
			
		}
		catch (SQLException e)
		{
			log.fine("get (C_Tax_ID) - " + sql+ e);
		}


		/*COMP35* START */
		StringBuffer msg = new StringBuffer("");
		if (log.isLoggable(Level.CONFIG) || C_Tax_ID == 0) {
			// DB consuming logging !
			msg.append(" ## Document Type '");
			msg.append(extractFieldFromTable("c_doctype","name",C_DocType_ID));
			msg.append("' ## Tax category '");
			msg.append(extractFieldFromTable("c_taxcategory","name",C_TaxCategory_ID));
			msg.append("' ## BILL FROM '");
			msg.append(extractFieldFromTable("c_location","city",billFromC_Location_ID));
			msg.append("' ## SHIP TO '");
			msg.append(extractFieldFromTable("c_location","city",shipToC_Location_ID));
			msg.append("' ## Date '");
			msg.append(billDate);
			msg.append("'");
			log.config(msg.toString());
		}

		if (C_Tax_ID == 0)
			log.saveError("TaxNotFound", msg.toString());
		/*COMP35* END */

		/*COMP35*
		if (C_Tax_ID == 0)
			Log.saveError("TaxNotFound", "");
		*COMP35*/
		
		return C_Tax_ID;
	//ZCOM467
	}	//	get
	
	/**
	 * ZCOMP35
	 */
    private static String extractFieldFromTable(String tableName,String fieldName, int C_TaxCategory_ID) {
        String ret = "UNKNOWN "+fieldName+" for "+tableName+" for id "+C_TaxCategory_ID;
        try{
        	String sql2 = "select " + fieldName + " from " + tableName + " where " +tableName +"_id = ?";
        	PreparedStatement pstmt = DB.prepareStatement(sql2, null);
        	pstmt.setInt(1,C_TaxCategory_ID);
        	ResultSet rs = pstmt.executeQuery();
        	if (rs.next()){
        		ret = rs.getString(1);
        	}
        	rs.close();
        	pstmt.close();
        } catch (SQLException e){
        	e.printStackTrace();		
        }
        return ret;
    }
    
    /**
     * COMP35 : Tax is now dependent on DocumentType used on Invoice : Debit/Credit !
     * @param C_Invoice_ID
     * @return
     */
    public static int getDocumentTypeOfInvoice(int C_Invoice_ID) {
        try {
            String sql = "select C_DocTypeTarget_ID from C_INVOICE where c_invoice_id=?";
            PreparedStatement ps = DB.prepareStatement(sql, null);
            ps.setInt(1,C_Invoice_ID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
            	int ret = rs.getInt(1);
            	rs.close();
            	ps.close();
            	return ret;
            }
            else {
            	log.saveError("DocumentTypeNotFound", "Invoice : "+C_Invoice_ID);
            	rs.close();
            	ps.close();
            	return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            log.saveError("DocumentTypeNotFound", "Invoice : "+C_Invoice_ID);
			return 0;
        }
    }
    
    /**
     * ZCOMP35
     */
	private static int webTaxLogic(Ctx ctx,int shipFromID, int shipToID, boolean IsSOTrx, int shipToBPartnerLocationID) {
    	
    	int out = shipToID;
		if (!Msg.getMsg(ctx,"TAX_WEB_LOGIC").equalsIgnoreCase("TAX_WEB_LOGIC") && IsSOTrx) {
			MBPartnerLocation ship = new MBPartnerLocation(ctx,shipToBPartnerLocationID,null);
			MBPartner partn = new MBPartner(ctx,ship.getC_BPartner_ID(),null);
			if (partn.getTaxID() == null || partn.getTaxID().equalsIgnoreCase("")) {
				log.fine("tax web logic applied");
				out = shipFromID;
			}
		}
		return out;
    }
	
	//Redmine 29795
	public static boolean isBPTaxExempt(Ctx ctx, int c_BPartner_Location_ID){
		MBPartnerLocation ship = new MBPartnerLocation(ctx,c_BPartner_Location_ID,null);
		MBPartner partn = new MBPartner(ctx,ship.getC_BPartner_ID(),null);
		return (partn.getTaxID()==null || partn.getTaxID().length()==0) ? true : false;
	}
	//45183
	public static boolean isBPTransfrontalier(Ctx ctx, int shipToC_location_ID){
		
		String sql = "Select distinct ztzl.istransfrontalier from z_taxzoneline ztzl " +
				"inner join C_Location cl on cl.c_country_id = ztzl.z_taxzoneline_c_id and cl.AD_Client_ID = ztzl.AD_Client_ID  " +
				"where cl.c_location_id = ?";
		String taxID = DB.getSQLValueString(null, sql, shipToC_location_ID);
		return (taxID != null && taxID.equals("Y")) ? true : false;
	}
	
	
	
	//////////////////
	
	
	public static int get (Ctx ctx, int M_Product_ID, int C_Charge_ID,
			Timestamp billDate, Timestamp shipDate,
			int AD_Org_ID, int M_Warehouse_ID,
			int billC_BPartner_Location_ID, int shipC_BPartner_Location_ID,
			boolean IsSOTrx
			/*ZCOMP35*/ , int C_DocType_ID, String validationSQL	
		)
		{
			/* ZCOMP35-1 SEARCH M_WAREHOUSE_ID based on AD_ORG_ID IF ZERO */
			if (M_Warehouse_ID == 0) {
				int [] IDs = PO.getAllIDs("M_Warehouse","AD_Org_ID = " + AD_Org_ID + " AND ROWNUM = 1", null);
	            if (IDs.length > 0)
	            	M_Warehouse_ID = IDs[0];
			}
			/* ZCOMP35-1 SEARCH M_WAREHOUSE_ID based on AD_ORG_ID IF ZERO */

			if (M_Product_ID != 0)
				return getProduct (ctx, M_Product_ID, billDate, shipDate, AD_Org_ID, M_Warehouse_ID,
					billC_BPartner_Location_ID, shipC_BPartner_Location_ID, IsSOTrx
					/*ZCOMP35*/		, C_DocType_ID ,validationSQL
				);
			else if (C_Charge_ID != 0)
				return getCharge (ctx, C_Charge_ID, billDate, shipDate, AD_Org_ID, M_Warehouse_ID,
					billC_BPartner_Location_ID, shipC_BPartner_Location_ID, IsSOTrx
					/*ZCOMP35*/		, C_DocType_ID, validationSQL
				);
			else
				return getExemptTax (ctx, AD_Org_ID,IsSOTrx,0, validationSQL);
		}	//	get
	
	
	
	
	
	
	public static int getProduct (Ctx ctx, int M_Product_ID,
			Timestamp billDate, Timestamp shipDate,
			int AD_Org_ID, int M_Warehouse_ID,
			int billC_BPartner_Location_ID, int shipC_BPartner_Location_ID,
			boolean IsSOTrx
			/*ZCOMP35*/		, int C_DocType_ID, String validationSQL	
		)
		{
			String variable = "";
			int C_TaxCategory_ID = 0;
			int shipFromC_Location_ID = 0;
			int shipToC_Location_ID = 0;
			int billFromC_Location_ID = 0;
			int billToC_Location_ID = 0;
			String IsTaxExempt = null;

			try
			{
				//	Get all at once
				String sql = "SELECT p.C_TaxCategory_ID, o.C_Location_ID, il.C_Location_ID, b.IsTaxExempt,"
					+ " w.C_Location_ID, sl.C_Location_ID "
					+ "FROM M_Product p, AD_OrgInfo o,"
					+ " C_BPartner_Location il INNER JOIN C_BPartner b ON (il.C_BPartner_ID=b.C_BPartner_ID),"
					+ " M_Warehouse w, C_BPartner_Location sl "
					+ "WHERE p.M_Product_ID=?"
					+ " AND o.AD_Org_ID=?"
					+ " AND il.C_BPartner_Location_ID=?"
					+ " AND w.M_Warehouse_ID=?"
					+ " AND sl.C_BPartner_Location_ID=?";
			
				PreparedStatement  pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, M_Product_ID);
				pstmt.setInt(2, AD_Org_ID);
				pstmt.setInt(3, billC_BPartner_Location_ID);
				pstmt.setInt(4, M_Warehouse_ID);
				pstmt.setInt(5, shipC_BPartner_Location_ID);
				ResultSet rs = pstmt.executeQuery();
				boolean found = false;
				if (rs.next())
				{
					C_TaxCategory_ID = rs.getInt(1);
					billFromC_Location_ID = rs.getInt(2);
					billToC_Location_ID = rs.getInt(3);
					IsTaxExempt = rs.getString(4);
					shipFromC_Location_ID = rs.getInt(5);
					shipToC_Location_ID = rs.getInt(6);
					found = true;
				}
				rs.close();
				pstmt.close();
				//
				if (found && "Y".equals(IsTaxExempt))
				{
					log.fine("Business Partner is Tax exempt");
					return getExemptTax(ctx, AD_Org_ID,IsSOTrx,C_TaxCategory_ID, validationSQL);
				}
				else if (found)
				{
					if (!IsSOTrx)
					{
						int temp = billFromC_Location_ID;
						billFromC_Location_ID = billToC_Location_ID;
						billToC_Location_ID = temp;
						temp = shipFromC_Location_ID;
						shipFromC_Location_ID = shipToC_Location_ID;
						shipToC_Location_ID = temp;
					}
					log.fine("C_TaxCategory_ID=" + C_TaxCategory_ID
						+ ", billFromC_Location_ID=" + billFromC_Location_ID
						+ ", billToC_Location_ID=" + billToC_Location_ID
						+ ", shipFromC_Location_ID=" + shipFromC_Location_ID
						+ ", shipToC_Location_ID=" + shipToC_Location_ID);
					
					/*ZCOMP35*/
					shipToC_Location_ID = webTaxLogic(ctx,shipFromC_Location_ID,shipToC_Location_ID,IsSOTrx, shipC_BPartner_Location_ID);
					// END OF ZCOMP35
					
					//Redmine 29795 - //45183
					if ((MDocBaseType.DOCBASETYPE_ARInvoice.equals
							(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
							(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
								&& isBPTaxExempt(ctx, shipC_BPartner_Location_ID)
								&& !isBPTransfrontalier(ctx, shipToC_Location_ID))
						shipToC_Location_ID = billFromC_Location_ID;

					return get(ctx, C_TaxCategory_ID, IsSOTrx,
						shipDate, shipFromC_Location_ID, shipToC_Location_ID,
						billDate, billFromC_Location_ID, billToC_Location_ID
						,AD_Org_ID  //ZCOM467
						/*ZCOMP35*/ , C_DocType_ID, validationSQL
					);
				}

				// ----------------------------------------------------------------

				//	Detail for error isolation

			//	M_Product_ID				->	C_TaxCategory_ID
				sql = "SELECT C_TaxCategory_ID FROM M_Product "
					+ "WHERE M_Product_ID=?";
				variable = "M_Product_ID";
				pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, M_Product_ID);
				rs = pstmt.executeQuery();
				found = false;
				if (rs.next())
				{
					C_TaxCategory_ID = rs.getInt(1);
					found = true;
				}
				rs.close();
				pstmt.close();
				if (C_TaxCategory_ID == 0)
				{
					log.saveError("TaxCriteriaNotFound", Msg.translate(ctx, variable)
						+ (found ? "" : " (Product=" + M_Product_ID + " not found)"));
					return 0;
				}
				log.fine("C_TaxCategory_ID=" + C_TaxCategory_ID);

			//	AD_Org_ID					->	billFromC_Location_ID
				sql = "SELECT C_Location_ID FROM AD_OrgInfo "
					+ "WHERE AD_Org_ID=?";
				variable = "AD_Org_ID";
				pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, AD_Org_ID);
				rs = pstmt.executeQuery();
				found = false;
				if (rs.next())
				{
					billFromC_Location_ID = rs.getInt (1);
					found = true;
				}
				rs.close();
				pstmt.close();
				if (billFromC_Location_ID == 0)
				{
					log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
					  + (found ? "" : " (Info/Org=" + AD_Org_ID + " not found)"));
					return 0;
				}

			//	billC_BPartner_Location_ID  ->	billToC_Location_ID
				sql = "SELECT l.C_Location_ID, b.IsTaxExempt "
					+ "FROM C_BPartner_Location l INNER JOIN C_BPartner b ON (l.C_BPartner_ID=b.C_BPartner_ID) "
					+ "WHERE C_BPartner_Location_ID=?";
				variable = "BillTo_ID";
				pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, billC_BPartner_Location_ID);
				rs = pstmt.executeQuery();
				found = false;
				if (rs.next())
				{
					billToC_Location_ID = rs.getInt(1);
					IsTaxExempt = rs.getString(2);
					found = true;
				}
				rs.close();
				pstmt.close();
				if (billToC_Location_ID == 0)
				{
					log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
						+ (found ? "" : " (BPLocation=" + billC_BPartner_Location_ID + " not found)"));
					return 0;
				}
				if ("Y".equals(IsTaxExempt))
					return getExemptTax(ctx, AD_Org_ID,IsSOTrx,C_TaxCategory_ID, validationSQL);

				//  Reverse for PO
				if (!IsSOTrx)
				{
					int temp = billFromC_Location_ID;
					billFromC_Location_ID = billToC_Location_ID;
					billToC_Location_ID = temp;
				}
				log.fine("billFromC_Location_ID = " + billFromC_Location_ID);
				log.fine("billToC_Location_ID = " + billToC_Location_ID);

				//-----------------------------------------------------------------

			//	M_Warehouse_ID				->	shipFromC_Location_ID
				sql = "SELECT C_Location_ID FROM M_Warehouse "
					+ "WHERE M_Warehouse_ID=?";
				variable = "M_Warehouse_ID";
				pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, M_Warehouse_ID);
				rs = pstmt.executeQuery();
				found = false;
				if (rs.next())
				{
					shipFromC_Location_ID = rs.getInt (1);
					found = true;
				}
				rs.close();
				pstmt.close();
				if (shipFromC_Location_ID == 0)
				{
					log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
						+ (found ? "" : " (Warehouse=" + M_Warehouse_ID + " not found)"));
					return 0;
				}

			//	shipC_BPartner_Location_ID 	->	shipToC_Location_ID
				sql = "SELECT C_Location_ID FROM C_BPartner_Location "
					+ "WHERE C_BPartner_Location_ID=?";
				variable = "C_BPartner_Location_ID";
				pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt(1, shipC_BPartner_Location_ID);
				rs = pstmt.executeQuery();
				found = false;
				if (rs.next())
				{
					shipToC_Location_ID = rs.getInt (1);
					found = true;
				}
				rs.close();
				pstmt.close();
				if (shipToC_Location_ID == 0)
				{
					log.saveError("TaxCriteriaNotFound", Msg.translate(Env.getAD_Language(ctx), variable)
						+ (found ? "" : " (BPLocation=" + shipC_BPartner_Location_ID + " not found)"));
					return 0;
				}

				//  Reverse for PO
				if (!IsSOTrx)
				{
					int temp = shipFromC_Location_ID;
					shipFromC_Location_ID = shipToC_Location_ID;
					shipToC_Location_ID = temp;
				}
				log.fine("shipFromC_Location_ID = " + shipFromC_Location_ID);
				log.fine("shipToC_Location_ID = " + shipToC_Location_ID);
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, "getProduct (" + variable + ")", e);
			}

			/*ZCOMP35*/
			shipToC_Location_ID = webTaxLogic(ctx,shipFromC_Location_ID,shipToC_Location_ID,IsSOTrx,shipC_BPartner_Location_ID);
			// END OF ZCOMP35

			//Redmine 29795 - //45183
			if ((MDocBaseType.DOCBASETYPE_ARInvoice.equals
					(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
					(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
						&& isBPTaxExempt(ctx, shipC_BPartner_Location_ID) 
						&& !isBPTransfrontalier(ctx, shipToC_Location_ID))
				shipToC_Location_ID = billFromC_Location_ID;
			
			return get (ctx, C_TaxCategory_ID, IsSOTrx,
				shipDate, shipFromC_Location_ID, shipToC_Location_ID,
				billDate, billFromC_Location_ID, billToC_Location_ID
				,AD_Org_ID //ZCOM467
				/*ZCOMP35*/ , C_DocType_ID, validationSQL		
			);
		}	//	getProduct
	
	
	
	
	
	public static int getCharge (Ctx ctx, int C_Charge_ID,
			Timestamp billDate, Timestamp shipDate,
			int AD_Org_ID, int M_Warehouse_ID,
			int billC_BPartner_Location_ID, int shipC_BPartner_Location_ID,
			boolean IsSOTrx
			/*ZCOMP35*/		, int C_DocType_ID, String validationSQL	
		)
		{
			if (M_Warehouse_ID == 0)
				M_Warehouse_ID = ctx.getContextAsInt( "M_Warehouse_ID");
			if (M_Warehouse_ID == 0)
			{
				log.warning("No Warehouse - C_Charge_ID=" + C_Charge_ID);
				return 0;
			}
			int C_TaxCategory_ID = 0;
			int shipFromC_Location_ID = 0;
			int shipToC_Location_ID = 0;
			int billFromC_Location_ID = 0;
			int billToC_Location_ID = 0;
			String IsTaxExempt = null;

			//	Get all at once
			String sql = "SELECT c.C_TaxCategory_ID, o.C_Location_ID, il.C_Location_ID, b.IsTaxExempt,"
				 + " w.C_Location_ID, sl.C_Location_ID "
				 + "FROM C_Charge c, AD_OrgInfo o,"
				 + " C_BPartner_Location il INNER JOIN C_BPartner b ON (il.C_BPartner_ID=b.C_BPartner_ID),"
				 + " M_Warehouse w, C_BPartner_Location sl "
				 + "WHERE c.C_Charge_ID=?"
				 + " AND o.AD_Org_ID=?"
				 + " AND il.C_BPartner_Location_ID=?"
				 + " AND w.M_Warehouse_ID=?"
				 + " AND sl.C_BPartner_Location_ID=?";
			
			try
			{
				PreparedStatement pstmt = DB.prepareStatement(sql, (Trx) null);
				pstmt.setInt (1, C_Charge_ID);
				pstmt.setInt (2, AD_Org_ID);
				pstmt.setInt (3, billC_BPartner_Location_ID);
				pstmt.setInt (4, M_Warehouse_ID);
				pstmt.setInt (5, shipC_BPartner_Location_ID);
				ResultSet rs = pstmt.executeQuery ();
				boolean found = false;
				if (rs.next ())
				{
					C_TaxCategory_ID = rs.getInt (1);
					billFromC_Location_ID = rs.getInt (2);
					billToC_Location_ID = rs.getInt (3);
					IsTaxExempt = rs.getString (4);
					shipFromC_Location_ID = rs.getInt (5);
					shipToC_Location_ID = rs.getInt (6);
					found = true;
				}
				rs.close ();
				pstmt.close ();
				//
				if (!found)
				{
					log.warning("Not found for C_Charge_ID=" + C_Charge_ID 
						+ ", AD_Org_ID=" + AD_Org_ID + ", M_Warehouse_ID=" + M_Warehouse_ID
						+ ", C_BPartner_Location_ID=" + billC_BPartner_Location_ID 
						+ "/" + shipC_BPartner_Location_ID);
					return 0;
				}
				else if ("Y".equals (IsTaxExempt))
					return getExemptTax (ctx, AD_Org_ID,IsSOTrx,C_TaxCategory_ID, validationSQL);
			}
			catch (Exception e)
			{
				log.log(Level.SEVERE, sql, e);
				return 0;
			}

			//	Reverese for PO
			if (!IsSOTrx)
			{
				int temp = billFromC_Location_ID;
				billFromC_Location_ID = billToC_Location_ID;
				billToC_Location_ID = temp;
				temp = shipFromC_Location_ID;
				shipFromC_Location_ID = shipToC_Location_ID;
				shipToC_Location_ID = temp;
			}

			//ZCOMP35
			shipToC_Location_ID = webTaxLogic(ctx,shipFromC_Location_ID,shipToC_Location_ID,IsSOTrx,shipC_BPartner_Location_ID);
			//ZCOMP35

			//Redmine 29795 - //45183
			if ((MDocBaseType.DOCBASETYPE_ARInvoice.equals
					(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
					(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
						&& isBPTaxExempt(ctx, shipC_BPartner_Location_ID)
						&& !isBPTransfrontalier(ctx, shipToC_Location_ID))
				shipToC_Location_ID = billFromC_Location_ID;
			
			//
			log.fine("C_TaxCategory_ID=" + C_TaxCategory_ID
			  + ", billFromC_Location_ID=" + billFromC_Location_ID
			  + ", billToC_Location_ID=" + billToC_Location_ID
			  + ", shipFromC_Location_ID=" + shipFromC_Location_ID
			  + ", shipToC_Location_ID=" + shipToC_Location_ID);
			return get (ctx, C_TaxCategory_ID, IsSOTrx,
			  shipDate, shipFromC_Location_ID, shipToC_Location_ID,
			  billDate, billFromC_Location_ID, billToC_Location_ID
			  ,AD_Org_ID //ZCOM467
			  /*ZCOMP35*/ , C_DocType_ID, validationSQL    
			);
		}	//	getCharge
	
	
	
	
	
	private static int getExemptTax (Ctx ctx, int AD_Org_ID,boolean IsSOTrx, int C_TaxCategory_ID, String validationSQL)
	{
		int C_Tax_ID = 0;
		StringBuilder sql= new StringBuilder();
		sql.append("SELECT C_Tax.C_Tax_ID FROM C_Tax INNER JOIN AD_Org o ON (C_Tax.AD_Client_ID=o.AD_Client_ID) ");
		sql.append("WHERE C_Tax.IsTaxExempt='Y' AND C_Tax.IsActive = 'Y' AND o.AD_Org_ID=? AND (C_Tax.SOPOType = 'B' ");
		if (IsSOTrx)
			sql.append("OR C_Tax.SOPOType = 'S') ");
		else
			sql.append("OR C_Tax.SOPOType = 'P') ");	
		if (C_TaxCategory_ID != 0)
			sql.append("AND C_TaxCategory_ID = ? ");	
		
		sql.append(validationSQL);
			
		sql.append("ORDER BY C_Tax.SOPOType DESC, C_Tax.rate DESC");
		
		boolean found = false;
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
			pstmt.setInt(1, AD_Org_ID);
			if (C_TaxCategory_ID != 0)
				pstmt.setInt(2, C_TaxCategory_ID);
			
						
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				C_Tax_ID = rs.getInt (1);
				found = true;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		log.fine("TaxExempt=Y - C_Tax_ID=" + C_Tax_ID);
		if (C_Tax_ID == 0)
			log.saveError("TaxCriteriaNotFound", Msg.getMsg(ctx, "TaxNoExemptFound")
				+ (found ? "" : " (Tax/Org=" + AD_Org_ID + " not found)"));
		return C_Tax_ID;
	}	//	getExemptTax
	
	
	
	
	protected static int get (Ctx ctx,
			int C_TaxCategory_ID, boolean IsSOTrx,
			Timestamp shipDate, int shipFromC_Locction_ID, int shipToC_Location_ID,
			Timestamp billDate, int billFromC_Location_ID, int billToC_Location_ID
			,int AD_Org_ID //ZCOM467
			/*ZCOMP35*/ , int C_DocType_ID, String validationSQL			
		)
		{
//			//	C_TaxCategory contains CommodityCode
//			
//			//	API to Tax Vendor comes here
	//
//			if (CLogMgt.isLevelFine())
//			{
//				log.info("(Detail) - Category=" + C_TaxCategory_ID 
//					+ ", SOTrx=" + IsSOTrx);
//				log.config("(Detail) - BillFrom=" + billFromC_Location_ID 
//					+ ", BillTo=" + billToC_Location_ID + ", BillDate=" + billDate);
//			}
	//
//			MTax[] taxes = MTax.getAll (ctx);
//			MLocation lFrom = new MLocation (ctx, billFromC_Location_ID, null); 
//			MLocation lTo = new MLocation (ctx, billToC_Location_ID, null); 
//			log.finer("From=" + lFrom);
//			log.finer("To=" + lTo);
//			
//			// This object assigns a priority to a given tax/taxPostal record.
//			// Any dual specified field beats any combination of single fields,
//			// and single fields are used to decide between otherwise equal dual specifications.
//			// Zip > Region > Country
//			class MTaxPriority {
//				MTax tax;
//				int priority = 0;
//				
//				public MTaxPriority(MTax t, MTaxPostal tp){
//					tax = t;
//					final int DUAL_ZIP = 32;
//					final int DUAL_REGION = 16;
//					final int DUAL_COUNTRY = 8;
//					final int ZIP = 4;
//					final int REGION = 2;
//					final int COUNTRY = 1;
//					
//					if(tp != null){
//						if(tp.getPostal_To() == null)
//							priority += ZIP;
//						else
//							priority += DUAL_ZIP;
//					}
//					
//					int countryTotal = ((tax.getC_Country_ID() == 0)?0:1) + ((tax.getTo_Country_ID() == 0)?0:1);
//					if(countryTotal == 1)
//						priority += COUNTRY;
//					if(countryTotal == 2)
//						priority += DUAL_COUNTRY;
//					
//					int regionTotal = ((tax.getC_Region_ID() == 0)?0:1) + ((tax.getTo_Region_ID() == 0)?0:1);
//					if(regionTotal == 1)
//						priority += REGION;
//					if(regionTotal == 2)
//						priority += DUAL_REGION;
//				}
//				
//				public int getC_Tax_ID(){
//					return tax.getC_Tax_ID();
//				}
//				
//				public Timestamp getValidFrom(){
//					return tax.getValidFrom();
//				}
//				
//				// returns true if this MTaxPriority beats the one being compared to
//				// The MTaxPriority with higher priority wins.
//				// If the priorities are tied, then the one with the more recent date wins. 
//				public boolean trumps(MTaxPriority compareTax){
//					if(priority > compareTax.priority ||
//							(priority == compareTax.priority && getValidFrom().after(compareTax.getValidFrom())))
//						return true;
//					else 
//						return false;
//				}
//			}
	//
//			ArrayList<MTaxPriority> results = new ArrayList<MTaxPriority>();
//			for (MTax tax : taxes) {
//				if (tax.isTaxExempt()
//					|| !tax.isActive() 
//					|| tax.getC_TaxCategory_ID() != C_TaxCategory_ID
//					|| tax.getParent_Tax_ID() != 0)	//	user parent tax
//					continue;
//				if (IsSOTrx && X_C_Tax.SOPOTYPE_PurchaseTax.equals(tax.getSOPOType()))
//					continue;
//				if (!IsSOTrx && X_C_Tax.SOPOTYPE_SalesTax.equals(tax.getSOPOType()))
//					continue;
	//
//				if (CLogMgt.isLevelFinest())
//				{
//					log.finest(tax.toString());
//					log.finest("From Country - " + (tax.getC_Country_ID() == lFrom.getC_Country_ID() 
//						|| tax.getC_Country_ID() == 0));
//					log.finest("From Region - " + (tax.getC_Region_ID() == lFrom.getC_Region_ID() 
//						|| tax.getC_Region_ID() == 0));
//					log.finest("To Country - " + (tax.getTo_Country_ID() == lTo.getC_Country_ID() 
//						|| tax.getTo_Country_ID() == 0));
//					log.finest("To Region - " + (tax.getTo_Region_ID() == lTo.getC_Region_ID() 
//						|| tax.getTo_Region_ID() == 0));
//					log.finest("Date valid - " + (!tax.getValidFrom().after(billDate)));
//				}
//				
//					//	From Country
//				if ((tax.getC_Country_ID() == lFrom.getC_Country_ID() 
//						|| tax.getC_Country_ID() == 0)
//					//	From Region
//					&& (tax.getC_Region_ID() == lFrom.getC_Region_ID() 
//						|| tax.getC_Region_ID() == 0)
//					//	To Country
//					&& (tax.getTo_Country_ID() == lTo.getC_Country_ID() 
//						|| tax.getTo_Country_ID() == 0)
//					//	To Region
//					&& (tax.getTo_Region_ID() == lTo.getC_Region_ID() 
//						|| tax.getTo_Region_ID() == 0)
//					//	Date
//					&& !tax.getValidFrom().after(billDate)
//					)
//				{
//					if (!tax.isPostal())
//					{
//						results.add(new MTaxPriority(tax, null));
//						continue;
//					}
//					//
//					MTaxPostal[] postals = tax.getPostals(false);
//					for (MTaxPostal postal : postals) {
//						if (postal.isActive()
//							//	Postal From is mandatory
//							&& postal.getPostal().startsWith(lFrom.getPostal())
//							//	Postal To is optional
//							&& (postal.getPostal_To() == null 
//								|| postal.getPostal_To().startsWith(lTo.getPostal()))
//							)
//						{
//							results.add(new MTaxPriority(tax, postal));
//							continue;
//						}
//					}	//	for all postals
//				}
//			}	//	for all taxes
//			
//			//	One Result
//			if (results.size() == 1)
//				return results.get(0).getC_Tax_ID();
//			//	Multiple results - different valid from dates
//			if (results.size() > 1)
//			{
//				MTaxPriority latest = null;
//				for (int i = 0; i < results.size(); i++)
//				{
//					MTaxPriority taxPriority = results.get(i);
//					if (latest == null 
//						|| taxPriority.trumps(latest)){
//						latest = taxPriority;
//					}
//				}
//				return latest.getC_Tax_ID();
//			}		
	//
//			//	Default Tax
//			for (MTax tax : taxes) {
//				if (!tax.isDefault() || !tax.isActive()
//					|| tax.getParent_Tax_ID() != 0)	//	user parent tax
//					continue;
//				if (IsSOTrx && X_C_Tax.SOPOTYPE_PurchaseTax.equals(tax.getSOPOType()))
//					continue;
//				if (!IsSOTrx && X_C_Tax.SOPOTYPE_SalesTax.equals(tax.getSOPOType()))
//					continue;
//				log.fine("(default) - " + tax);
//				return tax.getC_Tax_ID();
//			}	//	for all taxes
//			
//			log.saveError("TaxNotFound", "");
//			return 0;
			//ZCOM467
			int	C_Tax_ID = 0;


			
			log.fine("C_DocType_ID= " + C_DocType_ID);
			/*ZCOMP35 START */
			if (C_DocType_ID == 0){
				log.config("Document Type is NULL");
			}
			/*ZCOMP35* END */
			//	C_TaxCategory contains CommodityCode
			//	API to Tax Vendor comes here

			if (CLogMgt.isLevelFine())
			{
				log.info("(Detail) - Category=" + C_TaxCategory_ID 
					+ ", SOTrx=" + IsSOTrx);
				log.config("(Detail) - BillFrom=" + billFromC_Location_ID 
					+ ", BillTo=" + billToC_Location_ID + ", BillDate=" + billDate);
			}


			/**********************************************************************
			 *	own table lookup
			 *	- uses billFromC_Location, shipToC_Location, billDate
			 */
			log.fine("Searching for TAX ...");
			String sql = "SELECT C_Tax.C_Tax_ID, C_Tax.ValidFrom "
				+ "FROM C_Tax , C_Location lf, C_Location lt, Z_Taxzoneline z1, Z_Taxzoneline z2, AD_Org o" ;
				if (C_DocType_ID != 0)
					 sql = sql + ", Z_TAXDOCTYPE z3";
				sql = sql 
				+ " WHERE C_Tax.Parent_Tax_ID IS NULL"
				+ " AND C_Tax.IsActive = 'Y'" //ZCOM999
				+ " AND C_Tax.C_TaxCategory_ID=?"   //  C_TaxCategory_ID
				+ " AND lf.C_Location_ID=?"     //  billFromC_Location_ID
				+ " AND z1.Z_TAXZONELINE_C_ID=lf.C_Country_ID"
					  + " and z1.IsActive = 'Y'"
				+ " AND z1.Z_Taxzone_ID=C_Tax.Z_Taxzone_ID"
				+ " AND lt.C_Location_ID=?"     //  shipToC_Location_ID
				+ " AND z2.Z_TAXZONELINE_C_ID=lt.C_Country_ID"
					+ " and z2.IsActive = 'Y'"
				+ " AND z2.Z_Taxzone_ID=C_Tax.Z_to_Taxzone_ID";

				if (C_DocType_ID != 0)
				{
					 sql = sql                
				+ " AND z3.C_Tax_ID=C_Tax.C_Tax_ID"
				+ " AND z3.C_Doctype_ID=? ";
				}
				
				if((MDocBaseType.DOCBASETYPE_ARInvoice.equals
						(MDocType.get(ctx, C_DocType_ID).getDocBaseType()) || MDocBaseType.DOCBASETYPE_SalesOrder.equals
						(MDocType.get(ctx, C_DocType_ID).getDocBaseType()))
						&& isBPTransfrontalier(ctx, shipToC_Location_ID))
				{
					if( !isBPTaxExempt2(ctx, shipToC_Location_ID) )
						sql = sql + " AND z2.IsTaxNotNull = 'Y' and z2.IsTransfrontalier='Y' ";
					else
						sql = sql + " AND z2.IsTaxNotNull = 'N' and z2.IsTransfrontalier='Y' ";
				}
				
				sql = sql + validationSQL;
				
					 sql = sql           
			    + " AND o.AD_Org_ID=? and (C_Tax.IsTVAIncyAR='N' AND C_Tax.IsTVAIncyAP='N')"
			    //ZCOM479 + " AND o.AD_Client_ID=t.AD_Client_ID"	      
			    + " AND (o.AD_Client_ID=C_Tax.AD_Client_ID or C_Tax.c_tax_id = 0)" //ZCOM479
				+ " ORDER BY C_Tax.iscocontractant, C_Tax.ValidFrom DESC"; /*COMP35** must be desc */
			try
			{
				log.fine("SQL: "+sql);
				
				PreparedStatement pstmt = DB.prepareStatement(sql, null);
				
				log.fine("C_TaxCategory_ID= " + C_TaxCategory_ID);		
				log.fine("billFromC_Location_ID= " + billFromC_Location_ID);	
				log.fine("shipToC_Location_ID= " + shipToC_Location_ID);	

				pstmt.setInt(1, C_TaxCategory_ID);
				pstmt.setInt(2, billFromC_Location_ID);
				pstmt.setInt(3, shipToC_Location_ID);
				if (C_DocType_ID != 0)
				  {
					pstmt.setInt(4, C_DocType_ID);
					pstmt.setInt(5, AD_Org_ID);
				  }
				else    
				   pstmt.setInt(4, AD_Org_ID);
				   
				ResultSet rs = pstmt.executeQuery();
				//	Take latest one -> wrong, needs to search
				boolean noTax = true;
				while (rs.next() && noTax)
				{
					Timestamp taxDate = rs.getTimestamp(2);
					//	we have the tax rate,
					//	if the tax valid from date is after or equal bill date
					if (billDate != null && (taxDate == null || taxDate.after(billDate))){
						log.fine("FOUND TAX but not correct Tax Date : "+taxDate+" BillDate="+billDate);
						continue;
					}
					noTax = false;
					C_Tax_ID = rs.getInt(1);
				}
				rs.close();
				pstmt.close();

				/*COMP35** START */
				if (noTax){
				log.fine("Searching for TAX without Document Type ...");
				sql = "SELECT C_Tax.C_Tax_ID, C_Tax.ValidFrom "
					+ "FROM C_Tax, C_Location lf, C_Location lt, Z_Taxzoneline z1, Z_Taxzoneline z2, AD_Org o"
					+ " WHERE C_Tax.Parent_Tax_ID IS NULL"
					+ " AND C_Tax.IsActive = 'Y'" //ZCOM999
					+ " AND C_Tax.SOPOType<>?"				//	#1 Exclude
					+ " AND C_Tax.C_TaxCategory_ID=?"   //  C_TaxCategory_ID
					+ " AND lf.C_Location_ID=?"     //  billFromC_Location_ID
					+ " AND z1.Z_TAXZONELINE_C_ID=lf.C_Country_ID"
						  + " and z1.IsActive = 'Y'"
					+ " AND z1.Z_Taxzone_ID=C_Tax.Z_Taxzone_ID"
					+ " AND lt.C_Location_ID=?"     //  shipToC_Location_ID
					+ " AND z2.Z_TAXZONELINE_C_ID=lt.C_Country_ID"
						+ " and z2.IsActive = 'Y'"
					+ " AND z2.Z_Taxzone_ID=C_Tax.Z_to_Taxzone_ID"
				    + " AND o.AD_Org_ID=?"
				    + validationSQL
				    //ZCOM479 + " AND o.AD_Client_ID=t.AD_Client_ID"	      
				    + " AND (o.AD_Client_ID=C_Tax.AD_Client_ID or C_Tax.ad_client_id = 0)" //ZCOM479
					+ " ORDER BY C_Tax.ValidFrom desc"; /*COMP35** must be desc */;
						 	 
						pstmt = DB.prepareStatement(sql, null);
						pstmt.setString(1,  IsSOTrx ? "P" : "S");
						pstmt.setInt(2, C_TaxCategory_ID);
				pstmt.setInt(3, billFromC_Location_ID);
				pstmt.setInt(4, shipToC_Location_ID);
				pstmt.setInt(5,  AD_Org_ID);

				rs = pstmt.executeQuery();
				while (rs.next() && noTax)
				{
					Timestamp taxDate = rs.getTimestamp(2);
					if (taxDate == null || taxDate.after(billDate))
						continue;
					noTax = false;
					C_Tax_ID = rs.getInt(1);
				}
				rs.close();
				pstmt.close();
			}	//	no destination country
			log.fine("SQL: "+sql);

				//	Try with no destination country in tax table
				if (noTax)
				{
					log.fine("OriginTax");
					sql = "SELECT C_Tax.C_Tax_ID, C_Tax.ValidFrom "
						+ "FROM C_Tax , C_Location lf "
						+ "WHERE C_Tax.Parent_Tax_ID IS NULL"
						+ " AND C_Tax.IsActive = 'Y'" //ZCOM999
						+ " AND C_Tax.SOPOType<>?"				//	#1 Exclude
						+ " AND C_Tax.C_TaxCategory_ID=?"       //  #2 C_TaxCategory_ID
						+ " AND lf.C_Location_ID=?"         //  #3 billFromC_Location_ID
						+ " AND C_Tax.C_Country_ID=lf.C_Country_ID"
						+ " AND (C_Tax.C_Region_ID=lf.C_Region_ID OR (C_Tax.C_Region_ID IS NULL AND lf.C_Region_ID IS NULL))"
						+ " AND C_Tax.To_Country_ID IS NULL AND C_Tax.To_Region_ID IS NULL "
						+ validationSQL
						+ "ORDER BY C_Tax.ValidFrom DESC";
					
					pstmt = DB.prepareStatement(sql, null);
					pstmt.setString(1, IsSOTrx ? "P" : "S");	//	exclude
					pstmt.setInt(2, C_TaxCategory_ID);
					pstmt.setInt(3, billFromC_Location_ID);
					rs = pstmt.executeQuery();
					while (rs.next() && noTax)
					{
						Timestamp taxDate = rs.getTimestamp(2);
						if (taxDate == null || taxDate.after(billDate))
							continue;
						noTax = false;
						C_Tax_ID = rs.getInt(1);
					}
					rs.close();
					pstmt.close();
				}	//	no destination country
				log.fine("SQL: "+sql);
					
				//  Get Default Tax
				if (noTax)
				{
					log.fine("DefaultTax");
					sql = "SELECT C_Tax.C_Tax_ID, C_Tax.ValidFrom "
						+ "FROM C_Tax , C_Location lf "
						+ "WHERE C_Tax.AD_Client_ID=lf.AD_Client_ID"    //  get Client from bill-from
						+ " AND C_Tax.IsActive = 'Y'" //ZCOM999
						+ " AND C_Tax.SOPOType<>?"				//	#1 Exclude
						+ " AND lf.C_Location_ID=?"     	//  #2 billFromC_Location_ID
						+ " AND C_Tax.IsDefault='Y' "
						+ validationSQL
						+ "ORDER BY C_Tax.ValidFrom DESC";
					
					pstmt = DB.prepareStatement(sql, null);
					
					log.fine("C_TaxCategory_ID= " + C_TaxCategory_ID);		
					log.fine("billFromC_Location_ID= " + billFromC_Location_ID);	
					log.fine("shipToC_Location_ID= " + shipToC_Location_ID);	
					/*
					pstmt.setInt(1, C_TaxCategory_ID);
					pstmt.setInt(2, billFromC_Location_ID);
					pstmt.setInt(3, shipToC_Location_ID);
					*/
					pstmt.setString(1, IsSOTrx ? "P" : "S");	//	exclude
					
					pstmt.setInt(2, billFromC_Location_ID);
					
					rs = pstmt.executeQuery();
					//	Take latest one -> wrong, needs to search
					noTax = true;
					while (rs.next() && noTax)
					{
						Timestamp taxDate = rs.getTimestamp(2);
						//	we have the tax rate,
						//	if the tax valid from date is after or equal bill date
						if (taxDate == null || taxDate.after(billDate)){
							log.fine("FOUND TAX but not correct Tax Date : "+taxDate+" BillDate="+billDate);
							continue;
						}
						noTax = false;
						C_Tax_ID = rs.getInt(1);
					}
					rs.close();
					pstmt.close();
				}
				/*COMP35** END */
				
			}
			catch (SQLException e)
			{
				log.fine("get (C_Tax_ID) - " + sql+ e);
			}


			/*COMP35* START */
			StringBuffer msg = new StringBuffer("");
			if (log.isLoggable(Level.CONFIG) || C_Tax_ID == 0) {
				// DB consuming logging !
				msg.append(" ## Document Type '");
				msg.append(extractFieldFromTable("c_doctype","name",C_DocType_ID));
				msg.append("' ## Tax category '");
				msg.append(extractFieldFromTable("c_taxcategory","name",C_TaxCategory_ID));
				msg.append("' ## BILL FROM '");
				msg.append(extractFieldFromTable("c_location","city",billFromC_Location_ID));
				msg.append("' ## SHIP TO '");
				msg.append(extractFieldFromTable("c_location","city",shipToC_Location_ID));
				msg.append("' ## Date '");
				msg.append(billDate);
				msg.append("'");
				log.config(msg.toString());
			}

			if (C_Tax_ID == 0)
				log.saveError("TaxNotFound", msg.toString());
			/*COMP35* END */

			/*COMP35*
			if (C_Tax_ID == 0)
				Log.saveError("TaxNotFound", "");
			*COMP35*/
			
			return C_Tax_ID;
		//ZCOM467
		}	//	get
	//Redmine 29795
		public static boolean isBPTaxExempt2(Ctx ctx, int C_BPartner_ID){
			
			String sql = "SELECT bp.TaxID FROM C_BPartner bp WHERE C_BPartner_ID=(Select C_BPartner_ID from C_BPartner_Location where C_Location_ID = ? )";
			String taxID = DB.getSQLValueString(null, sql, C_BPartner_ID);
			return (taxID==null || taxID.length()==0) ? true : false;
		}
		
		public static int getTaxWithCocontractant(Ctx ctx,int c_bparnterBillLocation_ID,int c_bparnterShipLocation_ID,int ad_org_id,int m_product_id,int c_charge_id,Timestamp billDate,Timestamp shipDate,int c_doctypetarget_id,boolean isSoTrx, boolean IsCoContractant, int M_Warehouse_ID){
			MBPartnerLocation billBPLocation = new MBPartnerLocation(ctx,c_bparnterBillLocation_ID, null);
			MBPartnerLocation shipBPLocation = billBPLocation;
			if(c_bparnterShipLocation_ID > 0)
				 shipBPLocation = new MBPartnerLocation(ctx,c_bparnterShipLocation_ID, null);
			
			if(shipDate == null)
				shipDate=billDate;
				
			String validationSql = "";
			String savevalidationSql = "";

			Object[] params = {"C_Tax(SO/PO Type) - Cocontractant | IsTaxTransf"};
			validationSql = QueryUtil.getSQLValueString(null, "select code from AD_Val_Rule where name = ? ", params);
			savevalidationSql = validationSql;
			validationSql = " AND " + Env.parseContext(ctx, 1, validationSql, true, false);
			if(" AND ".equals(validationSql))
			{
				if(savevalidationSql.contains("@IsSOTrx@"))
					savevalidationSql = savevalidationSql.replace("@IsSOTrx@", isSoTrx?"Y":"N");
				if(savevalidationSql.contains("@IsCocontractant@"))
					savevalidationSql = savevalidationSql.replace("@IsCocontractant@", IsCoContractant?"Y":"N");
				if(savevalidationSql.contains("@"))
					savevalidationSql = " AND " + Env.parseContext(ctx, 1, validationSql, true, false);
				else
					savevalidationSql = " AND " + savevalidationSql;
				validationSql = savevalidationSql;
			}
			if(" AND ".equals(validationSql))
				validationSql = " ";

			MOrg org = MOrg.get(ctx,ad_org_id);

			int C_Tax_ID = Tax.get(ctx,m_product_id,c_charge_id ,billDate,shipDate,
					ad_org_id, M_Warehouse_ID,
					billBPLocation.getC_BPartner_Location_ID(),		//	should be bill to
					shipBPLocation.getC_BPartner_Location_ID(),isSoTrx
					/*ZCOMP35*/ 	,c_doctypetarget_id, validationSql
			);
			
			return C_Tax_ID;
		}
	
	
}	//	Tax
