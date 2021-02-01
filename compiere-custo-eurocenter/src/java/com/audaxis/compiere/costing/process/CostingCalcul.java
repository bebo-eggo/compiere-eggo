/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  
02110-1301, USA.
*/

package com.audaxis.compiere.costing.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.model.MPriceList;
import org.compiere.model.MPriceListVersion;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPrice;
import org.compiere.model.X_Z_Costing_Calcul;
import org.compiere.model.X_Z_Costing_Product;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.MCostingCalcul;
import com.audaxis.compiere.model.MCostingProduct;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;
//import com.audaxis.compiere.model.ZPriceList;

/**
 * 
 * 
  <pre>
 	(Stock final - Quantités Achetées) * Cout Début + Cout Achat
 	------------------------------------------------------------
	                        Stock final

	Cout d'Achat = SUM (Montant Facturé) / SUM (Qté Facturé)

	Cout d'Achat = SUM (Qté Facturé * Prix Facturé) / SUM (Qté Facturé)

	======================================
	Conclusion :
	======================================

	(Stock final - Quantités Achetées) * Cout Début + ( SUM (Montant Facturé) )
 	---------------------------------------------------------------------------
	                                Stock final

	======================================
	Implémentation Technique :
	======================================

	(qtyend - qtyachat) * currentcostprice + totalpurchaseamount
	------------------------------------------------------------
			                   qtyend

	======================================
	Exemple :
	======================================

	DateFrom : 01/08 -- Stock : 100 -- Cout Départ : 9.57 EUR
	DateTo   : 01/09 -- Stock : 110

	Achats : 
	5 à 10 EUR
	50 à 11 EUR
	5 à 11 EUR
	5 à 9 EUR
	Ventes : 
	....
	
	(110 - 65) * 9.57 + (5*10+50*11+5*11+5*9)
	/
	110
	=
	10.278 EUR
	</pre>
*/
public class CostingCalcul extends SvrProcessExtended {

	protected boolean updateNewCost = false;
	protected int M_Product_Category_ID = 0;
	protected int z_costing_calcul_id = 0;
	protected int AD_Org_ID ;
	protected MPriceListVersion plv;
	protected int oldAd_Org_ID = -1;
	
	@Override
	protected void prepare() {
		updateNewCost = getParameterAsBoolean("UpdateNewCost");
		M_Product_Category_ID = getParameterAsInt("M_Product_Category_ID");
		z_costing_calcul_id = getRecord_ID();
		AD_Org_ID = getParameterAsInt("AD_Org_ID");
	}

	@Override
	protected String doIt() throws Exception {
		MCostingCalcul calcul = new MCostingCalcul(getCtx(), z_costing_calcul_id, get_TrxName());
		
		// 1. Suppression des coûts deja calculé car le niveau de cout est dinamique
		// on peut calculer le coût pour un niveau sociéte puis on recalcule le coût pr la meme categorie mais cette fois si avec un niveau de calcul org
		deleteCost(calcul);
		// 2. Sélection des Articles et clalcul des stocks à date
		int noProduct = newinsertProducts(calcul);
		
		// 3 . Insert / Select sur z_calcul_invoice
		int noInvoiceByOrg = insertInvoicesByOrg(calcul);
		int noInvoiceByTenant=  insertInvoicesByTenant(calcul);
		int noInvoice = noInvoiceByTenant+noInvoiceByOrg;
//		
		//3-1 Insert Product in z_costing_product manquant
		int notIn = insertProductsNoTRX(calcul);
		// 4. Update de FutureCostPrice
		updateFutureCostPrice(calcul);
//		
		// 5. Si param update de M_Cost
		// l'insertion vers la table des coût ne se fait pas maintenant, le processus ZSychroizeCost doit s'occuper de ça
		int noInserted = insertCosts(calcul);
		log.info(""+noInserted);
		
		//6. 2061 : inséré les enregistrements dans M_PriceListVersion
		int priceListversionNo = insertPriceListVersion(calcul);
		int nb  = 0;
		if(priceListversionNo>0)
		//7. Ajout des articles manquants dans la version
			nb = DB.executeUpdate("INSERT INTO M_PRODUCTPRICE (AD_CLIENT_ID , AD_ORG_ID , CREATED , CREATEDBY , ISACTIVE , M_PRICELIST_VERSION_ID , M_PRODUCT_ID , PRICELIMIT , PRICELIST , PRICESTD , QTYMIN , UPDATED , UPDATEDBY) "
				+ "select max(mp.AD_CLIENT_ID), 0, max(mc.created), max(mc.CREATEDBY ),'Y',"+priceListversionNo+", mp.M_PRODUCT_ID, 0,mc.CURRENTCOSTPRICE, mc.CURRENTCOSTPRICE,0,max(mc.UPDATED), max(mc.UPDATEDBY ) from M_Product mp "
				+ "inner join M_Cost mc on mc.M_Product_ID = mp.M_Product_ID and mc.M_COSTELEMENT_ID = "+calcul.getOrigine_CostElement_ID()+" "
						+ "where Not exists (select 1 from  M_PRODUCTPRICE mpp where mpp.M_PRICELIST_VERSION_ID = "+priceListversionNo+" "
								+ "and mp.M_Product_ID = mpp.M_Product_ID and mp.AD_Client_ID = mpp.AD_Client_ID) and mp.AD_Client_ID = ? and mp.ISSTOCKED = 'Y' "
								+ "group by 0, 'Y', "+priceListversionNo+", mp.M_PRODUCT_ID, 0, mc.CURRENTCOSTPRICE, mc.CURRENTCOSTPRICE, 0", getAD_Client_ID(), get_Trx());
		calcul.setProcessed(true);
		calcul.save();
		return 
		"@M_Product_ID@ = " + noProduct + " - No TRX : "+notIn
		+ 
		" - @C_InvoiceLine_ID@ = " + noInvoice
			+ " - @M_Pricelist_Version_ID@ = 1 - Nb article pas sur la version "+nb;
		
		
	}

	private void deleteCost(X_Z_Costing_Calcul calcul) {
		
		String deleteStrg = "DELETE FROM z_costing_invoice WHERE z_costing_product_id IN " +
				"(SELECT z_costing_product_id FROM z_costing_product WHERE z_costing_calcul_id = "+calcul.getZ_Costing_Calcul_ID()+")";
		int no = DB.executeUpdate(get_Trx(), deleteStrg);
		log.info("Nbr de facture supprimées = "+no);
		
		
	    deleteStrg = "DELETE FROM z_costing_product WHERE z_costing_calcul_id = "+calcul.getZ_Costing_Calcul_ID();
	    no =DB.executeUpdate(get_Trx(), deleteStrg);
	    log.info("Nbr de couts/artice supprimés = "+no);
	
	}//deleteCost

