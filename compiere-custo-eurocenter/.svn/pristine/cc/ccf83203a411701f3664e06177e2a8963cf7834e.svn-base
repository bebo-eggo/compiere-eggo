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
import java.util.*;
import java.util.logging.*;

import org.compiere.api.UICallout;
import org.compiere.framework.PO;
import org.compiere.util.*;

import com.audaxis.compiere.eurocenter.ws.WSUtil;


/**
 *	Partner Location Model
 *
 *  @author Jorg Janke
 *  @version $Id: MBPartnerLocation.java,v 1.3 2006/07/30 00:51:03 jjanke Exp $
 */
public class MBPartnerLocation extends X_C_BPartner_Location
{
    @Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		// TODO Auto-generated method stub
    	WSUtil.updateBPartner(getCtx(),new MBPartner(getCtx(),this.getC_BPartner_ID(),get_Trx()),newRecord,get_Trx());
		return super.afterSave(newRecord, success);
	}

	/** Logger for class MBPartnerLocation */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MBPartnerLocation.class);
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	/**
	 * 	Get Locations for BPartner
	 *	@param ctx context
	 *	@param C_BPartner_ID bp
	 *	@return array of locations
	 */
	public MBPartnerLocation[] getForBPartner (Ctx ctx, int C_BPartner_ID, Trx trx)
	{
		ArrayList<MBPartnerLocation> list = new ArrayList<MBPartnerLocation>();
		String sql = "SELECT * FROM C_BPartner_Location WHERE C_BPartner_ID=?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
				//jz list.add(new MBPartnerLocation(ctx, rs, null));
				list.add(new MBPartnerLocation(ctx, rs, trx));
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		MBPartnerLocation[] retValue = new MBPartnerLocation[list.size ()];
		list.toArray (retValue);
		return retValue;
	}	//	getForBPartner
	
	/**	Static Logger					*/
	private static CLogger	s_log	= CLogger.getCLogger (MBPartnerLocation.class);

	
	/**************************************************************************
	 * 	Default Constructor
	 *	@param ctx context
	 *	@param C_BPartner_Location_ID id
	 *	@param trx transaction
	 */
	public MBPartnerLocation (Ctx ctx, int C_BPartner_Location_ID, Trx trx)
	{
		super (ctx, C_BPartner_Location_ID, trx);
		if (C_BPartner_Location_ID == 0)
		{
			setName (".");
			//
			setIsShipTo (true);
			setIsRemitTo (true);
			setIsPayFrom (true);
			setIsBillTo (true);
		}
	}	//	MBPartner_Location

	/**
	 * 	BP Parent Constructor
	 * 	@param bp partner
	 */
	public MBPartnerLocation (MBPartner bp)
	{
		this (bp.getCtx(), 0, bp.get_Trx());
		setClientOrg(bp);
		//	may (still) be 0
		set_ValueNoCheck ("C_BPartner_ID", Integer.valueOf(bp.getC_BPartner_ID()));
	}	//	MBPartner_Location

	/**
	 * 	Constructor from ResultSet row
	 *	@param ctx context
	 * 	@param rs current row of result set to be loaded
	 *	@param trx transaction
	 */
	public MBPartnerLocation (Ctx ctx, ResultSet rs, Trx trx)
	{
		super(ctx, rs, trx);
	}	//	MBPartner_Location

	/**	Cached Location			*/
	private MLocation 	m_location = null;
	/**	Unique Name				*/
	private String		m_uniqueName = null;
	private int			m_unique = 0;
	
	/**
	 * 	Get Loaction/Address
	 * 	@param requery requery
	 *	@return location
	 */
	public MLocation getLocation (boolean requery)
	{
		if (m_location == null || requery)
			m_location = MLocation.get (getCtx(), getC_Location_ID(), get_Trx());
		return m_location;
	}	//	getLoaction

	/**
	 *	String Representation
	 * 	@return info
	 */
	@Override
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MBPartner_Location[ID=")
			.append(get_ID())
			.append(",C_Location_ID=").append(getC_Location_ID())
			.append(",Name=").append(getName())
			.append ("]");
		return sb.toString ();
	}	//	toString

	
	/**************************************************************************
	 * 	Before Save.
	 * 	- Set Name
	 *	@param newRecord new
	 *	@return save
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (getC_Location_ID() == 0)
			return false;

		//	Set New Name
//	if (!newRecord)
//			return true;
		
		MLocation address = getLocation(true);
		m_uniqueName = getName();
		
		if(m_uniqueName == null || m_uniqueName.length()==0)
			m_uniqueName = ".";
		
		//if (m_uniqueName != null && m_uniqueName.equals("."))	//	default
		if (m_uniqueName.equals("."))	//	default
			m_uniqueName = null;
		m_unique = 0;
		makeUnique(address);
		
		//	Check uniqueness
		MBPartnerLocation[] locations = getForBPartner(getCtx(), getC_BPartner_ID(), get_Trx());
		boolean unique = locations.length == 0;
		int turn = 0;
		while (!unique)
		{
			unique = true;
			for (MBPartnerLocation location : locations) {
				if (location.getC_BPartner_Location_ID() == get_ID())
					continue;
				if (m_uniqueName.equals(location.getName()))
				{
					makeUnique(address);
					unique = false;
					break;
				}
			}
			turn++;
			if(turn==2 && !unique )
			{
				m_uniqueName=m_uniqueName+"#";
				unique = true;
			}
		}
		setName (m_uniqueName);
		return true;
	}	//	beforeSave
	
	
	@UICallout
	public void setC_Location_ID(String oldC_Location_ID,//#18407
			String newC_Location_ID, int windowNo) throws Exception {
		if ((newC_Location_ID == null) || (newC_Location_ID.length() == 0))
			return;
		int C_Location_ID = Integer.parseInt(newC_Location_ID);
		if (C_Location_ID == 0)
			return;
		setC_Location_ID(C_Location_ID);
		MLocation loc = MLocation.get(getCtx(), C_Location_ID, get_Trx());
		if(getName() == null || getName().equals("."))
			makeUnique(loc);
		else
		{
			if(getName().contains("#"))
				makeUnique(loc);
		}
		if(m_uniqueName!=null)
			setName (m_uniqueName);
	}
	/**
	 * 	Make name Unique
	 * 	@param address address
	 */
	private void makeUnique (MLocation address)
	{
	//TA	
		int id = get_ID();
		if (id == 0)
			id = address.get_ID();
		if(m_uniqueName == null || m_uniqueName.equals("."))
		{
			m_uniqueName = address.toString();
			m_uniqueName += "#" + id;
		}
		else 
			return;
	//TA	
		return;
		
//		if (m_uniqueName == null)
//			m_uniqueName = "";
//		m_unique++;
//		
//		//	0 - City
//		if (m_uniqueName.length() == 0)
//		{
//			String xx = address.getCity(); 
//			if (xx != null && xx.length() > 0)
//				m_uniqueName = xx;
//			m_unique = 0;
//		}
//		//	1 + Address1
//		if (m_unique == 1 ||  m_uniqueName.length() == 0)
//		{
//			String xx = address.getAddress1();
//			if (xx != null && xx.length() > 0)
//			{
//				if (m_uniqueName.length() > 0)
//					m_uniqueName += " ";
//				m_uniqueName += xx;
//			}
//			m_unique = 1;
//		}
//		//	2 + Address2
//		if (m_unique == 2 ||  m_uniqueName.length() == 0)
//		{
//			String xx = address.getAddress2();
//			if (xx != null && xx.length() > 0)
//			{
//				if (m_uniqueName.length() > 0)
//					m_uniqueName += " ";
//				m_uniqueName += xx;
//			}
//			m_unique = 2;
//		}
//		//	3 - Region	
//		if (m_unique == 3 ||  m_uniqueName.length() == 0)
//		{
//			String xx = address.getRegionName(true);
//			{
//				if (m_uniqueName.length() > 0)
//					m_uniqueName += " ";
//				m_uniqueName += xx;
//			}
//			m_unique = 3;
//		}
//		//	4 - ID	
//		if (m_unique == 4 ||  m_uniqueName.length() == 0)
//		{
//			int id = get_ID();
//			if (id == 0)
//				id = address.get_ID();
//			m_uniqueName += "#" + id;		
//			m_unique = 4;
//		}
	}	//	makeUnique
	
    public void setIsEggo (boolean IsEggo)
    {
        set_Value ("IsEggo", Boolean.valueOf(IsEggo));
    }
    
    public boolean isEggo() 
    {
        return get_ValueAsBoolean("IsEggo");
    }
    
	/**
	 * Redmine 68976
	 * crée une nouvelle adresse pour le tiers en cours
	 * 
	 * @param isBillTo
	 * @param isShipTo
	 */
	public MBPartnerLocation copyBPartnerLocation(boolean isBillTo, boolean isShipTo, boolean isEggo){
		if (!isEggo && !toCreateEggoAdress()){
			return null;
		}
		MBPartner bp = new MBPartner(getCtx(), getC_BPartner_ID(), get_Trx());
		MBPartnerLocation bpl = new MBPartnerLocation(bp);
		
		//Location
		MLocation srcloc = new MLocation(getCtx(), getC_Location_ID(), get_Trx());
		
		MLocation desloc = new MLocation(getCtx(), 0, get_Trx());
		desloc.setClientOrg(srcloc.getAD_Client_ID(), srcloc.getAD_Org_ID());
		
		PO.copyValues(srcloc, desloc);
		desloc.setC_Country_ID(srcloc.getC_Country_ID());
		desloc.save(get_Trx());
		
		bpl.setC_Location_ID(desloc.getC_Location_ID());
		
		//Ship, bill, eggo
		bpl.setIsEggo(isEggo);
		bpl.setIsBillTo(isBillTo);
		bpl.setIsShipTo(isShipTo);
		bpl.setAD_Org_ID(0);

		//ne pas crée l'adresse en cuisine d'embler car déclenche la création de deux adresse dans le contract
		if (isEggo){
			bpl.setIsEggo(false);
			bpl.save(get_Trx());
			bpl.setIsEggo(true);
		}
		
		if (bpl.save(get_Trx()))
			return bpl;
		return null;	
	}
	
	/**
	 * Redmine 68976
	 * un tiers ne peux avoir qu'au max 2 Adr isEggo='N'
	 * @return
	 */
	private boolean toCreateEggoAdress(){
		int no = QueryUtil.getSQLValue(get_Trx(), 
				"SELECT COUNT(*) FROM C_BPartner_Location WHERE IsEggo='N' AND C_BPartner_ID=?", getC_BPartner_ID());
		if (no>1)
			return false;

		return true;
	}
	
}	//	MBPartnerLocation
