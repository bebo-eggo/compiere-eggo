package org.compiere.gwt.server.window;

/**
 * @author dizhao
 * 
 */


import java.util.*;

import org.compiere.common.*;
import org.compiere.common.constants.*;
import org.compiere.db.QueryUtil;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.*;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.*;
import org.compiere.intf.*;
import org.compiere.model.*;
import org.compiere.print.*;
import org.compiere.process.*;
import org.compiere.util.*;
import org.compiere.vos.*;
import org.compiere.vos.WindowVO.*;

public class GenerateShipmentWindowImpl extends WindowImpl implements ASyncProcess 
{
	private static CLogger log = CLogger.getCLogger( GenerateInvoiceWindowImpl.class );
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

	public GenerateShipmentWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		serverCtx.setContext("IsSOTrx", "Y");

		FieldVO fieldWarehouse = new FieldVO( "M_Warehouse_ID", Msg.translate( serverCtx, "M_Warehouse_ID" ), DisplayTypeConstants.TableDir );
		fieldWarehouse.IsMandatoryUI = true;

		MLookup wareHouseL = MLookupFactory.get( serverCtx, windowNO, 1151 /*2223*/, DisplayTypeConstants.TableDir );

		fieldWarehouse.listBoxVO = Util.convertLookupToVO( wareHouseL, fieldWarehouse.IsMandatoryUI, "" );
		// fieldOrg.listBoxVO = new ListBoxVO(new KeyNamePair[] {new KeyNamePair(1, "Super")}, "");
		fieldWarehouse.listBoxVO.setDefaultKey(serverCtx.getContext( "#M_Warehouse_ID" ));

		FieldVO f_BPartner = new FieldVO( "C_BPartner_ID", Msg.translate( serverCtx, "C_BPartner_ID" ), DisplayTypeConstants.Search );
		f_BPartner.listBoxVO = new ListBoxVO();
		f_BPartner.listBoxVO.KeyColumn = "C_BPartner_ID";

