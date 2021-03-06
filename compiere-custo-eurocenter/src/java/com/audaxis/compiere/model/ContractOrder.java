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

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MWarehouse;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Util;

import com.audaxis.compiere.acct.util.DateAcctChangeValidator;
import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;
import com.audaxis.compiere.sync.proxy.MOrderPaymScheduleProxy;
import com.audaxis.compiere.sync.proxy.MOrderProxy;
import com.audaxis.compiere.util.CompiereException;

public class ContractOrder extends com.audaxis.compiere.acct.model.ContractOrder
implements ContractPO<MOrder>{
	
	MOrder po;
	public ContractOrder(MOrder po) {
		super(po);
		this.po=po;
	}
	@Override
	public String afterUpdate() {
		//#73866
		//Test sur isPROM='Y' pour la soci�t� en cours:
		//si oui alors
		//test sur le echeance si elle n'existe pas alors en creera

		//DEV
		MOrderProxy proxy=new MOrderProxy(po);
		if(proxy.getPROM_BPartner_ID()>0 && po.is_ValueChanged("PROM_BPartner_ID") && po.get_ValueOld("PROM_BPartner_ID")==null)
		{

			int ztypeEcheanceid=DB.getSQLValue(get_Trx(), "SELECT MAX(Z_TypeEcheance_ID) FROM Z_TypeEcheance WHERE  AD_Client_ID=? AND IsProm='Y' ", po.getAD_Client_ID());
			if(ztypeEcheanceid>0)
			{
				MBPartner bpprom=new MBPartner(getCtx(), proxy.getPROM_BPartner_ID(), get_Trx());
				int zorderpaymscheduleid =DB.getSQLValue(get_Trx(), "SELECT Z_OrderPaymSchedule_ID FROM Z_OrderPaymSchedule WHERE C_Order_ID=? AND Z_TypeEcheance_ID=?  ", po.getC_Order_ID(),ztypeEcheanceid);
				if(zorderpaymscheduleid<0)
				{
					MOrderPaymSchedule orderpaymsch=new MOrderPaymSchedule(getCtx(),0,get_Trx());
					MOrderPaymScheduleProxy schproroxy= new MOrderPaymScheduleProxy(orderpaymsch);
					orderpaymsch.setC_Order_ID(po.getC_Order_ID());
					orderpaymsch.setAD_Org_ID(po.getAD_Org_ID());
					orderpaymsch.setTotalAmt(BigDecimal.ZERO);
					orderpaymsch.setZ_TypeEcheance_ID(ztypeEcheanceid);
					schproroxy.setDueDate(new Timestamp(System.currentTimeMillis()));
					schproroxy.setPROM_BPartner_ID(proxy.getPROM_BPartner_ID());
					int promlocationid=DB.getSQLValue(get_Trx(), "SELECT MAX(C_BPartner_Location_ID) FROM C_BPartner_Location WHERE C_BPartner_ID=? AND IsEGGO = 'Y' AND isBillTo='Y'",bpprom.getC_BPartner_ID());
					if(promlocationid>0)
						schproroxy.setPROM_BPartner_Location_ID(promlocationid);
					schproroxy.setPROM_Amount(BigDecimal.ZERO);
					
					orderpaymsch.save();
					po.setTotalInvSched();
				}

			}
			
			
		}
		return null;
		
	}

	@Override
	public String beforeUpdate() {
		// TODO Auto-generated method stub
		if(po.isSOTrx() &&  po.getC_DocTypeTarget_ID()>0)
		{
			MDocTypeInfo inf = MDocTypeInfo.get(getCtx(), po.getC_DocTypeTarget_ID(), get_Trx()); 
			int UserID = DB.getSQLValue(get_Trx(), "Select MAX(AD_User_ID) from AD_User where IsActive='Y' and C_BPartner_ID = ? and IS_ZDEFAULT = 'Y' and ISEGGO = ?", po.getC_BPartner_ID(),inf.isCuisine()?"Y":"N");
			if (UserID>0)
				po.setAD_User_ID(UserID);
		}
		MDocTypeInfo info = MDocTypeInfo.get(getCtx(), po.getC_DocTypeTarget_ID(), get_Trx());
		if(info.isStore() && po.get_ValueAsTimestamp("Z_DATELIVRCLI")!=null && po.is_ValueChanged("Z_DATELIVRCLI"))
		{
			Calendar calendar = GregorianCalendar.getInstance(); 
			calendar.setTime(po.get_ValueAsTimestamp("Z_DATELIVRCLI"));   
			int h = calendar.get(Calendar.HOUR_OF_DAY);
			if(h>=0 && h<12)
				po.set_ValueNoCheck("Z_AMPM", "AM");
			else
				po.set_ValueNoCheck("Z_AMPM", "PM");
			
		}
		
		if(!po.isSOTrx() && po.get_ValueAsInt("Z_TypeOA_ID")>0 && po.get_Value("Z_StatusPlan") == null)
		{
			MTypeOA toa = new MTypeOA(getCtx(), po.get_ValueAsInt("Z_TypeOA_ID"), get_Trx());
			if(toa.getZ_StatusPlan()!=null && po.get_Value("Z_StatusPlan")==null)
				po.set_ValueNoCheck("Z_StatusPlan", toa.getZ_StatusPlan());
		}
		

		if(po.isSOTrx() && !po.getDocStatus().equals("DR") && po.is_ValueChanged("C_BPartner_ID") && !info.Is_StoreSN())
		{
			String RoleToModif = Msg.getMsg(getCtx(), "ROLE_BPARTNER_MODIF");
			if(!RoleToModif.contains(""+getCtx().getAD_Role_ID()))
			{
				//String RoleToModifMsg = Msg.getMsg(getCtx(), "ROLE_BPARTNER_MSG");
				throw new CompiereException(Msg.getMsg(getCtx(),"ROLE_BPARTNER_MSG"));
			}
		}
		
		return super.beforeUpdate();
	}

}
