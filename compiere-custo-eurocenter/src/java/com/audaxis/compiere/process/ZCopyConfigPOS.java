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
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
package com.audaxis.compiere.process;

import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.model.MBankStatementLine;
import org.compiere.model.X_AD_Org;
import org.compiere.model.X_Z_OrgPOS;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;

public class ZCopyConfigPOS extends SvrProcessExtended
{
    private int ad_org_id_from = 0;
    private int ad_org_id_to = 0;

    protected void prepare()  {
        ProcessInfoParameter[] para = getParameter();

        for (int i = 0; i < para.length; i++)   {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null){
                ;
            }
            else if (name.equals("AD_Org_ID")){
            	ad_org_id_from = para[i].getParameterAsInt();
            }
            else {
                log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
            }
        }

        ad_org_id_to = getRecord_ID();
    }

    protected String doIt() throws Exception
    {
    	int z_orgPosFrom_id = DB.getSQLValue(get_Trx(),"Select Z_OrgPos_ID from Z_OrgPos where AD_Org_ID=? and rownum=1", ad_org_id_from);
    	if(z_orgPosFrom_id < 1)
    		throw new Exception("L'organisation source ne possède pas de configuration POS");
    	X_AD_Org ad_orgTo = new X_AD_Org(getCtx(), ad_org_id_to, get_Trx());
    	X_Z_OrgPOS zOrgPosFrom = new X_Z_OrgPOS(getCtx(), z_orgPosFrom_id, get_Trx());
    	X_Z_OrgPOS zOrgPosTo = new X_Z_OrgPOS(getCtx(),0, get_Trx());
    	PO.copyValues(zOrgPosFrom, zOrgPosTo);
    	zOrgPosTo.setAD_Org_ID(ad_org_id_to);
    	zOrgPosTo.set_Value("C_BankAccount_ID",0);
    	zOrgPosTo.set_Value("DocType_BankAcct_ID",0);
    	ad_orgTo.set_Value("CopyInfoPOS","Y");
    	if(!zOrgPosTo.save())
    		throw new Exception("Impossible de créer la configuration POS");
    	if(!ad_orgTo.save())
    		throw new Exception("Impossible de mettre à jour l'organisation");
    	
    	return "Configuration POS créée";
    }
}
