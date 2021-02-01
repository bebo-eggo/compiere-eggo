package com.audaxis.compiere.sync.process;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

import org.apache.commons.io.FileUtils;
import org.compiere.model.MColumn;
import org.compiere.model.MSequence;
import org.compiere.model.MTable;
import org.compiere.model.ZSynchSchedule;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.FlatFileHelper;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.sync.model.MSyncDatabase;
import com.audaxis.compiere.sync.model.MSyncPriceLog;
import com.audaxis.compiere.sync.model.MSync_Database_Level;
import com.audaxis.compiere.sync.model.MSync_Db_Level_Log;
import com.audaxis.compiere.sync.model.MSynchoLevel;
import com.audaxis.compiere.sync.proxy.MTableProxy;
import com.audaxis.compiere.sync.utils.SyncSchedule;
import com.audaxis.compiere.sync.vos.ColumnVO;
import com.audaxis.compiere.sync.vos.TableVO;
import com.audaxis.compiere.util.CompiereException;

public class SyncProductPrice extends SvrProcessExtended{

	private int p_AD_org_ID = 0;
	private boolean p_isVerified = false;
	private Timestamp currentDate;
	static final String USER_NAME = "ERPDocumentService";
    static final String PASSWORD = "ERPD0c";
	
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
			else if (name.equals("IsVerified"))
				p_isVerified = "Y".equals(element.getParameter());
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		Date startTime = new Date();
		currentDate = new Timestamp(getCtx().getContextAsTime("#Date"));
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
		
		//Génération d'un fichier plat avec les value articles
		connect();
		MSyncPriceLog spl = new MSyncPriceLog(getCtx(), getAD_PInstance_ID(), false, get_Trx());
		MSequence ms = new MSequence(getCtx(), DB.getSQLValue(get_Trx(), "Select AD_Sequence_ID from AD_Sequence where Name = ? ", "DOCUMENTNO_ProductPriceChange"),get_Trx());
		String next = MSequence.getDocumentNo(getAD_Client_ID(), "DOCUMENTNO_ProductPriceChange", get_Trx());
		next = ms.getPrefix()+next;
		if(p_isVerified)
			next = "VER-"+next;
		String filepath = Msg.getMsg(getCtx(), "URL_FILE_SYNCPRODUCTPRICE");
			//"C:\\TEMP\\";
		filepath = filepath+File.separator+next;
		FlatFileHelper ff = new FlatFileHelper(filepath, null);
		ff.setWithHeader(false);
		
		File fileIn = ff.writeFile("Select Value from ZRV_ProductPriceChange where TRUNC(UPDATED) = "+DB.TO_DATE(currentDate), null);
		if(p_isVerified){
			spl.setIsUse(true);
		}
		//Ajouter le nom du fichier généré
		spl.setAD_PInstance_ID(getAD_PInstance_ID());
		spl.setFileName(next);
		spl.setAD_Org_ID(p_AD_org_ID);
		spl.save();
		if(!p_isVerified)
			newSync((MSyncDatabase[])listdbs.toArray(new MSyncDatabase[listdbs.size()]));
		Date endTime = new Date();
	    Map<TimeUnit,Long> result = computeDiff(startTime, endTime);

