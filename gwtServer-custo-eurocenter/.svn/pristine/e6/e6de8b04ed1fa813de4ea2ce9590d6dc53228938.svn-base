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

import java.awt.event.ActionEvent;
import java.beans.*;
import java.math.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.logging.*;

import javax.swing.table.*;

import org.compiere.apps.*;
import org.compiere.common.constants.*;
import org.compiere.grid.ed.*;
import org.compiere.model.*;
import org.compiere.util.*;
import org.compiere.vos.*;

import com.audaxis.compiere.db.Util;

/**
 *  Create Transactions for Bank Statements
 *
 *  @author Jorg Janke
 *  @version  $Id: VCreateFromStatement.java,v 1.2 2006/07/30 00:51:28 jjanke Exp $
 */
public class VCreateFromStatement extends VCreateFrom implements VetoableChangeListener
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static CLogger 	s_log = CLogger.getCLogger (VCreateFromStatement.class);
	
	public static final int POS_CONVERTED_AMOUNT = 7; //ZCOM #32430
	
	/**
	 *  Protected Constructor
	 *  @param mTab MTab
	 */
	VCreateFromStatement(GridTab mTab)
	{
		super (mTab);
		log.info("");
	}   //  VCreateFromStatement

	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	@Override
	protected boolean dynInit() throws Exception
	{
		if (p_mTab.getValue("C_BankStatement_ID") == null)
		{
			ADialog.error(0, this, "SaveErrorRowNotFound");
			return false;
		}

		setTitle(Msg.translate(Env.getCtx(), "C_BankStatement_ID") + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));
		parameterStdPanel.setVisible(false);

		int AD_Column_ID = 4917;        //  C_BankStatement.C_BankAccount_ID
		MLookup lookup = MLookupFactory.get (Env.getCtx(), p_WindowNo, AD_Column_ID, DisplayTypeConstants.TableDir);
		bankAccountField = new VLookup ("C_BankAccount_ID", true, true, true, lookup);
		bankAccountField.addVetoableChangeListener(this);
		//  Set Default
		int C_BankAccount_ID = Env.getCtx().getContextAsInt( p_WindowNo, "C_BankAccount_ID");
		bankAccountField.setValue(new Integer(C_BankAccount_ID));
		//  initial Loading
		loadBankAccount(C_BankAccount_ID);
		PaymentField.addVetoableChangeListener(this); //ZCOM418
		return true;
	}   //  dynInit
	
//	ZCOM418
	public void actionPerformed(ActionEvent e)
	{
		super.actionPerformed(e);		
		//  Order
		if (e.getSource().equals(PaymentField))
		{
			int C_BankAccount_ID = Env.getCtx().getContextAsInt(p_WindowNo, "C_BankAccount_ID");
			loadBankAccount(C_BankAccount_ID);
		}
	}
	
