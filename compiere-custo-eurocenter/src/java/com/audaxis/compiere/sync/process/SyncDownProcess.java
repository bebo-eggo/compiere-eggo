package com.audaxis.compiere.sync.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;

import org.compiere.model.ZSynchSchedule;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.sync.model.MSyncDatabase;
import com.audaxis.compiere.sync.model.MSync_Database_Level;
import com.audaxis.compiere.sync.model.MSync_Db_Level_Log;
import com.audaxis.compiere.sync.model.MSynchoLevel;
import com.audaxis.compiere.sync.proxy.MTableProxy;
import com.audaxis.compiere.sync.utils.SyncSchedule;
import com.audaxis.compiere.sync.vos.ColumnVO;
import com.audaxis.compiere.sync.vos.TableVO;
import com.audaxis.compiere.util.CompiereException;

/**
 * Synchronization DOWN.  Du Centrale vers un magasin.
 * Le centrak déclenche la synchronisation et se connecte sur la base magasin via un database link crée au préalable.<p>
 * <pre>
 * drop database link bouge;
 * create database link bouge connect to eurocenterpos identified by compiere using 'compiere';
 * </pre>
 * 
 * @author vha
 *
 */
public class SyncDownProcess extends SvrProcessExtended {
	
	private String errorMessage;
	private Timestamp startingTime;
	private int nbThread;

	@Override
	protected void prepare() {
		// Check Process Running
		int processID = getProcessInfo().getAD_Process_ID();
		int no = DB.getSQLValue(get_Trx(), "select count(*) from AD_PINSTANCE where ISPROCESSING = 'Y' and AD_Process_ID = ? " , processID );
		if (no > 1 ){
			log.info("Process Already Running ! -"+processID);
			throw new CompiereException("Process Already Running ! " );
		}
		nbThread = DB.getSQLValue(get_Trx(),"select nvl(to_number(msgText),0) from ad_message where value='NbThreadSyncDown'");
	}

	@Override
	protected String doIt() throws Exception {
		startingTime = new Timestamp(new Date().getTime());
		MSyncDatabase[] dbs = MSyncDatabase.getAllDatabases(getCtx());
		if(nbThread > 0){
			newSync(dbs);
		}else
			oldSync(dbs);
		log.warning("Sync Down OK");
		return "DONE";
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
	
	private void verifyThreadRunning(ArrayList<Thread> threadRunning){
		for (int i = 0; i < threadRunning.size(); i++) {
			if(threadRunning.get(i).getState()==Thread.State.TERMINATED){
				threadRunning.remove(i);
				i--;
			}				
		}		
	}
	
	private void oldSync(MSyncDatabase[] dbs) throws Exception{
		for (int i = 0; i < dbs.length; i++) {
			MSyncDatabase db = dbs[i];
			Trx trx = Trx.get(db.getDatabaseLinkName());
			try{
				if(DB.getSQLValue(trx, "select 1 from dual@"+db.getDatabaseLinkName()) > 0){
					sync(db,trx);
					db.setLastSynchronization(startingTime);
					db.save();
					trx.commit();
				}else
					log.info("Database :"+db.getDatabaseLinkName()+" DOWN !!!");
			}catch(Exception e){
				trx.rollback();
			}finally{
				trx.close();
				trx = null;
			}
		}
	}

	private void sync(MSyncDatabase db,Trx trx) throws Exception {
		log.info("Sync DOWN for database '"+ db.getName()+"'");
		// Bcl sur les Niveau by seq
		SyncSchedule schedUtil = new SyncSchedule();
		MSynchoLevel[] lvls = MSynchoLevel.getAllMSynchoLevel(getCtx());
		for (int j = 0; j < lvls.length; j++) {
			MSynchoLevel lvl = lvls[j];
			// Check is ZSynchro OK  ->
			ZSynchSchedule sched = new ZSynchSchedule(getCtx(), lvl.getAD_Schedule_ID(),trx); 
			// Last run must be take under SyncDatabase + level ->  Fct getCreateLastRun(databasename + ad_schedule_id) - > create if not exist
			// Supprimer dernier Syncho et result de la table  Z_SynchoLevel  sera defini sous  
			MSync_Database_Level dbLevel = MSync_Database_Level.getDbLevel(getCtx(), db.getZ_Sync_Database_ID(),lvl.getZ_SynchoLevel_ID(),trx);
			Timestamp lastrun = dbLevel.getLastRun();
			System.out.println("LAST RUN = "+lastrun);
			// TODO: lastrun = getCreateLastRun(db.get_ID, lvl.get_ID);
			long next = schedUtil.calculateSleep(sched, lastrun.getTime());
			errorMessage =" ";
			if (lvl.getSeqNo() == 0 || schedUtil.isTimeToRun(next))
			{	
				try {
					TableVO[] tables = MTableProxy.getTableForSync(getCtx(), lvl.get_ID(),false);
					for (int i = 0; i < tables.length; i++) {
						TableVO table = tables[i];
						if(table.isDelSynch){
							syncTableDelete(db, table, trx);
						}
					}
					
					tables = MTableProxy.getTableForSync(getCtx(), lvl.get_ID(), true);
					for (int i = 0; i < tables.length; i++) {
						TableVO table = tables[i];
						syncTableUpdate(db, table,lastrun, trx);
						syncTableInsert(db, table,lastrun, trx);
						syncTableInsertNotExistsMag(db, table,lastrun, trx);
					}
					MSync_Db_Level_Log syncLog = new MSync_Db_Level_Log(getCtx(), 0, trx);
					syncLog.setZ_Sync_Database_Level_ID(dbLevel.get_ID());
					syncLog.setLastRun(startingTime);
					syncLog.setIsError(false);
					if(errorMessage.equals(""))
						errorMessage ="OK";
					syncLog.setMsgText("Sync Level "+lvl.getName()+" "+errorMessage);
					syncLog.save();
					dbLevel.setLastRun(startingTime);
					dbLevel.save();
				} catch (Exception e) {
					e.printStackTrace();
					log.log(Level.SEVERE,"ERROR SYNC ON ==> "+e.getMessage());
					MSync_Db_Level_Log syncLog = new MSync_Db_Level_Log(getCtx(), 0, trx);
					syncLog.setZ_Sync_Database_Level_ID(dbLevel.get_ID());
					syncLog.setIsError(true);
					syncLog.setMsgText("Sync Level "+lvl.getName()+" - "+e.getMessage());
					syncLog.save();
					throw new Exception(e);
				}
			}
		}
	}

	private int syncTableDelete(MSyncDatabase db, TableVO table,Trx trx) throws Exception{
		String TableName = table.TableName;
		StringBuffer sql = new StringBuffer("SELECT 'DELETE "+TableName+"@"+db.getDatabaseLinkName()+" WHERE ");
		int i=0;
		for (ColumnVO col : table.getColumnKey()) {
			if(i > 0)
				sql.append(" AND ");
			if(col.columnType == 10)
				sql.append(col.columnName+"='''||"+col.columnName);
			else
				sql.append(col.columnName+"='||"+col.columnName);
			if(i < table.getColumnKey().size()-1){
				if(col.columnType == 10)
					sql.append("||'''");
				else
					sql.append("||'");
			}
			i++;
		}
		sql.append(" from "+TableName+"@"+db.getDatabaseLinkName()+" mag where not exists  (select 1 from "+TableName+" cent  where "+table.getWhereClauseForCompare("mag","cent")+")");
		System.out.println(sql.toString());
		int no = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement(sql.toString(),trx);
			rs = ps.executeQuery();
			while (rs.next()) {
				try {
					no += DB.executeUpdate(rs.getString(1),trx);
				} catch (Throwable t) {
					throw new Exception(t.getMessage());
				}
			}
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			Util.closeCursor(ps, rs);
		}
		log.info("Sync for DELETE table "+TableName + " : "+no);
		log.info(" --- " +sql);
		return no;
	}
	
