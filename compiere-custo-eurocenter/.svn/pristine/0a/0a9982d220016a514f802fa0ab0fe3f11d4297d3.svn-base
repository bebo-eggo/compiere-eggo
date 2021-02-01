package com.audaxis.compiere.sync.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.compiere.model.X_Z_SynchoLevel;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;

public class MSynchoLevel extends X_Z_SynchoLevel {

	public MSynchoLevel(Ctx ctx, int Z_SynchoLevel_ID, Trx trx) {
		super(ctx, Z_SynchoLevel_ID, trx);
	}

	public MSynchoLevel(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}

	public static MSynchoLevel[] getAllMSynchoLevel(Ctx ctx) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<MSynchoLevel> list = new ArrayList<MSynchoLevel>();
		try {
			ps = DB.prepareStatement("SELECT * FROM Z_SynchoLevel WHERE IsActive = 'Y' order by SeqNo ASC", null);
			rs = ps.executeQuery();
			while (rs.next()) {
				MSynchoLevel sy = new MSynchoLevel(ctx, rs.getInt("Z_SynchoLevel_ID"), null);
				list.add(sy);
			}
		} catch (SQLException e) {
			throw new CompiereException(e);
		} finally {
			Util.closeCursor(ps, rs);
		}
		return (MSynchoLevel[])list.toArray(new MSynchoLevel[list.size()]);
	}
	
}