//ZCOM418

	/**
	 *  Init Details (never called)
	 *  @param C_BPartner_ID BPartner
	 */
	@Override
	protected void initBPDetails(int C_BPartner_ID)
	{
	}   //  initDetails

	/**
	 *  Change Listener
	 *  @param e event
	 */
	public void vetoableChange (PropertyChangeEvent e)
	{
		log.config(e.getPropertyName() + "=" + e.getNewValue());

		//  BankAccount
		if (e.getPropertyName() == "C_BankAccount_ID")
		{
			int C_BankAccount_ID = ((Integer)e.getNewValue()).intValue();
			loadBankAccount(C_BankAccount_ID);
		}
		tableChanged(null);
	}   //  vetoableChange

	
    public static String fieldsNRSMatching(int fieldColPos) {
    	switch (fieldColPos) {
    	case 0 : return "10";
    	case 1 : return "3";
    	case 2 : return "1";
    	case 3 : return "12";
    	case 4 : return "6";
    	case 5 : return "5";
    	case 6 : return "7";
    	case 7 : return "8";
    	case 8 : return "11";
    	case 9 : return "9";
    	default: return "-1";
    	}
    	
    	
//		line.add(rs.getTimestamp(1));       //  1-DateTrx
//      line.add(rs.getString(9));			//  2-CheckNo
//		line.add(rs.getBigDecimal(6));      //  3-PayAmt				
//		line.add(rs.getString(11));         //  4-Description //SC836
//		line.add(rs.getString(8));      	//  5-BParner
//      line.add(rs.getString(10));		    //  6- Organistation
    	
    }	
	// SC 745 adding two new parameters : Asc, SortCol
	public static Vector<Vector< Object >> getBankAccountData( Ctx ctx, int C_BankAccount_ID, Timestamp ts , boolean asc, int sortCol )
	{
		Vector<Vector< Object >> data = new Vector< Vector< Object > >();		

		String sql = "SELECT pay.DateAcct,p.C_Payment_ID, p.DocumentNo, p.C_Currency_ID,c.ISO_Code, p.PayAmt," //SC910-DateAcct au lieu de DateTrx
			//ZCOM150 + "currencyConvert(p.PayAmt,p.C_Currency_ID,ba.C_Currency_ID,?,null,p.AD_Client_ID,p.AD_Org_ID),"   //  #1
			+ "currencyConvert(p.PayAmt,p.C_Currency_ID,ba.C_Currency_ID,pay.DateAcct,null,p.AD_Client_ID,p.AD_Org_ID)," //ZCOM150 //ZCOM999 DateAcct //ZCOM1054
			+ " SUBSTR(bp.Name, 0 , 35) "//SC836
			+ ", SUBSTR(p.CheckNo, 0 , 12) " //SC710 //SC836
			+ ", org.name " //SC745
			+ ", SUBSTR(pay.description, 0, 50) " //SC836
			+ ", pay.DueDate " //Redmine 20705
			+ " FROM C_BankAccount ba"
			+ " INNER JOIN C_Payment_v p ON (p.C_BankAccount_ID=ba.C_BankAccount_ID)"
			+ " INNER JOIN C_Payment pay ON (pay.C_Payment_ID=p.C_Payment_ID)" //ZCOM999
			+ " INNER JOIN C_Currency c ON (p.C_Currency_ID=c.C_Currency_ID)"
			+ " LEFT OUTER JOIN C_BPartner bp ON (p.C_BPartner_ID=bp.C_BPartner_ID) "
			+ " LEFT OUTER JOIN AD_ORG org on ( org.AD_ORG_ID = pay.AD_ORG_ID)"
			+ "WHERE p.Processed='Y' AND p.IsReconciled='N'"
			+ " AND p.DocStatus IN ('CO','CL','RE','VO') AND p.PayAmt<>0"
			+ " AND p.C_BankAccount_ID=?"                              	//  #2
			+ " AND NOT EXISTS (SELECT 1 FROM C_BankStatementLine l INNER JOIN C_BankStatement bs USING (C_BankStatement_ID) " //SC1341  
			//Voided Bank Statements have 0 StmtAmt
			+ "WHERE p.C_Payment_ID=l.C_Payment_ID AND l.StmtAmt <> 0 AND bs.AD_Client_ID=p.AD_Client_ID)";		//ZCOM418 //SC1341
	    if (PaymentField.getText() != "")
	    	sql += " AND p.documentno like '%" + PaymentField.getText() + "%'";
	   
	    //SC745
	    if(sortCol < 0) 
	    	//ZCOM418
	    	sql += " ORDER BY 3"; //ZCOM150
	    else{
        	sql = sql + " ORDER BY " + fieldsNRSMatching(sortCol) + (asc ? " asc " : " desc ");
        }
	    
		if (ts == null)
			ts = new Timestamp(System.currentTimeMillis());
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
/*ZCOM150**			pstmt.setTimestamp(1, ts);*/  //ZCOM1054
/*ZCOM150**			pstmt.setInt(2, C_BankAccount_ID);*/   //ZCOM1054
/*ZCOM150*/ 			pstmt.setInt(1, C_BankAccount_ID);			
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       //  0-Selection
				line.add(rs.getString(10));      	//  1-Organization
     			KeyNamePair pp = new KeyNamePair(rs.getInt(2), rs.getString(3));
				line.add(pp);                       //  2-Payment 
/*SC710	*/		line.add(rs.getTimestamp(1));		//  3-DateAcct
				line.add(rs.getTimestamp(12));      //  4-DueDate
				line.add(rs.getBigDecimal(6));      //  5-Amount
				line.add(rs.getString(5));      	//  6-Currency
				line.add(rs.getBigDecimal(POS_CONVERTED_AMOUNT));      //  7-Converted Amount
				line.add(rs.getString(8));      	//  8-BParner
/*SC745 */		line.add(rs.getString(11));		    //  9- Description
				line.add(rs.getString(9));			//  10-CheckNo

				
//				pp = new KeyNamePair(rs.getInt(4), rs.getString(5));//SC836
//				line.add(pp);                       //  5-Currency //SC836
//				line.add(rs.getBigDecimal(7));      //  7-Conv Amt //SC836
				
				data.add(line);
			}
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}finally{
    		Util.closeCursor(pstmt, rs);
    	}
		return data;
		
	}
	
	
	/**
	 *  Load Data - Bank Account
	 *  @param C_BankAccount_ID Bank Account
	 */
	private void loadBankAccount (int C_BankAccount_ID)
	{
		log.config ("C_BankAccount_ID=" + C_BankAccount_ID);
		/**
		 *  Selected        - 0
		 *  Date            - 1
		 *  C_Payment_ID    - 2
		 *  C_Currenncy     - 3
		 *  Amt             - 4
		 */

		//  Get StatementDate
		Timestamp ts = (Timestamp)p_mTab.getValue("StatementDate");
		Vector<Vector< Object >> data = getBankAccountData( Env.getCtx(), C_BankAccount_ID, ts ,false, -1 );		
		
		
		
		//  Header Info
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		for( FieldVO vo : getTableFieldVOs( Env.getCtx() ) )
		{
			columnNames.add( vo.name );
		}

		//  Remove previous listeners
		dataTable.getModel().removeTableModelListener(this);
		//  Set Model
		DefaultTableModel model = new DefaultTableModel(data, columnNames);
		model.addTableModelListener(this);
		dataTable.setModel(model);
		//REDMINE 38999
		dataTable.setColumnClass(0, Boolean.class, false);      //  0-Selection
//		dataTable.setColumnClass(1, String.class, true);     	//  1-Organization
		dataTable.setColumnClass(1, Timestamp.class, true);    	//  1-DateTrx
		dataTable.setColumnClass(2, String.class, true);        //  2-Payment
		dataTable.setColumnClass(3, BigDecimal.class, true);    //  3-Amount
		dataTable.setColumnClass(4, String.class, true);   		//  4-Currency
		dataTable.setColumnClass(5, String.class, true);        //  5-SubPaymentRule
		dataTable.setColumnClass(6, String.class, true);        //  6-BPartner
		dataTable.setColumnClass(7, String.class, true);        //  7-Invoice
		dataTable.setColumnClass(8, String.class, true);        //  8-Description
//		dataTable.setColumnClass(4, Timestamp.class, true);    	//  4-DueDate
		
		
//		dataTable.setColumnClass(POS_CONVERTED_AMOUNT, BigDecimal.class, true);    //  7-Converted Amount
		
//		dataTable.setColumnClass(9, String.class, true);     	// 	9-Description
//		dataTable.setColumnClass(10, String.class, true);       //  10-CheckNo
		

//		dataTable.setColumnClass(5, String.class, true);        //  5-Currency //SC836

//		dataTable.setColumnClass(7, BigDecimal.class, true);    //  7-ConvAmount //SC836

		//  Table UI
		dataTable.autoSize();
		dataTable.setAutoCreateRowSorter(true);
		//REDMINE 38999
		
		// ensure select all button is only available when there is data
		int rows = dataTable.getRowCount();
		selectAllAction.setEnabled(rows > 0);
	}   //  loadBankAccount

	/**
	 *  List total amount
	 */
	@Override
	protected void info()
	{
		DecimalFormat format = DisplayType.getNumberFormat(DisplayTypeConstants.Amount);

		TableModel model = dataTable.getModel();
		BigDecimal total = new BigDecimal(0.0);
		int rows = model.getRowCount();
		int count = 0;
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)model.getValueAt(i, 0)).booleanValue())
			{
				total = total.add((BigDecimal)model.getValueAt(i, 3));
				count++;
			}
		}
		statusBar.setStatusLine(String.valueOf(count) + " - " + Msg.getMsg(Env.getCtx(), "Sum") + "  " + format.format(total));
	}   //  infoStatement

	
	
	
	/**
	 *  Save Statement - Insert Data
	 *  @return true if saved
	 */
	@Override
	protected boolean save()
	{
		log.config("");
		TableModel model = dataTable.getModel();

		//  fixed values
		int C_BankStatement_ID = ((Integer)p_mTab.getValue("C_BankStatement_ID")).intValue();

		return saveData( Env.getCtx(), model, C_BankStatement_ID, null );
	}


	public static boolean saveData( Ctx ctx, TableModel model, int C_BankStatement_ID , Trx trxName)
	{
		int rows = model.getRowCount();
		if (rows == 0)
			return false;

		MBankStatement bs = new MBankStatement (ctx, C_BankStatement_ID, trxName);
		s_log.config(bs.toString());
		
		//  Lines
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)model.getValueAt(i, 0)).booleanValue())
			{
				MBankStatementLine bsl = new MBankStatementLine (bs);

				//ZCOM150 Timestamp trxDate = (Timestamp)model.getValueAt(i, 1);  //  1-DateTrx
				//bsl.setStatementLineDate(trxDate);

				// Payment      
				KeyNamePair pp = (KeyNamePair)model.getValueAt(i, 2);   //  2-C_Payment_ID 
				int C_Payment_ID = pp.getKey();
				MPayment currPay = new MPayment(ctx, C_Payment_ID, null);
				bsl.setPayment(currPay); 
				
				//SC1146
//				bsl.setCheckNo(currPay.getCheckNo());
				
				// Curency from BankStatement
				MBankAccount ba = new MBankAccount(ctx, bs.getC_BankAccount_ID(), null);
				bsl.setC_Currency_ID(ba.getC_Currency_ID());

				// COnverted Amt (in BankAccount Currency)
				//REDMINE 30981   //REDMINE 38999
				BigDecimal amt =  (BigDecimal)model.getValueAt(i, 3); //  7-ConvAmt */ -- //SC710 // review
				bsl.setStmtAmt(amt); 
				bsl.setTrxAmt(amt);
				
				//
				s_log.fine("Line " //ZCOM150Date=" + trxDate
					+ ", Payment=" + C_Payment_ID + ", Currency=" + ba.getC_Currency_ID() + ", Amt=" + amt);
				//	
				
				//ZCOM389
				if (!bsl.save())
					s_log.log(Level.SEVERE, "Line not created #" + i);
			}   //   if selected
		}   //  for all rows
		return true;
	}   //  save
	
	
	public static ArrayList< FieldVO > getTableFieldVOs( Ctx ctx )
	{
		ArrayList< FieldVO > fieldVOs = new ArrayList< FieldVO >();
//		fieldVOs.add( new FieldVO( "AD_Org_ID", Msg.getElement( ctx, "AD_Org_ID" ), DisplayTypeConstants.String ) ); //SC745 //REDMINE 38999
		fieldVOs.add( new FieldVO( "Date", "Date Transaction", DisplayTypeConstants.Date ) ); //REDMINE 38999
		fieldVOs.add( new FieldVO( "C_Payment_ID", Msg.getElement( ctx, "C_Payment_ID" ), DisplayTypeConstants.ID ) );
		
//		fieldVOs.add( new FieldVO( "DueDate", Msg.getElement( ctx, "XDueDate" ), DisplayTypeConstants.Date ) );//Redmine 20705 //REDMINE 38999
		fieldVOs.add( new FieldVO( "Amount", Msg.translate( ctx, "Amount" ), DisplayTypeConstants.Amount ) );
		fieldVOs.add( new FieldVO( "C_Currency_ID", Msg.translate( ctx, "C_Currency_ID" ), DisplayTypeConstants.String ) );
//		fieldVOs.add( new FieldVO( "ConvAmt", Msg.translate( ctx, "ConvertedAmt" ), DisplayTypeConstants.Amount ) ); //REDMINE 38999
//sous method de payment
		fieldVOs.add( new FieldVO( "ZSubPaymentRule_ID", Msg.getElement( ctx, "ZSubPaymentRule_ID" ), DisplayTypeConstants.String ) ); //REDMINE 38999
		
		fieldVOs.add( new FieldVO( "C_BPartner_ID", Msg.getElement( ctx, "C_BPartner_ID" ), DisplayTypeConstants.String ) );
//num facture
		fieldVOs.add( new FieldVO( "C_Invoice_ID", Msg.getElement( ctx, "C_Invoice_ID" ), DisplayTypeConstants.String ) ); //REDMINE 38999
		
		FieldVO descrptVO = new FieldVO( "Description", Msg.getElement( ctx, "Description" ) + "                          ", DisplayTypeConstants.TextLong );
		descrptVO.FieldLength = 50;
		fieldVOs.add( descrptVO );//SC836 //REDMINE 38999 // Redmine 47869
//		fieldVOs.add( new FieldVO( "CheckNo", Msg.getElement( ctx, "CheckNo" ), DisplayTypeConstants.String ) );//SC710	 //REDMINE 38999

//		fieldVOs.add( new FieldVO( "C_Currency_ID", Msg.translate( ctx, "C_Currency_ID" ), DisplayTypeConstants.ID ) ); //SC836 //REDMINE 38999
//		fieldVOs.add( new FieldVO( "ConvertedAmount", Msg.translate( ctx, "ConvertedAmount" ), DisplayTypeConstants.Amount ) ); //SC836 //REDMINE 38999
		
		for( FieldVO f : fieldVOs )
			f.IsReadOnly = true;
		fieldVOs.get( 1 ).IsKey = true;//ZCOM - Redmine 33287
		
			return fieldVOs;  
	}

}   //  VCreateFromStatement
