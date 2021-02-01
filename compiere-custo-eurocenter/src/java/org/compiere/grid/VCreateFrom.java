/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 3600 Bridge Parkway #102, Redwood City, CA 94065, USA      *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.grid;

import java.awt.*;
import java.awt.event.*;
import java.math.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;

import javax.swing.*;
import javax.swing.event.*;
import javax.swing.table.*;

import org.compiere.apps.*;
import org.compiere.common.constants.*;
import org.compiere.grid.ed.*;
import org.compiere.minigrid.*;
import org.compiere.model.*;
import org.compiere.swing.*;
import org.compiere.util.*;
import org.compiere.vos.*;

/**
 * CreateFrom (Called from GridController.startProcess)
 * 
 * @author Jorg Janke
 * @version $Id: VCreateFrom.java,v 1.4 2006/10/11 09:52:23 comdivision Exp $
 */
public abstract class VCreateFrom extends CDialog implements ActionListener, TableModelListener, ZCreateFromInterface // ZCOM999
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Factory - called from APanel
	 * 
	 * @param mTab
	 *            Model Tab for the trx
	 * @return JDialog
	 */
	public static VCreateFrom create(GridTab mTab) {
		// dynamic init preparation
		int AD_Table_ID = Env.getCtx().getContextAsInt(mTab.getWindowNo(), "BaseTable_ID");

		VCreateFrom retValue = null;
		if (AD_Table_ID == 392) // C_BankStatement
			retValue = new VCreateFromStatement(mTab);
		else if (AD_Table_ID == 318) // C_Invoice
			retValue = new VCreateFromInvoice(mTab);
		else if (AD_Table_ID == 319) // M_InOut
			retValue = new VCreateFromShipment(mTab);
		else if (AD_Table_ID == 426) // C_PaySelection
			return null; // ignore - will call process C_PaySelection_CreateFrom
		else // Not supported CreateFrom
		{
			s_log.info("Unsupported AD_Table_ID=" + AD_Table_ID);
			return null;
		}
		return retValue;
	} // create

	/**************************************************************************
	 * Protected super class Constructor
	 * 
	 * @param mTab
	 *            MTab
	 */
	VCreateFrom(GridTab mTab) {
		super(Env.getWindow(mTab.getWindowNo()), true);
		log.info(mTab.toString());
		p_WindowNo = mTab.getWindowNo();
		p_mTab = mTab;

		try {
			if (!dynInit())
				return;
			jbInit();
			confirmPanel.addActionListener(this);
			// Set status
			statusBar.setStatusDB("");
			tableChanged(null);
			p_initOK = true;
		} catch (Exception e) {
			log.log(Level.SEVERE, "", e);
			p_initOK = false;
		}
		AEnv.positionCenterWindow(Env.getWindow(p_WindowNo), this);
	} // VCreateFrom

	/** Window No */
	protected int p_WindowNo;
	/** Model Tab */
	protected GridTab p_mTab;

	private boolean p_initOK = false;

	/** Loaded Order */
	protected MOrder p_order = null;
	/** Logger */
	protected CLogger log = CLogger.getCLogger(getClass());
	/** Static Logger */
	private static CLogger s_log = CLogger.getCLogger(VCreateFrom.class);
	
	private static int AD_Org = 0;

	//
	private CPanel parameterPanel = new CPanel();
	protected CPanel parameterBankPanel = new CPanel();
	private BorderLayout parameterLayout = new BorderLayout();
	private JLabel bankAccountLabel = new JLabel();
	// ZCOM418
	private JLabel MntTotLabel = new JLabel();
	protected JTextField MntTotField = new JTextField();
	private JLabel PaymentLabel = new JLabel();
	protected static JTextField PaymentField = new JTextField();
	// ZCOM418
	protected CPanel parameterStdPanel = new CPanel();
	private JLabel bPartnerLabel = new JLabel();
	protected VLookup bankAccountField;
	private GridBagLayout parameterStdLayout = new GridBagLayout();
	private GridBagLayout parameterBankLayout = new GridBagLayout();
	protected VLookup bPartnerField;
	private JLabel orderLabel = new JLabel();
	protected JComboBox orderField = new JComboBox();
	protected JLabel invoiceLabel = new JLabel();
	protected JComboBox invoiceField = new JComboBox();
	protected JLabel shipmentLabel = new JLabel();
	protected JComboBox shipmentField = new JComboBox();
	private JScrollPane dataPane = new JScrollPane();
	private CPanel southPanel = new CPanel();
	private BorderLayout southLayout = new BorderLayout();
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	protected StatusBar statusBar = new StatusBar();
	protected MiniTable dataTable = new MiniTable();
	protected JLabel locatorLabel = new JLabel();
	protected VLocator locatorField = new VLocator();
	protected AppsAction selectAllAction = new AppsAction(SELECT_DESELECT_ALL, null, Msg.getMsg(Env.getCtx(), SELECT_DESELECT_ALL), true);

	private static final String SELECT_DESELECT_ALL = "SelectDeselectAll";
	
	private static int AD_Org_IDX = 0;

	/**
	 * Static Init.
	 * 
	 * <pre>
	 *  parameterPanel
	 *      parameterBankPanel
	 *      parameterStdPanel
	 *          bPartner/order/invoice/shopment/licator Label/Field
	 *  dataPane
	 *  southPanel
	 *      confirmPanel
	 *      statusBar
	 * </pre>
	 * 
	 * @throws Exception
	 */
	private void jbInit() throws Exception {
		parameterPanel.setLayout(parameterLayout);
		parameterStdPanel.setLayout(parameterStdLayout);
		parameterBankPanel.setLayout(parameterBankLayout);
		//
		bankAccountLabel.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		bPartnerLabel.setText(Msg.getElement(Env.getCtx(), "C_BPartner_ID"));
		orderLabel.setText(Msg.getElement(Env.getCtx(), "C_Order_ID", false));
		invoiceLabel.setText(Msg.getElement(Env.getCtx(), "C_Invoice_ID", false));
		shipmentLabel.setText(Msg.getElement(Env.getCtx(), "M_InOut_ID", false));
		locatorLabel.setText(Msg.translate(Env.getCtx(), "M_Locator_ID"));

		// ZCOM418
		MntTotLabel.setText("Total ");
		MntTotField.setColumns(20);
		MntTotField.setEditable(false);
		MntTotField.addActionListener(this);
		PaymentLabel.setText("Paiement");
		PaymentField.setColumns(20);
		PaymentField.addActionListener(this);
		// ZCOM418

		//
		this.getContentPane().add(parameterPanel, BorderLayout.NORTH);
		parameterPanel.add(parameterBankPanel, BorderLayout.NORTH);
		parameterBankPanel.add(bankAccountLabel, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0, GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		if (bankAccountField != null)
			parameterBankPanel.add(bankAccountField, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));

		// ZCOM418
		parameterBankPanel.add(PaymentLabel, null);
		parameterBankPanel.add(PaymentField, null);
		// ZCOM418

		parameterPanel.add(parameterStdPanel, BorderLayout.CENTER);
		parameterStdPanel.add(bPartnerLabel, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0, GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		if (bPartnerField != null)
			parameterStdPanel.add(bPartnerField, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		parameterStdPanel.add(orderLabel, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0, GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterStdPanel.add(orderField, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		parameterStdPanel.add(invoiceLabel, new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0, GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterStdPanel.add(invoiceField, new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		parameterStdPanel.add(shipmentLabel, new GridBagConstraints(2, 2, 1, 1, 0.0, 0.0, GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterStdPanel.add(shipmentField, new GridBagConstraints(3, 2, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		parameterStdPanel.add(locatorLabel, new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0, GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterStdPanel.add(locatorField, new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		this.getContentPane().add(dataPane, BorderLayout.CENTER);
		dataPane.getViewport().add(dataTable, null);

		// ZCOM497
		parameterStdPanel.add(MntTotLabel, new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0, GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterStdPanel.add(MntTotField, new GridBagConstraints(1, 3, 1, 1, 0.0, 0.0, GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 5), 0, 0));
		// ZCOM497

		//

		CToggleButton selectAllButton = (CToggleButton) selectAllAction.getButton();
		selectAllButton.setMargin(ConfirmPanel.s_insets);
		selectAllButton.addActionListener(this);
		confirmPanel.addComponent(selectAllButton);

		//
		this.getContentPane().add(southPanel, BorderLayout.SOUTH);
		southPanel.setLayout(southLayout);
		southPanel.add(confirmPanel, BorderLayout.CENTER);
		// Trifon End
		this.getContentPane().add(southPanel, BorderLayout.SOUTH);
		southPanel.setLayout(southLayout);
		southPanel.add(confirmPanel, BorderLayout.CENTER);
		southPanel.add(statusBar, BorderLayout.SOUTH);
	} // jbInit

	/**
	 * Init OK to be able to make changes?
	 * 
	 * @return on if initialized
	 */
	public boolean isInitOK() {
		return p_initOK;
	} // isInitOK

	/**
	 * Dynamic Init
	 * 
	 * @throws Exception
	 *             if Lookups cannot be initialized
	 * @return true if initialized
	 */
	abstract boolean dynInit() throws Exception;

	/**
	 * Init Business Partner Details
	 * 
	 * @param C_BPartner_ID
	 *            BPartner
	 */
	abstract void initBPDetails(int C_BPartner_ID);

	/**
	 * Add Info
	 */
	abstract void info();

	/**
	 * Save & Insert Data
	 * 
	 * @return true if saved
	 */
	abstract boolean save();

	/*************************************************************************/

	/**
	 * Action Listener
	 * 
	 * @param e
	 *            event
	 */
	@Override
	public void actionPerformed(ActionEvent e) {
		log.config("Action=" + e.getActionCommand());
		// if (m_action)
		// return;
		// m_action = true;

		// OK - Save
		if (e.getActionCommand().equals(ConfirmPanel.A_OK)) {
			if (save())
				dispose();
		}
		// Cancel
		else if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL)) {
			dispose();
		}
		// Select All
		// Trifon
		else if (e.getActionCommand().equals(SELECT_DESELECT_ALL)) {
			TableModel model = dataTable.getModel();
			model.removeTableModelListener(this);

			// select or deselect all as required
			int rows = model.getRowCount();
			Boolean selectAll = selectAllAction.isPressed() ? Boolean.FALSE : Boolean.TRUE;
			for (int i = 0; i < rows; i++)
				model.setValueAt(selectAll, i, 0);

			model.addTableModelListener(this);

			info();
		}
		// m_action = false;
	} // actionPerformed

	/**
	 * Table Model Listener.
	 * 
	 * @param tme
	 *            event
	 */
	public void tableChanged(TableModelEvent tme) {
		int type = -1;
		if (tme != null) {
			type = tme.getType();
			if (type != TableModelEvent.UPDATE)
				return;

			// ZCOM497
			BigDecimal MntTot = Env.ZERO;
			TableModel donnees = dataTable.getModel();
			if (donnees.getColumnCount() >= 14) {
				for (int i = 0; i < donnees.getRowCount(); i++) {
					if (((Boolean) donnees.getValueAt(i, 0)).booleanValue()) {
						BigDecimal amount = (BigDecimal) donnees.getValueAt(i, 14);
						if (amount != null)
							MntTot = MntTot.add(amount);
					}
					MntTotField.setText(MntTot.toString());
				}
			}
			// ZCOM497

			if (tme.getColumn() == 0) {
				// need to ensure the pressed or nor pressed is properly checked
				// if all have been manually selected or deselected
				TableModel model = dataTable.getModel();
				Boolean isPressed = (Boolean) model.getValueAt(0, 0);
				int rows = model.getRowCount();
				boolean equals = true;
				for (int i = 1; equals && i < rows; i++) {
					equals = isPressed.equals(model.getValueAt(i, 0));
				}

				if (equals) {
					selectAllAction.setPressed(isPressed);
				}
			}
		}

		log.config("Type=" + type);
		info();
	} // tableChanged

	/**************************************************************************
	 * Load BPartner Field
	 * 
	 * @param forInvoice
	 *            true if Invoices are to be created, false receipts
	 * @throws Exception
	 *             if Lookups cannot be initialized
	 */
	protected void initBPartner(boolean forInvoice) throws Exception {
		// load BPartner
		int AD_Column_ID = 3499; // C_Invoice.C_BPartner_ID
		MLookup lookup = MLookupFactory.get(Env.getCtx(), p_WindowNo, AD_Column_ID, DisplayTypeConstants.Search);
		bPartnerField = new VLookup("C_BPartner_ID", true, false, true, lookup);
		//
		int C_BPartner_ID = Env.getCtx().getContextAsInt(p_WindowNo, "C_BPartner_ID");

		int AD_Org_ID = Env.getCtx().getContextAsInt(p_WindowNo, "AD_Org_ID"); // ZCOM309

		bPartnerField.setValue(new Integer(C_BPartner_ID));

		// initial loading
		initBPartnerOIS(C_BPartner_ID, forInvoice, AD_Org_ID // ZCOM309
		);
	} // initBPartner

	/**
	 * Compiere 361
	 * 
	 * @param ctx
	 * @param C_BPartner_ID
	 * @param isReturnTrx
	 * @param forInvoice
	 *            <code>true</code> for orders matched to invoices,
	 *            <code>false</code> for orders matched to shipments
	 * @return
	 */
	public static ArrayList<NamePair> getOrders(Ctx ctx, int C_BPartner_ID, boolean isReturnTrx, boolean forInvoice) {
		ArrayList<NamePair> pairs = new ArrayList<NamePair>();
		// Display
		StringBuffer display = new StringBuffer("o.DocumentNo||' - ' ||").append(DB.TO_CHAR("o.DateOrdered", DisplayTypeConstants.Date, Env.getAD_Language(ctx))).append("||' - '||").append(DB.TO_CHAR("o.GrandTotal", DisplayTypeConstants.Amount, Env.getAD_Language(ctx)));
		String t = ctx.get_ValueAsString("AD_OrgX_ID");
		// ZCOM220
		display.append("||' - '||o.Poreference");
		// ZCOM220

		/*
		 * ZCOM337 String column = "m.M_InOutLine_ID"; if( forInvoice ) column =
		 * "m.C_InvoiceLine_ID";
		 */
		StringBuffer sql = new StringBuffer("SELECT o.C_Order_ID,").append(display).append(" FROM C_Order o " + "WHERE o.C_BPartner_ID=? ");
		if(t!=null && t.length()>0)
			sql =sql.append(" AND o.AD_Org_ID= ? ");
		sql =sql.append("AND o.IsSOTrx='N' AND o.DocStatus IN ('CL','CO') " + "AND o.IsReturnTrx='" + (isReturnTrx ? "Y" : "N") + "' AND o.C_Order_ID IN " + "(SELECT ol.C_Order_ID FROM C_OrderLine ol"
				+ " WHERE "+(forInvoice ?" (ol.QtyOrdered <> ol.qtyInvoiced))":"(ol.QtyOrdered <> ol.qtyDelivered))")
				///END :#54822	
				/*
				 * ZCOM337 +
				 * " LEFT OUTER JOIN M_MatchPO m ON (ol.C_OrderLine_ID=m.C_OrderLine_ID) "
				 * + "GROUP BY ol.C_Order_ID,ol.C_OrderLine_ID, ol.QtyOrdered,"
				 * ).append( column ).append(
				 * " HAVING (ol.QtyOrdered <> SUM(m.Qty) AND " ).append( column
				 * ).append( " IS NOT NULL) OR " ).append( column ) .append(
				 * " IS NULL) "*ZCOM337*
				 */
				 //sql = sql.append("ORDER BY o.DateOrdered");
			+" ORDER BY o.DocumentNo");
		try {
			
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, C_BPartner_ID);
			if(t!=null && t.length()>0)
				pstmt.setInt(2, Integer.parseInt(t));
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				pairs.add(new KeyNamePair(rs.getInt(1), rs.getString(2)));
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			s_log.log(Level.SEVERE, sql.toString(), e);
		}
		return pairs;

	}

	/**
	 * Load PBartner dependent Order/Invoice/Shipment Field.
	 * 
	 * @param C_BPartner_ID
	 *            BPartner
	 * @param forInvoice
	 *            for invoice
	 */
	protected void initBPartnerOIS(int C_BPartner_ID, boolean forInvoice, int AD_Org_ID // ZCOM309
	) {
		log.config("C_BPartner_ID=" + C_BPartner_ID);
		KeyNamePair pp = new KeyNamePair(0, "");

		// load PO Orders - Closed, Completed
		orderField.removeActionListener(this);
		orderField.removeAllItems();
		orderField.addItem(pp);
		//
		boolean isReturnTrx = "Y".equals(Env.getCtx().getContext(p_WindowNo, "IsReturnTrx"));
		AD_Org_IDX = Env.getCtx().getContextAsInt(p_WindowNo, "AD_Org_ID");
		ArrayList<NamePair> orders = getOrders(Env.getCtx(), C_BPartner_ID, isReturnTrx, forInvoice);
		for (NamePair pair : orders) {
			orderField.addItem(pair);
		}

		orderField.setSelectedIndex(0);
		orderField.addActionListener(this);

		initBPDetails(C_BPartner_ID);
	} // initBPartnerOIS

	/**
	 * Load Data - Order
	 * 
	 * @param C_Order_ID
	 *            Order
	 * @param forInvoice
	 *            true if for invoice vs. delivery qty
	 */
	protected void loadOrder(int C_Order_ID, boolean forInvoice) {
		p_order = new MOrder(Env.getCtx(), C_Order_ID, null); // save
		Vector<Vector<Object>> data = getOrderData(Env.getCtx(), C_Order_ID,null,0, forInvoice, false, 0);
		loadTableOIS(data);
	}

	/** 
	 * Compiere 361
	 * 
	 * ZCOM497 Annulï¿½ sinon plantage WebUI
	 */
	public static Vector<Vector<Object>> getOrderData(Ctx ctx, int C_Order_ID,String POref, int BPartner_ID, boolean forInvoice, boolean isDiff_0, int TypeOA_ID) {
		/**
		 * Selected - 0 Qty - 1 C_UOM_ID - 2 M_Product_ID - 3 OrderLine - 4
		 * ShipmentLine - 5 InvoiceLine - 6
		 */
		s_log.config("C_Order_ID=" + C_Order_ID);

		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = new StringBuffer("SELECT " );//66851+ "l.QtyOrdered-SUM(COALESCE(m.Qty,0))," // 1 
				sql.append(forInvoice ? " l.QtyOrdered-SUM(COALESCE(m.Qty,0)),"  :" l.QtyOrdered - l.QtyDelivered,");// 1 
				sql.append( "CASE WHEN l.QtyOrdered=0 THEN 0 ELSE l.QtyEntered/l.QtyOrdered END,")// 2
				.append( " l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name),") // 3..4
				.append( " COALESCE(l.M_Product_ID,0),COALESCE(p.Name,c.Name),") // 5..6
				.append(" l.C_OrderLine_ID,co.DocumentNo||'_'||l.Line ")// 7..8

				/* ZCOM153 */.append( " ,l.Description ")
				/* ZCOM253 */.append( " ,l.M_PRODUCT_ID ")

				// ZCOM497
				.append( " ,ppo.vendorproductno ,l.priceactual,l.linenetamt, l.C_Order_ID, getSUMINOUTBYORDER(l.C_OrderLine_ID) as SumRecpt ")
				// ZCOM497

				.append( "FROM C_OrderLine l inner join C_Order co on co.C_Order_ID = l.C_Order_ID LEFT OUTER JOIN M_MatchPO m ON (l.C_OrderLine_ID=m.C_OrderLine_ID AND ");
		sql.append(forInvoice ? "m.C_InvoiceLine_ID" : "m.M_InOutLine_ID");
		sql.append(" IS NOT NULL)").append(" LEFT OUTER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID)" + " LEFT OUTER JOIN C_Charge c ON (l.C_Charge_ID=c.C_Charge_ID)");
		if (Env.isBaseLanguage(ctx, "C_UOM"))
			sql.append(" LEFT OUTER JOIN C_UOM uom ON (l.C_UOM_ID=uom.C_UOM_ID)");
		else
			sql.append(" LEFT OUTER JOIN C_UOM_Trl uom ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='").append(Env.getAD_Language(ctx)).append("')");
		//

		// ZCOM497
		sql.append(" LEFT OUTER JOIN M_Product_po ppo on (ppo.M_Product_id = l.M_Product_id and ppo.c_BPartner_id = ?  and ppo.ISCURRENTVENDOR = 'Y' )");
		// ZCOM497

		if(C_Order_ID>0)
			sql.append(" WHERE l.C_Order_ID=? "); // #1
		else if(POref!=null)
			sql.append(" WHERE co.POreference =? ");
		if(BPartner_ID>0 && C_Order_ID<=0)
			sql.append(" AND co.C_BPartner_ID = ? ");
		if(TypeOA_ID>0)
			sql.append(" AND co.Z_TypeOA_ID = ? ");
		// ZCOM936
	
		// ZCOM936 DEBUT il faut pas reprendre la meme ligne plusieurs fois
		if (forInvoice) {
			sql.append(" and not exists (select 1 from c_invoiceline il inner join c_invoice i on i.c_invoice_id = il.c_invoice_id ");
			sql.append(" where i.docstatus not in ('CO','CL','RE','VO') and il.C_OrderLine_ID = l.C_OrderLine_ID) ");
		} else {
			sql.append(" and not exists (select 1 from M_InOutline il inner join m_inout i on i.M_InOut_ID = il.M_InOut_ID ");
			sql.append(" where i.docstatus not in ('CO','CL','RE','VO') and il.C_OrderLine_ID = l.C_OrderLine_ID) ");
		}
		sql.append(	"GROUP BY");
		sql.append(forInvoice ? " l.QtyOrdered,"  :" l.QtyOrdered - l.QtyDelivered, ")
		// ZCOM936 FIN
				.append( "CASE WHEN l.QtyOrdered=0 THEN 0 ELSE l.QtyEntered/l.QtyOrdered END, " + "l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name), " + "l.M_Product_ID,COALESCE(p.Name,c.Name), l.Line,l.C_OrderLine_ID ")

				/* ZCOM153 */.append( ", l.Description ")
				/* ZCOM497 */.append(",ppo.vendorproductno, l.priceactual, l.linenetamt, l.C_Order_ID , co.DOcumentNo  ")
				.append( "ORDER BY co.DocumentNo, ppo.vendorproductno ");
		//
		s_log.finer(sql.toString());
		try {
			MOrder o = new MOrder(ctx, C_Order_ID, null); // ZCOM497
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			// ZCOM497 pstmt.setInt(1, C_Order_ID);
			int xx = 1;
			pstmt.setInt(xx++, BPartner_ID<=0?o.getC_BPartner_ID():BPartner_ID); // ZCOM497
			if(C_Order_ID>0)
				pstmt.setInt(xx++, C_Order_ID); // ZCOM497
			else if(POref!=null)
				pstmt.setString(xx++, POref);
			if(BPartner_ID>0 && C_Order_ID<=0 )
				pstmt.setInt(xx++,  BPartner_ID);
			if(TypeOA_ID>0)
				pstmt.setInt(xx++,  TypeOA_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				
				BigDecimal qtyOrdered = rs.getBigDecimal(1);
				BigDecimal multiplier = rs.getBigDecimal(2);
				BigDecimal qtyEntered = qtyOrdered.multiply(multiplier);
				if(isDiff_0 && qtyEntered.equals(Env.ZERO))
					continue;
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false)); // 0-Selection
				line.add(new Double(qtyEntered.doubleValue())); // 1-Qty
				KeyNamePair pp = new KeyNamePair(rs.getInt(3), rs.getString(4).trim());
				line.add(pp); // 2-UOM
				pp = new KeyNamePair(rs.getInt(5), rs.getString(6));
				line.add(pp); // 3-Product
				String vendorproduct = rs.getString(11);
				line.add(vendorproduct); // Vendor product no
				pp = new KeyNamePair(rs.getInt(7), rs.getString(8));
				line.add(pp); // 4-OrderLine
				line.add("Qté Réception : "+rs.getInt(15)); // 5-Ship
				line.add(null); // 6-Invoice
				if(C_Order_ID<=0)
					o = new MOrder(ctx, rs.getInt(14), null); 
				/* ZCOM153 */int k = 8;
				/* ZCOM153 */String desc = rs.getString(9);
				/* ZCOM153 */if (desc == null || desc.trim().length() == 0)
					desc = o.getDescription();
				/* ZCOM153 */line.add(desc); // Description
				/* ZCOM153 */
				line.add(o.getDatePromised()); // DatePromised

				// ZCOM497
				line.add(o.getDocumentNo()); // Rï¿½ference Commande
				line.add(o.getPOReference()); // Rï¿½fï¿½rence PO
//				line.add(null); // document //Redmine 31908
//				String vendorproduct = rs.getString(11);
//				if (rs.wasNull())
//					line.add(null);
//				else
//					line.add(vendorproduct); // Vendor product no
				BigDecimal prix = rs.getBigDecimal(12);
				if (rs.wasNull())
					line.add(null);
				else
					line.add(prix); // Price
				BigDecimal montantligne = rs.getBigDecimal(13);
				if (rs.wasNull())
					line.add(null);
				else
					line.add(montantligne); // Line Amount
				// ZCOM497

				data.add(line);
			}
			rs.close();
			pstmt.close();
		} catch (Exception e) {
			s_log.log(Level.SEVERE, sql.toString(), e);
		}
		return data;
	} // LoadOrder

	/** Compiere 361 */
	public static ArrayList<FieldVO> getTableFieldVOs(Ctx ctx) {
		ArrayList<FieldVO> fieldVOs = new ArrayList<FieldVO>();
		fieldVOs.add(new FieldVO("Quantity", Msg.translate(ctx, "Quantity"), DisplayTypeConstants.Quantity));
		fieldVOs.add(new FieldVO("C_UOM_ID", Msg.translate(ctx, "C_UOM_ID"), DisplayTypeConstants.String));
		FieldVO fx = new FieldVO("M_Product_ID", Msg.translate(ctx, "M_Product_ID"), DisplayTypeConstants.String);
		fx.FieldLength = 50;
		fieldVOs.add(fx);
		/* ZCOM497 */fieldVOs.add(new FieldVO("VendorProductNo", Msg.getElement(ctx, "VendorProductNo", false), DisplayTypeConstants.String));
		fieldVOs.add(new FieldVO("C_Order_ID", Msg.getElement(ctx, "C_Order_ID", false), DisplayTypeConstants.String));
		fieldVOs.add(new FieldVO("M_InOut_ID", Msg.getElement(ctx, "M_InOut_ID", false), DisplayTypeConstants.String));
		fieldVOs.add(new FieldVO("C_Invoice_ID", Msg.getElement(ctx, "C_Invoice_ID", false), DisplayTypeConstants.String));

		/* ZCOM153 */fieldVOs.add(new FieldVO("Description", Msg.getElement(ctx, "Description", false), DisplayTypeConstants.String));
		/* ZCOM153 */fieldVOs.add(new FieldVO("DatePromised", Msg.getElement(ctx, "DatePromised", false), DisplayTypeConstants.Date));
		/* ZCOM497 */fieldVOs.add(new FieldVO("SOPOType", Msg.getElement(ctx, "SOPOType", false), DisplayTypeConstants.String));
		/* ZCOM497 */fieldVOs.add(new FieldVO("POReference", Msg.getElement(ctx, "POReference", false), DisplayTypeConstants.String));
//		/* ZCOM497 */fieldVOs.add(new FieldVO("M_InOut_ID", Msg.getElement(ctx, "M_InOut_ID", false), DisplayTypeConstants.String)); //Redmine 31908

		/* ZCOM497 */fieldVOs.add(new FieldVO("PriceEntered", Msg.getElement(ctx, "PriceEntered", false), DisplayTypeConstants.CostPrice));
		/* ZCOM497 */fieldVOs.add(new FieldVO("LineNetAmt", Msg.getElement(ctx, "LineNetAmt", false), DisplayTypeConstants.Amount));

		for (FieldVO f : fieldVOs)
			f.IsReadOnly = true;

		for (int i = 2; i < fieldVOs.size(); ++i)
			fieldVOs.get(i).IsKey = true;

		return fieldVOs;
	}

	/** Compiere 380 */
	public static ArrayList< FieldVO > getTableFieldVOs( Ctx ctx, boolean isSOTrx )
	{
		ArrayList< FieldVO > fieldVOs = new ArrayList< FieldVO >();
		fieldVOs.add( new FieldVO( "Quantity", Msg.translate( ctx, "Quantity"), DisplayTypeConstants.Quantity ) );
		fieldVOs.add( new FieldVO( "C_UOM_ID", Msg.translate( ctx, "C_UOM_ID"), DisplayTypeConstants.String ) );
		fieldVOs.add( new FieldVO( "M_Product_ID", Msg.translate( ctx, "M_Product_ID"), DisplayTypeConstants.String ) );
		fieldVOs.add( new FieldVO( "C_Order_ID", Msg.getElement( ctx, "C_Order_ID", isSOTrx), DisplayTypeConstants.String ));
		fieldVOs.add( new FieldVO( "M_InOut_ID", Msg.getElement( ctx, "M_InOut_ID", isSOTrx), DisplayTypeConstants.String ));
		fieldVOs.add( new FieldVO( "C_Invoice_ID", Msg.getElement( ctx, "C_Invoice_ID", isSOTrx), DisplayTypeConstants.String ));
		fieldVOs.add( new FieldVO( "IsDropShip", Msg.getElement( ctx, "IsDropShip", isSOTrx), DisplayTypeConstants.YesNo, true));
		
		for( FieldVO f : fieldVOs )
			f.IsReadOnly = true;
		
		for( int i = 2; i < fieldVOs.size(); ++i )
			fieldVOs.get( i ).IsKey = true;
		
		return fieldVOs;
	}


	/**
	 * Load Order/Invoice/Shipment data into Table
	 * 
	 * @param data
	 *            data
	 */
	protected void loadTableOIS(Vector<Vector<Object>> data) {
		// Header Info
		Vector<String> columnNames = new Vector<String>(7);
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		for (FieldVO vo : getTableFieldVOs(Env.getCtx())) {
			columnNames.add(vo.name);
		}

		// Remove previous listeners
		dataTable.getModel().removeTableModelListener(this);
		// Set Model
		DefaultTableModel model = new DefaultTableModel(data, columnNames);
		model.addTableModelListener(this);
		dataTable.setModel(model);
		//
		dataTable.setColumnClass(0, Boolean.class, false); // 0-Selection
		dataTable.setColumnClass(1, Double.class, true); // 1-Qty
		dataTable.setColumnClass(2, String.class, true); // 2-UOM
		dataTable.setColumnClass(3, String.class, true); // 3-Product
		dataTable.setColumnClass(4, String.class, true); // 4-Order
		dataTable.setColumnClass(5, String.class, true); // 5-Ship
		dataTable.setColumnClass(6, String.class, true); // 6-Invoice

		/* ZCOM153 */int k = 7;
		/* ZCOM153 */dataTable.setColumnClass(k++, String.class, true);
		/* ZCOM153 */dataTable.setColumnClass(k++, Timestamp.class, true);
		/* ZCOM497 */dataTable.setColumnClass(k++, String.class, true);
		/* ZCOM497 */dataTable.setColumnClass(k++, String.class, true);
		/* ZCOM497 */dataTable.setColumnClass(k++, String.class, true);
		/* ZCOM497 */dataTable.setColumnClass(k++, String.class, true);
		/* ZCOM497 */dataTable.setColumnClass(k++, Double.class, true);
		/* ZCOM497 */dataTable.setColumnClass(k++, Double.class, true);

		// Table UI
		dataTable.autoSize();
		dataTable.setSortEnabled(true);

		// ensure select all button is only available when there is data
		selectAllAction.setEnabled(dataTable.getRowCount() > 0);
	} // loadOrder

	public static Vector<Vector<Object>> getInvoiceData(Ctx ctx, int C_Invoice_ID) {

		s_log.config("C_Invoice_ID=" + C_Invoice_ID);

		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = new StringBuffer("SELECT " // Entered UOM
				+ "l.QtyInvoiced-SUM(NVL(mi.Qty,0)),l.QtyEntered,l.QtyInvoiced," + " l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name)," // 4..5
				+ " l.M_Product_ID,p.Name, l.C_InvoiceLine_ID,l.Line," // 6..9
				+ " l.C_OrderLine_ID "); // 10

		if (Env.isBaseLanguage(ctx, "C_UOM")) {
			sql.append("FROM C_UOM uom ").append("INNER JOIN C_InvoiceLine l ON (l.C_UOM_ID=uom.C_UOM_ID) ");

		} else {
			sql.append("FROM C_UOM_Trl uom ").append("INNER JOIN C_InvoiceLine l ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='").append(Env.getAD_Language(ctx)).append("') ");
		}
		sql.append("INNER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID) ").append("LEFT OUTER JOIN M_MatchInv mi ON (l.C_InvoiceLine_ID=mi.C_InvoiceLine_ID) ").append("WHERE l.C_Invoice_ID=? " // #1
				+ "GROUP BY l.QtyInvoiced,l.QtyEntered,l.QtyInvoiced," + "l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name)," + "l.M_Product_ID,p.Name, l.C_InvoiceLine_ID,l.Line,l.C_OrderLine_ID " + "ORDER BY l.Line");
		try {
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
			pstmt.setInt(1, C_Invoice_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Vector<Object> line = new Vector<Object>(7);
				line.add(Boolean.valueOf(false)); // 0-Selection
				BigDecimal qtyInvoiced = rs.getBigDecimal(1);
				BigDecimal qtyEnt = rs.getBigDecimal(2);
				BigDecimal qtyInv = rs.getBigDecimal(3);
				BigDecimal multiplier = BigDecimal.ZERO;
				if (qtyInv.compareTo(BigDecimal.ZERO) != 0) {
					multiplier = qtyEnt.divide(qtyInv, 10, BigDecimal.ROUND_HALF_UP);
				}
				BigDecimal qtyEntered = qtyInvoiced.multiply(multiplier);
				line.add(new Double(qtyEntered.doubleValue())); // 1-Qty
				KeyNamePair pp = new KeyNamePair(rs.getInt(4), rs.getString(5).trim());
				line.add(pp); // 2-UOM
				pp = new KeyNamePair(rs.getInt(6), rs.getString(7));
				line.add(pp); // 3-Product
				int C_OrderLine_ID = rs.getInt(10);
				if (rs.wasNull())
					line.add(null); // 4-Order
				else
					line.add(new KeyNamePair(C_OrderLine_ID, "."));
				line.add(null); // 5-Ship
				pp = new KeyNamePair(rs.getInt(8), rs.getString(9));
				line.add(pp); // 6-Invoice
				line.add(null); // Description
				line.add(null); // DatePromised
				line.add(null); // Rï¿½ference Commande
				line.add(null); // Rï¿½fï¿½rence PO
//				line.add(null); // document //Redmine 31908
				line.add(null); // Vendor product no
				line.add(null); // Price
				line.add(null); // Line Amount
				data.add(line);
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			s_log.log(Level.SEVERE, sql.toString(), e);
		}
		return data;
	}

	/**
	 * Compiere 380
	 * Get the list of orders for a given business partner
	 * @param ctx
	 * @param C_BPartner_ID
	 * @param isReturnTrx
	 * @param forInvoice <code>true</code> for orders matched to invoices, <code>false</code> for orders matched to shipments 
	 * @return
	 */
	public static ArrayList< NamePair > getOrders( Ctx ctx, int C_BPartner_ID, boolean isReturnTrx, int M_PriceList_ID, boolean forInvoice )
	{
		ArrayList< NamePair > pairs = new ArrayList< NamePair >();
		// Display
		StringBuffer display = new StringBuffer( "o.DocumentNo||' - ' ||" ).append(
				DB.TO_CHAR( "o.DateOrdered", DisplayTypeConstants.Date, Env.getAD_Language( ctx ) ) ).append( "||' - '||" ).append(
				DB.TO_CHAR( "o.GrandTotal", DisplayTypeConstants.Amount, Env.getAD_Language( ctx ) ) );
		String column = "m.M_InOutLine_ID";
		if( forInvoice )
			column = "m.C_InvoiceLine_ID";

		//ZCOM Performance
		StringBuffer sql1 = new StringBuffer( "SELECT o.C_Order_ID," ).append( display ).append(
				" FROM C_Order o "
				+ " LEFT OUTER JOIN C_BlanketOrder bo ON (bo.C_BlanketOrder_ID = o.C_BlanketOrder_ID ) "
				+ " WHERE o.C_BPartner_ID=? AND o.IsSOTrx='N' AND o.DocStatus IN ('CL','CO') AND COALESCE(bo.IsConsigned,'N') ='N'"
				+ (forInvoice ? " AND o.M_PriceList_ID = ? " : "")
				+ " AND o.IsReturnTrx='" + (isReturnTrx?"Y":"N") + "' AND o.C_Order_ID IN "
				+ " (SELECT ol.C_Order_ID FROM C_OrderLine ol"
				+ " INNER JOIN C_Order oo ON oo.C_Order_ID = ol.C_Order_ID" //ZCOM
				+ " LEFT OUTER JOIN M_MatchPO m ON (ol.C_OrderLine_ID=m.C_OrderLine_ID) WHERE ").append(column).append(
						" IS NOT NULL "+(isReturnTrx&!forInvoice?" AND ol.IsDropShip='N' ":"")
						+ " AND oo.C_BPartner_ID = ? "//ZCOM
						+ "GROUP BY ol.C_Order_ID,ol.C_OrderLine_ID, ol.QtyOrdered HAVING ol.QtyOrdered > SUM(m.Qty) " 
						+ " UNION SELECT ol.C_Order_ID FROM C_OrderLine ol " 
						+ " INNER JOIN C_Order oo ON oo.C_Order_ID = ol.C_Order_ID" //ZCOM
						+ " LEFT OUTER JOIN M_MatchPO m ON (ol.C_OrderLine_ID=m.C_OrderLine_ID) WHERE ").append(column).append(
						" IS NULL "+(isReturnTrx&!forInvoice?" AND ol.IsDropShip='N' ":"")
						+ " AND oo.C_BPartner_ID = ? "//ZCOM
						//+ "GROUP BY ol.C_Order_ID, ol.C_OrderLine_ID, ol.QtyOrdered) ORDER BY o.DateOrdered" );
						+ "GROUP BY ol.C_Order_ID, ol.C_OrderLine_ID, ol.QtyOrdered) ORDER BY o.DocumentNo" );
		MRole role = MRole.get( ctx, ctx.getAD_Role_ID(), ctx.getAD_User_ID(), false );
		String sql = role.addAccessSQL( sql1.toString(), "C_Order", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO );
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			pstmt = DB.prepareStatement( sql.toString(), (Trx) null);
			pstmt.setInt( 1, C_BPartner_ID );
			if(forInvoice)
				pstmt.setInt(2, M_PriceList_ID);
			//ZCOM START
			int k = 2;
			if(forInvoice)
				k++;
			pstmt.setInt( k++, C_BPartner_ID );
			pstmt.setInt( k++, C_BPartner_ID );
			//ZCOM END
			rs = pstmt.executeQuery();
			while( rs.next() )
			{
				boolean exists = true;
				if(!forInvoice)
				{
					exists = false;
					Vector< Vector< Object > > data = getOrderData(ctx, rs.getInt(1), forInvoice, isReturnTrx);
					for(Vector<Object> d : data)
					{
						KeyNamePair pp = (KeyNamePair)d.get(3);
						if(pp== null || pp.getID() ==null || Integer.parseInt(pp.getID())==0)
							continue;
						if(((Double)d.get(1)).compareTo(BigDecimal.ZERO.doubleValue())==0)
							continue;
						exists = true;
					}
				}
				Vector< Vector< Object > > data = getOrderData(ctx, rs.getInt(1), forInvoice, isReturnTrx);
				if(exists && data !=null && data.size() !=0)
					pairs.add( new KeyNamePair( rs.getInt( 1 ), rs.getString( 2 ) ) );
			}
		}
		catch( SQLException e )
		{
			s_log.log( Level.SEVERE, sql.toString(), e );
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		return pairs;

	}
	
	
	/**
	 * Compiere 380
	 * Get the list of Blanket orders for a given business partner
	 * @param ctx
	 * @param C_BPartner_ID
	 * @return
	 */
	public static ArrayList< NamePair > getBlanketOrders( Ctx ctx, int C_BPartner_ID, int windowNo, boolean isReturnTrx)
	{
		ArrayList< NamePair > pairs = new ArrayList< NamePair >();
		// Display
		StringBuffer display = new StringBuffer( "o.DocumentNo||' - ' ||" ).append(
				DB.TO_CHAR( "o.DateOrdered", DisplayTypeConstants.Date, Env.getAD_Language( ctx ) ) ).append( "||' - '||" ).append(
				DB.TO_CHAR( "o.GrandTotal", DisplayTypeConstants.Amount, Env.getAD_Language( ctx ) ) );
		
		Timestamp dateOrdered = new Timestamp(ctx.getContextAsTime( windowNo, "MovementDate"));

		String sql1 = " SELECT o.C_BlanketOrder_ID, " +  display 
				    + " FROM C_BlanketOrder o " 
				    + " WHERE o.C_BPartner_ID=? "
				    + " AND o.IsSOTrx= ? "
				    + " AND o.Blanket_StartDate <=  ? "
				    + " AND o.Blanket_EndDate >= ? "
				    + " AND o.IsConsigned = 'Y' "
				    + " AND M_Warehouse_ID = ? "
				    + " AND o.DocStatus IN ('CO') "
                    + " ORDER BY o.DateOrdered ";
		
		MRole role = MRole.get( ctx, ctx.getAD_Role_ID(), ctx.getAD_User_ID(), false );
		String sql = role.addAccessSQL( sql1.toString(), "C_BlanketOrder", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO );
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			pstmt = DB.prepareStatement( sql.toString(), (Trx) null);
			pstmt.setInt( 1, C_BPartner_ID );
			pstmt.setString(2, ctx.getContext(windowNo, "IsSOTrx"));
			pstmt.setTimestamp(3, dateOrdered);
			pstmt.setTimestamp(4, dateOrdered);
			pstmt.setInt(5, ctx.getContextAsInt(windowNo, "M_Warehouse_ID"));
			rs = pstmt.executeQuery();
			while( rs.next() )
			{
				 Vector< Vector< Object > > data = getBlanketOrderData(ctx, rs.getInt( 1 ),isReturnTrx, 
						                             ctx.getContext(windowNo, "IsSOTrx").equals("Y"),dateOrdered );
				if(data != null && data.size() != 0)
					pairs.add( new KeyNamePair( rs.getInt( 1 ), rs.getString( 2 ) ) );
			}
		}
		catch( SQLException e )
		{
			s_log.log( Level.SEVERE, sql.toString(), e );
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		return pairs;

	}
	
	/**
	 * Compiere 380
	 */
	public static Vector< Vector< Object > > getOrderData( Ctx ctx, int C_Order_ID, boolean forInvoice, boolean isReturnTrx)
	{
		/**
		 *  Selected        - 0
		 *  Qty             - 1
		 *  C_UOM_ID        - 2
		 *  M_Product_ID    - 3
		 *  OrderLine       - 4
		 *  ShipmentLine    - 5
		 *  InvoiceLine     - 6
		 */
		s_log.config("C_Order_ID=" + C_Order_ID);

		Vector<Vector< Object >> data = new Vector<Vector< Object >>();
		StringBuffer sql = new StringBuffer("SELECT "
			+ "l.QtyOrdered-SUM(COALESCE(m.Qty,0)),"					//	1
			+ "CASE WHEN l.QtyOrdered=0 THEN 0 ELSE l.QtyEntered/l.QtyOrdered END,"	//	2
			+ " l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name),"			//	3..4
			+ " COALESCE(l.M_Product_ID,0),COALESCE(p.Name,c.Name),"	//	5..6
			+ " l.C_OrderLine_ID,l.Line, "								//	7..8
			+ " l.IsDropShip "											//  9
			
			/* ZCOM153 */+ " ,l.Description "							// 10
			/* ZCOM253 */+ " ,l.M_PRODUCT_ID "							// 11

			// ZCOM497
			+ " ,ppo.vendorproductno" + " ,l.priceactual" + " ,l.linenetamt "	// 12 13 14
			// ZCOM497

			
			+ "FROM C_OrderLine l inner join C_Order co on co.C_Order_ID = l.C_Order_ID "
			+ " LEFT OUTER JOIN M_MatchPO m ON (l.C_OrderLine_ID=m.C_OrderLine_ID AND ");
		sql.append(forInvoice ? "m.C_InvoiceLine_ID" : "m.M_InOutLine_ID");
		sql.append(" IS NOT NULL)")
			.append(" LEFT OUTER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID)"
			+ " LEFT OUTER JOIN C_Charge c ON (l.C_Charge_ID=c.C_Charge_ID) ");
		if (Env.isBaseLanguage( ctx, "C_UOM"))
			sql.append(" LEFT OUTER JOIN C_UOM uom ON (l.C_UOM_ID=uom.C_UOM_ID)");
		else
			sql.append(" LEFT OUTER JOIN C_UOM_Trl uom ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='")
				.append( Env.getAD_Language( ctx ) ).append( "')" );
		
		// ZCOM497
		sql.append(" LEFT OUTER JOIN M_Product_po ppo on (ppo.M_Product_id = l.M_Product_id and ppo.c_BPartner_id = ?  )");
		// ZCOM497

		
		sql.append(" WHERE l.C_Order_ID=? "			//	#1
			); // ZCOM999
//		+ (forInvoice? "" : (isReturnTrx? " AND l.IsDropShip='N' ":""))
		
		// ZCOM936 DEBUT il faut pas reprendre la meme ligne plusieurs fois
		if (forInvoice) {
			sql.append(" and not exists (select 1 from c_invoiceline il inner join c_invoice i on i.c_invoice_id = il.c_invoice_id ");
			sql.append(" where i.docstatus not in ('CO','CL','RE','VO') and il.C_OrderLine_ID = l.C_OrderLine_ID) ");
		} else {
			sql.append(" and not exists (select 1 from M_InOutline il inner join m_inout i on i.M_InOut_ID = il.M_InOut_ID ");
			sql.append(" where i.docstatus not in ('CO','CL','RE','VO') and il.C_OrderLine_ID = l.C_OrderLine_ID) ");
		}
		sql.append(""
		// ZCOM936 FIN

				+ "GROUP BY l.QtyOrdered,CASE WHEN l.QtyOrdered=0 THEN 0 ELSE l.QtyEntered/l.QtyOrdered END, "
				+ "l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name), "
				+ "l.M_Product_ID,COALESCE(p.Name,c.Name), l.Line,l.C_OrderLine_ID,l.IsDropShip "
				/* ZCOM153 */+ ", l.Description "
				/* ZCOM497 */+ ",ppo.vendorproductno, l.priceactual, l.linenetamt  "
				+ "ORDER BY co.DocumentNo, ppo.vendorproductno");
				
		//
		s_log.finer(sql.toString());
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			MOrder o = new MOrder(ctx, C_Order_ID, null); // ZCOM497
			pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
			// ZCOM497 pstmt.setInt(1, C_Order_ID);
			pstmt.setInt(1, o.getC_BPartner_ID()); // ZCOM497
			pstmt.setInt(2, C_Order_ID); // ZCOM497
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(Boolean.valueOf(false));           //  0-Selection
				BigDecimal qtyOrdered = rs.getBigDecimal(1);
				BigDecimal multiplier = rs.getBigDecimal(2);
				BigDecimal qtyEntered = qtyOrdered.multiply(multiplier);
				line.add(new Double(qtyEntered.doubleValue()));  //  1-Qty
				KeyNamePair pp = new KeyNamePair(rs.getInt(3), rs.getString(4).trim());
				line.add(pp);                           //  2-UOM
				pp = new KeyNamePair(rs.getInt(5), rs.getString(6));
				line.add(pp);                           //  3-Product
				pp = new KeyNamePair(rs.getInt(7), rs.getString(8));
				line.add(pp);                           //  4-OrderLine
				line.add(null);                         //  5-Ship
				line.add(null);                         //  6-Invoice

				/* ZCOM153 */int k = 8;
				/* ZCOM153 */String desc = rs.getString(k++);
				/* ZCOM153 */if (desc == null || desc.trim().length() == 0)
					desc = o.getDescription();
				/* ZCOM153 */line.add(desc); // Description
				/* ZCOM153 */
				line.add(o.getDatePromised()); // DatePromised

				// ZCOM497
				line.add(o.getDocumentNo()); // Rï¿½ference Commande
				line.add(o.getPOReference()); // Rï¿½fï¿½rence PO
//				line.add(null); // document //Redmine 31908
				String vendorproduct = rs.getString(11);
				if (rs.wasNull())
					line.add(null);
				else
					line.add(vendorproduct); // Vendor product no
				BigDecimal prix = rs.getBigDecimal(12);
				if (rs.wasNull())
					line.add(null);
				else
					line.add(prix); // Price
				BigDecimal montantligne = rs.getBigDecimal(13);
				if (rs.wasNull())
					line.add(null);
				else
					line.add(montantligne); // Line Amount
				// ZCOM497
				
				

// THIS BELOW SHOULD BE UNCOMENTED AND MIGRATED				
//				line.add(Boolean.valueOf("Y".equals(rs.getString(9))));		// 7-															// ZCOM999 ????

				if (qtyEntered.compareTo(BigDecimal.ZERO)>0 &&  (rs.getInt(5)!=0 || checkChargeInvoice(rs.getInt(7))))						
				{																															
					data.add(line);																								
				}																															
				else if(qtyEntered.compareTo(BigDecimal.ZERO)>0 && ( (rs.getInt(5)!=0 || checkCharge(rs.getInt(7))) && !forInvoice))		
				{																															
					data.add(line);
				}																															
			}

		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		return data;
	}   //  LoadOrder

	
	/**
	 * Compiere 380
	 */
	public static Vector< Vector< Object > > getBlanketOrderData( Ctx ctx, int C_BlanketOrder_ID, boolean isReturnTrx, boolean isSOTrx, Timestamp time)
	{
		/**
		 *  Selected        - 0
		 *  Qty             - 1
		 *  C_UOM_ID        - 2
		 *  M_Product_ID    - 3
		 *  OrderLine       - 4
		 *  ShipmentLine    - 5
		 *  InvoiceLine     - 6
		 */
		s_log.config("C_BlanketOrder_ID=" + C_BlanketOrder_ID);

	    String qty = isSOTrx ? " (l.QtyReceived*-1) " : " l.QtyReceived " ;
		Vector<Vector< Object >> data = new Vector<Vector< Object >>();
		String sql = " SELECT " ;
		if(isReturnTrx)
			sql+= qty + " - l.QtyReleased";
		else
			sql+= " l.QtyOrdered - " + qty ;
		sql+=       " , CASE WHEN l.QtyOrdered=0 THEN 0 ELSE l.QtyEntered/l.QtyOrdered END,"	//	2
			       + " l.C_UOM_ID, " // 3
			       + " COALESCE(uom.UOMSymbol,uom.Name),"			//4
			       + " COALESCE(l.M_Product_ID,0), " //5
			       + " p.Name, "	//	6
			       + " l.C_BlanketOrderLine_ID, "  //7
			       + " l.Line "			//8
  		           + " FROM C_BlanketOrderLine l "
  		           + " INNER JOIN C_BlanketOrder o ON (o.C_BlanketOrder_ID = l.C_BlanketOrder_ID "
  		                                           + " AND o.Blanket_StartDate <= ? "
  		                                           + " AND o.Blanket_EndDate >= ? )"
			       + " LEFT OUTER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID)";
		if (Env.isBaseLanguage( ctx, "C_UOM"))
			sql+= " LEFT OUTER JOIN C_UOM uom ON (l.C_UOM_ID=uom.C_UOM_ID) ";
		else
			sql+= " LEFT OUTER JOIN C_UOM_Trl uom ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language=' "
				+ Env.getAD_Language( ctx ) + "')" ;
		//
		sql+= " WHERE l.C_BlanketOrder_ID=? "			//	#1
			+ " AND " + (isReturnTrx ? "("+qty+" - l.QtyReleased)" : "l.QtyOrdered- "+ qty) + " != 0 "
			+ " ORDER BY l.Line ";
		//
		s_log.finer(sql.toString());
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
			pstmt.setTimestamp(1, time);
			pstmt.setTimestamp(2, time);
			pstmt.setInt(3, C_BlanketOrder_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(Boolean.valueOf(false));           //  0-Selection
				BigDecimal qtyOrdered = rs.getBigDecimal(1);
				BigDecimal multiplier = rs.getBigDecimal(2);
				BigDecimal qtyEntered = qtyOrdered.multiply(multiplier);
				line.add(new Double(qtyEntered.doubleValue()));  //  1-Qty
				KeyNamePair pp = new KeyNamePair(rs.getInt(3), rs.getString(4).trim());
				line.add(pp);                           //  2-UOM
				pp = new KeyNamePair(rs.getInt(5), rs.getString(6));
				line.add(pp);                           //  3-Product
				pp = new KeyNamePair(rs.getInt(7), rs.getString(8));
				line.add(pp);                           //  4-OrderLine
				line.add(null);                         //  5-Ship
				line.add(null);                         //  6-Invoice
				line.add(Boolean.valueOf("Y".equals("N")));
				data.add(line);
			}
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		return data;
	}   

	private static boolean checkCharge(int C_OrderLine_ID)
	{
		String sql = "SELECT count(1) from M_InOutLine mol 	INNER JOIN M_InOut mo ON(mo.M_InOut_ID = mol.M_InOut_ID)  INNER JOIN C_OrderLine ol ON (mol.C_OrderLine_ID = ol.C_OrderLine_ID) "
		         + " WHERE mol.C_OrderLine_ID = ?   AND mol.C_Charge_ID = ol.C_Charge_ID AND mo.DocStatus IN ('CO','CL') ";
		int count = QueryUtil.getSQLValue(null, sql, C_OrderLine_ID);
		if (count ==0 )
			return true;
		else
			return false;
	}
	
	private static boolean checkChargeInvoice(int C_OrderLine_ID)
	{
		String sql = "SELECT count(1) from C_InvoiceLine il INNER JOIN C_Invoice i ON(i.C_Invoice_ID = il.C_Invoice_ID)  INNER JOIN C_OrderLine ol ON (il.C_OrderLine_ID = ol.C_OrderLine_ID) "
				+ " WHERE il.C_OrderLine_ID = ?   AND il.C_Charge_ID = ol.C_Charge_ID AND i.DocStatus IN ('CO','CL') ";
		int count = QueryUtil.getSQLValue(null, sql, C_OrderLine_ID);
		if (count ==0 )
			return true;
		else
			return false;
	}
	
} // VCreateFrom
