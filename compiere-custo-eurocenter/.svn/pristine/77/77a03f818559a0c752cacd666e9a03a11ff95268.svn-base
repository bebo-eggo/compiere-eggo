package com.audaxis.compiere.sync.process;

import java.util.ArrayList;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.sync.model.MSyncDatabase;
import com.audaxis.compiere.util.CompiereException;

public class SyncStock extends SvrProcessExtended {

	private int p_AD_org_ID = 0;
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
					sync(db,trx);
					//db.setLastSynchronization(currentDate);
					//db.save();
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
	
	private void sync(MSyncDatabase db,Trx trx) throws Exception {
		log.info("Synchro Stock pour la DB '"+ db.getName()+"'");
			syncTableDelete(db, trx);
			syncTableInsert(db, trx);
		
	}

	private void syncTableInsert(MSyncDatabase db, Trx trx) throws Exception {
		// TODO Auto-generated method stub
		String sqlR = "insert into m_storagedetail@"+db.getDatabaseLinkName()+"  select * from m_storagedetail where ad_org_id ="+db.getAD_OrgTrx_ID()+" and (qtytype = 'R')";
		String sqlO = "insert into m_storagedetail@"+db.getDatabaseLinkName()+"  select * from m_storagedetail where ad_org_id ="+db.getAD_OrgTrx_ID()+" and (qtytype = 'O')";
		String sqlH = "insert into m_storagedetail@"+db.getDatabaseLinkName()+"  select * from m_storagedetail where ad_org_id ="+db.getAD_OrgTrx_ID()+" and (qtytype = 'H')";

		int no = 0;
		try {
			no += DB.executeUpdate(sqlR,trx);
			no += DB.executeUpdate(sqlO,trx);
			no += DB.executeUpdate(sqlH,trx);
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			
		}
		
	}

	private void syncTableDelete(MSyncDatabase db, Trx trx) throws Exception {
		// TODO Auto-generated method stub
		String sqlR = "DELETE from m_storagedetail@"+db.getDatabaseLinkName()+" where qtytype = 'R' ";
		String sqlO = "DELETE from m_storagedetail@"+db.getDatabaseLinkName()+" where qtytype = 'O' ";
		String sqlH = "DELETE from m_storagedetail@"+db.getDatabaseLinkName()+" where qtytype = 'H' ";

		int no = 0;
		try {
			no += DB.executeUpdate(sqlR,trx);
			no += DB.executeUpdate(sqlO,trx);
			no += DB.executeUpdate(sqlH,trx);
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			
		}
		
	}

}
