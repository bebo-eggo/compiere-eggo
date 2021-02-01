package com.audaxis.compiere.sync.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import org.compiere.model.MOrg;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.sync.model.MSyncDatabase;
import com.audaxis.compiere.sync.proxy.MTableProxy;
import com.audaxis.compiere.sync.vos.ColumnVO;
import com.audaxis.compiere.sync.vos.TableVO;
import com.audaxis.compiere.util.CompiereException;

/**
 * 
 * REMPLACER PAR UN PROJET =======> compiere-custo-pos-eurocenter-syncdown
 *
 */
@Deprecated
public class SyncDownBPProcess extends SvrProcessExtended {
	
	private String errorMessage;
	private boolean isDBError;
	private int ad_org_id;
	private Timestamp startingTime;

	@Override
	protected void prepare() {
//		// Check Process Running
//		int processID = getProcessInfo().getAD_Process_ID();
//		int no = DB.getSQLValue(get_Trx(), "select count(*) from AD_PINSTANCE where ISPROCESSING = 'Y' and AD_Process_ID = ? " , processID );
//		if (no > 1 ){
//			log.info("Process Already Running ! -"+processID);
//			throw new CompiereException("Process Already Running ! " );
//		}
		 ProcessInfoParameter[] para = getParameter();

	        for (int i = 0; i < para.length; i++)
	        {
	            String name = para[i].getParameterName();

	            if (para[i].getParameter() == null)
	            {
	                ;
	            }
	            else if (name.equals("AD_Org_ID"))
	            {
	            	ad_org_id = para[i].getParameterAsInt();
	            }
	        }
	}

	@Override
	protected String doIt() throws Exception {
		startingTime = new Timestamp(new Date().getTime());
		MOrg org = null;
		if(ad_org_id != 0)
			org = new MOrg(getCtx(), ad_org_id, get_Trx());
		MSyncDatabase[] dbs = MSyncDatabase.getAllDatabases(org==null?null:org.getName(),getCtx());
		TableVO[] tablesOrderDeleted = MTableProxy.getTableForSyncBP(getCtx(),false);
		TableVO[] tablesOrderInsert = MTableProxy.getTableForSyncBP(getCtx(), true);
		for (int i = 0; i < dbs.length; i++) {
			MSyncDatabase db = dbs[i];
			Trx trx = Trx.get(db.getDatabaseLinkName());
			try{
				if(DB.getSQLValue(trx, "select 1 from dual@"+db.getDatabaseLinkName()) > 0){
					sync(db,tablesOrderDeleted,tablesOrderInsert,trx);
				}else
					log.info("Database :"+db.getDatabaseLinkName()+" DOWN !!!");
			}catch(Exception e){
				trx.rollback();
			}finally{
				trx.close();
				trx = null;
			}
		}
		log.warning("Sync Down BP OK");
		return "DONE";
	}

