package com.audaxis.compiere.sync.proxy;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.compiere.model.MColumn;
import org.compiere.model.MTable;
import org.compiere.util.Ctx;
import org.compiere.util.DB;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.model.BasicProxy;
import com.audaxis.compiere.sync.vos.TableVO;
import com.audaxis.compiere.util.CompiereException;

public class MTableProxy extends BasicProxy<MTable> {

	public MTableProxy(MTable po) {
		super(po);
	}

	/**
	 * Le tri est important pour que les contraintes Oracle soient respectées.<p>
	 * On se base sur une séquence SyncSequence qui est lui même initialisé depuis le champ
	 * standard LoadSeq<p>
	 * 
	 * <pre>
	 * update ad_table set syncsequence = loadseq where isdownsynchronized = 'Y' and loadseq > 0;
     * select tablename, syncsequence from ad_table where isdownsynchronized = 'Y' order by 2 asc;
     * </pre>
     * 
	 * @param ctx
	 * @param ascendingOrder
	 * @return
	 */
	public static TableVO[] getTableForSync(Ctx ctx, int levelID, boolean ascendingOrder) {
		String order = "ASC";
		if (! ascendingOrder)
			order = "DESC";
		ArrayList<TableVO> list = new ArrayList<TableVO>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement("SELECT * FROM AD_Table WHERE IsDownSynchronized = 'Y' AND IsDownSynchronizedBP='N' AND Z_SynchoLevel_ID = ? ORDER BY SyncSequence "+order, null);
			ps.setInt(1, levelID);
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
		return (TableVO[])list.toArray(new TableVO[list.size()]);
	}
	
	public static TableVO[] getTableForSyncBP(Ctx ctx, boolean ascendingOrder) {
		String order = "ASC";
		if (! ascendingOrder)
			order = "DESC";
		ArrayList<TableVO> list = new ArrayList<TableVO>();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DB.prepareStatement("SELECT * FROM AD_Table WHERE IsDownSynchronizedBP = 'Y' ORDER BY SyncSequence "+order, null);
			rs = ps.executeQuery();
			while (rs.next()) {
				MTable table = new MTable(ctx, rs, null);
				TableVO tableVO = new TableVO();
				tableVO.TableName = table.getTableName();
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
		return (TableVO[])list.toArray(new TableVO[list.size()]);
	}
}
