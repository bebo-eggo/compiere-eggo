package org.compiere.gwt.server.window;

/**
 * @author 
 * 
 */


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashMap;

import org.compiere.common.QueryVO;
import org.compiere.common.TableModel;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.db.QueryUtil;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.ReportServiceImpl;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.TableComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.CPreparedStatement;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ProcessInfoVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;
import org.compiere.vos.WindowVO.ClientWindowType;

import com.audaxis.compiere.model.X_ZT_ExpedTranft;


public class EggoValidateTransitWindowImpl extends WindowImpl implements ASyncProcess 
{
	private static CLogger log = CLogger.getCLogger( EggoValidateTransitWindowImpl.class );
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	public void executeASync(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	public boolean isUILocked() {
		// TODO Auto-generated method stub
		return false;
	}

	public void lockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	public void unlockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}
	
 	public EggoValidateTransitWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		serverCtx.setContext("IsSOTrx", "Y");
		
		FieldVO f_TransfertNo = new FieldVO("f_TransfertNo", "N° de transfert", DisplayTypeConstants.String );
		FieldVO f_Description = new FieldVO("f_Description", "Description", DisplayTypeConstants.String );
		//FieldVO f_WarehouseTo = new FieldVO("f_WarehouseTo", "Mag. Destination", DisplayTypeConstants.Table );
		//MLookup M_WarehouseTo = MLookupFactory.get( serverCtx, windowNO,1020348, DisplayTypeConstants.Table);	
		//f_WarehouseTo.listBoxVO = Util.convertLookupToVO( M_WarehouseTo, f_WarehouseTo.IsMandatoryUI, "" );
		//f_WarehouseTo.listBoxVO.KeyColumn ="M_Warehouse_ID";
		
		FieldVO f_WarehouseTo = new FieldVO( "f_WarehouseTo", "Magasin expéditeur", DisplayTypeConstants.TableDir );
		f_WarehouseTo.IsMandatoryUI = false;

		FieldVO f_WarehouseFrom = new FieldVO( "f_WarehouseFrom", "Magasin destinataire", DisplayTypeConstants.TableDir );
		
		MLookup wareHouseL = MLookupFactory.get( serverCtx, windowNO, 1151, DisplayTypeConstants.TableDir );
		f_WarehouseTo.listBoxVO = Util.convertLookupToVO( wareHouseL, f_WarehouseTo.IsMandatoryUI, "" );
		f_WarehouseTo.listBoxVO.setDefaultKey(serverCtx.getContext( "#M_Warehouse_ID" ));
		
		f_WarehouseFrom.listBoxVO = Util.convertLookupToVO( wareHouseL, f_WarehouseTo.IsMandatoryUI, "" );
		//f_WarehouseFrom.listBoxVO.setDefaultKey(serverCtx.getContext( "#M_Warehouse_ID" ));
		
		
		