	private void sync(MSyncDatabase db,TableVO[] tablesOrderDeleted,TableVO[] tablesOrderInsert,Trx trx) throws Exception {
		log.info("Sync BP DOWN for database '"+ db.getName()+"'");
		try {
			boolean isNegativeIDProcess = false;
			for (int i = 0; i < tablesOrderInsert.length; i++) {
				TableVO table = tablesOrderInsert[i];
				if("M_StorageDetail".equals(table.TableName)){
					syncIncrementStorageUpdate(db, trx);
				}else if("C_BPartner".equals(table.TableName)
						|| "C_BPartner_Location".equals(table.TableName)
						|| "C_Location".equals(table.TableName)
						|| "AD_User".equals(table.TableName)
						){
					if(!isNegativeIDProcess){
						syncUpdateNegativePartnerID(db,trx);
						isNegativeIDProcess = true;
					}
					syncTable(db,table,startingTime,getPartnerWhereClause(table,db),trx);
//					syncTableUpdate(db,table,lastrun,getPartnerWhereClause(table,db),trx);
//					syncTableInsert(db,table,getPartnerWhereClause(table,db),trx);
				}else{
					if(isTableNeedSync(db,table,trx)){
						syncTable(db,table,startingTime,null,trx);
//						syncTableUpdate(db, table,db.get_ValueAsTimestamp("LastSynchronizationBP"),null,trx);
//						trx.commit();
//						syncTableInsert(db, table,null,trx);
//						trx.commit();
					}
				}
			}
			for (int i = 0; i < tablesOrderDeleted.length; i++) {
				TableVO table = tablesOrderDeleted[i];
				if(table.isDelSynch && isTableNeedDelete(db,table,trx)){
					syncTableDelete(db, table,trx);
//					trx.commit();
				}
			}
			if(!isDBError){
				db.set_Value("LastSynchronizationBP",startingTime);
				db.save();
				trx.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
	}

	private int syncTableDelete(MSyncDatabase db, TableVO table,Trx trx) throws Exception{
		String TableName = table.TableName;
		ArrayList<ColumnVO> keys = table.keys;
		if (keys.size() < 1) keys = table.parentKeys;
		ArrayList<Object> values = new ArrayList<Object>();

		String sql = "select " + table.getKeyList() + "  from "+TableName+"@"+db.getDatabaseLinkName()+" mag ";
		sql += " where not exists  (select 1 from "+TableName+" cent  where "+table.getWhereClauseForCompare("mag","cent") + db.getWhereClauseClientCent() +")";
		int no = -1;
		int del = 0;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement(sql, null);
			rs = ps.executeQuery();
			while (rs.next()) {
				int j = 1;
				while (j <= keys.size()){
					values.add(rs.getObject(j));
					j++;
				}
				// DELETE
				String sql2 = "delete from " + TableName+"@"+db.getDatabaseLinkName() + "  where " + table.getWhereClauseForDelete(keys,values);
				try {
					log.info(sql2);
					no = DB.executeUpdate(sql2,trx);
					if (no < 0) {
						isDBError=true;
						log.severe(sql2);
					}
					del++;
					values.clear();
				} catch (Throwable t) {
					isDBError=true;
					log.severe("ERROR : "+t.getMessage());
					log.severe("SQL = "+sql);
					errorMessage+=t.getMessage();
					setNextError();
				}
			}
		} catch (SQLException e) {
			isDBError=true;
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		log.info("Sync for DELETE table "+TableName + " : "+del);
		log.info(" --- " +sql);
		return del;
	}
	
	private int syncTable(MSyncDatabase db,TableVO table,Timestamp lastRun,String whereClause,Trx trx) throws Exception{
		String columnKeysWhereClause = table.getColumnKeyWithQuestionMark();
		String TableName = table.TableName;
		StringBuffer sqlCentral = new StringBuffer();
			sqlCentral.append("select * from "+TableName+" cent where cent.updated >= ? "+db.getWhereClauseClientCent());
			if(whereClause != null)
				sqlCentral.append(" "+whereClause);
		StringBuffer sqlMag = new StringBuffer();
			sqlMag.append("select 1 from "+TableName+"@"+db.getDatabaseLinkName()+" cent where 1=1 "+db.getWhereClauseClientCent()+" "+columnKeysWhereClause);
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement(sqlCentral.toString(),trx);
			ps.setTimestamp(1,lastRun);
			rs = ps.executeQuery();
			while(rs.next()){
				PreparedStatement ps2 = null;
				ResultSet rs2 = null;
				try {
					Object[] params = new Object[table.getColumnKey().size()];
					ps2 = DB.prepareStatement(sqlMag.toString(),trx);
					for (int i = 0; i < table.getColumnKey().size(); i++) {
						params[i]=rs.getObject(table.getColumnKey().get(i).columnName);
					}
					setParameters(ps2, params);
					rs2 = ps2.executeQuery();
					if(rs2.next()){
						syncTableUpdate(db,table,rs,trx);
					}else{
						syncTableInsert(db,table, rs,trx);
					}
				}catch (Throwable t) {
					throw new Exception(t.getMessage());
				}finally {
					if(ps2 != null)
						ps2.close();
					if(rs2 != null)
						rs2.close();
				}
			}
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}finally {
			if(ps != null)
				ps.close();
			if(rs != null)
				rs.close();
		}
		return 0;
	}
	
	private int syncTableUpdate(MSyncDatabase db,TableVO table,ResultSet rs,Trx trx) throws Exception{
		int no = 0;
		String TableName = table.TableName;
		String columnsCommaSeparated = table.getColumnsCommaSeparatedWithQuestionMark();
		String whereClauseWithKeys = table.getColumnKeyWithQuestionMark();
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE "+TableName+"@"+db.getDatabaseLinkName()+" cent SET "+columnsCommaSeparated+" WHERE 1=1 "+db.getWhereClauseClientCent()+" "+whereClauseWithKeys);
		PreparedStatement ps = null;
		Object[] params = new Object[table.getColumns().size()+table.getColumnKey().size()];
		int index = 0;
		try {
			for (int i = 0; i < table.getColumns().size(); i++) {
				params[index++]=rs.getObject(table.getColumns().get(i).columnName);
			}
			for (int i = 0; i < table.getColumnKey().size(); i++) {
				params[index++]=rs.getObject(table.getColumnKey().get(i).columnName);
			}
			ps = DB.prepareStatement(sql.toString(),trx);
			setParameters(ps, params);
			no = ps.executeUpdate();
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}finally {
			if(ps != null)
				ps.close();
		}
		
		return no;
	}
	
	private int syncTableInsert(MSyncDatabase db,TableVO table,ResultSet rs,Trx trx) throws Exception{
		int no = 0;
		String TableName = table.TableName;
		String columnsCommaSeparated = table.getColumnsCommaSeparated();
		String questionsMarks = table.getQuestionsMarksForInsert();
		
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO "+TableName+"@"+db.getDatabaseLinkName()+" ("+columnsCommaSeparated+") VALUES ("+questionsMarks+")");
		PreparedStatement ps = null;
		Object[] params = new Object[table.getColumns().size()];
		int index = 0;
		try {
			for (int i = 0; i < table.getColumns().size(); i++) {
				params[index++]=rs.getObject(table.getColumns().get(i).columnName);
			}
			ps = DB.prepareStatement(sql.toString(),trx);
			setParameters(ps, params);
			no = ps.executeUpdate();
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}finally {
			if(ps != null)
				ps.close();
		}
		
		return no;
	}

//	private int syncTableInsert(MSyncDatabase db, TableVO table,String whereClause,Trx trx) throws Exception{
//		String TableName = table.TableName;
//		String sql = "insert into "+TableName+"@"+db.getDatabaseLinkName()+" mag select * from "+TableName+" cent ";
//		sql += "where not exists (select 1 from "+TableName+"@"+db.getDatabaseLinkName()+" mag where "+table.getWhereClauseForCompare("mag","cent") + ")";
//		if(whereClause != null)
//			sql+=" "+whereClause;
//		sql+=" "+db.getWhereClauseClient();
//		int no = -1;
//		try {
//			no = DB.executeUpdate(sql, trx);
//			if (no < 0) {
//				isDBError=true;
//				log.severe(sql);
//			}
//		} catch (Throwable t) {
//			isDBError=true;
//			log.severe("ERROR : "+t.getMessage());
//			log.severe("SQL = "+sql);
//			errorMessage+=t.getMessage();
//			setNextError();
//		}
//		log.info("Sync for INSERT table "+TableName + " : "+no);
//		log.info(" --- " +sql);
//		return no;
//	}
	
	private boolean isTableNeedDelete(MSyncDatabase db,TableVO table,Trx trx) throws Exception{
		int nbRecord = 0;
		int nbRecordRemote = 0;
		String sql = "Select count(updated) from "+table.TableName+" cent where 1=? "+db.getWhereClauseClientCent();
		String sql2 = "Select count(updated) from "+table.TableName+"@"+db.getDatabaseLinkName()+" cent where 1=? "+db.getWhereClauseClientCent();
		try {
			nbRecord = DB.getSQLValue(trx, sql,1);
			nbRecordRemote = DB.getSQLValue(trx, sql2,1);
		} catch (Throwable t) {
			isDBError=true;
			log.severe("ERROR : "+t.getMessage());
			log.severe("SQL = "+sql);
			errorMessage+=t.getMessage();
			setNextError();
		}
		return nbRecordRemote > nbRecord;
	}
	
	private boolean isTableNeedSync(MSyncDatabase db,TableVO table,Trx trx) throws Exception{
		String tableDate = null;
		String tableDateRemote = null;
		String sql = "Select nvl(to_char(max(updated),'YYYYmmddHH24MISS'),'0') from "+table.TableName+" cent where 1=? "+db.getWhereClauseClientCent();
		String sql2 = "Select nvl(to_char(max(updated),'YYYYmmddHH24MISS'),'0') from "+table.TableName+"@"+db.getDatabaseLinkName()+" cent where 1=? "+db.getWhereClauseClientCent();
		try {
			tableDate = DB.getSQLValueString(trx, sql,1);
			tableDateRemote = DB.getSQLValueString(trx, sql2,1);
		} catch (Throwable t) {
			isDBError=true;
			log.severe("ERROR : "+t.getMessage());
			log.severe("SQL = "+sql);
			errorMessage+=t.getMessage();
			setNextError();
		}
		if(tableDate != null && tableDateRemote != null)
			return tableDate.compareTo(tableDateRemote) > 0;
		else
			return false;
	}

//	private int syncTableUpdate(MSyncDatabase db, TableVO table, Timestamp lastRun,String whereClause,Trx trx) throws Exception{
//		String TableName = table.TableName;
//		String columnsCommaSeparated = table.getColumnsCommaSeparated();
//
//		String fromClause = " from "+TableName+" cent where "+table.getWhereClauseForCompare("mag","cent");
//		if(whereClause != null)
//			fromClause+=" "+whereClause;
//		fromClause+=" "+db.getWhereClauseClient() + " and cent.updated >= ? ";
//		
//		String sql = "update "+TableName+"@"+db.getDatabaseLinkName()+" mag set ("+columnsCommaSeparated+") = (select ";
//		sql += columnsCommaSeparated;
//		sql += fromClause + ")";
//		sql += " where exists (select 1 "+ fromClause+")";
//		int no = -1;
//		try {
//			no = DB.executeUpdate(sql, new Object[] {lastRun, lastRun}, trx);
//			if (no < 0) {
//				isDBError=true;
//				log.severe(sql);
//			}
//		} catch (Throwable t) {
//			isDBError=true;
//			log.severe("ERROR : "+t.getMessage());
//			log.severe("SQL = "+sql);
//			errorMessage+=t.getMessage();
//			setNextError();
//		}
//		log.info("Sync for UPDATE table "+TableName + " : "+no);
//		log.info(" --- " +sql);
//		return no;
//	}
	
	private int syncIncrementStorageUpdate(MSyncDatabase db,Trx trx) throws Exception{
		int nbModif = 0;
		String sql = "select qty,ad_client_id,ad_org_id,m_locator_id,m_product_id,m_attributesetinstance_id,qtytype,Z_ISINVENTORY from z_storageevent where processed='N' and ad_org_id=? and created < ? ORDER BY CREATED";
		try {
			PreparedStatement ps = DB.prepareStatement(sql,trx);
			ps.setInt(1,db.get_ValueAsInt("AD_OrgTrx_ID"));
			ps.setTimestamp(2,startingTime);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				int index = 1;
				BigDecimal difQty = rs.getBigDecimal(index++);
				int ad_client_id = rs.getInt(index++);
				int ad_org_id = rs.getInt(index++);
				int m_locator_id = rs.getInt(index++);
				int m_product_id = rs.getInt(index++);
				int m_attributesetinstance_id = rs.getInt(index++);
				boolean isInventory = "Y".equals(rs.getString("Z_IsInventory"))?true:false;
				String qtyType = rs.getString(index++);
				if(BigDecimal.ZERO.compareTo(difQty) != 0){
					BigDecimal qty = DB.getSQLValueBD(trx,"select QTY from M_StorageDetail@"+db.getDatabaseLinkName()+" where ad_org_id="+ad_org_id+" and m_locator_id="+m_locator_id+" and m_product_id="+m_product_id+" and m_attributesetinstance_id=? and qtytype='"+qtyType+"'",m_attributesetinstance_id);
					if(qty != null){
						if(isInventory)
							nbModif+=DB.executeUpdate("UPDATE M_StorageDetail@"+db.getDatabaseLinkName()+" set QTY=? WHERE ad_org_id=? and m_locator_id=? and m_product_id=? and m_attributesetinstance_id=? and qtytype=?",new Object[]{difQty,ad_org_id,m_locator_id,m_product_id,m_attributesetinstance_id,qtyType},trx);
						else
							nbModif+=DB.executeUpdate("UPDATE M_StorageDetail@"+db.getDatabaseLinkName()+" set QTY=? WHERE ad_org_id=? and m_locator_id=? and m_product_id=? and m_attributesetinstance_id=? and qtytype=?",new Object[]{qty.add(difQty),ad_org_id,m_locator_id,m_product_id,m_attributesetinstance_id,qtyType},trx);
					}else{
						nbModif+=DB.executeUpdate("INSERT INTO M_StorageDetail@"+db.getDatabaseLinkName()+" (AD_Client_ID,AD_Org_ID,m_locator_id,m_product_id,m_attributesetinstance_id,qtytype,Qty) VALUES (?,?,?,?,?,?,?)",new Object[]{ad_client_id,ad_org_id,m_locator_id,m_product_id,m_attributesetinstance_id,qtyType,difQty},trx);
					}
				}
				DB.executeUpdate("UPDATE z_storageevent set processed='Y' WHERE ad_org_id=? and m_locator_id=? and m_product_id=? and m_attributesetinstance_id=? and qtytype=? and qty=? and processed='N' and created < ?",new Object[]{ad_org_id,m_locator_id,m_product_id,m_attributesetinstance_id,qtyType,difQty,startingTime},trx);
			}
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}
		return nbModif;
	}
	
