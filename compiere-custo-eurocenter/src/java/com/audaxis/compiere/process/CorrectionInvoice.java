/******************************************************************************
 * The contents of this file are subject to the   Compiere License  Version 1.1
 * ("License"); You may not use this file except in compliance with the License
 * You may obtain a copy of the License at http://www.compiere.org/license.html
 * Software distributed under the License is distributed on an  "AS IS"  basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 * The Original Code is Compiere ERP & CRM Smart Business Solution. The Initial
 * Developer of the Original Code is Jorg Janke. Portions created by Jorg Janke
 * are Copyright (C) 1999-2005 Jorg Janke.
 * All parts are Copyright (C) 1999-2005 ComPiere, Inc.  All Rights Reserved.
 * Contributor(s): ______________________________________.
 *****************************************************************************/
package com.audaxis.compiere.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.model.MInvoice;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *  Inventory Valuation.
 *  Process to fill T_InventoryValue
 *  
 *  VERSION : 2008-02-06 : Add a plugin method to allow easy overwrite
 *  ZCOM916 - VERSION : 2007-10-25
 *
 *  @author     Audaxis
 */
public class CorrectionInvoice extends SvrProcess
{
	/** Price List Used         */
	private int         p_M_PriceList_Version_ID;
	/** Valuation Date          */
	private Timestamp   p_DateValue;
	/** Currency                */
	private int         p_C_Currency_ID;
	/** Optional Cost Element	*/
	private int			p_M_CostElement_ID;

	private static CLogger log = CLogger.getCLogger(CorrectionInvoice.class); //ZCOM916
	
	/**
	 *  Prepare - get Parameters.
	 */
	protected void prepare()
	{
	}   //  prepare

	/**
	 *  Perform process.
	 *  <pre>
	 *  - Fill Table with QtyOnHand for Warehouse and Valuation Date
	 *  - Perform Price Calculations
	 *  </pre>
	 * @return Message
	 * @throws Exception
	 */
	protected String doIt() throws Exception
	{
		StringBuffer sql = new StringBuffer ("select c_invoice_id from tmp_recomputeinvoice ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			rs = pstmt.executeQuery ();
			
			while (rs.next()) {
				MInvoice inv = new MInvoice(getCtx(),rs.getInt(1), get_TrxName());
				//inv.calculateTaxTotal();  A decommenter + modifier MInvoice au besoin
				inv.save();
				get_TrxName().commit();
			}
			
		} catch(Exception e) {
			
		} finally {
			rs.close();
			pstmt.close();
		}
		
		//
		return null;
	}   //  doIt
	

}   //  InventoryValue