	/**
	 * Si le niveau de calcul de coût est « organisation », 
	 * seules les les factures de l'organisation 
	 * doivent être prises en compte 
	 * @param calcul
	 * @return
	 * @throws Exception
	 */
	protected int insertInvoicesByOrg(X_Z_Costing_Calcul calcul) throws Exception {
		
		//REDMINE 8094
		int eur_ID=DB.getSQLValue(null, "SELECT distinct cy.c_currency_id FROM c_currency cy WHERE UPPER(cy.iso_code)=?", Msg.getMsg(Env.getCtx(), "EURO_ISO_CODE"));//

		StringBuffer sql = new StringBuffer();
		sql.append("insert into z_costing_invoice(ad_client_id, ad_org_id, z_costing_invoice_id,");
		sql.append(" isactive, updated, created,");
		sql.append(" updatedby, createdby,");
		sql.append(" c_invoice_id, c_invoiceline_id, qtyinvoiced, priceactual, linenetamt, ");
//		sql.append(" m_attributesetinstance_id, "); //ASI
		sql.append(" z_costing_product_id, ");
		
		//REDMINE 8094
		sql.append(" multiplyrate, ");
		sql.append(" priceactual_Dev, ");
		sql.append(" linenetamt_Dev) ");//
		
		sql.append("select il.ad_client_id, il.ad_org_id, ad_sequence_nextno('Z_Costing_Invoice'), ");
		sql.append(" 'Y', sysdate, sysdate, ?, ?, ");
//		sql.append(" il.c_invoice_id, il.c_invoiceline_id, inl.MovementQty, ");
		sql.append(" il.c_invoice_id, il.c_invoiceline_id, il.qtyinvoiced, ");//REDMINE 11817
		sql.append(" CURRENCYCONVERT(il.priceactual,i.c_currency_id, ? ,i.dateacct, NULL ,0, 0 ) AS priceactual, "); 
		sql.append(" CURRENCYCONVERT(il.linenetamt,i.c_currency_id, ? ,i.dateacct, NULL ,0, 0 ) AS  linenetamt , ");
//		sql.append(" il.m_attributesetinstance_id, "); //ASI
		sql.append(" cp.z_costing_product_id, ");
		
		//REDMINE 8094
		sql.append(" CURRENCYRATE(i.c_currency_id, ? ,i.dateacct, NULL ,0, 0 ) AS multiplyrate, ");//it is not multiplyrate but only rate (multiplyrate OR dividerate)
		sql.append(" il.priceactual  AS  priceactual_Dev, ");
		sql.append(" (il.qtyinvoiced*il.priceactual)  AS  linenetamt_Dev ");//
		
		sql.append(" from z_costing_product cp ");
		sql.append(" inner join c_invoiceline il on (il.m_product_id = cp.m_product_id) ");
		sql.append(" inner join c_invoice i on i.c_invoice_id = il.c_invoice_id ");
		sql.append(" inner join M_InoutLine inl on inl.M_InoutLine_id = il.M_InoutLine_id ");//Redmine 5781
		sql.append(" inner join M_Inout ino on ino.M_Inout_id = inl.M_Inout_id ");//Redmine 5781
		sql.append(" where i.dateacct >= ? and i.dateacct <= ? ");
		sql.append(" and i.issotrx = 'N' and i.docstatus IN ('CO','CL','RE','VO')");
		sql.append(" and ino.issotrx = 'N'");//Redmine 5781
		sql.append(" and cp.z_costing_calcul_id = ?");
		sql.append(" and not exists (select 1 from z_costing_invoice o where o.z_costing_product_id = cp.z_costing_product_id ");
		sql.append(" and o.c_invoiceline_id = il.c_invoiceline_id) ");
		sql.append(" and i.ad_client_id = ? ");
	    sql.append(" and il.ad_org_id = cp.ad_org_id ");
	    sql.append(" and exists (SELECT 1 FROM m_product pr WHERE pr.m_product_category_id in (SELECT m_product_category_id FROM m_product_category_acct WHERE costinglevel LIKE 'O') AND pr.m_product_id = cp.m_product_id )");
	    
	    PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		int k = 1;
		
		ps.setInt(k++, getCtx().getAD_User_ID());
		ps.setInt(k++, getCtx().getAD_User_ID());
		
		//REDMINE 8094
		ps.setInt(k++,eur_ID);
		ps.setInt(k++,eur_ID);
		ps.setInt(k++,eur_ID);
		//
		
		ps.setTimestamp(k++, calcul.getDateFrom());
		ps.setTimestamp(k++, calcul.getDateTo());
		ps.setInt(k++, calcul.getZ_Costing_Calcul_ID());
		ps.setInt(k++, getCtx().getAD_Client_ID());
		int noInvoice = ps.executeUpdate();
		log.info("Nbre facture inserer par organisation  = "+noInvoice);
		return noInvoice;
	} //insertInvoicesByOrg
	
	/**
	 * Si le niveau de calcul de coût est « Société », 
	 * toutes les factures de toutes les organisations doivent être sélectionnées
	 * @param calcul
	 * @return
	 * @throws Exception
	 */
	