		//FieldVO FieldRefresh = new FieldVO( "Refresh","Rechercher", DisplayTypeConstants.Button);
		
		
		components.add( new SearchComponentImpl( new FieldVO[] {f_TransfertNo,f_Description,f_WarehouseTo,f_WarehouseFrom} ) );
		
		
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO("M_MovementLine_ID","M_MovementLine_ID", "ml.M_MovementLine_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("MovementDate","Date du transfert", "m.CREATEDDATE", DisplayTypeConstants.Date, true),
				new FieldVO("DocumentNo","N° de transfert", "m.DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("Description","Description", "m.Description", DisplayTypeConstants.String, true),
				new FieldVO("Product","Article", "p.Value", DisplayTypeConstants.String, true),
				new FieldVO("Qty","Quantité en transfert", "ml.MovementQty", DisplayTypeConstants.Number, true),
				new FieldVO("WarehouseFrom","Magasin d'origine", "warehouseFrom.Name", DisplayTypeConstants.String, true),
				new FieldVO("locatorFrom","Emplacement d'origine", "locatorFrom.Value", DisplayTypeConstants.String, true),
				new FieldVO("WarehouseTo","Magasin de destination", "warehouseTo.Name", DisplayTypeConstants.String, true),
				new FieldVO("locatorTo","Emplacement de destination", "locatorTo.Value", DisplayTypeConstants.String, true),
				new FieldVO("M_Movement_ID","M_Movement_ID", "ml.M_Movement_ID", DisplayTypeConstants.Number, true,false,false),
		},
		"",
		//	FROM
		"M_Movement m "
		+"inner join M_MovementLine ml ON ml.M_Movement_ID = m.M_Movement_ID "
		+"inner join M_product p ON ml.m_product_id=p.m_product_id "
		+"inner join M_Warehouse warehouseFrom ON ml.m_warehouse_id=warehouseFrom.m_warehouse_id "
		+"inner join M_Warehouse warehouseTo ON ml.m_warehouseTo_id=warehouseTo.m_warehouse_id "
		+"inner join M_Locator locatorFrom ON ml.m_locator_id=locatorFrom.m_locator_id "
		+"inner join M_Locator locatorTo ON ml.m_locatorTo_id=locatorTo.m_locator_id ",
		//	WHERE
		" m.isintransit='N'"+
		" AND m.DocStatus='IP'"+
		" AND m.ad_client_id=?",
		true, false, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {

				StringBuffer otherClause = new StringBuffer();
				
				ArrayList<Object> params = new ArrayList<Object>(1);
				params.add(ctx.getAD_Client_ID());
				
				if(ctx.getAD_Org_ID() > 0){
					otherClause.append(" AND m.ad_org_id=?");
					params.add(ctx.getAD_Org_ID());
				}
				
				if((windowCtx.get("f_TransfertNo") != null) && !"".equals(((String)windowCtx.get("f_TransfertNo")).trim())) {
					otherClause.append(" AND m.DocumentNo like ?");
					params.add(windowCtx.get("f_TransfertNo"));
				}
				
				if((windowCtx.get("f_Description") != null) && !"".equals(((String)windowCtx.get("f_Description")).trim())) {
					otherClause.append(" AND m.Description like ?");
					params.add(windowCtx.get("f_Description"));
				}
				
				if((windowCtx.get("f_WarehouseTo") != null) && !"".equals(((String)windowCtx.get("f_WarehouseTo")).trim())) {
					otherClause.append(" AND ml.m_warehouse_id like ?");
					params.add(windowCtx.get("f_WarehouseTo"));
				}
				
				if((windowCtx.get("f_WarehouseFrom") != null) && !"".equals(((String)windowCtx.get("f_WarehouseFrom")).trim())) {
					otherClause.append(" AND ml.m_warehouseTo_id like ?");
					params.add(windowCtx.get("f_WarehouseFrom"));
				}
				String sql = getComponentSQL(null, null, fieldVO,otherClause.toString(), countOnly, asc, sortCol);

				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY m.created,m.CREATEDDATE,m.DocumentNo DESC";
			}
			
		});
		
		components.add(new SearchComponentImpl(new FieldVO[]{}));
	}//constructor

	@Override
	public ChangeVO processCallback(String sender) {
		// TODO Auto-generated method stub
		ChangeVO change = new ChangeVO();
		if(sender.equals(GlobalMessageConstants.PROCESS))
			generate(change, serverCtx, windowCtx, ReportEngine.SHIPMENT);
		return change;
	}	




	/**************************************************************************
	 *	Change Status
	 */
	private void generate (ChangeVO change, Ctx ctx, WindowCtx windowCtx, int mode)
	{

		Trx trx = null;
		StringBuffer whereClause = new StringBuffer("M_MovementLine_ID");

		ArrayList<String[]> selectedValues = null;
		if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
			QueryVO queryVO = windowCtx.getQueryVO(1);
			TableModel model = ((TableComponentImpl) components.get(1)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS,false, true, -1);
			selectedValues = new ArrayList<String[]>();
			for( int row = 0; row < model.rows(); ++row ){
				selectedValues.add(model.getRow(row));
			}
		} else {
			selectedValues = windowCtx.getSelectedRows(1);
		}
		if(selectedValues.size() == 0) {
			change.addError("No rows selected");
			return;
		}
		if(selectedValues.size() > 1)
			whereClause.append(" IN (");
		else
			whereClause.append("=");
		
		HashMap<Integer, Integer> allLine_IDs = new HashMap<Integer, Integer>();
		CPreparedStatement cps = DB.prepareStatement("SELECT M_MovementLine_ID From M_MovementLine WHERE M_Movement_ID in "
				+ "(Select M_Movement_ID From M_MovementLine Where "+whereClause+" )", trx);
		ResultSet rs = null;
		try {
			rs = cps.executeQuery();
			while (rs.next()) {
				allLine_IDs.put(rs.getInt(1), rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			if(rs != null)
				DB.closeResultSet(rs);
			if(cps != null)
				DB.closeStatement(cps);
		}
		Trx trxX = Trx.get("ExpTrfTRX");
		int Id = 0;
		for (int i = 0; i < selectedValues.size(); i++)
		{
			if (i > 0)
				whereClause.append(",");

			whereClause.append(selectedValues.get(i)[0]);
			allLine_IDs.remove(selectedValues.get(i)[0]);
			X_ZT_ExpedTranft ExpTrf = new X_ZT_ExpedTranft(ctx, 0, trxX);
			ExpTrf.setM_MovementLine_ID(Integer.parseInt(selectedValues.get(i)[0]));
			ExpTrf.setM_Movement_ID(Integer.parseInt(selectedValues.get(i)[10]));
			ExpTrf.setAD_User_ID(ctx.getAD_User_ID());
			ExpTrf.setMovementDate(new Timestamp(GregorianCalendar.getInstance().getTimeInMillis()));
			ExpTrf.setV_PInstance_ID(10);
			ExpTrf.setZNumRecord(selectedValues.size());
			if(Id != 0)
				ExpTrf.setV_PInstance_ID(Id);
			ExpTrf.save();
			if(Id == 0){
				Id = ExpTrf.get_ID();
				ExpTrf.setV_PInstance_ID(Id);
				ExpTrf.save();
			}
			
		}
		trxX.commit();
		if (selectedValues.size() > 1)
			whereClause.append(")");
		
		if(allLine_IDs.size() > 0){
			change.addWarning("Attention : toutes les lignes de transferts n'ont pas été sélectionnées");
		}
		
		String sql = "UPDATE M_Movement m SET m.IsInTransit ='Y',TransitDate = Sysdate, updated = sysdate, updatedBy = ? "
				+ " WHERE m.M_Movement_ID in (Select m_movement_id from ZT_ExpedTranft WHERE V_PInstance_ID = ?)";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(ctx.getAD_User_ID());
		params.add(Id);
		int no = DB.executeUpdate(sql,params.toArray(new Object[params.size()]),trx);	
		if (no == 0)
		{
			String msg = "Pas de transfert validé";     //  not translated!
			log.config(msg);
			change.addError(msg);
			return;
		}
		
		StringBuffer summary = new StringBuffer();
		
		// EXAMPLE PRINT DOC
		int AD_Process_ID = DB.getSQLValue(trx,"select ad_process_id from ad_process where value ='Transfert_Impl_Print' ");
		String labelsHTML = "";
		if(AD_Process_ID > 0){
			HashMap<String, ValueNamePair> parameters = new HashMap<String, ValueNamePair>();
			ArrayList<FieldVO> fieldVOs = new ArrayList<FieldVO>(6);
			fieldVOs.add(new FieldVO("V_PInstance_ID","V_PInstance_ID", DisplayTypeConstants.Integer));
			ProcessInfoVO processInfo = ReportServiceImpl.staticGetProcessInfoByProcessID(AD_Process_ID, windowNO, ctx);
			processInfo.Parameters = fieldVOs;
			//String ids = whereClause.toString().toUpperCase().replace("(","").replace(")","").replace("M_MOVEMENTLINE_ID=","").replace("M_MOVEMENTLINE_ID IN","").replace(" ","");
			parameters.put("V_PInstance_ID", new ValueNamePair(""+Id,""+Id));
			ProcessInfoVO result = ReportServiceImpl.startProcess(processInfo, serverCtx, parameters);
			labelsHTML = labelsHTML.concat("<p><h2>Rapport généré : <a href=\"Export?p_file_name="+result.FileName+"\" target=\"_blank\">"+result.FileName+"</a></h2></p>");
		}
		
		if(change.changedFields == null) 
			change.changedFields = new HashMap<String, String>();
		change.changedFields.put("isProcess", "Y");
		change.changedFields.put("summary","Nombre de transfert validé :"+no+"<br/>"+labelsHTML);
		change.changedFields.put("logInfo" ,summary.toString());
		
		if(allLine_IDs.size() > 0){
			String msg = "Attention : toutes les lignes de transferts n'ont pas été sélectionnées";     //  not translated!
			change.addWarning(msg);
			log.info(msg);
			return;
		}
	}   //  Change status

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.SELECTION;
	}
}
