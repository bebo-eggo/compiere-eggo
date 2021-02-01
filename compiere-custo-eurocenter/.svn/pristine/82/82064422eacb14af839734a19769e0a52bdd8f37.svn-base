package org.compiere.apps.form;


	import java.awt.*;
	import java.awt.event.*;
	import java.beans.*;
	import java.math.*;
	import java.sql.*;
	import java.util.*;
	import java.util.logging.*;

	import javax.swing.*;
	import javax.swing.event.*;

import org.apache.poi.ss.formula.functions.Replace;
	import org.compiere.apps.*;
	import org.compiere.common.constants.*;
	import org.compiere.grid.ed.*;
	import org.compiere.minigrid.*;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
	import org.compiere.plaf.*;
	import org.compiere.print.*;
	import org.compiere.process.*;
	import org.compiere.swing.*;
import org.compiere.util.*;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.model.MTransactionMsg;

	/**
	 *	Manual Shipment Selection
	 *
	 *  @author Jorg Janke
	 *  @version $Id: VInOutGen.java,v 1.2 2006/07/30 00:51:28 jjanke Exp $
	 */
	public class VSavStatusChange extends CPanel
		implements FormPanel, ActionListener, VetoableChangeListener, 
			ChangeListener, TableModelListener, ASyncProcess
	{
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		/**
		 *	Initialize Panel
		 *  @param WindowNo window
		 *  @param frame frame
		 */
		public void init (int WindowNo, FormFrame frame)
		{
			log.info("");
			m_WindowNo = WindowNo;
			m_frame = frame;
			Env.getCtx().setIsSOTrx(m_WindowNo, true);
			try
			{
				fillPicks();
				jbInit();
				dynInit();
				frame.getContentPane().add(tabbedPane, BorderLayout.CENTER);
				frame.getContentPane().add(statusBar, BorderLayout.SOUTH);
				executeQuery();
			}
			catch(Exception ex)
			{
				log.log(Level.SEVERE, "init", ex);
			}
		}	//	init

		/**	Window No			*/
		private int         	m_WindowNo = 0;
		/**	FormFrame			*/
		private FormFrame 		m_frame;

		private boolean			m_selectionActive = true;
		private String          m_whereClause;
		private Object 			m_AD_Org_ID = null;
		private Object 			m_C_BPartner_ID = null;
		private Object 			m_Sav_Status = null;
		private Object 			m_Sav_StatusTarget = null;
		private Integer			m_ShipmentGroup_ID = 0;
		/**	Logger			*/
		private static CLogger log = CLogger.getCLogger(VSavStatusChange.class);
		//
		private CTabbedPane tabbedPane = new CTabbedPane();
		private CPanel selPanel = new CPanel();
		private CPanel selSelPanel = new CPanel();
		private CPanel selNorthPanel = new CPanel();
		private BorderLayout selPanelLayout = new BorderLayout();
		private CLabel lWarehouse = new CLabel();
		private VLookup fWarehouse;
		private CLabel lBPartner = new CLabel();
		private VLookup fBPartner;
		private CLabel lSavStatus = new CLabel();
		private VLookup fSavStatus;
		private CLabel lSavStatusTarget = new CLabel();
		private VLookup fSavStatusTarget;
		private FlowLayout northPanelLayout = new FlowLayout();
		private ConfirmPanel confirmPanelSel = new ConfirmPanel(true);
		private ConfirmPanel confirmPanelGen = new ConfirmPanel(false, true, false, false, false, false, true);
		private StatusBar statusBar = new StatusBar();
		private CTextPane info = new CTextPane();
		private JScrollPane scrollPane = new JScrollPane();
		private MiniTable miniTable = new MiniTable();

		void jbInit() throws Exception
		{
			CompiereColor.setBackground(this);
			//
			selPanel.setLayout(selPanelLayout);
			lWarehouse.setLabelFor(fWarehouse);
			lBPartner.setLabelFor(fBPartner);
			lBPartner.setText("BPartner");
			lSavStatus.setLabelFor(fSavStatus);
			lSavStatus.setText("SavStatus");
			lSavStatusTarget.setLabelFor(fSavStatusTarget);
			lSavStatusTarget.setText("SavStatusTarget");
			selNorthPanel.setLayout(northPanelLayout);
			northPanelLayout.setAlignment(FlowLayout.LEFT);
			tabbedPane.add(selPanel, Msg.getMsg(Env.getCtx(), "Select"));
			selPanel.add(selNorthPanel, BorderLayout.NORTH);
			selNorthPanel.add(lWarehouse, null);
			selNorthPanel.add(fWarehouse, null);
			selNorthPanel.add(lBPartner, null);
			selNorthPanel.add(fBPartner, null);
			selNorthPanel.add(lSavStatus, null);
			selNorthPanel.add(fSavStatus, null);
			selPanel.setName("selPanel");
			CPanel savTargetPanel = new CPanel(new FlowLayout());
			savTargetPanel.add(lSavStatusTarget);
			savTargetPanel.add(fSavStatusTarget);
			selSelPanel.add(savTargetPanel,BorderLayout.WEST);
			selSelPanel.add(confirmPanelSel,BorderLayout.EAST);
			selPanel.add(selSelPanel, BorderLayout.SOUTH);
			selPanel.add(scrollPane, BorderLayout.CENTER);
			scrollPane.getViewport().add(miniTable, null);
			confirmPanelSel.addActionListener(this);
			info.setBackground(CompierePLAF.getFieldBackground_Inactive());
			info.setEditable(false);
			confirmPanelGen.addActionListener(this);
			this.setSize(800,600);
		}	//	jbInit

		/**
		 *	Fill Picks.
		 *		Column_ID from C_Order
		 *  @throws Exception if Lookups cannot be initialized
		 */
		private void fillPicks() throws Exception
		{
			MLookup savStatusLook = MLookupFactory.get (Env.getCtx(), m_WindowNo, 1006878, DisplayTypeConstants.List);
			fSavStatus = new VLookup ("Sav_Status", true, false, true, savStatusLook);
			fSavStatus.addVetoableChangeListener(this);
			MLookup savStatusTargetLook = MLookupFactory.get (Env.getCtx(), m_WindowNo, 1006878, DisplayTypeConstants.List);
			fSavStatusTarget = new VLookup ("Sav_StatusTarget", true, false, true, savStatusTargetLook);
			fSavStatusTarget.addVetoableChangeListener(this);
			
			//	C_OrderLine.AD_Org_ID
			MLookup orgL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 528, DisplayTypeConstants.TableDir);
			fWarehouse = new VLookup ("AD_Org_ID", true, false, true, orgL);
			lWarehouse.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
			fWarehouse.addVetoableChangeListener(this);
			m_AD_Org_ID = fWarehouse.getValue();
			//	C_Order.C_BPartner_ID
			MLookup bpL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 7576, DisplayTypeConstants.Search);
			fBPartner = new VLookup ("C_BPartner_ID", false, false, true, bpL);
			lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
			fBPartner.addVetoableChangeListener(this);
		}	//	fillPicks

		/**
		 *	Dynamic Init.
		 *	- Create GridController & Panel
		 *	- AD_Column_ID from C_Order
		 */
		private void dynInit()
		{
			//  create Columns
			miniTable.addColumn("C_Order_ID");
			miniTable.addColumn("AD_Org_ID");
			miniTable.addColumn("C_DocType_ID");
			miniTable.addColumn("DocumentNo");
			miniTable.addColumn("C_BPartner_ID");
			//miniTable.addColumn("DateOrdered");
			//miniTable.addColumn("TotalLines");
			//
			miniTable.setMultiSelection(true);
			miniTable.setRowSelectionAllowed(true);
			//  set details
			miniTable.setColumnClass(0, IDColumn.class, false, " ");
			miniTable.setColumnClass(1, String.class, true, Msg.translate(Env.getCtx(), "AD_Org_ID"));
			miniTable.setColumnClass(2, String.class, true, Msg.translate(Env.getCtx(), "C_DocType_ID"));
			miniTable.setColumnClass(3, String.class, true, Msg.translate(Env.getCtx(), "DocumentNo"));
			miniTable.setColumnClass(4, String.class, true, Msg.translate(Env.getCtx(), "C_BPartner_ID"));
			//miniTable.setColumnClass(5, Timestamp.class, true, Msg.translate(Env.getCtx(), "DateOrdered"));
			//miniTable.setColumnClass(6, BigDecimal.class, true, Msg.translate(Env.getCtx(), "TotalLines"));
			//
			miniTable.autoSize();
			miniTable.getModel().addTableModelListener(this);
			//	Info
			statusBar.setStatusLine(Msg.getMsg(Env.getCtx(), "Selection Dossiers"));//@@
			statusBar.setStatusDB(" ");
			//	Tabbed Pane Listener
			tabbedPane.addChangeListener(this);
		}	//	dynInit

		/**
		 *  Query Info
		 */
		private void executeQuery()
		{
			log.info("");
			int AD_Client_ID = Env.getCtx().getAD_Client_ID();
			//  Create SQL
			StringBuffer sql = new StringBuffer(
				//"SELECT C_Order_ID, o.Name, dt.Name, DocumentNo, bp.Name, DateOrdered, TotalLines "	
				"SELECT C_Order_ID, o.Name, dt.Name, DocumentNo, bp.Name "
				+ "FROM C_Order ic, AD_Org o, C_BPartner bp, C_DocType dt "
				+ "WHERE ic.Sav_Status is not null"
				+ " AND ic.AD_Org_ID=o.AD_Org_ID"
				+ " AND ic.C_BPartner_ID=bp.C_BPartner_ID"
				+ " AND ic.C_DocType_ID=dt.C_DocType_ID"
				+ " AND ic.AD_Client_ID=?");

			if (m_AD_Org_ID != null)
				sql.append(" AND ic.AD_Org_ID=").append(m_AD_Org_ID);
			if (m_C_BPartner_ID != null)
				sql.append(" AND ic.C_BPartner_ID=").append(m_C_BPartner_ID);
			if (m_Sav_Status != null)
				sql.append(" AND ic.Sav_Status='").append(m_Sav_Status).append("'");
			//
			sql.append(" ORDER BY o.Name,bp.Name,DateOrdered");
			log.fine(sql.toString());

			//  reset table
			int row = 0;
			miniTable.setRowCount(row);
			//  Execute
			try
			{
				PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
				pstmt.setInt(1, AD_Client_ID);
				ResultSet rs = pstmt.executeQuery();
				//
				while (rs.next())
				{
					//  extend table
					miniTable.setRowCount(row+1);
					//  set values
					miniTable.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  C_Order_ID
					miniTable.setValueAt(rs.getString(2), row, 1);              //  Org
					miniTable.setValueAt(rs.getString(3), row, 2);              //  DocType
					miniTable.setValueAt(rs.getString(4), row, 3);              //  Doc No
					miniTable.setValueAt(rs.getString(5), row, 4);              //  BPartner
					//miniTable.setValueAt(rs.getTimestamp(6), row, 5);           //  DateOrdered
					//miniTable.setValueAt(rs.getBigDecimal(7), row, 6);          //  TotalLines
					//  prepare next
					row++;
				}
				rs.close();
				pstmt.close();
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, sql.toString(), e);
			}
			//
			miniTable.autoSize();
		//	statusBar.setStatusDB(String.valueOf(miniTable.getRowCount()));
		}   //  executeQuery

		/**
		 * 	Dispose
		 */
		public void dispose()
		{
			if (m_frame != null)
				m_frame.dispose();
			m_frame = null;
		}	//	dispose

		/**
		 *	Action Listener
		 *  @param e event
		 */
		public void actionPerformed (ActionEvent e)
		{
			log.info("Cmd=" + e.getActionCommand());
			//
			if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL))
			{
				dispose();
				return;
			}
			//
			m_whereClause = saveSelection();
			if (m_whereClause.length() > 0 
				&& m_selectionActive	//	on selection tab
				&& m_AD_Org_ID != null)
				changeStatus ();
		}	//	actionPerformed

		/**
		 *	Vetoable Change Listener - requery
		 *  @param e event
		 */
		public void vetoableChange(PropertyChangeEvent e)
		{
			log.info(e.getPropertyName() + "=" + e.getNewValue());
			if (e.getPropertyName().equals("AD_Org_ID")){
				m_AD_Org_ID = e.getNewValue();
				executeQuery();
			}
			if (e.getPropertyName().equals("C_BPartner_ID"))
			{
				m_C_BPartner_ID = e.getNewValue();
				fBPartner.setValue(m_C_BPartner_ID);	//	display value
				executeQuery();
			}
			if (e.getPropertyName().equals("Sav_Status"))
			{
				m_Sav_Status = e.getNewValue();
				fSavStatus.setValue(m_Sav_Status);	//	display value
				executeQuery();
			}
			if (e.getPropertyName().equals("Sav_StatusTarget"))
			{
				m_Sav_StatusTarget = e.getNewValue();
				fSavStatusTarget.setValue(m_Sav_StatusTarget);	//	display value
			}
			
		}	//	vetoableChange

		/**
		 *	Change Listener (Tab changed)
		 *  @param e event
		 */
		public void stateChanged (ChangeEvent e)
		{
			int index = tabbedPane.getSelectedIndex();
			m_selectionActive = (index == 0);
		}	//	stateChanged

		/**
		 *  Table Model Listener
		 *  @param e event
		 */
		public void tableChanged(TableModelEvent e)
		{
			int rowsSelected = 0;
			int rows = miniTable.getRowCount();
			for (int i = 0; i < rows; i++)
			{
				IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
				if (id != null && id.isSelected())
					rowsSelected++;
			}
			statusBar.setStatusDB(" " + rowsSelected + " ");
		}   //  tableChanged

		/**
		 *	Save Selection & return selection Query or ""
		 *  @return where clause like C_Order_ID IN (...)
		 */
		private String saveSelection()
		{
			log.info("");
			//  ID selection may be pending
			miniTable.editingStopped(new ChangeEvent(this));
			//  Array of Integers
			ArrayList<Integer> results = new ArrayList<Integer>();

			//	Get selected entries
			int rows = miniTable.getRowCount();
			for (int i = 0; i < rows; i++)
			{
				IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
			//	log.fine( "Row=" + i + " - " + id);
				if (id != null && id.isSelected())
					results.add(id.getRecord_ID());
			}

			if (results.size() == 0)
				return "";
			log.config("Selected #" + results.size());

			//	Query String
			String keyColumn = "C_Order_ID";
			StringBuffer sb = new StringBuffer(keyColumn);
			if (results.size() > 1)
				sb.append(" IN (");
			else
				sb.append("=");
			//	Add elements
			for (int i = 0; i < results.size(); i++)
			{
				if (i > 0)
					sb.append(",");
				if (keyColumn.toUpperCase().endsWith("_ID"))
					sb.append(results.get(i).toString());
				else
					sb.append("'").append(results.get(i).toString());
			}

			if (results.size() > 1)
				sb.append(")");
			//
			log.config(sb.toString());
			return sb.toString();
		}	//	saveSelection

		
		/**************************************************************************
		 *	Change status
		 */
		private void changeStatus ()
		{
			System.out.println(m_whereClause);
			log.info("AD_Org_ID=" + m_AD_Org_ID);
			Trx trx = null;
			Trx p_trx = null;
			
			//	Set Selection
			m_ShipmentGroup_ID = DB.getSQLValue(trx, "SELECT C_Order_ShipmentGroup_Seq.NEXTVAL FROM DUAL");
			String sql = "UPDATE C_Order SET SAV_STATUS = ? "
							+ "WHERE "
							+ m_whereClause;
			ArrayList<Object> params = new ArrayList<Object>();
			params.add(m_Sav_StatusTarget);
			int no = DB.executeUpdate(sql,params.toArray(new Object[params.size()]), trx );
			
			String[] order_ID =m_whereClause.toUpperCase().replace("(","").replace(")","").replace("C_ORDER_ID=","").replace("C_ORDER_ID IN","").replace(" ","").split(",");
			for (int i = 0; i < order_ID.length; i++) {
				String sql2 = "Insert into Z_SAVSTATUS (AD_CLIENT_ID,AD_ORG_ID,C_ORDER_ID,CREATED,CREATEDBY,DATEMOUVEMENT,ISACTIVE,SAV_STATUS,UPDATED,UPDATEDBY,Z_SAVSTATUS_ID)"
							  +"values (?,?,?,SysDate,?,SysDate,?,?,SysDate,?,ad_sequence_nextno('Z_SavStatus'))";
				MOrder order = new MOrder(Env.getCtx(),Integer.parseInt(order_ID[i]),trx);
				ArrayList<Object> params2 = new ArrayList<Object>();
				params2.add(order.getAD_Client_ID());
				params2.add(order.getAD_Org_ID());
				params2.add(order.get_ID());
				params2.add(Env.getCtx().getAD_User_ID());
				params2.add("Y");
				params2.add(m_Sav_StatusTarget);
				params2.add(Env.getCtx().getAD_User_ID());
				DB.executeUpdate(sql2,params2.toArray(new Object[params2.size()]), trx );
				
				boolean genAction = MTransactionMsg.generateMsgFromSAV(order,trx);

			}
			executeQuery();		
			log.fine(sql);
			if (no == 0)
			{
				String msg = "No SAV Changed";     //  not translated!
				log.config(msg);
				info.setText(msg);
				return;
			}
			log.info("Set Selection #" + no);

			statusBar.setStatusLine("SAV changes");
			statusBar.setStatusDB(String.valueOf(no));

			//	Prepare Process
			//int AD_Process_ID = 199;	  // M_InOutCreate - org.compiere.process.InOutGenerate
			//MPInstance instance = new MPInstance(Env.getCtx(), AD_Process_ID, 0);
			//if (!instance.save())
			//{
			//	info.setText(Msg.getMsg(Env.getCtx(), "ProcessNoInstance"));
			//	return;
			//}
			//ProcessInfo pi = new ProcessInfo ("VInOutGen", AD_Process_ID);
			//pi.setAD_PInstance_ID (instance.getAD_PInstance_ID());

			//	Add Parameter - Selection=Y
			//MPInstancePara ip = new MPInstancePara(instance, 10);
//			ip.setParameter("Selection","N");
//			if (!ip.save())
//			{
//				String msg = "No Parameter added";  //  not translated
//				info.setText(msg);
//				log.log(Level.SEVERE, msg);
//				return;
//			}
//			//	Add Parameter - AD_Org_ID=x
//			ip = new MPInstancePara(instance, 20);
//			ip.setParameter("AD_Org_ID", Integer.parseInt(m_AD_Org_ID.toString()));
//			if (!ip.save())
//			{
//				String msg = "No Parameter added";  //  not translated
//				info.setText(msg);
//				log.log(Level.SEVERE, msg);
//				return;
//			}
//
//			ip = new MPInstancePara(instance, 30);
//			ip.setParameter("Shipment_Group_ID", Integer.parseInt(m_ShipmentGroup_ID.toString()));
//			if (!ip.save())
//			{
//				String msg = "No Parameter added";  //  not translated
//				info.setText(msg);
//				log.log(Level.SEVERE, msg);
//				return;
//			}
//
//			//	Execute Process
//			ProcessCtl worker = new ProcessCtl(this, pi, p_trx);
//			worker.start();     //  complete tasks in unlockUI / generateShipments_complete
			//
		}	//	generateShipments

		/**
		 *  Complete generating shipments.
		 *  Called from Unlock UI
		 *  @param pi process info
		 */
		private void generateShipments_complete (ProcessInfo pi)
		{
			//  Switch Tabs
			tabbedPane.setSelectedIndex(1);
			//
			ProcessInfoUtil.setLogFromDB(pi);
			StringBuffer iText = new StringBuffer();
			iText.append("<b>").append(pi.getSummary())
				.append("</b><br>(")
				.append(Msg.getMsg(Env.getCtx(), "InOutGenerateInfo"))
				//  Shipments are generated depending on the Delivery Rule selection in the Order
				.append(")<br>")
				.append(pi.getLogInfo(true));
			info.setText(iText.toString());

			//	Reset Selection
			String sql = "UPDATE C_Order SET Shipment_Group_ID = NULL WHERE Shipment_Group_ID = ? AND " + m_whereClause;
			int no = DB.executeUpdate(sql, m_ShipmentGroup_ID, (Trx) null);
			log.config("Reset=" + no);

			//	Get results
			int[] ids = pi.getIDs();
			if (ids == null || ids.length == 0)
				return;
			log.config("PrintItems=" + ids.length);

			confirmPanelGen.getOKButton().setEnabled(false);
			//	OK to print shipments
			if (ADialog.ask(m_WindowNo, this, "PrintShipments"))
			{
			//	info.append("\n\n" + Msg.getMsg(Env.getCtx(), "PrintShipments"));
				setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
				int retValue = ADialogDialog.A_CANCEL;	//	see also ProcessDialog.printShipments/Invoices
				do
				{
					//	Loop through all items
					for (int M_InOut_ID : ids) {
						ReportEngine re = ReportCtl.startDocumentPrint( Env.getCtx(), ReportEngine.SHIPMENT, M_InOut_ID, true );
						if (re == null) {
							ADialog.error(0, null, CLogger.retrieveError().getName() );
							break;
						}
					}
					ADialogDialog d = new ADialogDialog (m_frame,
						Env.getHeader(Env.getCtx(), m_WindowNo),
						Msg.getMsg(Env.getCtx(), "PrintoutOK?"),
						JOptionPane.QUESTION_MESSAGE);
					retValue = d.getReturnCode();
				}
				while (retValue == ADialogDialog.A_CANCEL);
				setCursor(Cursor.getDefaultCursor());
			}	//	OK to print shipments

			//
			confirmPanelGen.getOKButton().setEnabled(true);
		}   //  generateShipments_complete

		
		/**************************************************************************
		 *  Lock User Interface.
		 *  Called from the Worker before processing
		 *  @param pi process info
		 */
		public void lockUI (ProcessInfo pi)
		{
			this.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
			this.setEnabled(false);
		}   //  lockUI

		/**
		 *  Unlock User Interface.
		 *  Called from the Worker when processing is done
		 *  @param pi result of execute ASync call
		 */
		public void unlockUI (ProcessInfo pi)
		{
			this.setEnabled(true);
			this.setCursor(Cursor.getDefaultCursor());
			//
			generateShipments_complete(pi);
		}   //  unlockUI

		/**
		 *  Is the UI locked (Internal method)
		 *  @return true, if UI is locked
		 */
		public boolean isUILocked()
		{
			return this.isEnabled();
		}   //  isUILocked

		/**
		 *  Method to be executed async.
		 *  Called from the Worker
		 *  @param pi ProcessInfo
		 */
		public void executeASync (ProcessInfo pi)
		{
		}   //  executeASync

	}	//	VInOutGen