	protected int insertInvoicesByTenant(X_Z_Costing_Calcul calcul) throws Exception {
		
		//REDMINE 8094
		int eur_ID=DB.getSQLValue(null, "SELECT distinct cy.c_currency_id FROM c_currency cy WHERE UPPER(cy.iso_code)=?", Msg.getMsg(Env.getCtx(), "EURO_ISO_CODE"));//

		StringBuffer sql = new StringBuffer();
		sql.append("insert into z_costing_invoice(ad_client_id, ad_org_id, z_costing_invoice_id,");
		sql.append(" isactive, updated, created,");
		sql.append(" updatedby, createdby,");
		sql.append(" c_invoice_id, c_invoiceline_id, qtyinvoiced, priceactual, linenetamt, ");
//		sql.append(" m_attributesetinstance_id, "); //ASI
		sql.append(" z_costing_product_id, ");
		
		//REDMINE 8094
		sql.append(" multiplyrate, ");
		sql.append(" priceactual_Dev, ");
		sql.append(" linenetamt_Dev) ");//
		
		sql.append("select il.ad_client_id, il.ad_org_id, ad_sequence_nextno('Z_Costing_Invoice'), ");
		sql.append(" 'Y', sysdate, sysdate, ?, ?, ");
//		sql.append(" il.c_invoice_id, il.c_invoiceline_id, inl.MovementQty, ");
		sql.append(" il.c_invoice_id, il.c_invoiceline_id, il.qtyinvoiced, ");//REDMINE 11817
		sql.append(" CURRENCYCONVERT(il.priceactual,i.c_currency_id, ? ,i.dateacct, NULL ,0, 0 ) AS priceactual, "); 
		sql.append(" CURRENCYCONVERT(il.linenetamt,i.c_currency_id, ? ,i.dateacct, NULL ,0, 0 ) AS  linenetamt , ");
//		sql.append(" il.m_attributesetinstance_id, "); //ASI
		sql.append(" cp.z_costing_product_id, ");
		
		//REDMINE 8094
		sql.append(" CURRENCYRATE(i.c_currency_id, ? ,i.dateacct, NULL ,0, 0 ) AS multiplyrate, ");//it is not multiplyrate but only rate (multiplyrate OR dividerate)
		sql.append(" il.priceactual  AS  priceactual_Dev, ");
		sql.append(" (il.qtyinvoiced*il.priceactual)  AS  linenetamt_Dev ");//
		
		sql.append(" from z_costing_product cp ");
		sql.append(" inner join c_invoiceline il on (il.m_product_id = cp.m_product_id) ");
		sql.append(" inner join c_invoice i on i.c_invoice_id = il.c_invoice_id ");
		sql.append(" inner join M_InoutLine inl on inl.M_InoutLine_id = il.M_InoutLine_id ");//Redmine 5781
		sql.append(" inner join M_Inout ino on ino.M_Inout_id = inl.M_Inout_id ");//Redmine 5781
		sql.append(" where i.dateacct >= ? and i.dateacct <= ? ");
		sql.append(" and i.issotrx = 'N' and i.docstatus IN ('CO','CL','RE','VO')");
		sql.append(" and ino.issotrx = 'N'");//Redmine 5781
		sql.append(" and cp.z_costing_calcul_id = ?");
		sql.append(" and not exists (select 1 from z_costing_invoice o where o.z_costing_product_id = cp.z_costing_product_id ");
		sql.append(" and o.c_invoiceline_id = il.c_invoiceline_id) ");
		sql.append(" and i.ad_client_id = ? ");
	    sql.append(" and exists (SELECT 1 FROM m_product pr WHERE pr.m_product_category_id in (SELECT m_product_category_id FROM m_product_category_acct WHERE costinglevel <> 'O') AND pr.m_product_id = cp.m_product_id )");
	    
	    PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		int k = 1;
		
		ps.setInt(k++, getCtx().getAD_User_ID());
		ps.setInt(k++, getCtx().getAD_User_ID());
		
		//REDMINE 8094
		ps.setInt(k++,eur_ID);
		ps.setInt(k++,eur_ID);
		ps.setInt(k++,eur_ID);
		//
		
		ps.setTimestamp(k++, calcul.getDateFrom());
		ps.setTimestamp(k++, calcul.getDateTo());
		ps.setInt(k++, calcul.getZ_Costing_Calcul_ID());
		ps.setInt(k++, getCtx().getAD_Client_ID());
		int noInvoice = ps.executeUpdate();
		log.info("Nbre facture inserer par Societe  = "+noInvoice);
		return noInvoice;
	} //insertInvoicesByTenant

