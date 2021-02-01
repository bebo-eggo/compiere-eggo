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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLSyntaxErrorException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;

import org.compiere.db.QueryUtil;
import org.compiere.model.MTreeNodeMM;
import org.compiere.model.X_AD_Client;
import org.compiere.model.X_AD_Org;
import org.compiere.model.X_Z_Sync_Database;
import org.compiere.model.X_Z_Sync_Database_Client;
import org.compiere.model.X_Z_Sync_Database_Level;
import org.compiere.model.X_Z_SynchoLevel;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;

public class ZCreateDBLink extends SvrProcessExtended
{
	private String dbLinkName;
    private String userDB;
    private String pwdDB;
    private String hostDB;

    protected void prepare()  {
        ProcessInfoParameter[] para = getParameter();

        for (int i = 0; i < para.length; i++)   {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null){
                ;
            }
            else if (name.equals("dbLinkName")){
            	dbLinkName = (String)para[i].getParameter();
            }
            else if (name.equals("HostName")){
            	hostDB = (String)para[i].getParameter();
            }
            else if (name.equals("userDB")){
            	userDB = (String)para[i].getParameter();
            }           
            else if (name.equals("pwdDB")){
            	pwdDB = (String)para[i].getParameter();
            }
            else {
                log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
            }
        }
    }

    protected String doIt() throws Exception
    {
    	String sqlDbLink = "create database link "+dbLinkName+" connect to "+userDB+" identified by "+pwdDB+" using '"+hostDB+":1521/xe'";
    	try{
    		int result = DB.executeUpdate(sqlDbLink, get_Trx());
    		if(result < 0)
    			throw new Exception("Nom de lien de base de données dupliqué");
    	}catch(SQLSyntaxErrorException e){
    		throw new Exception(e.getMessage());
    	}
    	try{
    		int result = DB.getSQLValue(get_Trx(),"Select 1 from dual@"+dbLinkName);
    		if(result < 0){
    			dropDbLink();
    			throw new Exception("ORA-12154: TNS : l'identificateur de connexion indiqué n'a pas pu être résolu");
    		}
    		else{
		    	X_AD_Org ad_org = new X_AD_Org(getCtx(), getRecord_ID(), get_Trx());
			    Calendar ca1 = Calendar.getInstance();
			    ca1.set(2010,01,01);
		    	X_Z_Sync_Database syncDB = new X_Z_Sync_Database(getCtx(), 0, get_Trx());
		    	syncDB.setAD_Client_ID(0);
		    	syncDB.setAD_Org_ID(0);
		    	syncDB.setName(ad_org.getName());
		    	syncDB.set_Value("AD_OrgTrx_ID", ad_org.getAD_Org_ID());
		    	syncDB.setDatabaseLinkName(dbLinkName);
		    	syncDB.setLastSynchronization(new Timestamp(ca1.getTimeInMillis()));
		    	syncDB.setLastSynchronizationUP(new Timestamp(ca1.getTimeInMillis()));
		    	syncDB.set_Value("Z_DBHost",hostDB);
		    	syncDB.set_Value("Z_DBPwd", pwdDB);
		    	syncDB.set_Value("Z_DBUser",userDB);
		    	if(!syncDB.save())
		    		throw new Exception("Impossible d'ajouter la synchronisation POS");
		    	
		    	X_Z_Sync_Database_Client syncDBClient = new X_Z_Sync_Database_Client(getCtx(), 0, get_Trx());
		    	X_AD_Client client = new X_AD_Client(getCtx(), getAD_Client_ID(), get_Trx());
		    	syncDBClient.setAD_Client_ID(0);
		    	syncDBClient.setAD_Org_ID(0);
		    	syncDBClient.setClientValue(client.getValue());
		    	syncDBClient.setZ_Sync_Database_ID(syncDB.getID());
		    	if(!syncDBClient.save())
		    		throw new Exception("Impossible d'ajouter la société à synchroniser");
		    	
				Object[][] syncLevelIDs = QueryUtil.executeQuery("select Z_SYNCHOLEVEL_ID from Z_SYNCHOLEVEL where 1=?", new Object[]{1}, get_Trx());
				for (Object[] syncLevelID : syncLevelIDs) {
					X_Z_Sync_Database_Level syncDBLevel = new X_Z_Sync_Database_Level(getCtx(), 0,get_Trx());
					syncDBLevel.setZ_SynchoLevel_ID(((BigDecimal) syncLevelID[0]).intValue());
					syncDBLevel.setLastRun(new Timestamp(ca1.getTimeInMillis()));
					syncDBLevel.setZ_Sync_Database_ID(syncDB.getID());
					syncDBLevel.setAD_Client_ID(0);
					syncDBLevel.setAD_Org_ID(0);
					if(!syncDBLevel.save())
						throw new Exception("Impossible d'ajouter les niveaux de synchronisation");
				}
		    	ad_org.set_Value("AddOrgToSync","Y");
		    	if(!ad_org.save())
		    		throw new Exception("Impossible de mettre à jour l'organisation");
    		}
    	}catch(SQLSyntaxErrorException e){
    		dropDbLink();
    		throw new Exception(e.getMessage());
    	}
    	
    	return "Magasin ajouté à la synchronisation";
    }
    
    private void dropDbLink() throws Exception{
    	String sqlDelDbLink = "drop database link "+dbLinkName;
    	try{
    		int result = DB.executeUpdate(sqlDelDbLink, get_Trx());
    		if(result < 0)
    			throw new Exception("Nom de lien de base de données dupliqué");
    	}catch(SQLSyntaxErrorException e1){
    		throw new Exception(e1.getMessage());
    	}
    }
}
