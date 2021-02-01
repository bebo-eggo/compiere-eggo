package com.audaxis.compiere.sync.process;

import java.util.ArrayList;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.sync.model.MSyncDatabase;
import com.audaxis.compiere.util.CompiereException;

public class SyncBPartner extends SvrProcessExtended {

	private int p_AD_org_ID = 0;
	private int p_BPartner_ID = 0;
	private int nbThread = 0;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		int processID = getProcessInfo().getAD_Process_ID();
		int no = DB.getSQLValue(get_Trx(), "select count(*) from AD_PINSTANCE where ISPROCESSING = 'Y' and AD_Process_ID = ? " , processID );
		if (no > 1 ){
			log.info("Processus en cours ! -"+processID);
			throw new CompiereException("Processus en cours ! " );
		}
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_org_ID = element.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_BPartner_ID = element.getParameterAsInt();
		}
		nbThread = DB.getSQLValue(get_Trx(),"select nvl(to_number(msgText),0) from ad_message where value='NbThreadSyncDown'");
	}

	@Override
	protected String doIt() throws Exception {
		if(nbThread <=0)
			nbThread = 12;
		
		MSyncDatabase[] dbs = MSyncDatabase.getAllDatabases(getCtx());
		if(p_AD_org_ID!=0)
			for (int i = 0; i < dbs.length; i++) {
				if(dbs[i].getAD_OrgTrx_ID()!=p_AD_org_ID)
					dbs[i] = null;
			}
		
 		ArrayList<MSyncDatabase> listdbs = new ArrayList<MSyncDatabase>();
		for (int i = 0; i < dbs.length; i++) {
			if(dbs[i]!=null)
				listdbs.add(dbs[i]);
		}
		if(listdbs.size()==0)
			return "Aucun magasin à synchroniser !"; 
		newSync((MSyncDatabase[])listdbs.toArray(new MSyncDatabase[listdbs.size()]));
		return "OK";
	}
	
	private void newSync(MSyncDatabase[] dbs) throws Exception{
		int nbSyncDb = 0;
		ArrayList<Thread> threadRunning = new ArrayList<Thread>();
		while(nbSyncDb < dbs.length){
			while(threadRunning.size() < nbThread && nbSyncDb < dbs.length){
				MultiTreadSync mts = new MultiTreadSync(dbs[nbSyncDb]);
				Thread t = new Thread(mts);
				t.start();
				threadRunning.add(t);
				nbSyncDb++;
			}
			verifyThreadRunning(threadRunning);
		}
		
		// WHEN ALL DATABASE RUNNING , WAIT UNTIL ALL FINISHED
		while(threadRunning.size() > 0){
			verifyThreadRunning(threadRunning);
		}		
	}
	
	private class MultiTreadSync implements Runnable{
		private MSyncDatabase db;

		public MultiTreadSync(MSyncDatabase db){
			this.db = db;
			System.out.println("Creating " +  db.getDatabaseLinkName()+" thread");
		}

		public void run() {
			System.out.println("Running " +  db.getDatabaseLinkName()+" thread");
			Trx trx = Trx.get(db.getDatabaseLinkName());
			try{
				if(DB.getSQLValue(trx, "select 1 from dual@"+db.getDatabaseLinkName()) > 0){
					sync(db,trx,p_BPartner_ID);
					trx.commit();
				}else
					log.info("Database :"+db.getDatabaseLinkName()+" DOWN !!!");
			}catch(Exception e){
				trx.rollback();
			}finally{
				trx.close();
				trx = null;
			}
			System.out.println("Thread " +  db.getDatabaseLinkName()+" exiting.");
		}
	}
	
	private void verifyThreadRunning(ArrayList<Thread> threadRunning){
		for (int i = 0; i < threadRunning.size(); i++) {
			if(threadRunning.get(i).getState()==Thread.State.TERMINATED){
				threadRunning.remove(i);
				i--;
			}				
		}		
	}
	
	private void sync(MSyncDatabase db,Trx trx, int C_BPartner_ID) throws Exception {
		log.info("Synchro BPartber pour la DB '"+ db.getName()+"'");
			syncDelete(db, trx, C_BPartner_ID );
			syncInsert(db, trx, C_BPartner_ID);
		
	}

	private void syncInsert(MSyncDatabase db, Trx trx,int C_BPartner_ID) throws Exception {
		// TODO Auto-generated method stub
		String sqlR = "insert into C_BPartner_Location@"+db.getDatabaseLinkName()+"  select * from C_BPartner_Location where C_BPartner_id =? and IsEggo = 'N'";
		String sqlRL = "INSERT INTO C_Location@"+db.getDatabaseLinkName()+" SELECT * from C_LOCATION where C_LOCATION_ID in (Select C_LOCATION_ID from C_BPARTNER_LOCATION cbl where C_BPARTNER_ID=? and IsEggo = 'N')";
		int no = 0;
		try {
			no += DB.executeUpdate(trx,sqlR,new Object[] {C_BPartner_ID});
			no += DB.executeUpdate(trx,sqlRL,new Object[] {C_BPartner_ID});
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			
		}
		
	}

	private void syncDelete(MSyncDatabase db, Trx trx,int C_BPartner_ID) throws Exception {
		// TODO Auto-generated method stub
		String sqlR = "DELETE from C_BPartner_Location@"+db.getDatabaseLinkName()+" where C_BPartner_ID = ? ";
		String sqlRL = "DELETE FROM C_Location@"+db.getDatabaseLinkName()+" where C_Location_ID in (Select C_LOCATION_ID from C_BPARTNER_LOCATION cbl where C_BPARTNER_ID=?)";
		
		int no = 0;
		try {
			no += DB.executeUpdate(trx,sqlR,new Object[] {C_BPartner_ID});
			no += DB.executeUpdate(trx,sqlRL,new Object[] {C_BPartner_ID});
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			
		}
		
	}

}
