package org.compiere.gwt.server.window;

/**
 * @author 
 * 
 */


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
import org.compiere.model.MMovementConfirm;
import org.compiere.model.MOrder;
import org.compiere.model.X_M_InOut;
import org.compiere.model.X_M_MovementConfirm;
import org.compiere.print.ReportEngine;
import org.compiere.process.DocumentEngine;
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


public class ValidateMovementConfirmationImpl extends WindowImpl implements ASyncProcess 
{
	private String			m_docAction = X_M_MovementConfirm.DOCACTION_Complete;
	private static CLogger log = CLogger.getCLogger( ValidateMovementConfirmationImpl.class );
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
	
 	public ValidateMovementConfirmationImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		
		FieldVO f_TransfertNo = new FieldVO("f_TransfertNo", "N° de transfert", DisplayTypeConstants.String );
		FieldVO f_Description = new FieldVO("f_Description", "Description", DisplayTypeConstants.String );
		FieldVO f_WarehouseFrom = new FieldVO( "f_WarehouseFrom", "Magasin destinataire", DisplayTypeConstants.TableDir );
		FieldVO f_WarehouseTo = new FieldVO( "f_WarehouseTo", "Magasin expéditeur", DisplayTypeConstants.TableDir );
		f_WarehouseFrom.IsMandatoryUI = false;

		MLookup wareHouseL = MLookupFactory.get( serverCtx, windowNO, 1151, DisplayTypeConstants.TableDir );
		f_WarehouseFrom.listBoxVO = Util.convertLookupToVO( wareHouseL, f_WarehouseFrom.IsMandatoryUI, "" );
		f_WarehouseFrom.listBoxVO.setDefaultKey(serverCtx.getContext( "#M_Warehouse_ID" ));
		f_WarehouseTo.listBoxVO = Util.convertLookupToVO( wareHouseL, f_WarehouseFrom.IsMandatoryUI, "" );
		//f_WarehouseTo.listBoxVO.setDefaultKey(serverCtx.getContext( "#M_Warehouse_ID" ));
		
		//FieldVO FieldRefresh = new FieldVO( "Refresh","Rechercher", DisplayTypeConstants.Button);
		