		addLog("Synchro prix Article OK !");
		addLog("Fichier produit : "+next);
		addLog("Répertoire : "+filepath);
		addLog("Temps : "+result.get(TimeUnit.HOURS)+":"+result.get(TimeUnit.MINUTES)+":"+result.get(TimeUnit.SECONDS));
		//log.warning("Synchro prix Article OK !");
		return null;
	}
	
	private void newSync(MSyncDatabase[] dbs) throws Exception{
		int nbSyncDb = 0;
		ArrayList<Thread> threadRunning = new ArrayList<Thread>();
		while(nbSyncDb < dbs.length){
			while(threadRunning.size() < 5 && nbSyncDb < dbs.length){
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
	
	private void sync(MSyncDatabase db,Trx trx) throws Exception {
		log.info("Synchro prix article pour la DB '"+ db.getName()+"'");
		// Bcl sur les Niveau by seq
		//PriceList Verison
		//Timestamp lastrun = new Timestamp(new Date().getTime());
		ArrayList<TableVO> tables = getTableForSync(getCtx(), 295,false);
		tables.add(getTableForSync(getCtx(), 251,false).get(0));
		for (int i = 0; i < tables.size(); i++) {
			TableVO table = tables.get(i);
			syncTableDelete(db, table, trx);
			syncTableUpdate(db, table,currentDate, trx);
			syncTableInsert(db, table,currentDate, trx);
			syncTableInsertNotExistsMag(db, table,currentDate, trx);
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
		sql.append("UPDATE "+TableName+"@"+db.getDatabaseLinkName()+" mag SET ( "+columnsCommaSeparated+")=(SELECT "+columnsCommaSeparated+" FROM "+TableName+" cent WHERE "+table.getWhereClauseForCompare("mag","cent")+") WHERE EXISTS (select 1 from "+TableName+" cent2 WHERE "+table.getWhereClauseForCompare("mag","cent2")+" AND trunc(cent2.updated) = trunc(?) AND cent2.AD_Client_ID=mag.AD_Client_ID) "+db.getWhereClauseClientMag());
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
		sql.append("INSERT INTO  "+TableName+"@"+db.getDatabaseLinkName()+" mag select * from "+TableName+" cent where trunc(cent.updated) = trunc(?) AND not exists (select 1 from "+TableName+"@"+db.getDatabaseLinkName()+" mag2 where "+table.getWhereClauseForCompare("mag2","cent")+") "+db.getWhereClauseClientCent());
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
		sql.append("INSERT INTO "+TableName+"@"+db.getDatabaseLinkName()+" mag select * from "+TableName+" cent where trunc(cent.updated) = trunc(?) AND not exists (select 1 from "+TableName+"@"+db.getDatabaseLinkName()+" mag2 where "+table.getWhereClauseForCompare("mag2","cent")+") "+db.getWhereClauseClientCent());
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
	
	public static ArrayList<TableVO> getTableForSync(Ctx ctx, int table_ID, boolean ascendingOrder) {
		String order = "ASC";
		if (! ascendingOrder)
			order = "DESC";
		ArrayList<TableVO> list = new ArrayList<TableVO>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement("SELECT * FROM AD_Table WHERE AD_Table_ID = ? ORDER BY SyncSequence "+order, null);
			ps.setInt(1, table_ID);
			rs = ps.executeQuery();
			while (rs.next()) {
				MTable table = new MTable(ctx, rs, null);
				TableVO tableVO = new TableVO();
				tableVO.TableName = table.getTableName();
				tableVO.isDelSynch = "Y".equals(table.get_ValueAsString("IsDeleteable"))?true:false;
				list.add(tableVO);
				MColumn[] columns = table.getColumns(true);
				for (int i = 0; i < columns.length; i++) {
					MColumn col = columns[i];
					if("AD_Language".equals(col.getColumnName()))
						col.setAD_Reference_ID(10);
					if ((col.getColumnSQL() == null || col.getColumnSQL().equals(""))
						&& col.isActive()) {
						if(col.isKey())
							tableVO.addKey(col.getColumnName(),col.getAD_Reference_ID());
						else if (col.isParent())
							tableVO.addParentKey(col.getColumnName(),col.getAD_Reference_ID());
						tableVO.addColumn(col.getColumnName(),col.getAD_Reference_ID());
					}
					
				}
			}
		} catch (SQLException e) {
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		return list;
	}
	
	public void connect() {
		String URL = Msg.getMsg(getCtx(), "URL_FILE_SYNCPRODUCTPRICE");
		String commandConnect = "net use " + URL+" /USER:"+USER_NAME+"@Eurocenter.be "+PASSWORD+" /PERSISTENT:NO";
		try {
			Runtime.getRuntime().exec(commandConnect);
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
	
	 public static Map<TimeUnit,Long> computeDiff(Date date1, Date date2) {
	        long diffInMilliSeconds = date2.getTime() - date1.getTime();
	        List<TimeUnit> units = new ArrayList<TimeUnit>(EnumSet.allOf(TimeUnit.class));
	        Collections.reverse(units);
	        Map<TimeUnit,Long> result = new LinkedHashMap<TimeUnit,Long>();
	        long milliSecondsRest = diffInMilliSeconds;
	        for (TimeUnit unit : units) {
	            long diff = unit.convert(milliSecondsRest,TimeUnit.MILLISECONDS);
	            long diffInMilliSecondsForUnit = unit.toMillis(diff);
	            milliSecondsRest = milliSecondsRest - diffInMilliSecondsForUnit;
	            result.put(unit,diff);
	        }
	        return result;
	    }

}