	protected int insertProducts(X_Z_Costing_Calcul calcul) throws Exception {	
		StringBuffer sql = new StringBuffer();
		sql.append("insert into z_costing_product(ad_client_id, ad_org_id, z_costing_product_id,");
		sql.append(" isactive, updated, created,");
		sql.append(" updatedby, createdby, m_product_id, ");
		sql.append(" M_ATTRIBUTESETINSTANCE_ID, currentcostprice, futurecostprice, ");
		sql.append(" qtystart, ");
		sql.append(" qtyend, ");
		sql.append(" z_costing_calcul_id, qtypurchase,cumulatedamt) ");
		sql.append("SELECT client, org, max(ad_sequence_nextno('Z_Costing_Product')),  active, created, updated,createdby, updatedby, m_product_id, Max (ATTRIBUTESETINSTANCE_ID), currentcostprice, futurecostprice,  QtyStart, QtyEnd,");
		sql.append("z_costing_calcul_id, qtypurchase,  cumulatedamt FROM (");
		sql.append("select c.ad_client_id as client, c.ad_org_id as org, ");
		sql.append(" 'Y' as active, sysdate as created, sysdate as updated, ");
		sql.append(" ? as createdby, ? as updatedby, c.m_product_id as m_product_id, "); // 1 2
		sql.append(" c.M_ATTRIBUTESETINSTANCE_ID as ATTRIBUTESETINSTANCE_ID, c.currentcostprice as currentcostprice, 0 as futurecostprice, ");
		sql.append(" z_qty_asof_Start(p.m_product_id, ?) as QtyStart, "); // 3 /--Redmine 5725
		sql.append(" z_qty_asof_End(p.m_product_id, ?) as QtyEnd, "); // 4 /--Redmine 5725
		sql.append(" ? as z_costing_calcul_id,0 as qtypurchase, 0 as cumulatedamt"); // 5
		sql.append(" FROM M_Product p ");
		sql.append(" left outer join M_cost c on c.m_product_id = p.m_product_id");
		sql.append(" WHERE c.m_costelement_id = ? AND (p.ad_client_id = ? or p.ad_client_id = 0) "); // 6 7
		sql.append(" AND c.c_acctschema_id = ? AND c.ad_org_id = ?"); // 8 9
		if (M_Product_Category_ID > 0) {
			sql.append(" AND p.m_product_category_id = ? "); // 10
		}
		
		sql.append(" AND NOT EXISTS (SELECT 1 FROM z_costing_product o WHERE ");
		sql.append(" o.z_costing_calcul_id = ? "); // 11
		sql.append(" AND o.m_product_id = c.m_product_id ");
		sql.append(" AND o.M_ATTRIBUTESETINSTANCE_ID = c.M_ATTRIBUTESETINSTANCE_ID) ");
		
		sql.append(" AND NOT EXISTS (SELECT 1 FROM m_attributeinstance mai");
		sql.append(" INNER JOIN m_attributevalue aiv ON (mai.m_attributevalue_id = aiv.m_attributevalue_id)");
		sql.append(" WHERE mai.M_ATTRIBUTESETINSTANCE_ID = c.M_ATTRIBUTESETINSTANCE_ID");
		sql.append(" AND aiv.exclupmp = 'Y')");
		
		sql.append(") GROUP BY client, org,  active, created, updated,createdby, updatedby, m_product_id, ");
		sql.append("currentcostprice, futurecostprice,  QtyStart, QtyEnd,z_costing_calcul_id, qtypurchase,  cumulatedamt ");

		
		PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		int k = 1;
		ps.setInt(k++, getCtx().getAD_User_ID()); // 1
		ps.setInt(k++, getCtx().getAD_User_ID()); // 2

		ps.setTimestamp(k++, calcul.getDateFrom()); // 3
		ps.setTimestamp(k++, calcul.getDateTo()); // 4

		ps.setInt(k++, z_costing_calcul_id); // 5
		ps.setInt(k++, calcul.getOrigine_CostElement_ID()); // 6
		ps.setInt(k++, getCtx().getAD_Client_ID()); // 7
		ps.setInt(k++, calcul.getC_AcctSchema_ID()); // 8
		ps.setInt(k++, calcul.getAD_Org_ID()); // 9
		if (M_Product_Category_ID > 0) {
			ps.setInt(k++, M_Product_Category_ID); // 10
		}
		ps.setInt(k++, z_costing_calcul_id); // 11
		
		int noProduct = ps.executeUpdate();
		return noProduct;
	}
	protected int newinsertProducts(X_Z_Costing_Calcul calcul) throws Exception {	
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into z_costing_product(ad_client_id, ad_org_id, z_costing_product_id, isactive, updated, created, updatedby, createdby, "   );
		sql.append("    m_product_id,  M_ATTRIBUTESETINSTANCE_ID, currentcostprice, futurecostprice,  qtystart,  qtyend,  z_costing_calcul_id, "        );
		sql.append("    qtypurchase,cumulatedamt)  "                                                                                                    );
		sql.append(" select   "                                                                                                                         );
		sql.append(" p.ad_client_id as client, Invproduct.Ad_Org_Id as org,   "                                                                                  );
		sql.append(" ad_sequence_nextno('Z_Costing_Product'), "                                                                                         );
		sql.append(" 'Y' as active, sysdate as created, sysdate as updated, "                                                                           );
		sql.append(" ? as createdby, ");//1
		sql.append(" ? as updatedby,  "  );//2
		sql.append(" p.m_product_id as m_product_id,  "                                                                                                 );
		sql.append(" 0 as ATTRIBUTESETINSTANCE_ID,                                            "                                                         );
		sql.append(" nvl(( select max(c.currentcostprice) from m_cost c where c.c_acctschema_id =  ? " );//3
		sql.append("                                            and c.m_costelement_id = ?  ");//4
		sql.append("                                            and c.m_product_id = p.m_product_id "                                                   );
		sql.append("                                            and currentcostprice <> 0.00001 ), 0 ) "                                                );
		sql.append(" as currentcostprice, "                                                                                                             );
		sql.append(" 0 as futurecostprice,  "                                                                                                           );
		sql.append(" z_qty_asof_Start(p.m_product_id, ?) as QtyStart,  " );//5
		sql.append(" z_qty_asof_End(p.m_product_id, ?) as QtyEnd,  " );//6
		sql.append(" ? as z_costing_calcul_id, "   );//7
		sql.append(" 0 as qtypurchase, "                                                                                                                );
		sql.append(" 0 as cumulatedamt "                                                                                                                );
		sql.append(" from m_product p "                                                                                                                 );
		//Invproduct: une sous requete qui nous permet d'obtenir les differents organisations des lignes de factures pour chaque article 
		sql.append(" INNER JOIN "                                                                                                                       );
		sql.append(" (SELECT DISTINCT (CASE WHEN pca.costingmethod = 'O' THEN Invl.Ad_Org_Id ELSE 0 END) AS Ad_Org_Id,"                                                                                     );
		sql.append("  Invl.M_Product_Id            AS M_Product_Id"                                                                                     );
		sql.append(" FROM C_Invoiceline Invl");
		sql.append("      Inner Join C_Invoice Inv On (Inv.C_Invoice_Id = Invl.C_Invoice_Id AND inv.issotrx = 'N' AND inv.docstatus in ('CO','CL','RE','VO'))");
		sql.append("      inner join m_product pr on pr.m_product_id = invl.m_product_id ");
		sql.append("      inner join m_product_category_acct pca on pca.m_product_category_id = pr.m_product_category_id and pca.c_acctschema_id = ?   "); //8
		sql.append(") Invproduct ON (Invproduct.M_Product_Id = P.M_Product_Id)"                                                 );
		sql.append(" WHERE NOT EXISTS"                                                                                                                  );
		sql.append(" (SELECT 1"																															);                        
		sql.append(" FROM Z_Costing_Product O"                                                                                                          );
		sql.append(" WHERE O.Z_Costing_Calcul_Id = ?"  );//9
		sql.append(" AND O.M_Product_Id          = P.M_Product_Id"                                                                                      );
		sql.append(" AND O.Ad_Org_Id             = Invproduct.Ad_Org_Id)"                                                                                );
		
		sql.append(" AND p.m_product_id in "                                                                                                            );
		sql.append(" ( "                                                                                                                                );
		sql.append(" select distinct(p.m_product_id) "                                                                                                  );
		sql.append(" FROM M_Product p  "                                                                                                                );
		sql.append(" left outer join M_cost c on c.m_product_id = p.m_product_id  "                                                                     );
		sql.append(" WHERE c.m_costelement_id = ? " );//10
		sql.append(" AND (p.ad_client_id = ? or p.ad_client_id = 0)   "  );//11
		sql.append(" AND c.c_acctschema_id =  ? " );//12
//		sql.append(" AND c.ad_org_id = 0 "                                                                                                              );
		if (M_Product_Category_ID > 0) sql.append(" AND p.m_product_category_id = ?   " );//13
		sql.append(" ) "                                                                                                                                );

		
//		sql.append(" AND NOT EXISTS (SELECT 1 FROM z_costing_product o WHERE  o.z_costing_calcul_id = ?  AND o.m_product_id = c.m_product_id   "        );
//		sql.append("					AND o.M_ATTRIBUTESETINSTANCE_ID = c.M_ATTRIBUTESETINSTANCE_ID)  "                                               );
//		sql.append(" AND NOT EXISTS (SELECT 1 FROM m_attributeinstance mai "                                                                            );
//		sql.append("            INNER JOIN m_attributevalue aiv 	ON (mai.m_attributevalue_id = aiv.m_attributevalue_id) "                            );
//		sql.append("            WHERE mai.M_ATTRIBUTESETINSTANCE_ID = c.M_ATTRIBUTESETINSTANCE_ID "                                                     );
//		sql.append("            AND aiv.exclupmp = 'Y')  "                                                                                              );
//		sql.append(" ) "                               
		

		
//		StringBuffer sql = new StringBuffer();
//		sql.append(" insert into z_costing_product(ad_client_id, ad_org_id, z_costing_product_id, isactive, updated, created, updatedby, createdby, "   );
//		sql.append("    m_product_id,  M_ATTRIBUTESETINSTANCE_ID, currentcostprice, futurecostprice,  qtystart,  qtyend,  z_costing_calcul_id, "        );
//		sql.append("    qtypurchase,cumulatedamt)  "                                                                                                    );
//		sql.append(" select   "                                                                                                                         );
//		sql.append(" p.ad_client_id as client, p.ad_org_id as org,   "                                                                                  );
//		sql.append(" ad_sequence_nextno('Z_Costing_Product'), "                                                                                         );
//		sql.append(" 'Y' as active, sysdate as created, sysdate as updated, "                                                                           );
//		sql.append(" ? as createdby, "                                                                                                                  );
//		sql.append(" ? as updatedby,  "                                                                                                                 );
//		sql.append(" p.m_product_id as m_product_id,  "                                                                                                 );
//		sql.append(" ( select max(c.m_attributesetinstance_id) from m_cost c where c.c_acctschema_id =  ? "                                             );
//		sql.append("                                            and c.m_costelement_id = ? "                                                            );
//		sql.append("                                            and c.m_product_id = p.m_product_id "                                                   );
//		sql.append("                                            and currentcostprice <> 0.00001 )   "                                                    );
//		sql.append(" as ATTRIBUTESETINSTANCE_ID,                                            "                                                           );
//		sql.append(" nvl(( select max(c.currentcostprice) from m_cost c where c.c_acctschema_id =  ? "                                                  );
//		sql.append("                                            and c.m_costelement_id = ?  "                                                           );
//		sql.append("                                            and c.m_product_id = p.m_product_id "                                                   );
//		sql.append("                                            and currentcostprice <> 0.00001 ), 0 ) "                                                );
//		sql.append(" as currentcostprice, "                                                                                                             );
//		sql.append(" 0 as futurecostprice,  "                                                                                                           );
//		sql.append(" z_qty_asof_Start(p.m_product_id, ?) as QtyStart,  "                                                                                );
//		sql.append(" z_qty_asof_End(p.m_product_id, ?) as QtyEnd,  "                                                                                    );
//		sql.append(" ? as z_costing_calcul_id, "                                                                                                        );
//		sql.append(" 0 as qtypurchase, "                                                                                                                );
//		sql.append(" 0 as cumulatedamt "                                                                                                                );
//		sql.append(" from m_product p "                                                                                                                 );
//		sql.append(" where m_product_id in "                                                                                                            );
//		sql.append(" ( "                                                                                                                                );
//		sql.append(" select distinct(p.m_product_id) "                                                                                                  );
//		sql.append(" FROM M_Product p  "                                                                                                                );
//		sql.append(" left outer join M_cost c on c.m_product_id = p.m_product_id  "                                                                     );
//		sql.append(" WHERE c.m_costelement_id = ? "                                                                                                     );
//		sql.append(" AND (p.ad_client_id = ? or p.ad_client_id = 0)   "                                                                                 );
//		sql.append(" AND c.c_acctschema_id =  ? "                                                                                                       );
//		sql.append(" AND c.ad_org_id = 0 "                                                                                                              );
//		if (M_Product_Category_ID > 0) sql.append(" AND p.m_product_category_id = ?   "                                                                                                );
//		sql.append(" AND NOT EXISTS (SELECT 1 FROM z_costing_product o WHERE  o.z_costing_calcul_id = ?  AND o.m_product_id = c.m_product_id   "        );
//		sql.append("					AND o.M_ATTRIBUTESETINSTANCE_ID = c.M_ATTRIBUTESETINSTANCE_ID)  "                                               );
//		sql.append(" AND NOT EXISTS (SELECT 1 FROM m_attributeinstance mai "                                                                            );
//		sql.append("            INNER JOIN m_attributevalue aiv 	ON (mai.m_attributevalue_id = aiv.m_attributevalue_id) "                            );
//		sql.append("            WHERE mai.M_ATTRIBUTESETINSTANCE_ID = c.M_ATTRIBUTESETINSTANCE_ID "                                                     );
//		sql.append("            AND aiv.exclupmp = 'Y')  "                                                                                              );
		PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		
		int k = 1;
		ps.setInt(k++, getCtx().getAD_User_ID()); // 1
		ps.setInt(k++, getCtx().getAD_User_ID()); // 2

		ps.setInt(k++, calcul.getC_AcctSchema_ID()); // 3
		ps.setInt(k++, calcul.getOrigine_CostElement_ID()); // 4

//		ps.setInt(k++, calcul.getC_AcctSchema_ID()); // 8
//		ps.setInt(k++, calcul.getOrigine_CostElement_ID()); // 6

		ps.setTimestamp(k++, calcul.getDateFrom()); // 5
		ps.setTimestamp(k++, calcul.getDateTo()); // 6

		ps.setInt(k++, z_costing_calcul_id); // 7
		
		ps.setInt(k++, calcul.getC_AcctSchema_ID()); // 8
		
		ps.setInt(k++, z_costing_calcul_id);//9
		ps.setInt(k++, calcul.getOrigine_CostElement_ID()); // 10
		ps.setInt(k++, getCtx().getAD_Client_ID()); // 11
		ps.setInt(k++, calcul.getC_AcctSchema_ID()); // 12
		if (M_Product_Category_ID > 0) {
			ps.setInt(k++, M_Product_Category_ID); // 13
		}
//		ps.setInt(k++, z_costing_calcul_id); // 11
		int noProduct = ps.executeUpdate();
		return noProduct;
	}
	
	protected int insertProductsNoTRX(X_Z_Costing_Calcul calcul) throws Exception {	
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT " 
+"INTO z_costing_product " 
+"  ( " 
+"    ad_client_id, " 
+"    ad_org_id, " 
+"    z_costing_product_id, " 
+"    isactive, " 
+"    updated, " 
+"    created, " 
+"    updatedby, " 
+"    createdby, " 
+"    m_product_id, " 
+"    M_ATTRIBUTESETINSTANCE_ID, " 
+"    currentcostprice, " 
+"    futurecostprice, " 
+"    qtystart, " 
+"    qtyend, " 
+"    z_costing_calcul_id, " 
+"    qtypurchase, " 
+"    cumulatedamt " 
+"  ) " 
+"SELECT mp.ad_client_id AS client, " 
+"  0                    AS org, " 
+"  ad_sequence_nextno('Z_Costing_Product'), " 
+"  'Y'             AS active, " 
+"  sysdate         AS created, " 
+"  sysdate         AS updated, " 
+"  ?             AS createdby, " 
+"  ?             AS updatedby, " 
+"  mp.m_product_id AS m_product_id, " 
+"  0               AS ATTRIBUTESETINSTANCE_ID, " 
+"  NVL( " 
+"  (SELECT MAX(c.currentcostprice) " 
+"  FROM m_cost c " 
+"  WHERE c.c_acctschema_id = ? " 
+"  AND c.m_costelement_id  = ? " 
+"  AND c.m_product_id      = mp.m_product_id " 
+"  AND currentcostprice   <> 0.00001 " 
+"  ), 0 )                                                                AS currentcostprice, " 
+"  0                                                                     AS futurecostprice, " 
+"  z_qty_asof_Start(mp.m_product_id, ?) AS QtyStart, " 
+"  z_qty_asof_End(mp.m_product_id, ?)   AS QtyEnd, " 
+"  ?                                                               AS z_costing_calcul_id, " 
+"  0                                                                     AS qtypurchase, " 
+"  0                                                                     AS cumulatedamt " 
+"FROM M_Product mp " 
+"INNER JOIN M_Cost mc " 
+"ON mc.M_Product_ID      = mp.M_Product_ID " 
+"AND mc.M_COSTELEMENT_ID = ? " 
+"WHERE mp.ISSTOCKED      = 'Y' " 
+"AND mp.ISACTIVE         = 'Y' " 
+"AND NOT EXISTS " 
+"  (SELECT 1 " 
+"  FROM Z_COSTING_PRODUCT " 
+"  WHERE Z_COSTING_CALCUL_ID          =? " 
+"  AND mp.AD_Client_ID                = Z_COSTING_PRODUCT.AD_Client_ID " 
+"  AND Z_COSTING_PRODUCT.M_Product_ID = mp.M_Product_ID" 
+" )"                                                                                      );
		if (M_Product_Category_ID > 0) sql.append(" AND mp.m_product_category_id = ?   " );//13
		sql.append(" AND mp.AD_CLient_ID  = ?"  );
		PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		
		int k = 1;
		ps.setInt(k++, getCtx().getAD_User_ID()); // 1
		ps.setInt(k++, getCtx().getAD_User_ID()); // 2

		ps.setInt(k++, calcul.getC_AcctSchema_ID()); // 3
		ps.setInt(k++, calcul.getOrigine_CostElement_ID()); // 4

//		ps.setInt(k++, calcul.getC_AcctSchema_ID()); // 8
//		ps.setInt(k++, calcul.getOrigine_CostElement_ID()); // 6

		ps.setTimestamp(k++, calcul.getDateFrom()); // 5
		ps.setTimestamp(k++, calcul.getDateTo()); // 6
		
		ps.setInt(k++, z_costing_calcul_id);//9
		ps.setInt(k++, calcul.getOrigine_CostElement_ID()); // 107
		ps.setInt(k++, z_costing_calcul_id);//9
		if (M_Product_Category_ID > 0) {
			ps.setInt(k++, M_Product_Category_ID); // 13
		}
		ps.setInt(k++, getCtx().getAD_Client_ID());//9
//		ps.setInt(k++, z_costing_calcul_id); // 11
		int noProduct = ps.executeUpdate();
		return noProduct;
	}

	
	
	
	protected void updateFutureCostPrice(X_Z_Costing_Calcul calcul) throws Exception {
		// 1. Calcul de la valeur d'achat sur la période
		costAmountCalcul(calcul);
		
		// 2. Regle de trois pour valoriser ce cout par rapport au stock existant
		futureCostPriceCalcul(calcul);
		
		// 3. Transfert de PMP pour les articles sans Transactions
		StringBuffer sql = new StringBuffer();
		sql.append("update z_costing_product cp set futurecostprice = currentcostprice ");
		sql.append(" where z_costing_calcul_id = ? ");
		sql.append(" and (futurecostprice = 0 or futurecostprice is null) ");
		
		PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		ps.setInt(1, calcul.getZ_Costing_Calcul_ID());
		int no = ps.executeUpdate();
		log.info("Nbre Future Cost transféré depuis précédent cost = "+no);
	}


//REDMINE 11817
	protected void futureCostPriceCalcul(X_Z_Costing_Calcul calcul)
	throws SQLException {
			
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE Z_Costing_Product CP SET FUTURECOSTPRICE = CASE ");
		sql.append(" WHEN qtyend < 0 THEN ROUND(Currentcostprice,2) ");
		sql.append(" WHEN qtyend >= 0 AND qtystart < 0 AND qtyend  >= qtystart AND qtypurchase <> 0 THEN ROUND((ABS(cumulatedamt) / ABS(qtypurchase)),2) ");
		sql.append(" WHEN qtystart >= 0 AND qtyend >= qtystart AND (qtystart + qtypurchase) =   0 THEN ROUND(currentcostprice,2) ");
		sql.append(" WHEN qtystart >= 0 AND qtyend >= qtystart AND (qtystart + qtypurchase) <>  0 AND  qtypurchase < qtyend THEN ROUND((ABS((qtystart * currentcostprice) + cumulatedamt) / ABS(qtystart + qtypurchase)),2) ");
		sql.append(" WHEN qtystart >= 0 AND qtyend >= qtystart AND (qtystart + qtypurchase) <>  0 AND  qtypurchase >= qtyend AND qtypurchase <> 0 THEN ROUND((ABS(cumulatedamt) / ABS(qtypurchase)),2) ");
		sql.append(" WHEN qtyend >= 0 AND qtystart >= 0 AND qtyend < qtystart AND qtypurchase = 0 THEN ROUND(currentcostprice,2) ");
		sql.append(" WHEN qtyend >= 0 AND qtystart >= 0 AND qtyend < qtystart AND qtypurchase >= qtyend AND  qtypurchase < 0 THEN ROUND(currentcostprice,2) ");
		sql.append(" WHEN qtyend >= 0 AND qtystart >= 0 AND qtyend < qtystart AND qtypurchase >= qtyend AND  qtypurchase > 0 THEN ROUND((ABS(Cumulatedamt) / ABS(Qtypurchase)),2) ");
		sql.append(" WHEN qtyend >= 0 AND qtystart >= 0 AND qtyend < qtystart AND qtypurchase <  qtyend AND (qtystart + qtypurchase) <>  0 THEN ROUND((ABS((qtystart * currentcostprice) + cumulatedamt) / ABS(qtystart + qtypurchase)),2) ");
		sql.append(" END WHERE z_costing_calcul_id = ? ");
		PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		ps.setInt(1, calcul.getZ_Costing_Calcul_ID());
		int no = ps.executeUpdate();
		
		log.info("Nbre Future Cost calculé = "+no);
	}//REDMINE 11817


/*	
	protected void futureCostPriceCalcul(X_Z_Costing_Calcul calcul)
	throws SQLException {
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("update z_costing_product cp set futurecostprice = ");
		sql.append(" (abs(qtystart * currentcostprice) + abs((qtypurchase) * cumulatedamt)) ");
		sql.append(" / (abs(qtystart) + abs(qtypurchase))");
		sql.append(" where z_costing_calcul_id = ? and (abs(qtystart) + abs(qtypurchase)) <> 0");
		
		PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		ps.setInt(1, calcul.getZ_Costing_Calcul_ID());
		int no = ps.executeUpdate();
		log.info("Nbre Future Cost calculé = "+no);
	}
*/	
	
