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

import org.compiere.model.MBankStatementLine;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

import org.compiere.util.DB;

import java.util.logging.Level;

//26201 Bouton charge change sur écran ligne d'extrait bancaire
public class ZChargeChangeBkStatement extends SvrProcess
{
    private int p_c_Charge_ID = 0;
    private int p_C_BankStatementLine_ID = 0;

    protected void prepare()  {
        ProcessInfoParameter[] para = getParameter();

        for (int i = 0; i < para.length; i++)   {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null){
                ;
            }
            else if (name.equals("C_Charge_ID")){
                p_c_Charge_ID = para[i].getParameterAsInt();
            }
            else {
                log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
            }
        }

        p_C_BankStatementLine_ID = getRecord_ID();
    }

    protected String doIt() throws Exception
    {
    	MBankStatementLine BankStatementLine = new MBankStatementLine(getCtx(), p_C_BankStatementLine_ID, get_Trx());
        int oldcharge = BankStatementLine.getC_Charge_ID();
        int result = 0;

        if (oldcharge != p_c_Charge_ID){
            StringBuffer upd = new StringBuffer(
                    "update C_BankStatementLine set c_charge_id = ").append(p_c_Charge_ID)
                                                                                          .append(" where C_BankStatementLine_id = ")
                                                                                          .append(p_C_BankStatementLine_ID);
            result = DB.executeUpdate(upd.toString(), get_TrxName());
        }

        if (result > 0)
            return "Success";
        else
            throw new Exception("Failure");
    }
}
