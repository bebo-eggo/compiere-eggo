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

package com.audaxis.compiere.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.model.X_Z_CheckDelivery;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;

/**
 *  
 */
public class MCheckDelivery extends X_Z_CheckDelivery
{

	private MCheckDeliveryLine[]	m_lines;

	public MCheckDelivery(Ctx ctx, int Z_CheckDelivery_ID, Trx trxName) {
		super(ctx, Z_CheckDelivery_ID, trxName);
	}
	
	public MCheckDelivery(Ctx ctx, ResultSet rs, Trx trxName) {
		super(ctx,rs,trxName);
	}
	
	public int getZSubPaymentRule_ID()
	{
		Integer ii = (Integer)get_Value("ZSubPaymentRule_ID");
		if (ii == null) return 0;
		return ii.intValue();
	}

	/**
	 * 	Get Invoice Lines of Invoice
	 * 	@param whereClause starting with AND
	 * 	@return lines
	 */
	public MCheckDeliveryLine[] getLines (String whereClause)
	{
		ArrayList<MCheckDeliveryLine> list = new ArrayList<MCheckDeliveryLine>();
		String sql = "SELECT * FROM Z_CheckDeliveryLine WHERE Z_CheckDelivery_ID=? AND IsActive = 'Y'";
		if (whereClause != null)
			sql += whereClause;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_Trx());
			pstmt.setInt(1, getZ_CheckDelivery_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MCheckDeliveryLine dl = new MCheckDeliveryLine(getCtx(), rs, get_Trx());
				list.add(dl);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "getLines", e);
		}finally {
        	Util.closeCursor(pstmt, rs);
        }

		//
		MCheckDeliveryLine[] lines = new MCheckDeliveryLine[list.size()];
		list.toArray(lines);
		return lines;
	}	//	getLines

	/**
	 * 	Get Invoice Lines
	 * 	@param requery
	 * 	@return lines
	 */
	public MCheckDeliveryLine[] getLines (boolean requery)
	{
		if (m_lines == null || m_lines.length == 0 || requery)
			m_lines = getLines(null);
		return m_lines;
	}	//	getLines

	/**
	 * 	Get Lines of Invoice
	 * 	@return lines
	 */
	public MCheckDeliveryLine[] getLines()
	{
		return getLines(false);
	}	//	getLines
	
	/*ZCOM600*/
	protected boolean beforeDelete ()
	{
		boolean ret = super.beforeDelete();
		
		if (isMatched()) {
			log.saveError("Erreur", Msg.getMsg(getCtx(),"Audaxis_MATCHED"));
			return false;
		}
			
		if (isPrinted()) {
			log.saveError("Erreur", Msg.getMsg(getCtx(),"Printed"));
			return false;
		}
		
		if(getLines().length > 0)
		{
			log.saveError("Erreur",
				Msg.getMsg(getCtx(),"Audaxis_LINE_FOUND"));
			return false;
		}
	
       return ret;
       
	}	//	beforeDelete
	
	protected boolean beforeSave (boolean newRecord)
	{
		boolean ret = super.beforeSave(newRecord);
		if(isMatched()&& get_ValueOld("IsMatched").equals(new Boolean(true)))
		{
			log.saveError("Erreur",
				Msg.getMsg(getCtx(),"Audaxis_MATCHED"));
			ret = false;
		}
	
		return ret;
	}	//	beforeSave

	protected boolean afterSave (boolean newRecord, boolean success) {
		//DB.executeUpdate("update Z_CheckDelivery set posted = 'Y' where Z_CheckDelivery_ID = ?", getZ_CheckDelivery_ID(), get_Trx());
		//39009
		DB.executeUpdate("update Z_CheckDelivery set posted = 'Y',bankaccountremise_id= c_bankaccount_id,subpaymentrule_id=zsubpaymentrule_id  where Z_CheckDelivery_ID = ?", getZ_CheckDelivery_ID(), get_Trx());
		return true;
	}
	

}
