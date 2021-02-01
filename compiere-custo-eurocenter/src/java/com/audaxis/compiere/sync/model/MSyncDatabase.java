package com.audaxis.compiere.sync.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.compiere.model.X_Z_Sync_Database;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class MSyncDatabase extends X_Z_Sync_Database {
	
	private String whereClauseClientCent;
	private String whereClauseClientMag;

	public MSyncDatabase(Ctx ctx, int Z_Sync_Database_ID, Trx trx) {
		super(ctx, Z_Sync_Database_ID, trx);
	}

	public MSyncDatabase(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}

	public static MSyncDatabase[] getAllDatabases(Ctx ctx) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<MSyncDatabase> list = new ArrayList<MSyncDatabase>();
		try {
			ps = DB.prepareStatement("SELECT * FROM Z_Sync_Database WHERE IsActive = 'Y'", null);
			rs = ps.executeQuery();
			while (rs.next()) {
				MSyncDatabase sd = new MSyncDatabase(ctx, rs, null);
				sd.getClientToSyncCent();
				sd.getClientToSyncMag();
				list.add(sd);
			}
		} catch (SQLException e) {
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		return (MSyncDatabase[])list.toArray(new MSyncDatabase[list.size()]);
	}
	
	public static MSyncDatabase[] getAllDatabases(String orgName,Ctx ctx) {
		if(orgName == null)
			return getAllDatabases(ctx);
		else{
			PreparedStatement ps = null;
			ResultSet rs = null;
			ArrayList<MSyncDatabase> list = new ArrayList<MSyncDatabase>();
			try {
				ps = DB.prepareStatement("SELECT * FROM Z_Sync_Database WHERE IsActive = 'Y' and name=?", null);
				ps.setString(1, orgName);
				rs = ps.executeQuery();
				if(rs.next()) {
					MSyncDatabase sd = new MSyncDatabase(ctx, rs, null);
					sd.getClientToSyncCent();
					sd.getClientToSyncMag();
					list.add(sd);
				}
			} catch (SQLException e) {
				throw new CompiereException(e);
			} finally {
				Util.closeCursor(ps, rs);
			}
			return (MSyncDatabase[])list.toArray(new MSyncDatabase[list.size()]);
		}
	}
	
	public void getClientToSyncCent()
	{
		whereClauseClientCent = " AND cent.AD_Client_ID  in (0";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			String sql = "select c.ad_client_id from ad_client c inner join Z_Sync_Database_Client dbc on (dbc.clientvalue = c.value) where dbc.IsActive = 'Y' and  dbc.Z_Sync_Database_ID =" +this.get_ID();
					
			ps = DB.prepareStatement(sql, null);
			rs = ps.executeQuery();
			while (rs.next()) {
				whereClauseClientCent += "," + rs.getInt(1);
			}
		} catch (SQLException e) {
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		whereClauseClientCent += ") ";
	}

	public String getWhereClauseClientCent() {
		return whereClauseClientCent;
	}
	
	public void getClientToSyncMag()
	{
		whereClauseClientMag = " AND mag.AD_Client_ID  in (0";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			String sql = "select c.ad_client_id from ad_client c inner join Z_Sync_Database_Client dbc on (dbc.clientvalue = c.value) where dbc.IsActive = 'Y' and  dbc.Z_Sync_Database_ID =" +this.get_ID();
					
			ps = DB.prepareStatement(sql, null);
			rs = ps.executeQuery();
			while (rs.next()) {
				whereClauseClientMag += "," + rs.getInt(1);
			}
		} catch (SQLException e) {
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		whereClauseClientMag += ") ";
	}

	public String getWhereClauseClientMag() {
		return whereClauseClientMag;
	}
}
