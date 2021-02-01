/**
 * 
 */
package org.compiere.model;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

/**
 * @author ahlem
 *
 */
public class MBPPriceListByDocType extends X_Z_BP_PriceListByDocType  {

	/**
	 * 
	 */

	
	public MBPPriceListByDocType (Ctx ctx, int Z_BP_PriceListByDocType_ID, Trx trx)
    {
		
		
        super (ctx, Z_BP_PriceListByDocType_ID, trx);
    }
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		int no;
		String sql = " SELECT count(*) FROM Z_BP_PriceListByDocType WHERE C_BPartner_ID=? and C_DocType_ID= ?";
		no=DB.getSQLValue(get_Trx(), sql, getC_BPartner_ID(), getC_DocType_ID());

		if (no >0 )
		{
			log.saveError("Erreur", " Il existe déjà un enregistrement pour ce type de document");;
			return false;
		}
		return true;
	}

}
