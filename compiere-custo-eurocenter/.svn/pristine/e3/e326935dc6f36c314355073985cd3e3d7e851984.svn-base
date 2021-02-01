package com.audaxis.compiere.sync.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.GregorianCalendar;

import org.compiere.model.X_Z_Sync_Database_Level;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class MSync_Database_Level extends X_Z_Sync_Database_Level {

	public MSync_Database_Level(Ctx ctx, int Z_Sync_Database_Level_ID, Trx trx) {
		super(ctx, Z_Sync_Database_Level_ID, trx);
	}
	
	public static MSync_Database_Level getDbLevel(Ctx ctx, int Z_Sync_Database_ID, int Z_SynchoLevel_ID, Trx trx) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		MSync_Database_Level  dbLevel = null;
		try {
			ps = DB.prepareStatement("SELECT * FROM Z_Sync_Database_Level WHERE Z_Sync_Database_ID = ? and Z_SynchoLevel_ID=? ", null);
			ps.setInt(1,Z_Sync_Database_ID);
			ps.setInt(2,Z_SynchoLevel_ID);
			rs = ps.executeQuery();
			if(rs.next()) {
				dbLevel = new MSync_Database_Level(ctx, rs.getInt("Z_Sync_Database_Level_ID"),trx);
			}else{
				dbLevel=createDbLevel(ctx,Z_Sync_Database_ID,Z_SynchoLevel_ID,trx);
				GregorianCalendar cal = new GregorianCalendar(1970,01,01,12,00,00);
				dbLevel.setLastRun(new Timestamp(cal.getTimeInMillis()));
			}
		} catch (SQLException e) {
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		return dbLevel;
	}
	
	private static MSync_Database_Level createDbLevel(Ctx ctx, int Z_Sync_Database_ID, int Z_SynchoLevel_ID, Trx trx) throws CompiereException{
		MSync_Database_Level  dbLevel = new MSync_Database_Level(ctx, 0, trx);
		dbLevel.setZ_Sync_Database_ID(Z_Sync_Database_ID);
		dbLevel.setZ_SynchoLevel_ID(Z_SynchoLevel_ID);
		if(dbLevel.save())
			return dbLevel;
		else
			throw new CompiereException("Impossible de créer le DB Level");
	}
	
}