	protected void costAmountCalcul(X_Z_Costing_Calcul calcul)
			throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("update z_costing_product cp set cumulatedamt = ");
		sql.append(" (select nvl(sum(ci.linenetamt),0) "); //TODO TVA incluse !!! et Devise !!!
		sql.append(" from z_costing_invoice ci where ci.z_costing_product_id = cp.z_costing_product_id");
//		sql.append(" and ci.m_attributesetinstance_id = cp.m_attributesetinstance_id"); //ASI
		sql.append(" group by ci.z_costing_product_id");
//		sql.append(" , ci.m_attributesetinstance_id "); //ASI
		sql.append(" having nvl(sum(ci.qtyinvoiced), 0) <> 0 ");
		sql.append(" ) where z_costing_calcul_id = ?");
		
		PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		ps.setInt(1, calcul.getZ_Costing_Calcul_ID());
		int no = ps.executeUpdate();
		log.info("Nbre Cout Achat calculé = "+no);
		
		sql = new StringBuffer();
		sql.append("update z_costing_product cp set qtypurchase = ");
		sql.append(" (select nvl(sum(ci.qtyinvoiced), 0)");
		sql.append(" from z_costing_invoice ci where ci.z_costing_product_id = cp.z_costing_product_id");
//		sql.append(" and ci.m_attributesetinstance_id = cp.m_attributesetinstance_id"); //ASI
		sql.append(" group by ci.z_costing_product_id");
//		sql.append(" , ci.m_attributesetinstance_id "); //ASI
		sql.append(" having nvl(sum(ci.qtyinvoiced), 0) <> 0 ");
		sql.append(" ) where z_costing_calcul_id = ?");
		
		ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
		ps.setInt(1, calcul.getZ_Costing_Calcul_ID());
		no = ps.executeUpdate();
		log.info("Nbre Qty Achat calculé = "+no);
	}


	protected int insertCosts(X_Z_Costing_Calcul calcul) throws Exception {
		int no =0;
		if (updateNewCost) {
			StringBuffer sql = new StringBuffer();
			sql.append("insert into m_cost (ad_client_id, ad_org_id,");
			sql.append(" isactive, updated, created,");
			sql.append(" updatedby, createdby, m_product_id, ");
			sql.append(" m_costtype_id, m_costelement_id, c_acctschema_id, ");
			sql.append(" M_ATTRIBUTESETINSTANCE_ID, currentqty, ");
			sql.append(" cumulatedamt, cumulatedqty, currentcostprice, ");
			sql.append(" percent, futurecostprice, description) ");
			sql.append(" select cc.ad_client_id, cc.ad_org_id, ");
			sql.append(" 'Y', sysdate, sysdate, "); // 1 2
			sql.append(" ?, ?, cp.m_product_id, ");
			sql.append(" ass.m_costtype_id, cc.m_costelement_id, cc.c_acctschema_id, ");
			sql.append(" cp.M_ATTRIBUTESETINSTANCE_ID, 0, ");
			sql.append(" 0, 0, round(cp.futurecostprice, curr.costingprecision) , ");
			sql.append(" 0, 0, null ");
			sql.append(" from z_costing_product cp ");
			sql.append(" inner join z_costing_calcul cc on cc.z_costing_calcul_id = cp.z_costing_calcul_id ");
			sql.append(" inner join m_costelement ce on ce.m_costelement_id = cc.m_costelement_id ");
			sql.append(" inner join c_acctschema ass on ass.c_acctschema_id = cc.c_acctschema_id ");
			sql.append(" inner join c_currency curr on curr.c_currency_id = ass.c_currency_id ");
			sql.append(" where cc.z_costing_calcul_id = ? ");
			
			// Where Not Exists
			sql.append(" and not exists (select 1 from m_cost o ");
			sql.append(" where o.m_product_id = cp.m_product_id ");
			sql.append(" and o.m_costtype_id = ass.m_costtype_id ");
			sql.append(" and o.m_costelement_id = cc.m_costelement_id ");
			sql.append(" and o.c_acctschema_id = cc.c_acctschema_id ");
			sql.append(" and o.m_attributesetinstance_id = cp.m_attributesetinstance_id ");
			sql.append(")");

			PreparedStatement ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
			int k = 1;
			ps.setInt(k++, getCtx().getAD_User_ID());
			ps.setInt(k++, getCtx().getAD_User_ID());
			ps.setInt(k++, calcul.getZ_Costing_Calcul_ID());
			no = ps.executeUpdate();
			Util.closeCursor(ps, null);
			
			// Update existing
			sql = new StringBuffer();
			sql.append("update m_cost oo set updatedby = ?, updated = sysdate, oo.currentcostprice = coalesce((select round(cp.futurecostprice, curr.costingprecision) ");
			sql.append(" from z_costing_product cp ");
			sql.append(" inner join z_costing_calcul cc on cc.z_costing_calcul_id = cp.z_costing_calcul_id ");
			sql.append(" inner join c_acctschema ass on ass.c_acctschema_id = cc.c_acctschema_id ");
			sql.append(" inner join c_currency curr on curr.c_currency_id = ass.c_currency_id ");
			sql.append(" where cc.z_costing_calcul_id = ? ");
			// Where Exists
			sql.append(" and oo.m_product_id = cp.m_product_id ");
			sql.append(" and oo.m_costtype_id = ass.m_costtype_id ");
			sql.append(" and oo.m_costelement_id = cc.origine_costelement_id ");
			sql.append(" and oo.c_acctschema_id = cc.c_acctschema_id ");
//			sql.append(" and oo.m_attributesetinstance_id = cp.m_attributesetinstance_id ");
			sql.append(" AND ROWNUM=1),99999)");
			sql.append(" where m_costelement_id = ? ");
			sql.append(" AND EXISTS (SELECT 1 FROM M_Product pp WHERE oo.m_product_id = pp.m_product_id ");
			sql.append(" AND EXISTS (SELECT 1 FROM z_costing_product WHERE z_costing_product.m_product_id = pp.M_Product_ID AND z_costing_product.z_costing_calcul_id = ?)) ");
					
			sql.append(" AND NOT EXISTS (SELECT 1 FROM m_attributeinstance mai");
			sql.append(" INNER JOIN m_attributevalue aiv ON (mai.m_attributevalue_id = aiv.m_attributevalue_id)");
			sql.append(" WHERE mai.M_ATTRIBUTESETINSTANCE_ID = oo.M_ATTRIBUTESETINSTANCE_ID");
			sql.append(" AND aiv.exclupmp = 'Y')");
			
			ps = DB.prepareStatement(sql.toString(), ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE, get_TrxName());
			k = 1;
			ps.setInt(k++, getCtx().getAD_User_ID());
			ps.setInt(k++, calcul.getZ_Costing_Calcul_ID());
			ps.setInt(k++, calcul.getOrigine_CostElement_ID());
			ps.setInt(k++, calcul.getZ_Costing_Calcul_ID());
			no += ps.executeUpdate();
			Util.closeCursor(ps, null);

		}
		return no;
	}

	//2061
	private int insertPriceListVersion(MCostingCalcul calcul) {

		int priceListversionNo = 0;
		int plvidOld = 0;
		StringBuffer whereClause = new StringBuffer("Z_Costing_Calcul_ID = " + calcul.getZ_Costing_Calcul_ID());
		if(AD_Org_ID != 0)
			whereClause.append(" AND AD_Org_ID = "+ AD_Org_ID);
		whereClause.append(" Order by AD_Org_ID");

		int[] zCostingProduct = X_Z_Costing_Product.getAllIDs(X_Z_Costing_Product.Table_Name, whereClause.toString(), get_TrxName());



		MProductPrice pp = null;
		MCostingProduct cp = null;
		int plvid = 0;
//		int m_Product1_ID = 0;
//		int m_Product2_ID = 0;
		for (int costingProduct : zCostingProduct) {
			cp = new MCostingProduct(getCtx(),costingProduct,get_TrxName());

			plvid = createPriceListVersion(calcul,cp);
			if (plvid<0)
				throw new CompiereException("Impossible de Creér la Version de Liste de Prix");
			if(plvid != plvidOld)
			{
				priceListversionNo++;
				plvidOld = plvid;
			}
//J'ai commenté ces lignes car on peut avoir plusier prix pour le même article dans differentes organisation
//			m_Product2_ID = cp.getM_Product_ID();
//			if (m_Product1_ID!=m_Product2_ID){
//				m_Product1_ID = m_Product2_ID;
				pp = new MProductPrice(getCtx(),plvid,cp.getM_Product_ID(), get_TrxName());
				pp.setPrices(cp.getFutureCostPrice(), cp.getFutureCostPrice(), cp.getFutureCostPrice());
				//					pp.setClientOrg(cp.getAD_Client_ID(), cp.getAD_Org_ID());
				pp.setClientOrg(calcul.getAD_Client_ID(), cp.getAD_Org_ID());

				if (!pp.save(get_TrxName()))
					throw new CompiereException("Impossible de rajouter l'article " + MProduct.get(getCtx(), cp.getM_Product_ID()).getName());
//			}
		}
		
		return plvid;
	}
	

	private int createPriceListVersion(MCostingCalcul calcul, MCostingProduct cp) {
		
		 
		if(cp.getAD_Org_ID() != oldAd_Org_ID){

			plv = new MPriceListVersion(getCtx(),0,get_TrxName());
			plv.setClientOrg(calcul.getAD_Client_ID(), cp.getAD_Org_ID());
			plv.setM_PriceList_ID(calcul.get_ValueAsInt("M_PriceList_ID"));

			int M_DiscountSchema_ID = DB.getSQLValue(get_Trx(), "SELECT m_discountschema_id from  m_discountschema  where ad_client_id = ? and name like "+DB.TO_STRING(Msg.getMsg("en_US", "Standard_DiscountSchema")),cp.getAD_Client_ID());
			if(M_DiscountSchema_ID == -1)
			{
				log.info("Le mode de remise definit dans le message compiere n'existe pas");
				return -1;
			}

			//		plv.setM_DiscountSchema_ID(1000000);//Standard (System)
			plv.setM_DiscountSchema_ID(M_DiscountSchema_ID);
			plv.setM_Pricelist_Version_Base_ID(0);
			plv.setValidFrom(calcul.getDateTo());
			//		plv.setName();
			//
			MPriceList pl = MPriceList.get(getCtx(), calcul.get_ValueAsInt("M_PriceList_ID"), get_TrxName());
			plv.setName(pl.getName() + " - "+calcul.getDateTo());
			plv.setDescription(plv.getName());
			
			oldAd_Org_ID = cp.getAD_Org_ID();

			if (plv.save(get_TrxName()))
				return plv.getM_PriceList_Version_ID();
			else
				return -1;
		}
		else
			return plv.getM_PriceList_Version_ID();
	}

}