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

import java.math.BigDecimal;
import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;

import com.audaxis.compiere.model.MPosWfAction;
import com.audaxis.compiere.model.X_Z_TransactionMsg;
import com.audaxis.compiere.util.CompiereException;

public class ZCopyTrxMsg extends SvrProcessExtended
{
    private int Z_TrxMsg_ID = 0;
    private int actionID = 0;
    private BigDecimal qty = BigDecimal.ONE;
    private int orgToID = 0;
    private String actionComment = "";
    private int firstActivity=0;

    protected void prepare()  {
        Z_TrxMsg_ID = getRecord_ID();
        ProcessInfoParameter[] para = getParameter();

        for (int i = 0; i < para.length; i++)   {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null){
                ;
            }
            else if (name.equals("Z_PosWfAction_ID")){
            	actionID = para[i].getParameterAsInt();
            }
            else if (name.equals("Quantity")){
            	qty = (BigDecimal) para[i].getParameter();
            }
            else if (name.equals("AD_OrgTo_ID")){
            	orgToID = para[i].getParameterAsInt();
            }
            else if (name.equals("ActionComment")){
            	actionComment = (String) para[i].getParameter();
            }
            else {
                log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
            }
        }
        
        firstActivity =MPosWfAction.getFirstActivity(actionID);
        MPosWfAction action = new MPosWfAction(getCtx(), actionID, get_Trx());
        if (action.isToOrgRequired() && orgToID < 1) throw new CompiereException("Organisation Cible Requise");
        

    }

    protected String doIt() throws Exception
    {
    	X_Z_TransactionMsg txMsgFrom = new X_Z_TransactionMsg(getCtx(), Z_TrxMsg_ID, get_Trx());
    	X_Z_TransactionMsg txMsgTo = new X_Z_TransactionMsg(getCtx(),0, get_Trx());
    	PO.copyValues(txMsgFrom, txMsgTo);
    	
    	if (txMsgFrom.getZ_PosWfAction_ID() != actionID){ 
    		txMsgTo.setZ_PosWfAction_ID(actionID);
    		// Get First Activity for the new action
    		
    		txMsgTo.setZ_PosWfActivity_ID(MPosWfAction.getFirstActivity(actionID));
    		String isAutoValidate = DB.getSQLValueString(get_Trx(), "SELECT IsAutoValidation FROM Z_PosActionActivity where Z_PosWFAction_id = " + actionID + " and Z_PosWfActivity_ID= ? ", txMsgTo.getZ_PosWfActivity_ID());
    		if ("Y".equalsIgnoreCase(isAutoValidate)) txMsgTo.setIsValidatedRequest(true);
    		
    	}
    	txMsgTo.setQuantity(qty);

    	// Do not Change initial Ord_ID
    	txMsgTo.setAD_Org_ID(txMsgFrom.getAD_Org_ID());
    	txMsgTo.setAD_OrgTo_ID(orgToID);
    	txMsgTo.setActionComment(actionComment);
    	
    	txMsgTo.setIsCancelRequest(false);
    	txMsgTo.setIsValidatedRequest(false);
        	
    	if(!txMsgTo.save(get_Trx()))
    		throw new Exception("Impossible de créer un nouveau TrxMsg");  
    	
    	txMsgFrom.setQuantity(txMsgFrom.getQuantity().subtract(qty));
    	if (BigDecimal.ZERO.compareTo(txMsgFrom.getQuantity()) < 1)
    		txMsgFrom.setIsCancelRequest(true);
    	if(!txMsgTo.save(get_Trx()))
    		throw new Exception("Impossible de créer un nouveau TrxMsg"); 
       	if(!txMsgFrom.save(get_Trx()))
    		throw new Exception("Impossible de créer un nouveau TrxMsgFrom");  

    
    	
    	return "Copie du message initiale réussie";
    }
}
