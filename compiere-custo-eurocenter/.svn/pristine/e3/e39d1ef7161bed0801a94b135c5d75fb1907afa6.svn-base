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

import java.awt.event.*;
import java.beans.*;
import java.math.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;

import javax.swing.table.*;

import org.compiere.common.constants.*;
import org.compiere.model.*;
import org.compiere.util.*;

/**
 *  Create Invoice Transactions from PO Orders or Receipt
 *
 *  @author Jorg Janke
 *  @version  $Id: VCreateFromInvoice.java,v 1.4 2006/07/30 00:51:28 jjanke Exp $
 */
public class VCreateFromInvoice extends VCreateFrom implements VetoableChangeListener
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *  Protected Constructor
	 *  @param mTab MTab
	 */
	VCreateFromInvoice(GridTab mTab)
	{
		super (mTab);
		log.info(mTab.toString());
	}   //  VCreateFromInvoice

	private boolean 	m_actionActive = false;
	private MInOut		m_inout = null;

	/**	Static Logger	*/
	private static CLogger 	s_log = CLogger.getCLogger (VCreateFromInvoice.class);
	
	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	@Override
	protected boolean dynInit() throws Exception
	{
		log.config("");
		setTitle(Msg.getElement(Env.getCtx(), "C_Invoice_ID", false) + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));

		parameterBankPanel.setVisible(false);
		invoiceLabel.setVisible(false);
		invoiceField.setVisible(false);
		locatorLabel.setVisible(false);
		locatorField.setVisible(false);

		initBPartner(true);
		bPartnerField.addVetoableChangeListener(this);
		return true;
	}   //  dynInit

	
	
	/**
	 * Compiere 361
	 * Get list of invoices for a particular business partner
	 * @param ctx
	 * @param C_BPartner_ID
	 * @return
	 */
	public static ArrayList< NamePair > getShipments( Ctx ctx, int C_BPartner_ID )
	{
		ArrayList< NamePair > pairs = new ArrayList< NamePair >();
		
		//DEBUT ZCOM 36073
		/** ZCOM1026
		//	Display
		StringBuffer display = new StringBuffer("s.DocumentNo||' - '||")
			.append(DB.TO_CHAR("s.MovementDate", DisplayTypeConstants.Date, Env.getAD_Language(Env.getCtx())));
		//
		StringBuffer sql = new StringBuffer("SELECT s.M_InOut_ID,").append(display)
			.append(" FROM M_InOut s "
			+ "WHERE s.C_BPartner_ID=? AND s.IsSOTrx='N' AND s.DocStatus IN ('CL','CO')"
			+ " AND s.M_InOut_ID IN "
				+ "(SELECT sl.M_InOut_ID FROM M_InOutLine sl"
				+ " LEFT OUTER JOIN M_MatchInv mi ON (sl.M_InOutLine_ID=mi.M_InOutLine_ID) "
				+ "GROUP BY sl.M_InOut_ID,mi.M_InOutLine_ID,sl.MovementQty "
				+ "HAVING (sl.MovementQty<>SUM(mi.Qty) AND mi.M_InOutLine_ID IS NOT NULL)"
				+ " OR mi.M_InOutLine_ID IS NULL) "
			+ "ORDER BY s.MovementDate");
			
ZCOM1026 */
		
		/** ZCOM1026 */		
		//
		StringBuffer sql1 = new StringBuffer()
		.append(" SELECT ") 
		.append(" DISTINCT io.M_InOut_ID, ") 
		//.append(" io.DocumentNo||' - '||TRIM(TO_CHAR(io.MovementDate,'DD/MM/YYYY'))||' - '||io.PoReference, ")
		//TA
		.append(" o.DocumentNo||' - '||io.DocumentNo||' - '||TRIM(TO_CHAR(io.MovementDate,'DD/MM/YYYY'))||' - '||io.PoReference, o.DocumentNo, ")
		//TA
		.append(" io.DocumentNo ")
		.append(" FROM M_InOut io ")  	
		.append(" 	INNER JOIN M_InOutLine sl ON (io.M_InOut_ID = sl.M_InOut_ID) ")  	
		//TA
		.append(" LEFT OUTER JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = sl.C_OrderLine_ID) ") 
		.append(" LEFT OUTER JOIN C_Order o ON (o.C_Order_ID = ol.C_Order_ID)")
		//TA
		.append(" 	LEFT OUTER JOIN M_Product pro ON (sl.M_Product_ID = pro.M_Product_ID) ")  
		.append(" WHERE io.C_BPartner_ID=? ")  
		.append(" AND 	io.IsSOTrx='N' ")  
		.append(" AND 	io.DocStatus IN ('CL','CO','RE','VO') ")  
		.append(" AND 	NOT (sl.MovementQty = 0 AND pro.producttype = 'S') ")  
		// Not exists a Drafted or Prepared invoice line
		.append(" AND 	NOT EXISTS ( ")
		.append(" 		SELECT 1 FROM C_Invoice i ") 
		.append(" 			INNER JOIN C_InvoiceLine il ON (i.C_Invoice_ID = il.C_Invoice_ID) ")  
		.append(" 		WHERE i.DocStatus NOT IN ('CO','CL','RE','VO') ") 
		.append(" 		AND 	il.M_InOutLine_ID = sl.M_InOutLine_ID ")
		.append(" 		) ")  
		// And Sum of Matched qty is different from Qty to match
		.append(" AND (sl.M_InOutLine_ID IS NULL OR (round(sl.MovementQty,6) <> NVL((Select SUM(round(NVL(mi.Qty,0),6)) FROM M_MatchInv mi WHERE mi.M_InOutLine_ID = sl.M_InOutLine_ID), 0))) ")  
		
		//TA .append(" ORDER BY io.DocumentNo desc ");
		.append(" ORDER BY o.DocumentNo , io.DocumentNo desc ");
		s_log.config(sql1.toString());
/** ZCOM1026 */	
		//FIN ZCOM 36073
		
		MRole role = MRole.get( ctx, ctx.getAD_Role_ID(), ctx.getAD_User_ID(), false );
		String sql = role.addAccessSQL( sql1.toString(), "M_InOut", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO );
  
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx) null);
			pstmt.setInt(1, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				pairs.add( new KeyNamePair( rs.getInt( 1 ), rs.getString( 2 ) ) );
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
		}
		return pairs;
	}
	
	
	
	/**
	 *  Init Details - load receipts not invoiced
	 *  @param C_BPartner_ID BPartner
	 */
	@Override
	protected void initBPDetails(int C_BPartner_ID)
	{
		log.config("C_BPartner_ID" + C_BPartner_ID);

		//  load Shipments (Receipts) - Completed, Closed
		shipmentField.removeActionListener(this);
		shipmentField.removeAllItems();
		//	None
		KeyNamePair pp = new KeyNamePair(0,"");
		shipmentField.addItem(pp);

		ArrayList< NamePair > shipments = getShipments( Env.getCtx(), C_BPartner_ID );
		for( NamePair pair : shipments )
		{
			shipmentField.addItem( pair );
		}
		
		shipmentField.setSelectedIndex(0);
		shipmentField.addActionListener(this);
	}   //  initDetails

	/**
	 *  Action Listener
	 *  @param e event
	 */
	@Override
	public void actionPerformed(ActionEvent e)
	{
		super.actionPerformed(e);
		if (m_actionActive)
			return;
		m_actionActive = true;
		log.config("Action=" + e.getActionCommand());
		//  Order
		if (e.getSource().equals(orderField))
		{
			KeyNamePair pp = (KeyNamePair)orderField.getSelectedItem();
			int C_Order_ID = 0;
			if (pp != null)
				C_Order_ID = pp.getKey();
			//  set Invoice and Shipment to Null
			invoiceField.setSelectedIndex(-1);
			shipmentField.setSelectedIndex(-1);
			loadOrder(C_Order_ID, true);
		}
		//  Shipment
		else if (e.getSource().equals(shipmentField))
		{
			KeyNamePair pp = (KeyNamePair)shipmentField.getSelectedItem();
			int M_InOut_ID = 0;
			if (pp != null)
				M_InOut_ID = pp.getKey();
			//  set Order and Invoice to Null
			orderField.setSelectedIndex(-1);
			invoiceField.setSelectedIndex(-1);
			loadShipment(M_InOut_ID);
		}
		m_actionActive = false;
	}   //  actionPerformed

	/**
	 *  Change Listener
	 *  @param e event
	 */
	public void vetoableChange (PropertyChangeEvent e)
	{
		log.config(e.getPropertyName() + "=" + e.getNewValue());

		//  BPartner - load Order/Invoice/Shipment
		if (e.getPropertyName() == "C_BPartner_ID")
		{
			int C_BPartner_ID = ((Integer)e.getNewValue()).intValue();
			initBPartnerOIS (C_BPartner_ID, true,0);
		}
		tableChanged(null);
	}   //  vetoableChange



	
	/**
	 *  Load Data - Shipment not invoiced
	 *  @param M_InOut_ID InOut
	 */
	private void loadShipment (int M_InOut_ID)
	{
		log.config("M_InOut_ID=" + M_InOut_ID);
		m_inout = new MInOut(Env.getCtx(), M_InOut_ID, null);
		p_order = null;
		if (m_inout.getC_Order_ID() != 0)
			p_order = new MOrder (Env.getCtx(), m_inout.getC_Order_ID(), null);

		Vector<Vector< Object >> data = getShipmentData( Env.getCtx(), M_InOut_ID, null, false );
		//
		loadTableOIS (data);
	}   //  loadShipment

	
	/**
	 * Compiere 361
	 * Get the table data for a particular shipment
	 * 
	 * @param M_InOut_ID
	 * @return
	 */
	public static Vector< Vector< Object > > getShipmentData( Ctx ctx, int M_InOut_ID, String PORef, boolean isDiff_0 )
	{
		
		Vector< Vector< Object > > data = new Vector< Vector< Object > >();
		StringBuffer sql = new StringBuffer( "SELECT " // QtyEntered
				+ "l.MovementQty-SUM(NVL(mi.Qty,0)),l.QtyEntered,l.MovementQty," 
				+ " l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name)," // 4..5
				+ " l.M_Product_ID,p.Name, l.M_InOutLine_ID,l.Line," // 6..9
				+ " l.C_OrderLine_ID,ppo.VENDORPRODUCTNO " ); // 10

		if( Env.isBaseLanguage( ctx, "C_UOM" ) )
		{
			sql.append( "FROM C_UOM uom " ).append( "INNER JOIN M_InOutLine l ON (l.C_UOM_ID=uom.C_UOM_ID) " );
		}
		else
		{
			// nnayak : Fix for bug 1722916
			sql.append( "FROM C_UOM_Trl uom " ).append(
					"INNER JOIN M_InOutLine l ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='" ).append(
					Env.getAD_Language( ctx ) ).append( "')" );
		}
		sql.append(" inner join M_InOut mix on (mix.M_InOut_ID = l.M_InOut_ID ) LEFT OUTER JOIN M_Product_po ppo on (ppo.M_Product_id = l.M_Product_id and ppo.c_BPartner_id = mix.C_BPartner_ID and ISCURRENTVENDOR = 'Y' )");
		sql.append( "INNER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID) " ).append(
				"LEFT OUTER JOIN M_MatchInv mi ON (l.M_InOutLine_ID=mi.M_InOutLine_ID) " );
		if(M_InOut_ID>0)
			sql.append( "WHERE l.M_InOut_ID=? " );
		else if(PORef!=null)
			sql.append( "WHERE exists (select 1 from M_InOut mi where mi.M_InOut_ID = l.M_InOut_ID and mi.POReference = ? ) " );
		sql.append(
						"GROUP BY l.MovementQty,l.QtyEntered,l.MovementQty,l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name),"
								+ "l.M_Product_ID,p.Name, l.M_InOutLine_ID,l.Line,l.C_OrderLine_ID,ppo.VENDORPRODUCTNO  " ).append( "ORDER BY ppo.VENDORPRODUCTNO " );

		try
		{
			PreparedStatement pstmt = DB.prepareStatement( sql.toString(), (Trx) null);
			if(M_InOut_ID>0)
				pstmt.setInt( 1, M_InOut_ID );
			if(PORef!=null)
				pstmt.setString( 1, PORef );
			ResultSet rs = pstmt.executeQuery();
			while( rs.next() )
			{
				BigDecimal qtyMovement = rs.getBigDecimal( 1 );
				BigDecimal qtyEnt = rs.getBigDecimal( 2 );
				BigDecimal qtyMov = rs.getBigDecimal( 3 );
				BigDecimal multiplier = BigDecimal.ZERO;
				if(qtyMov.compareTo(BigDecimal.ZERO) != 0){
					multiplier = qtyEnt.divide(qtyMov,10,BigDecimal.ROUND_HALF_UP);
				}
				BigDecimal qtyEntered = qtyMovement.multiply( multiplier );
				if(isDiff_0 && qtyEntered.equals(Env.ZERO))
					continue;
				Vector< Object > line = new Vector< Object >();
				line.add( Boolean.valueOf( false ) ); // 0-Selection
				line.add( new Double( qtyEntered.doubleValue() ) ); // 1-Qty
				KeyNamePair pp = new KeyNamePair( rs.getInt( 4 ), rs.getString( 5 ).trim() );
				line.add( pp ); // 2-UOM
				pp = new KeyNamePair( rs.getInt( 6 ), rs.getString( 7 ) );
				line.add( pp ); // 3-Product
				line.add(rs.getString("VENDORPRODUCTNO"));
				int C_OrderLine_ID = rs.getInt( 10 );
				if( rs.wasNull() )
					line.add( null ); // 4-Order
				else
					line.add( new KeyNamePair( C_OrderLine_ID, "." ) );
				pp = new KeyNamePair( rs.getInt( 8 ), rs.getString( 9 ) );
				line.add( pp ); // 5-Ship
				line.add( null ); // 6-Invoice
				//Redmine 31908
				line.add(null); // Description
				line.add(null); // DatePromised
				line.add(null); // Réference Commande
				line.add(null); // Référence PO
//				line.add(null); // document
				line.add(null); // Vendor product no
				line.add(null); // Price
				line.add(null); // Line Amount
				//
				data.add( line );
			}
			rs.close();
			pstmt.close();
		}
		catch( SQLException e )
		{
			s_log.log( Level.SEVERE, sql.toString(), e );
		}
		return data;
	}
	
	public static Vector< Vector< Object > > getShipmentData( Ctx ctx, int M_InOut_ID, int BPartner_ID, String PORef, boolean isDiff_0 )
	{
		
		Vector< Vector< Object > > data = new Vector< Vector< Object > >();
		StringBuffer sql = new StringBuffer( "SELECT " // QtyEntered
				+ "l.MovementQty-SUM(NVL(mi.Qty,0)),l.QtyEntered,l.MovementQty," 
				+ " l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name)," // 4..5
				+ " l.M_Product_ID,p.Name, l.M_InOutLine_ID,l.Line," // 6..9
				+ " l.C_OrderLine_ID,ppo.VENDORPRODUCTNO " ); // 10

		if( Env.isBaseLanguage( ctx, "C_UOM" ) )
		{
			sql.append( "FROM C_UOM uom " ).append( "INNER JOIN M_InOutLine l ON (l.C_UOM_ID=uom.C_UOM_ID) " );
		}
		else
		{
			// nnayak : Fix for bug 1722916
			sql.append( "FROM C_UOM_Trl uom " ).append(
					"INNER JOIN M_InOutLine l ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='" ).append(
					Env.getAD_Language( ctx ) ).append( "')" );
		}
		sql.append(" inner join M_InOut mix on (mix.M_InOut_ID = l.M_InOut_ID ) LEFT OUTER JOIN M_Product_po ppo on (ppo.M_Product_id = l.M_Product_id and ppo.c_BPartner_id = mix.C_BPartner_ID and ISCURRENTVENDOR = 'Y' )");
		sql.append( "INNER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID) " ).append(
				"LEFT OUTER JOIN M_MatchInv mi ON (l.M_InOutLine_ID=mi.M_InOutLine_ID) " );
		if(M_InOut_ID>0)
			sql.append( "WHERE l.M_InOut_ID=? " );
		else if(PORef!=null)
			sql.append( "WHERE exists (select 1 from M_InOut mi where mi.M_InOut_ID = l.M_InOut_ID and mi.POReference = ? ) " );
		if(BPartner_ID>0)
			sql.append( " AND mix.C_BPartner_ID = ? ");
		sql.append(
						"GROUP BY l.MovementQty,l.QtyEntered,l.MovementQty,l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name),"
								+ "l.M_Product_ID,p.Name, l.M_InOutLine_ID,l.Line,l.C_OrderLine_ID,ppo.VENDORPRODUCTNO,mix.documentno  " ).append( "ORDER BY mix.DocumentNo, ppo.VENDORPRODUCTNO " );

		try
		{
			PreparedStatement pstmt = DB.prepareStatement( sql.toString(), (Trx) null);
			if(M_InOut_ID>0)
				pstmt.setInt( 1, M_InOut_ID );
			if(PORef!=null)
				pstmt.setString( 1, PORef );
			if(BPartner_ID>0)
				pstmt.setInt(2, BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			while( rs.next() )
			{
				BigDecimal qtyMovement = rs.getBigDecimal( 1 );
				BigDecimal qtyEnt = rs.getBigDecimal( 2 );
				BigDecimal qtyMov = rs.getBigDecimal( 3 );
				BigDecimal multiplier = BigDecimal.ZERO;
				if(qtyMov.compareTo(BigDecimal.ZERO) != 0){
					multiplier = qtyEnt.divide(qtyMov,10,BigDecimal.ROUND_HALF_UP);
				}
				BigDecimal qtyEntered = qtyMovement.multiply( multiplier );
				if(isDiff_0 && qtyEntered.equals(Env.ZERO))
					continue;
				Vector< Object > line = new Vector< Object >();
				line.add( Boolean.valueOf( false ) ); // 0-Selection
				line.add( new Double( qtyEntered.doubleValue() ) ); // 1-Qty
				KeyNamePair pp = new KeyNamePair( rs.getInt( 4 ), rs.getString( 5 ).trim() );
				line.add( pp ); // 2-UOM
				pp = new KeyNamePair( rs.getInt( 6 ), rs.getString( 7 ) );
				line.add( pp ); // 3-Product
				line.add(rs.getString("VENDORPRODUCTNO"));
				int C_OrderLine_ID = rs.getInt( 10 );
				if( rs.wasNull() )
					line.add( null ); // 4-Order
				else
					line.add( new KeyNamePair( C_OrderLine_ID, "." ) );
				pp = new KeyNamePair( rs.getInt( 8 ), rs.getString( 9 ) );
				line.add( pp ); // 5-Ship
				line.add( null ); // 6-Invoice
				//Redmine 31908
				line.add(null); // Description
				line.add(null); // DatePromised
				line.add(null); // Réference Commande
				line.add(null); // Référence PO
//				line.add(null); // document
				line.add(null); // Vendor product no
				line.add(null); // Price
				line.add(null); // Line Amount
				//
				data.add( line );
			}
			rs.close();
			pstmt.close();
		}
		catch( SQLException e )
		{
			s_log.log( Level.SEVERE, sql.toString(), e );
		}
		return data;
	}

	/**
	 * List number of rows selected
	 */
	@Override
	protected void info()
	{
		TableModel model = dataTable.getModel();
		int rows = model.getRowCount();
		int count = 0;
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)model.getValueAt(i, 0)).booleanValue())
				count++;
		}
		statusBar.setStatusLine(String.valueOf(count));
	}   //  infoInvoice

	/**
	 *  Save - Create Invoice Lines
	 *  @return true if saved
	 */
	@Override
	protected boolean save()
	{
		log.config("");
		TableModel model = dataTable.getModel();

		//  Invoice
		int C_Invoice_ID = ((Integer)p_mTab.getValue("C_Invoice_ID")).intValue();

		return saveData( Env.getCtx(), model, p_order, m_inout, C_Invoice_ID, false );

	}		
		
	public static boolean saveData( Ctx ctx, TableModel model, MOrder p_order, MInOut m_inout, int C_Invoice_ID, boolean fromOrderData )
	{
		
		int rows = model.getRowCount();
		if (rows == 0)
			return false;
		
		MInvoice invoice = new MInvoice (ctx, C_Invoice_ID, null);
		s_log.config(invoice.toString());

		if (p_order != null)
		{
			invoice.setOrder(p_order);	//	overwrite header values
			invoice.save();
		}
		if (m_inout != null && m_inout.getM_InOut_ID() != 0 
			&& m_inout.getC_Invoice_ID() == 0)	//	only first time
		{
			m_inout.setC_Invoice_ID(C_Invoice_ID);
			m_inout.save();
		}

		
		//  Lines
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)model.getValueAt(i, 0)).booleanValue())
			{
				//  variable values
				Double d = (Double)model.getValueAt(i, 1);              //  1-Qty
				BigDecimal QtyEntered = new BigDecimal(d.doubleValue());
				KeyNamePair pp = (KeyNamePair)model.getValueAt(i, 2);   //  2-UOM
				int C_UOM_ID = pp.getKey();
				//
				pp = (KeyNamePair)model.getValueAt(i, 3);               //  3-Product
				int M_Product_ID = 0;
				if (pp != null)
					M_Product_ID = pp.getKey();
			//	int C_Charge_ID = 0;
				//
				int C_OrderLine_ID = 0;
				pp = (KeyNamePair)model.getValueAt(i, 5);               //  4-OrderLine
				if (pp != null)
					C_OrderLine_ID = pp.getKey();
				int M_InOutLine_ID = 0;
				if(fromOrderData)
					pp = null;
				else
					pp = (KeyNamePair)model.getValueAt(i, 6);               //  5-Shipment
				if (pp != null)
					M_InOutLine_ID = pp.getKey();
				//	Precision of Qty UOM
				QtyEntered = QtyEntered.setScale(MUOM.getPrecision(ctx, C_UOM_ID), BigDecimal.ROUND_HALF_UP);
				//
				s_log.fine("Line QtyEntered=" + QtyEntered
					+ ", Product_ID=" + M_Product_ID 
					+ ", OrderLine_ID=" + C_OrderLine_ID + ", InOutLine_ID=" + M_InOutLine_ID);

				//	Create new Invoice Line
				MInvoiceLine invoiceLine = new MInvoiceLine (invoice);
				invoiceLine.setM_Product_ID(M_Product_ID, C_UOM_ID);	//	Line UOM
				invoiceLine.setQty(QtyEntered);							//	Invoiced/Entered
			

				//  Info
				MOrderLine orderLine = null;
				if (C_OrderLine_ID != 0)
					orderLine = new MOrderLine (ctx, C_OrderLine_ID, null);
				MInOutLine inoutLine = null;
				if (M_InOutLine_ID != 0)
				{
					inoutLine = new MInOutLine (ctx, M_InOutLine_ID, null);
					if (orderLine == null && inoutLine.getC_OrderLine_ID() != 0)
					{
						C_OrderLine_ID = inoutLine.getC_OrderLine_ID();
						orderLine = new MOrderLine (ctx, C_OrderLine_ID, null);
					}
				}
				else
				{ 
					MInOutLine[] lines = MInOutLine.getOfOrderLine(ctx, 
						C_OrderLine_ID, null, null);
					s_log.fine ("Receipt Lines with OrderLine = #" + lines.length);
					
					if (lines.length > 0)
					{
						for (MInOutLine line : lines) {
							//#Anomalie #91863

							MInOut shipment= new MInOut(ctx,line.getM_InOut_ID(),null);
							s_log.severe("shipment in copying lines"+shipment.getDocStatus());
							if("CO".equals(shipment.getDocStatus())){
								//#Anomalie #91863							
								if (line.getQtyEntered().compareTo(QtyEntered) == 0)
								{
									inoutLine = line;
									M_InOutLine_ID = inoutLine.getM_InOutLine_ID();
									break;
								}
							}
						}
						//#Anomalie #91863
						MInOut shipment= new MInOut(ctx,lines[0].getM_InOut_ID(),null);
						s_log.severe("shipment in copying lines"+shipment.getDocStatus());

						if("CO".equals(shipment.getDocStatus())){
							
						//#Anomalie #91863

						if (inoutLine == null)
						{
							inoutLine = lines[0];	//	first as default
							M_InOutLine_ID = inoutLine.getM_InOutLine_ID();
						}
					}
					}
					


				}	//	get Ship info

				//	Shipment Info
				if (inoutLine != null)
				{
					invoiceLine.setShipLine(inoutLine);		//	overwrites
					
					BigDecimal QtyInvoiced = MUOMConversion.convertProductFrom (ctx, M_Product_ID, 
							invoiceLine.getC_UOM_ID(), QtyEntered);
					if (QtyInvoiced == null)
						QtyInvoiced = QtyEntered;
					
					if (inoutLine.getQtyEntered().compareTo(inoutLine.getMovementQty()) != 0)
						invoiceLine.setQtyInvoiced(QtyInvoiced);
				}
				else
					s_log.fine("No Receipt Line");
					
				//	Order Info
				if (orderLine != null)
				{
					invoiceLine.setOrderLine(orderLine);	//	overwrites
					
					/* nnayak - Bug 1567690. The organization from the Orderline can be different from the organization 
					on the header */
					invoiceLine.setClientOrg(orderLine.getAD_Client_ID(), orderLine.getAD_Org_ID());

					BigDecimal QtyInvoiced = MUOMConversion.convertProductFrom (ctx, M_Product_ID, 
							invoiceLine.getC_UOM_ID(), QtyEntered);
					if (QtyInvoiced == null)
						QtyInvoiced = QtyEntered;
					
					if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
						invoiceLine.setQtyInvoiced(QtyInvoiced);
					
				}
				else
				{
					s_log.fine("No Order Line");
					
					/* nnayak - Bug 1567690. The organization from the Receipt can be different from the organization 
					on the header */
					if(inoutLine != null)
						invoiceLine.setClientOrg(inoutLine.getAD_Client_ID(), inoutLine.getAD_Org_ID());
					
					invoiceLine.setPrice();
					invoiceLine.setTax();
				}
				if (!invoiceLine.save())
					s_log.log(Level.SEVERE, "Line NOT created #" + i);
			}   //   if selected
		}   //  for all rows

		return true;
	}   //  saveInvoice


	/**
	 * Compiere 380
	 * Get list of invoices for a particular business partner
	 * @param ctx
	 * @param C_BPartner_ID
	 * @return
	 */
	public static List< NamePair > getShipments( Ctx ctx, int C_BPartner_ID, int M_PriceList_ID )
	{
		List< NamePair > pairs = new ArrayList< NamePair >();

		//	Display
		StringBuffer display = new StringBuffer("s.DocumentNo||' - '||")
			.append(DB.TO_CHAR("s.MovementDate", DisplayTypeConstants.Date, Env.getAD_Language(Env.getCtx())));
		//
		StringBuffer sql1 = new StringBuffer("SELECT s.M_InOut_ID,").append(display)
		.append(" FROM M_InOut s "
				+ "WHERE s.C_BPartner_ID=? AND s.IsSOTrx='N' AND s.DocStatus IN ('CL','CO') AND s.IsConsigned='N'"
				+ " AND (NOT EXISTS ( SELECT 1 FROM C_Order o, "
						            + " C_OrderLine ol, "
						            + " M_InOutLine inoutLine,"
						            + " M_MatchPO mpo"
						            + " WHERE o.C_Order_ID = ol.C_Order_ID "
						            + " AND inoutLine.M_InOut_ID = s.M_InOut_ID "
						            + " AND mpo.C_OrderLine_ID = ol.C_OrderLine_ID AND mpo.M_InOutLine_ID = inoutLine.M_InOutLine_ID)"
				  + " OR EXISTS (SELECT 1 FROM C_Order o, "
						            + " C_OrderLine ol, "
						            + " M_InOutLine inoutLine,"
						            + " M_MatchPO mpo"
						            + " WHERE o.C_Order_ID = ol.C_Order_ID "
						            + " AND inoutLine.M_InOut_ID = s.M_InOut_ID "
						            + " AND mpo.C_OrderLine_ID = ol.C_OrderLine_ID "
						            + " AND mpo.M_InOutLine_ID = inoutLine.M_InOutLine_ID "
						            + " AND o.M_PriceList_ID = ?)) "
				+ " AND s.M_InOut_ID IN "
				+ "(SELECT sl.M_InOut_ID FROM M_InOutLine sl"
				+ " LEFT OUTER JOIN M_MatchInv mi ON (sl.M_InOutLine_ID=mi.M_InOutLine_ID) "
				+ " WHERE mi.M_InOutLine_ID IS NOT NULL"
				+ " GROUP BY sl.M_InOut_ID,sl.MovementQty"
				+ " HAVING sl.MovementQty<>SUM(mi.Qty) "
				+ " UNION"
				+ " SELECT sl.M_InOut_ID FROM M_InOutLine sl"
				+ " LEFT OUTER JOIN M_MatchInv mi ON (sl.M_InOutLine_ID=mi.M_InOutLine_ID)"
				+ " WHERE mi.M_InOutLine_ID IS NULL"
				+ " GROUP BY sl.M_InOut_ID, sl.MovementQty)"
				+ " ORDER BY s.MovementDate");

		MRole role = MRole.get( ctx, ctx.getAD_Role_ID(), ctx.getAD_User_ID(), false );
		String sql = role.addAccessSQL( sql1.toString(), "M_InOut", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO );
  
		PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx)null);
		ResultSet rs = null;
		try
		{
			pstmt.setInt(1, C_BPartner_ID);
			pstmt.setInt(2, M_PriceList_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector< Vector< Object > > data = getShipmentData(ctx, rs.getInt(1),M_PriceList_ID); //, forInvoice, isReturnTrx);
				if( data !=null && data.size() !=0)
					pairs.add( new KeyNamePair( rs.getInt( 1 ), rs.getString( 2 ) ) );
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
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
	 * Get list of ConsignedTransfer for a particular business partner
	 * @param ctx
	 * @param C_BPartner_ID
	 * @return
	 */
	public static List< NamePair > getConsignedTransfers (Ctx ctx, int C_BPartner_ID, boolean IsReturnTrx, int M_PriceList_ID )
	{
		List< NamePair > pairs = new ArrayList< NamePair >();

		//	Display
		String display = " s.DocumentNo||' - '||"
			           +  DB.TO_CHAR("s.TransferDate", DisplayTypeConstants.Date, Env.getAD_Language(Env.getCtx()));
		//
		String sql1 = " SELECT DISTINCT s.M_ConsignedTransfer_ID, " 
			        +  display
			        + " FROM M_ConsignedTransfer s "
			        + " INNER JOIN M_ConsignedTransferLine line ON (s.M_ConsignedTransfer_ID = line.M_ConsignedTransfer_ID  "
			                                                   + " AND s.DocStatus IN ('CL','CO') "
			                                                   + " AND s.IsReturnTrx = ? )"
			        + " INNER JOIN M_ConsignedTransferLineMA maLine ON (line.M_ConsignedTransferLine_ID = maLine.M_ConsignedTransferLine_ID) "
			        + " INNER JOIN M_InOutLine inoutLine ON (inoutLine.M_InOutLine_ID = maLine.M_InOutLine_ID) "
			        + " INNER JOIN M_InOut inout ON (inout.M_InOut_ID = inoutLine.M_InOut_ID "  
			                                    + " AND inout.C_BPartner_ID = ?  "
			                                    + " AND inout.IsSOTrx='N' )"
				    + " WHERE s.M_ConsignedTransfer_ID IN (SELECT sl.M_ConsignedTransfer_ID "
				                                       + " FROM M_ConsignedTransferLine sl"
					                                   + " LEFT OUTER JOIN M_MatchInv mi ON (sl.M_ConsignedTransferLine_ID=mi.M_ConsignedTransferLine_ID) "
					                                   + "GROUP BY sl.M_ConsignedTransfer_ID, "
					                                           + " mi.M_ConsignedTransferLine_ID, " 
					                                           + " sl.TransferQty "
					                                   + "HAVING (sl.TransferQty<>SUM(mi.Qty) "
					                                      + " AND mi.M_ConsignedTransferLine_ID IS NOT NULL)"
					                                   + " OR mi.M_ConsignedTransferLine_ID IS NULL) "
					+ " AND EXISTS (SELECT 1 FROM M_MatchPO mpo, C_OrderLine ol, C_Order o "
					            + " WHERE mpo.M_InOutLine_ID = inoutLine.M_InOutLine_ID "
					            + " AND mpo.C_OrderLine_ID = ol.C_OrderLine_ID "
					            + " AND ol.C_Order_ID = o.C_Order_ID "
					            + " AND o.M_PriceList_ID = ? ) ";
		
		MRole role = MRole.get( ctx, ctx.getAD_Role_ID(), ctx.getAD_User_ID(), false );
		String sql = role.addAccessSQL( sql1.toString(), "M_ConsignedTransfer", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO );
  
		PreparedStatement pstmt = DB.prepareStatement(sql.toString(), (Trx)null);
		ResultSet rs = null;
		try
		{
			pstmt.setString(1, IsReturnTrx ? "Y" :"N");
			pstmt.setInt(2, C_BPartner_ID);
			pstmt.setInt(3, M_PriceList_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				pairs.add( new KeyNamePair( rs.getInt( 1 ), rs.getString( 2 ) ) );
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
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
	 * Get the table data for a particular shipment
	 * 
	 * @param M_InOut_ID
	 * @return
	 */
	public static Vector< Vector< Object > > getShipmentData( Ctx ctx, int M_InOut_ID, int M_PriceList_ID )
	{
		
		Vector< Vector< Object > > data = new Vector< Vector< Object > >();
		StringBuffer sql = new StringBuffer( "SELECT " // QtyEntered
				+ " l.MovementQty-SUM(COALESCE(mi.Qty,0)),l.QtyEntered,l.MovementQty," 
				+ " l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name)," // 4..5
				+ " l.M_Product_ID,COALESCE(p.Name,c.Name), l.M_InOutLine_ID,l.Line," // 6..9
				+ " l.C_OrderLine_ID, "  // 10
				+ " l.IsDropShip " );

		if( Env.isBaseLanguage( ctx, "C_UOM" ) )
		{
			sql.append( "FROM C_UOM uom " ).append( "INNER JOIN M_InOutLine l ON (l.C_UOM_ID=uom.C_UOM_ID) " );
		}
		else
		{
			// nnayak : Fix for bug 1722916
			sql.append( "FROM C_UOM_Trl uom " ).append(
					"INNER JOIN M_InOutLine l ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='" ).append(
					Env.getAD_Language( ctx ) ).append( "') inner join M_InOut mix on mix.M_InOut_ID = l.M_InOut_ID " );
		}
		sql.append(" LEFT OUTER JOIN M_Product_po ppo on (ppo.M_Product_id = l.M_Product_id and ppo.c_BPartner_id = mix.C_BPartner_ID and ISCURRENTVENDOR = 'Y' )");
		sql.append( "LEFT OUTER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID) "
				+ "LEFT OUTER JOIN C_Charge c ON (c.C_Charge_ID = l.C_Charge_ID) " ).append(
				"LEFT OUTER JOIN M_MatchInv mi ON (l.M_InOutLine_ID=mi.M_InOutLine_ID) " ).append( "WHERE l.M_InOut_ID=? " ) // #1
				.append(" AND (NOT EXISTS ( SELECT 1 FROM C_Order o, "
						            + " C_OrderLine ol, "
						            + " M_MatchPO mpo"
						            + " WHERE o.C_Order_ID = ol.C_Order_ID "
						            + " AND mpo.C_OrderLine_ID = ol.C_OrderLine_ID "
						            + " AND mpo.M_InOutLine_ID = l.M_InOutLine_ID)"
				  + " OR EXISTS (SELECT 1 FROM C_Order o, "
						            + " C_OrderLine ol, "
						            + " M_MatchPO mpo"
						            + " WHERE o.C_Order_ID = ol.C_Order_ID "
						            + " AND mpo.C_OrderLine_ID = ol.C_OrderLine_ID "
						            + " AND mpo.M_InOutLine_ID = l.M_InOutLine_ID "
						            + " AND o.M_PriceList_ID = ?)) ")
				.append(
						"GROUP BY l.MovementQty,l.QtyEntered,l.MovementQty," + "l.C_UOM_ID,COALESCE(uom.UOMSymbol,uom.Name),"
								+ "l.M_Product_ID,COALESCE(p.Name,c.Name), l.M_InOutLine_ID,l.Line,l.C_OrderLine_ID,l.IsDropShip " ).append( "ORDER BY ppo.VENDORPRODUCTNO" );
		
/*		String sql1 = " SELECT SUM(COALESCE(mpo.Qty,0)), o.M_PriceList_ID"
				    + " FROM M_MatchPO mpo "
	    		    + " INNER JOIN C_OrderLine ol ON (ol.C_OrderLine_ID = mpo.C_OrderLine_ID) "
	    		    + " INNER JOIN C_Order o ON (ol.C_Order_ID = o.C_Order_ID) " 
	    		    + " WHERE mpo.M_InOutLine_ID = ? "
	    		    + " GROUP BY o.M_PriceList_ID ";*/

		PreparedStatement pstmt = DB.prepareStatement( sql.toString(), (Trx) null);
//		PreparedStatement pstmt1 = DB.prepareStatement( sql1, (Trx) null);
		ResultSet rs = null;
	//	ResultSet rs1 = null;
		try
		{			
			pstmt.setInt( 1, M_InOut_ID );
			pstmt.setInt(2, M_PriceList_ID);
		//	pstmt.setInt(3, M_PriceList_ID);
			rs = pstmt.executeQuery();
			while( rs.next() )
			{
/*				pstmt1.setInt(1, M_PriceList_ID);
				pstmt1.setInt(2, rs.getInt(8));
				rs1 = pstmt1.executeQuery();
				BigDecimal matchedPOQty = BigDecimal.ZERO;
				BigDecimal matchedtoDiffPL = BigDecimal.ZERO;
				int pL = 0;
				while(rs1.next())
				{
					pL = rs.getInt(2);
					if(pL == M_PriceList_ID)
						matchedPOQty = rs1.getBigDecimal(1);
					else
						matchedtoDiffPL = matchedtoDiffPL.add(rs1.getBigDecimal(1));
				}*/
				
				Vector< Object > line = new Vector< Object >();
				line.add( Boolean.valueOf( false ) ); // 0-Selection
				BigDecimal qtyMovement = rs.getBigDecimal( 1 );
				BigDecimal qtyEnt = rs.getBigDecimal( 2 );
				BigDecimal qtyMov = rs.getBigDecimal( 3 );
				
/*				// Update the Movement Qty if there is matching PO Qty
				if(matchedPOQty != null && matchedPOQty.compareTo(BigDecimal.ZERO) >0)
				{
					qtyMovement = qtyMovement.subtract(qtyMov).add(matchedPOQty);
				}*/
				BigDecimal multiplier = BigDecimal.ZERO;
				if(qtyMov.compareTo(BigDecimal.ZERO) != 0){
					multiplier = qtyEnt.divide(qtyMov,10,BigDecimal.ROUND_HALF_UP);
				}
				BigDecimal qtyEntered = qtyMovement.multiply( multiplier );
				line.add( new Double( qtyEntered.doubleValue() ) ); // 1-Qty
				KeyNamePair pp = new KeyNamePair( rs.getInt( 4 ), rs.getString( 5 ).trim() );
				line.add( pp ); // 2-UOM
				pp = new KeyNamePair( rs.getInt( 6 ), rs.getString( 7 ) );
				line.add( pp ); // 3-Product
				int C_OrderLine_ID = rs.getInt( 10 );
				if( rs.wasNull() )
					line.add( null ); // 4-Order
				else
					line.add( new KeyNamePair( C_OrderLine_ID, "." ) );

				
				pp = new KeyNamePair( rs.getInt( 8 ), rs.getString( 9 ) );
				line.add( pp ); // 5-Ship
				line.add( null ); // 6-Invoice

				//Redmine 31908
				line.add(null); // Description
				line.add(null); // DatePromised
				line.add(null); // Réference Commande
				line.add(null); // Référence PO
//				line.add(null); // document
				line.add(null); // Vendor product no
				line.add(null); // Price
				line.add(null); // Line Amount

				
// THIS BELOW SHOULD BE UNCOMENTED AND MIGRATED				
//				line.add(Boolean.valueOf("Y".equalsIgnoreCase(rs.getString(11))));											// ZCOM999 ??????????

				if (qtyEntered.compareTo(BigDecimal.ZERO)>0 &&  (rs.getInt(6) !=0 || checkCharge(rs.getInt(10))))			// ZCOM999 ??????????
				{																											// ZCOM999 ??????????
					data.add( line );																						// ZCOM999 ??????????
				}																											// ZCOM999 ??????????	
			}
			rs.close();
			pstmt.close();
		}
		catch( SQLException e )
		{
			s_log.log( Level.SEVERE, sql.toString(), e );
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
/*			DB.closeResultSet(rs1);
			DB.closeStatement(pstmt1);*/
		}
		return data;
	}

	/**
	 * Compiere 380
	 * Get the data for the selected Consigned Transfer
	 * @param ctx
	 * @param M_ConsignedTransfer_ID Consigned Transfer Transaction
	 * @param isReturnTrx Return transaction
	 * @param C_BPartner_ID Business Partner
	 * @return Data of the selected Consigned Transfer
	 */
	public static Vector< Vector< Object > > getConsignedOrderData(Ctx ctx, int M_ConsignedTransfer_ID, boolean isReturnTrx,
			int C_BPartner_ID, int M_PriceList_ID)
	{
		String sql =" SELECT  maLine.TransferQty - SUM(NVL(matchInv.Qty,0)), "
					      + " lin.C_UOM_ID, "
					      + " COALESCE(uom.UOMSymbol,uom.Name), "
					      + " lin.M_Product_ID, "
					      + " p.Name, " 
					      + " orderLine.C_OrderLine_ID, "
					      + " orderLine.Line, "
					      + " inoutLine.M_InOutLine_ID, "
					      + " inoutLine.Line, "
					      + " lin.Qty ,"
					      + " lin.TransferQty "
				  + " FROM M_InOutLine inoutLine "
				  + " INNER JOIN M_InOut inout ON (inout.M_InOut_ID = inoutLine.M_InOut_ID "
				                             + " AND inout.C_BPartner_ID = ? )"
				  + " INNER JOIN M_ConsignedTransferLineMA maLine ON (inoutLine.M_InOutLine_ID = maLine.M_InOutLine_ID) "
				  + " INNER JOIN M_ConsignedTransferLine lin ON (lin.M_ConsignedTransferLine_ID = maLine.M_ConsignedTransferLine_ID) "
				  + " INNER JOIN M_ConsignedTransfer conTrf ON (conTrf.M_ConsignedTransfer_ID = lin.M_ConsignedTransfer_ID) "
				  + " INNER JOIN M_Product p ON (lin.M_Product_ID=p.M_Product_ID) "
				  + " INNER JOIN M_MatchPO mPo ON (mPo.M_ConsignedTransferLine_ID = lin.M_ConsignedTransferLine_ID "
				                            + " AND mPo.M_InOutLine_ID = inoutLine.M_InOutLine_ID) "
				  + " INNER JOIN C_OrderLine orderLine ON (orderLine.C_OrderLine_ID = mPo.C_OrderLine_ID )"
				  + " INNER JOIN C_Order o ON (o.C_Order_ID = orderLine.C_Order_ID AND o.M_PriceList_ID = ? ) "
				  + " INNER JOIN C_UOM uom ON (uom.C_UOM_ID = lin.C_UOM_ID ) "
				  + " FULL JOIN M_MatchInv matchInv ON (matchInv.M_InOutLine_ID = inoutLine.M_InOutLine_ID "
				                                    + " AND matchInv.M_ConsignedTransferLine_ID = lin.M_ConsignedTransferLine_ID) "
				  + " INNER JOIN C_DocType dt ON (conTrf.C_DocType_ID = dt.C_DocType_ID "
				                          + " AND dt.DocBaseType='CIT' "
				                          + " AND dt.isReturnTrx = ? ) "
				  + " WHERE conTrf.DocStatus IN ('CO','CL') "
				  + " AND conTrf.M_ConsignedTransfer_ID = ? "
                  + " GROUP BY " 
                  + " maLine.TransferQty, "
                  + " lin.C_UOM_ID, "
			      + " COALESCE(uom.UOMSymbol,uom.Name), "
			      + " lin.M_Product_ID, "
			      + " p.Name, " 
			      + " orderLine.C_OrderLine_ID, "
			      + " orderLine.Line, "
			      + " inoutLine.M_InOutLine_ID, "
			      + " inoutLine.Line,  "
			      + " lin.Qty, "
			      + " lin.TransferQty"
				  + " HAVING  maLine.TransferQty <>SUM(NVL(matchInv.Qty,0))";
		
		Vector<Vector< Object >> data = new Vector<Vector< Object >>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, C_BPartner_ID);
			pstmt.setInt(2,M_PriceList_ID);
			pstmt.setString(3, isReturnTrx ? "Y" :"N");
			pstmt.setInt(4, M_ConsignedTransfer_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(Boolean.valueOf(false));           //  0-Selection
				BigDecimal QtyEntered = rs.getBigDecimal(10);
				BigDecimal QtyTransfer = rs.getBigDecimal(11);
				BigDecimal multiplier = BigDecimal.ONE;
				if(QtyEntered.compareTo(QtyTransfer) !=0 )
					multiplier = QtyEntered.divide(QtyTransfer,10,BigDecimal.ROUND_HALF_UP);
				BigDecimal qty= rs.getBigDecimal(1).multiply(multiplier);
				line.add(new Double(qty.doubleValue()));  //  1-Qty
				KeyNamePair pp = new KeyNamePair(rs.getInt(2), rs.getString(3).trim());
				line.add(pp);                           //  2-UOM
				pp = new KeyNamePair(rs.getInt(4), rs.getString(5));
				line.add(pp);                           //  3-Product
				pp = new KeyNamePair(rs.getInt(6), rs.getString(7));
				line.add(pp);                           //  4-OrderLine
				pp = new KeyNamePair(rs.getInt(8), rs.getString(9));
				line.add(pp);                           //  5-Ship
				line.add(null);                         //  6-Invoice
				line.add(Boolean.valueOf(false));
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
	
}   //  VCreateFromInvoice