		components.add( new SearchComponentImpl( new FieldVO[] {f_TransfertNo,f_Description,f_WarehouseFrom,f_WarehouseTo} ) );
		
		
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO("M_MovementConfirm_ID","M_MovementConfirm_ID", "t.M_MovementConfirm_ID", DisplayTypeConstants.ID, true, false, true),
//				new FieldVO("M_MovementLineConfirm_ID","M_MovementLineConfirm_ID", "tl.M_MovementLineConfirm_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("MovementDate","Date du transfert", "m.CREATEDDATE", DisplayTypeConstants.Date, true),
				new FieldVO("DocumentNo","N° de réception", "t.DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("DocumentNo","N° de transfert", "m.DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("Description","Description", "t.Description", DisplayTypeConstants.String, true),
				new FieldVO("Product","Article", "p.Value", DisplayTypeConstants.String, true),
				new FieldVO("TargetQty","Quantité", "tl.CONFIRMEDQTY", DisplayTypeConstants.Number, true),
				new FieldVO("WarehouseFrom","Magasin d'origine", "warehouseFrom.Name", DisplayTypeConstants.String, true),
				new FieldVO("locatorFrom","Emplacement d'origine", "locatorFrom.Value", DisplayTypeConstants.String, true),
				new FieldVO("WarehouseTo","Magasin de destination", "warehouseTo.Name", DisplayTypeConstants.String, true),
				new FieldVO("locatorTo","Emplacement de destination", "locatorTo.Value", DisplayTypeConstants.String, true),
		},
		"",
		//	FROM
		"M_MovementConfirm t "
		+"inner join M_MovementLineConfirm tl ON tl.M_MovementConfirm_ID = t.M_MovementConfirm_ID "
		+"inner join M_Movement m ON m.M_Movement_ID = t.M_Movement_ID "
		+"inner join M_MovementLine ml ON ml.M_MovementLine_ID = tl.M_MovementLine_ID "
		+"inner join M_product p ON ml.m_product_id=p.m_product_id "
		+"inner join M_Warehouse warehouseFrom ON ml.m_warehouse_id=warehouseFrom.m_warehouse_id "
		+"inner join M_Warehouse warehouseTo ON ml.m_warehouseTo_id=warehouseTo.m_warehouse_id "
		+"inner join M_Locator locatorFrom ON ml.m_locator_id=locatorFrom.m_locator_id "
		+"inner join M_Locator locatorTo ON ml.m_locatorTo_id=locatorTo.m_locator_id ",
		//	WHERE
		"     t.DocStatus='DR'"+
		" AND t.ad_client_id=?",
		true, false, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {

				StringBuffer otherClause = new StringBuffer();
				
				ArrayList<Object> params = new ArrayList<Object>(1);
				params.add(ctx.getAD_Client_ID());
				
				if(ctx.getAD_Org_ID() > 0){
					otherClause.append(" AND t.ad_org_id=?");
					params.add(ctx.getAD_Org_ID());
				}
				
				if((windowCtx.get("f_TransfertNo") != null) && !"".equals(((String)windowCtx.get("f_TransfertNo")).trim())) {
					otherClause.append(" AND m.DocumentNo like ?");
					params.add(windowCtx.get("f_TransfertNo"));
				}
				
				if((windowCtx.get("f_Description") != null) && !"".equals(((String)windowCtx.get("f_Description")).trim())) {
					otherClause.append(" AND t.Description like ?");
					params.add(windowCtx.get("f_Description"));
				}
				
				if((windowCtx.get("f_WarehouseFrom") != null) && !"".equals(((String)windowCtx.get("f_WarehouseFrom")).trim())) {
					otherClause.append(" AND ml.m_warehouseTo_id like ?");
					params.add(windowCtx.get("f_WarehouseFrom"));
				}
				
				if((windowCtx.get("f_WarehouseTo") != null) && !"".equals(((String)windowCtx.get("f_WarehouseTo")).trim())) {
					otherClause.append(" AND ml.m_warehouse_id like ?");
					params.add(windowCtx.get("f_WarehouseTo"));
				}
				
				String sql = getComponentSQL(null, null, fieldVO,otherClause.toString(), countOnly, asc, sortCol);

				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY t.created,m.CREATEDDATE,m.DocumentNo DESC";
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
		
		Trx trx = Trx.get("ValidateMovementConfirmationImpl"+serverCtx.getAD_Org_ID()+serverCtx.getAD_User_ID());
//		StringBuffer whereClause = new StringBuffer("M_MovementLineConfirm_ID");

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
//		if(selectedValues.size() > 1)
//			whereClause.append(" IN (");
//		else
//			whereClause.append("=");
		
//		HashMap<Integer, Integer> allLine_IDs = new HashMap<Integer, Integer>();
//		CPreparedStatement cps = DB.prepareStatement("SELECT M_MovementLineConfirm_ID From M_MovementLineConfirm WHERE M_MovementConfirm_ID in (Select M_MovementConfirm_ID From M_MovementLineConfirm Where "+whereClause+" )", trx);
//		ResultSet rs = null;
//		try {
//			rs = cps.executeQuery();
//			while (rs.next()) {
//				allLine_IDs.put(rs.getInt(1), rs.getInt(1));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally{
//			if(rs != null)
//				DB.closeResultSet(rs);
//			if(cps != null)
//				DB.closeStatement(cps);
//		}
//		
		if(selectedValues.size() < 1){
			change.addWarning("Attention : toutes les lignes de transferts n'ont pas été sélectionnées");
			return;
		}
		
		for (int i = 0; i < selectedValues.size(); i++)
		{
//			if (i > 0)
//				whereClause.append(",");

//			whereClause.append(selectedValues.get(i)[0]);
//			allLine_IDs.remove(selectedValues.get(i)[0]);
			MMovementConfirm mmc = new MMovementConfirm(ctx,Integer.parseInt(selectedValues.get(i)[0]),trx);
			mmc.setDocAction(MOrder.DOCACTION_Complete);

			if (DocumentEngine.processIt(mmc, MOrder.DOCACTION_Complete))
			{
				mmc.save();
				trx.commit();
			}
			else
			{
				trx.rollback();
				change.addWarning("Erreur traitement confirmation : "+mmc.getProcessMsg());
			}
		}

//		if (selectedValues.size() > 1)
//			whereClause.append(")");
	
		
		
		
		

		
		
		StringBuffer summary = new StringBuffer();
		
		if(change.changedFields == null) 
		change.changedFields = new HashMap<String, String>();
		change.changedFields.put("isProcess", "Y");
//		change.changedFields.put("summary","Nombre de transfert validé :"+no+"<br/>"+labelsHTML);
		change.changedFields.put("logInfo" ,summary.toString());
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