	private int syncTableUpdate(MSyncDatabase db,TableVO table,Timestamp lastRun,Trx trx) throws Exception{
		int no = 0;
		String TableName = table.TableName;
		String columnsCommaSeparated = table.getColumnsCommaSeparated();
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE "+TableName+"@"+db.getDatabaseLinkName()+" mag SET ("+columnsCommaSeparated+")=(SELECT "+columnsCommaSeparated+" FROM "+TableName+" cent WHERE "+table.getWhereClauseForCompare("mag","cent")+") WHERE EXISTS (select 1 from "+TableName+" cent2 WHERE "+table.getWhereClauseForCompare("mag","cent2")+" AND cent2.updated > ? AND cent2.AD_Client_ID=mag.AD_Client_ID) "+db.getWhereClauseClientMag());
		PreparedStatement ps = null;
		int index = 1;
		try {
			ps = DB.prepareStatement(sql.toString(),trx);
			ps.setTimestamp(index++,lastRun);
			no = ps.executeUpdate();
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}finally {
			if(ps != null)
				ps.close();
		}
		return no;
	}
	
	private int syncTableInsert(MSyncDatabase db,TableVO table,Timestamp lastRun,Trx trx) throws Exception{
		int no = 0;
		String TableName = table.TableName;
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO "+TableName+"@"+db.getDatabaseLinkName()+" mag select * from "+TableName+" cent where cent.updated > ? AND not exists (select 1 from "+TableName+"@"+db.getDatabaseLinkName()+" mag2 where "+table.getWhereClauseForCompare("mag2","cent")+") "+db.getWhereClauseClientCent());
		PreparedStatement ps = null;
		int index = 1;
		try {
			ps = DB.prepareStatement(sql.toString(),trx);
			ps.setTimestamp(index++,lastRun);
			no = ps.executeUpdate();
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}finally {
			if(ps != null)
				ps.close();
		}
		return no;
	}
	
	private int syncTableInsertNotExistsMag(MSyncDatabase db,TableVO table,Timestamp lastRun,Trx trx) throws Exception{
		int no = 0;
		String TableName = table.TableName;
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO "+TableName+"@"+db.getDatabaseLinkName()+" mag select * from "+TableName+" cent where trunc(cent.updated) < trunc(sysdate) AND not exists (select 1 from "+TableName+"@"+db.getDatabaseLinkName()+" mag2 where "+table.getWhereClauseForCompare("mag2","cent")+") "+db.getWhereClauseClientCent());
		PreparedStatement ps = null;
		int index = 1;
		try {
			ps = DB.prepareStatement(sql.toString(),trx);
			//ps.setTimestamp(index++,lastRun);
			no = ps.executeUpdate();
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}finally {
			if(ps != null)
				ps.close();
		}
		return no;
	}
	
	public void setParameters(PreparedStatement stmt,Object[] params) throws SQLException{
		int idx = 1;
		for (Object param : params) {
			if (param instanceof String)
				stmt.setString(idx,(String)param);
			else if (param instanceof Integer)
				stmt.setInt(idx, ((Integer)param).intValue());
			else if (param instanceof Long)
				stmt.setInt(idx, ((Long)param).intValue());
			else if (param instanceof BigDecimal)
				stmt.setBigDecimal(idx, (BigDecimal)param);
			else if (param instanceof Timestamp)
				stmt.setTimestamp(idx, (Timestamp)param);
			else{
				stmt.setObject(idx,param);
			}
			idx++;
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
					db.setLastSynchronization(startingTime);
					db.save();
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

}