		components.add( new SearchComponentImpl( new FieldVO[] { fieldWarehouse, f_BPartner, } ) );


		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				//  0..4
				new FieldVO("C_Order_ID", "", "C_Order_ID", DisplayTypeConstants.ID, true, false, true),
				new FieldVO("AD_Org_ID", Msg.translate(serverCtx, "AD_Org_ID"), "o.Name", DisplayTypeConstants.String, true),
				new FieldVO("C_DocType_ID", Msg.translate(serverCtx, "C_DocType_ID"), "dt.Name", DisplayTypeConstants.String, true),
				new FieldVO("DocumentNo", Msg.translate(serverCtx, "DocumentNo"), "DocumentNo", DisplayTypeConstants.String, true),
				new FieldVO("C_BPartner_ID", Msg.translate(serverCtx, "C_BPartner_ID"), "bp.Name", DisplayTypeConstants.String, true),
				// 5..9
				new FieldVO("DateOrdered", Msg.translate(serverCtx, "DateOrdered"), "DateOrdered", DisplayTypeConstants.Date, true),
				new FieldVO("TotalLines", Msg.translate(serverCtx, "TotalLines"), "TotalLines", DisplayTypeConstants.Amount, true),
		},
		"",
		//	FROM
		"M_InOut_Candidate_v ic, AD_Org o, C_BPartner bp, C_DocType dt ",
		//	WHERE
		"ic.AD_Org_ID=o.AD_Org_ID"
		+ " AND ic.C_BPartner_ID=bp.C_BPartner_ID"
		+ " AND ic.C_DocType_ID=dt.C_DocType_ID"
		+ " AND ic.AD_Client_ID=?", 
		true, false, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {
				ArrayList<Object> params = new ArrayList<Object>(1);
				params.add(ctx.getAD_Client_ID());

				StringBuffer otherClause = new StringBuffer();
				if((windowCtx.get("M_Warehouse_ID") != null) && !"".equals(windowCtx.get("M_Warehouse_ID"))) {
					otherClause.append("AND ic.M_Warehouse_ID=?");
					params.add(windowCtx.get("M_Warehouse_ID"));
				}
				
				if((windowCtx.get("C_BPartner_ID") != null) && !"".equals(windowCtx.get("C_BPartner_ID"))) {
					otherClause.append("AND ic.C_BPartner_ID=?");
					params.add(windowCtx.get("C_BPartner_ID"));
				}					

				String sql = getComponentSQL(null, null, fieldVO, otherClause.toString(), countOnly, asc, sortCol);

				return new QueryWithBindings( sql, params );
			}

			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY o.Name,bp.Name,DateOrdered";
			}
		});

		FieldVO fVO_printShipment = new FieldVO("IsPrint",  Msg.translate( serverCtx, "PrintShipment" ), DisplayTypeConstants.YesNo);
		fVO_printShipment.IsMandatoryUI = true; // check box instead of DDLB with null option
		fVO_printShipment.DefaultValue = "Y";
		components.add(new SearchComponentImpl(new FieldVO[]{fVO_printShipment,})); 
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
	 *	Generate Shipments
	 */
	private void generate (ChangeVO change, Ctx ctx, WindowCtx windowCtx, int mode)
	{
		//	Trx trx = Trx.createTrxName("IVG");
		//	Trx p_trx = Trx.get(trx, true);	p_trx needs to be committed too
		Trx trx = null;
		//	Reset Selection
		/*String sql = "UPDATE C_Order SET IsSelected = 'N' WHERE IsSelected='Y'"
			+ " AND AD_Client_ID=" + ctx.getAD_Client_ID()
			+ " AND AD_Org_ID=" + ctx.getAD_Org_ID();
		int no = DB.executeUpdate(sql, trx);
		log.config("Reset=" + no);*/

		StringBuffer whereClause = new StringBuffer("C_Order_ID");



		ArrayList<String[]> selectedValues = null;
		if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
			QueryVO queryVO = windowCtx.getQueryVO(1);
			TableModel model = ((TableComponentImpl) components.get(1)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS, false, true, -1);
			selectedValues = new ArrayList<String[]>();
			for( int row = 0; row < model.rows(); ++row ){
				selectedValues.add(model.getRow(row));
			}
		} else {
			selectedValues = windowCtx.getSelectedRows( 1 );
		}
		if(selectedValues.size() == 0) {
			change.addError("No rows selected");
			return;
		}
		if(selectedValues.size() > 1)
			whereClause.append(" IN (");
		else
			whereClause.append("=");
		for (int i = 0; i < selectedValues.size(); i++)
		{
			if (i > 0)
				whereClause.append(",");

			whereClause.append(selectedValues.get(i)[0]);
		}

		if (selectedValues.size() > 1)
			whereClause.append(")");
		//	Set Selection
		Integer Shipment_Group_ID = DB.getSQLValue(trx, "SELECT C_Order_ShipmentGroup_Seq.NEXTVAL FROM DUAL");
		String sql = "UPDATE C_Order SET Shipment_Group_ID = ? "
						+ "WHERE Shipment_Group_ID IS NULL AND " 
						+ whereClause;
		int no = DB.executeUpdate(sql, Shipment_Group_ID, trx );
		if (no == 0)
		{
			String msg = "No Shipments";     //  not translated!
			log.config(msg);
			change.addError(msg);
			return;
		}
		log.config("Set=" + no);

		//m_selectionActive = false;  //  prevents from being called twice
		//statusBar.setStatusLine(Msg.getMsg(serverCtx, "InvGenerateGen"));
		//statusBar.setStatusDB(String.valueOf(no));

		//	Prepare Process
		int AD_Process_ID = 199;  // HARDCODED    C_InvoiceCreate
		HashMap<String, ValueNamePair> parameters = new HashMap<String, ValueNamePair>();
		ArrayList<FieldVO> fieldVOs = new ArrayList<FieldVO>(2);
		fieldVOs.add(new FieldVO("Selection", "Selection", DisplayTypeConstants.YesNo));
		fieldVOs.add(new FieldVO("M_Warehouse_ID", "M_Warehouse_ID", DisplayTypeConstants.TableDir));
		fieldVOs.add(new FieldVO("Shipment_Group_ID", "Shipment_Group_ID", DisplayTypeConstants.Integer));
		ProcessInfoVO processInfo = ReportServiceImpl.staticGetProcessInfoByProcessID(AD_Process_ID, windowNO, ctx);
		processInfo.Parameters = fieldVOs;

		//parameters.put("Selection", new ValueNamePair("Y", "Y"));
		parameters.put("M_Warehouse_ID", new ValueNamePair(windowCtx.get("M_Warehouse_ID"), windowCtx.get("M_Warehouse_ID")));
		parameters.put("Shipment_Group_ID", new ValueNamePair(Shipment_Group_ID.toString(), Shipment_Group_ID.toString()));
		ReportServiceImpl.startProcess(processInfo, serverCtx, parameters);

		//post processing
		sql = "UPDATE C_Order SET Shipment_Group_ID = NULL WHERE Shipment_Group_ID = ? AND " + whereClause;
		no = DB.executeUpdate(sql, Shipment_Group_ID, (Trx) null);
		log.config("Reset=" + no);

		if("Y".equals(windowCtx.get("IsPrint"))) {
			//	Get results
			int[] ids = processInfo.IDs;
			if (ids == null || ids.length == 0)
				return;

			//	Loop through all items
			for (int ID : ids) {
				ReportCtl.startDocumentPrint(ctx, mode, ID, true);
			}
		}	//	OK to print Shipments
		if(change.changedFields == null) 
			change.changedFields = new HashMap<String, String>();
		//change.changedFields.put("ProcessInfo", processInfo);
		change.changedFields.put("isProcess", "Y");
		change.changedFields.put("isError", processInfo.isError ? "Y" : "N");
		change.changedFields.put("summary", processInfo.Summary);
		change.changedFields.put("logInfo" , processInfo.logInfo);
	}   //  generateShipments_complete

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.SELECTIONAUTO;
	}
}