	private int syncUpdateNegativePartnerID(MSyncDatabase db,Trx trx) throws Exception{
		int nbModif = 0;
		StringBuffer sql =  new StringBuffer();
		sql	.append("select cent.c_bpartner_id as C_BPARTNER_ID_CENT,bpmag.c_bpartner_id as C_BPARTNER_ID_MAG,")
			.append("bplocbillcent.c_bpartner_location_id AS C_BPLOCBILL_ID_CENT,bplocbillmag.c_bpartner_location_id AS C_BPLOCBILL_ID_MAG, ")
			.append("bplocshipcent.c_bpartner_location_id AS C_BPLOCSHIP_ID_CENT,bplocshipmag.c_bpartner_location_id AS C_BPLOCSHIP_ID_MAG, ")
			.append("locbillcent.c_location_id AS C_LOCBILL_ID_CENT,locbillmag.c_location_id AS C_LOCBILL_ID_MAG, ")
			.append("locshipcent.c_location_id AS C_LOCSHIP_ID_CENT,locshipmag.c_location_id AS C_LOCSHIP_ID_MAG, ")
			.append("usercent.ad_user_id AS AD_USER_ID_CENT,usermag.ad_user_id AS AD_USER_ID_MAG ")
			.append("from C_BPartner cent ")
			.append("inner join c_bpartner@"+db.getDatabaseLinkName()+" bpmag on bpmag.i_posorderpartner_id=cent.i_posorderpartner_id ")
			.append("inner join C_BPARTNER_LOCATION@"+db.getDatabaseLinkName()+" bplocbillmag on (bplocbillmag.c_bpartner_id=bpmag.c_bpartner_id and bplocbillmag.isbillto='Y' and bplocbillmag.isshipto='N') ")
			.append("inner join C_BPARTNER_LOCATION bplocbillcent on (bplocbillcent.c_bpartner_id=cent.c_bpartner_id and bplocbillcent.isbillto='Y' and bplocbillcent.isshipto='N') ")
			.append("inner join C_BPARTNER_LOCATION@"+db.getDatabaseLinkName()+" bplocshipmag on (bplocshipmag.c_bpartner_id=bpmag.c_bpartner_id and bplocshipmag.isbillto='N' and bplocshipmag.isshipto='Y') ")
			.append("inner join C_BPARTNER_LOCATION bplocshipcent on (bplocshipcent.c_bpartner_id=cent.c_bpartner_id and bplocshipcent.isbillto='N' and bplocshipcent.isshipto='Y') ")
			.append("inner join C_LOCATION@"+db.getDatabaseLinkName()+" locbillmag on (locbillmag.C_Location_ID=bplocbillmag.C_Location_ID) ")
			.append("inner join C_LOCATION locbillcent on (locbillcent.C_Location_ID=bplocbillcent.C_Location_ID) ")
			.append("inner join C_LOCATION@"+db.getDatabaseLinkName()+" locshipmag on (locshipmag.C_Location_ID=bplocshipmag.C_Location_ID) ")
			.append("inner join C_LOCATION locshipcent on (locshipcent.C_Location_ID=bplocshipcent.C_Location_ID) ")
			.append("inner join AD_USER@"+db.getDatabaseLinkName()+" usermag on (usermag.c_bpartner_id=bpmag.c_bpartner_id) ")
			.append("inner join AD_USER usercent on (usercent.c_bpartner_id=cent.c_bpartner_id) ")
			.append("where bpmag.Z_IsTemp='Y' and cent.last_ad_org_id=? "+ db.getWhereClauseClientCent());
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement(sql.toString(),trx);
			ps.setInt(1,db.getAD_OrgTrx_ID());
			rs = ps.executeQuery();
			while(rs.next()){
				int centPartner_ID = rs.getInt("C_BPARTNER_ID_CENT");
				int magPartner_ID = rs.getInt("C_BPARTNER_ID_MAG");
				DB.executeUpdate("UPDATE C_BPARTNER SET C_BPARTNER_ID=?,Z_IsTemp='N' WHERE C_BPARTNER_ID=?",new Object[]{centPartner_ID,magPartner_ID},trx);
				
				int centUser_ID = rs.getInt("AD_USER_ID_CENT");
				int magUser_ID = rs.getInt("AD_USER_ID_MAG");
				DB.executeUpdate("UPDATE AD_USER SET C_BPARTNER_ID=?,AD_USER_ID=? WHERE AD_USER_ID=?",new Object[]{centPartner_ID,centUser_ID,magUser_ID},trx);
				
				int centBillLoc_ID = rs.getInt("C_LOCBILL_ID_CENT");
				int magBillLoc_ID = rs.getInt("C_LOCBILL_ID_MAG");
				DB.executeUpdate("UPDATE C_LOCATION SET C_LOCATION_ID=? WHERE C_LOCATION_ID=?",new Object[]{centBillLoc_ID,magBillLoc_ID},trx);
				
				int centBPBillLoc_ID = rs.getInt("C_BPLOCBILL_ID_CENT");
				int magBPBillLoc_ID = rs.getInt("C_BPLOCBILL_ID_MAG");
				DB.executeUpdate("UPDATE C_BPARTNER_LOCATION SET C_BPARTNER_ID=?,C_LOCATION_ID=?,C_BPARTNER_LOCATION_ID=? WHERE C_BPARTNER_LOCATION_ID=?",new Object[]{centPartner_ID,centBillLoc_ID,centBPBillLoc_ID,magBPBillLoc_ID},trx);

				int centShipLoc_ID = rs.getInt("C_LOCSHIP_ID_CENT");
				int magShipLoc_ID = rs.getInt("C_LOCSHIP_ID_MAG");
				DB.executeUpdate("UPDATE C_LOCATION SET C_LOCATION_ID=? WHERE C_LOCATION_ID=?",new Object[]{centShipLoc_ID,magShipLoc_ID},trx);
				
				int centBPShipLoc_ID = rs.getInt("C_BPLOCSHIP_ID_CENT");
				int magBPShipLoc_ID = rs.getInt("C_BPLOCSHIP_ID_MAG");
				DB.executeUpdate("UPDATE C_BPARTNER_LOCATION SET C_BPARTNER_ID=?,C_LOCATION_ID=?,C_BPARTNER_LOCATION_ID=? WHERE C_BPARTNER_LOCATION_ID=?",new Object[]{centPartner_ID,centShipLoc_ID,centBPShipLoc_ID,magBPShipLoc_ID},trx);
				nbModif++;
			}
		}catch (Throwable t) {
			throw new Exception(t.getMessage());
		}finally{
			if(ps != null)
				ps.close();
			if(rs != null)
				rs.close();
		}
		return nbModif;
	}
	
	private String getPartnerWhereClause(TableVO table,MSyncDatabase db) throws Exception{
		if("C_BPartner".equals(table.TableName)){
			return " AND cent.LAST_AD_ORG_ID <> "+db.getAD_OrgTrx_ID();
		}
		else if("C_BPartner_Location".equals(table.TableName)){
			return " AND cent.IsEggo='N' AND EXISTS (SELECT 1 FROM C_BPARTNER bp WHERE bp.C_BPARTNER_ID=cent.C_BPARTNER_ID AND bp.LAST_AD_ORG_ID <> "+db.getAD_OrgTrx_ID()+")";
		}
		else if("C_Location".equals(table.TableName)){
			return " AND EXISTS (SELECT 1 FROM C_BPARTNER_LOCATION bploc WHERE bploc.IsEggo = 'N' AND bploc.C_LOCATION_ID=cent.C_LOCATION_ID AND EXISTS (SELECT 1 FROM C_BPARTNER bp WHERE bp.C_BPARTNER_ID=bploc.C_BPARTNER_ID AND bp.LAST_AD_ORG_ID <> "+db.getAD_OrgTrx_ID()+"))";
		}
		else if("AD_User".equals(table.TableName)){
			return " AND cent.IsEggo='N' AND EXISTS (SELECT 1 FROM C_BPARTNER bp WHERE bp.C_BPARTNER_ID=cent.C_BPARTNER_ID AND bp.LAST_AD_ORG_ID <> "+db.getAD_OrgTrx_ID()+")";
		}
		
		return null;
	}
	
	private void setNextError(){
		errorMessage+="\\n\\n";
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
}
