/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
package com.audaxis.compiere.grid;

import java.beans.PropertyChangeEvent;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.event.TableModelEvent;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import org.compiere.apps.ADialog;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.grid.ZCreateFrom;
import org.compiere.model.GridTab;
import org.compiere.model.MDocType;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentAllocate;
import org.compiere.model.MRole;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.FieldVO;

import com.audaxis.compiere.db.Util;


/**
 * Z585
 *
 * Create Payment Allocation from Payment
 *
 * @author jbr
 */
public class ZCreateFromOpenInvoice extends ZCreateFrom
{
	public static final int POS_CONVERTED_AMOUNT = 7; //ZCOM #32434
	
	protected ZCreateFromOpenInvoice(GridTab mTab)
    {
        super(mTab);
    }
	
	public static ArrayList< FieldVO > getTableFieldVOs( Ctx ctx )
	{
		ArrayList< FieldVO > fieldVOs = new ArrayList< FieldVO >();
		
		fieldVOs.add( new FieldVO( "C_Invoice_ID", Msg.translate( ctx, "DocumentNo"), DisplayTypeConstants.String ) );
		//SC595
		fieldVOs.add( new FieldVO( "AD_Org_ID", Msg.translate( ctx, "AD_Org_ID"), DisplayTypeConstants.String ) );
		//SC595
		fieldVOs.add( new FieldVO( "POReference", Msg.translate( ctx, "C_Invoice_ID"), DisplayTypeConstants.String ) );
		fieldVOs.add( new FieldVO( "DateInvoiced", Msg.translate( ctx, "DateInvoiced"), DisplayTypeConstants.Date ) );
		/**#5259 */fieldVOs.add( new FieldVO( "DueDate", Msg.translate( ctx, "DueDate"), DisplayTypeConstants.Date ) );
		fieldVOs.add( new FieldVO( "C_Currency_ID", Msg.translate( ctx, "C_Currency_ID"), DisplayTypeConstants.String ) );
		fieldVOs.add( new FieldVO( "Open", Msg.translate( ctx, "Open"), DisplayTypeConstants.Amount ) );
		fieldVOs.add( new FieldVO( "Amount", Msg.translate( ctx, "Amount"), DisplayTypeConstants.Amount ) );
		fieldVOs.add( new FieldVO( "ConvertedAmount", Msg.translate( ctx, "ConvertedAmount"), DisplayTypeConstants.Amount ) );
		fieldVOs.add( new FieldVO( "DiscountAmount", Msg.translate( ctx, "DiscountAmt"), DisplayTypeConstants.Amount ) );
		fieldVOs.add( new FieldVO( "Description", Msg.translate( ctx, "Description"), DisplayTypeConstants.String ) );
		
		
		for( FieldVO f : fieldVOs )
			f.IsReadOnly = true;
		
		fieldVOs.get(0).IsKey = true;
		
		return fieldVOs;
	}

    public static Vector<Vector<Object>> getData(Ctx ctx, int C_Payment_ID, boolean asc, int sortCol) {
    	
    	MPayment payment = new MPayment(ctx, C_Payment_ID, null);
        MDocType docType = new MDocType(ctx, payment.getC_DocType_ID(), null);
        boolean isSoTrx = docType.isSOTrx();
    	
    	Vector<Vector<Object>> data = new Vector<Vector<Object>>();
    	
        String sql = "SELECT i.C_Invoice_ID, i.DateInvoiced, i.DocumentNo, (SELECT c.ISO_Code FROM C_Currency c WHERE c.C_Currency_ID=i.C_Currency_ID), ";
        sql = sql + "invoiceOpen(i.C_Invoice_ID, i.C_InvoicePaySchedule_ID)  -  ";
        sql = sql + "     nvl( ( select pa.amount from c_paymentallocate pa where pa.c_invoice_id = i.c_invoice_id   ";
        sql = sql + "and pa.c_payment_id = ? ";
        sql = sql + " ) ,0), ";
        sql = sql + "i.GrandTotal,	currencyBase(i.GrandTotal, i.C_Currency_ID, i.DateAcct, i.AD_Client_ID, i.AD_Org_ID), ";
        //SC595
        //sql = sql + "i.IsSOTrx, i.Description, i.POReference, '',i.C_InvoicePaySchedule_ID ";
        sql = sql + "i.IsSOTrx, i.Description, i.POReference, '',i.C_InvoicePaySchedule_ID, org.Name ";
        /**#5259 */ sql = sql + " , Z_Invoice_DateDue(i.C_invoice_ID) ";
        /**#escompte */ sql = sql + " , (SELECT escompte2 FROM C_Invoice inv WHERE inv.C_Invoice_ID=i.C_Invoice_ID) ";
        //sql = sql + "FROM  C_Invoice_v i WHERE i.IsActive='Y' AND i.DocStatus IN ('CO','CL','RE','VO') AND i.IsPaid='N' AND i.IsInDispute = 'N'";
        sql = sql + "FROM  C_Invoice_v i INNER JOIN AD_Org org ON (i.AD_Org_ID=org.AD_Org_ID)";
        sql = sql + " WHERE i.IsActive='Y' AND i.DocStatus IN ('CO','CL','RE','VO') AND i.IsPaid='N' AND i.IsInDispute = 'N'";
        //SC595
        sql = sql + " AND i.C_BPartner_ID= ? ";

        if (isSoTrx)
        {
            sql = sql + "AND i.isSoTrx = 'Y' ";
        }
        else
        {
            sql = sql + "AND i.isSoTrx = 'N' ";
        }

        sql = sql + "AND i.C_invoice_id not in (select c_invoice_id from c_paymentallocate where c_payment_id = ?) ";
        sql = sql + "AND i.C_Currency_id in (select c_currency_id from c_payment where c_payment_id = ?) ";

        //Debut #4220 : [SUP] Facture reprise dans sélection ne doit pas apparaître dans liste facture ouvertes au paiement
        sql = sql + "AND not exists (SELECT 1 from C_PaySelectionLine sl inner join c_PaySelection s on s.c_payselection_id = sl.c_payselection_id where s.isactive = 'Y' and sl.C_INVOICE_ID = i.C_Invoice_ID and sl.isActive = 'Y' and s.processed <> 'Y') ";
        //Fin #4220 : [SUP] Facture reprise dans sélection ne doit pas apparaître dans liste facture ouvertes au paiement
        
        sql = sql + "AND i.AD_CLIENT_ID= ? ";//ZCOM COR 143
        
        int AD_Role_ID = ctx.getAD_Role_ID();
		int AD_User_ID = ctx.getAD_User_ID();
		MRole role = MRole.get( ctx, AD_Role_ID, AD_User_ID, false );
		sql = role.addAccessSQL( sql, "C_Invoice_v", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO );
        
        if(sortCol < 0)
        	sql = sql + "ORDER BY 2,3,4 ";
        else {
        	
        	sql = sql + "ORDER BY " + fieldsNRSMatching(sortCol) + (asc ? " asc " : " desc ");
        }

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try
        {
            pstmt = DB.prepareStatement(sql.toString(), null);
            pstmt.setInt(1, C_Payment_ID);
            pstmt.setInt(2, payment.getC_BPartner_ID());
            pstmt.setInt(3, C_Payment_ID);
            pstmt.setInt(4, C_Payment_ID);
            pstmt.setInt(5, ctx.getAD_Client_ID()); //ZCOM COR 143
            rs = pstmt.executeQuery();

            while (rs.next())
            {
            	BigDecimal open = rs.getBigDecimal(5);
            	//SC595
            	//Vector<Object> line = new Vector<Object>(11);
            	/**#5259 */Vector<Object> line = new Vector<Object>(13);
                //SC595
                
                line.add(new Boolean(false)); 	// 0 - Selection
                KeyNamePair kp = new KeyNamePair(rs.getInt(1), rs.getString(3));
                line.add(kp); 					// 1 - C_invoice_id
                //SC595
                line.add(rs.getString(13));		// 2 - Org
                //SC595
                line.add(rs.getString(10)); 	// 3 - Poref
                line.add(rs.getTimestamp(2)); 	// 4 - Date Inv
                /**#5259 */line.add(rs.getTimestamp(14)); // 5 - DueDate  
                line.add(rs.getString(4)); 		// 6 - Curr
                line.add(rs.getBigDecimal(5)); 	// 7 - Open
                line.add(rs.getBigDecimal(6)); 	// 8 - Convert
                line.add(rs.getBigDecimal(7)); 	// 9 - Inv.Total
                /**#escompte */line.add(rs.getBigDecimal(15)); // 10 - Escompte  
                line.add(rs.getString(9)); 		// 11 - Desc
                
                if (Env.ZERO.compareTo(open) != 0)
                	data.add(line);
            }
        } catch (SQLException e) {
            s_log.log(Level.SEVERE, "load", e);
        } finally {
        	Util.closeCursor(pstmt, rs);
        }
        return data;

    }
    
    public static int fieldsNRSMatching(int fieldColPos) {
    	
    	switch (fieldColPos) {
    	case 0 : return 3;
    	case 1 : return 13;
    	case 2 : return 10;
    	case 3 : return 2;
    	case 4 : return 14;
    	case 5 : return 4;
    	case 6 : return 5;
    	case 7 : return 6;
    	case 8 : return 7;
    	case 9 : return 14;
    	case 10 : return 9;
    	default: return -1;
    	}
    	
    }
    
    public static boolean saveData(Ctx ctx, TableModel model, int C_Payment_ID) {
        
        String trxName = "ZCFOI";
        Trx tr = Trx.get(trxName);
        BigDecimal totAlloc = Env.ZERO;
        BigDecimal totAmt = Env.ZERO;

    	MPayment payment = new MPayment(ctx, C_Payment_ID, tr);
    	

        for (int i = 0; i < model.getRowCount(); i++)
        {
            if (((Boolean) model.getValueAt(i, 0)).booleanValue())
            {
                MPaymentAllocate payAllocate = new MPaymentAllocate(ctx, 0, tr);
                payAllocate.setC_Payment_ID(payment.getC_Payment_ID()); //	Parent
                KeyNamePair kp = (KeyNamePair) model.getValueAt(i, 1);
                int C_Invoice_ID = kp.getKey();
                payAllocate.setC_Invoice_ID(C_Invoice_ID);
                //BigDecimal invoiceOpenAmt = (BigDecimal) model.getValueAt(i, 5); // std
                //BigDecimal invoiceOpenAmt = (BigDecimal) model.getValueAt(i, 6); // SC595
                BigDecimal invoiceOpenAmt = (BigDecimal) model.getValueAt(i, 7); // #5259
				if (invoiceOpenAmt == null)
					invoiceOpenAmt = Env.ZERO;
                BigDecimal DiscountAmt = (BigDecimal) model.getValueAt(i, 10);
				if (DiscountAmt == null)
					DiscountAmt = Env.ZERO;
                
				payAllocate.setAmount(invoiceOpenAmt.subtract(DiscountAmt));
                payAllocate.setDiscountAmt(DiscountAmt);
                payAllocate.setOverUnderAmt(Env.ZERO);
                payAllocate.setWriteOffAmt(Env.ZERO);
                payAllocate.setInvoiceAmt(invoiceOpenAmt);
                payAllocate.setAD_Org_ID(payment.getAD_Org_ID());
// NO               totAlloc = totAlloc.add(invoiceOpenAmt);

                payAllocate.save();
            }
        }

        String sql = "SELECT SUM(Amount) FROM C_PaymentAllocate WHERE iSActive = 'Y' AND C_Payment_ID=?";
        PreparedStatement pstmt = DB.prepareStatement(sql.toString(), tr);

        try
        {
            pstmt.setInt(1, payment.getC_Payment_ID());

            ResultSet rs = pstmt.executeQuery();

            try {
				if (rs.next())
				{
				    totAmt = rs.getBigDecimal(1);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
	        	Util.closeCursor(pstmt, rs);
	        }

            rs.close();
            pstmt.close();
        }
        catch (SQLException e)
        {
            s_log.log(Level.SEVERE, "load", e);
        }

        //	No Invoice
        if (totAmt == null)
        {
            totAmt = Env.ZERO;
        }

        payment.setPayAmt(totAmt.add(totAlloc));
        payment.save();
        
        tr.commit();
        tr.close();

        return true;
    }
    
    protected boolean dynInit() throws Exception
    {
        if (p_mTab.getValue("C_Payment_ID") == null)
        {
            ADialog.error(0, this, "SaveErrorRowNotFound");
            return false;
        }
        
        setTitle(Msg.translate(Env.getCtx(), "C_Payment_ID") + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));
        parameterStdPanel.setVisible(false);

        loadData();

        return true;
    }

    protected void loadData()
    {
    	//SC595
		//Vector<String> columnNames = new Vector<String>(9);
    	Vector<String> columnNames = new Vector<String>(10);
		//SC595
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		for( FieldVO vo : getTableFieldVOs( Env.getCtx() ) )
		{
			columnNames.add( vo.name );
		}

        int C_Payment_ID = ((Integer) p_mTab.getValue("C_Payment_ID")).intValue();

        dataTable.getModel().removeTableModelListener(this);
        
        Vector<Vector<Object>> data = getData(Env.getCtx(), C_Payment_ID, false, -1);
        DefaultTableModel model = new DefaultTableModel(data, columnNames);
        model.addTableModelListener(this);
        dataTable.setModel(model);

        dataTable.setColumnClass(0, Boolean.class, false);
        //SC595
        dataTable.setColumnClass(1, String.class, true);
        //SC595
        dataTable.setColumnClass(2, String.class, true);
        dataTable.setColumnClass(3, String.class, true);
        dataTable.setColumnClass(4, Timestamp.class, true);
        /**#5259 
        dataTable.setColumnClass(5, String.class, true);
        dataTable.setColumnClass(6, BigDecimal.class, true);
        dataTable.setColumnClass(7, BigDecimal.class, true);
        dataTable.setColumnClass(8, BigDecimal.class, true);
        dataTable.setColumnClass(9, String.class, true);
        */
        dataTable.setColumnClass(5, Timestamp.class, true); 	/**#5259 */
        dataTable.setColumnClass(6, String.class, true);		/**#5259 */
        dataTable.setColumnClass(7, BigDecimal.class, true);	/**#5259 */
        dataTable.setColumnClass(8, BigDecimal.class, true);	/**#5259 */
        dataTable.setColumnClass(9, BigDecimal.class, true);	/**#5259 */
        dataTable.setColumnClass(10, String.class, true);		/**#5259 */
        
        dataTable.autoSize();
    }
    
    /**
     *  Quand on clique OK on arrive ici
     *
     *  @return true if saved
     */
    protected boolean save()
    {
        TableModel model = dataTable.getModel();
        int rows = model.getRowCount();

        if (rows == 0)
        {
            return false;
        }
        
        int C_Payment_ID = ((Integer) p_mTab.getValue("C_Payment_ID")).intValue();
        return saveData( Env.getCtx(), model, C_Payment_ID);
    }
    
    protected void info()
    {
        TableModel model = dataTable.getModel();
        int rows = model.getRowCount();
        int count = 0;
        BigDecimal totalSelect = Env.ZERO;
        BigDecimal solde = Env.ZERO;
        BigDecimal allocated = Env.ZERO;

        for (int i = 0; i < rows; i++)
        {
            if (((Boolean) model.getValueAt(i, 0)).booleanValue())
            {
                count++;
                //totalSelect = totalSelect.add((BigDecimal) model.getValueAt(i, 5)); // std
                //totalSelect = totalSelect.add((BigDecimal) model.getValueAt(i, 6)); // SC595
                totalSelect = totalSelect.add((BigDecimal) model.getValueAt(i, 7)); // #5259
            }
        }

        MPayment payment = new MPayment(Env.getCtx(), ((Integer) p_mTab.getValue("C_Payment_ID")).intValue(), null);
        allocated = getAllocatedAmt(Env.getCtx(), payment.getC_Payment_ID());//ZCOM 32434


        solde = payment.getPayAmt().subtract(totalSelect.add(allocated));
        statusBar.setStatusLine("Nbr Ln:" 
        	+ String.valueOf(count) 
        	+ " - Tot.Sel:" 
        	+ String.valueOf(totalSelect) 
        	+ " - Solde:" 
        	+ String.valueOf(solde));

        if (confirmPanel != null)
        {
            if (solde.compareTo(Env.ZERO) == 0)
            {
                confirmPanel.setOKVisible(true);
            }
            else
            {
                confirmPanel.setOKVisible(false);
            }
        }
    }
    
    public void vetoableChange(PropertyChangeEvent e)
    {
        super.vetoableChange(e);
    }

    public void tableChanged(TableModelEvent e)
    {
        super.tableChanged(e);
    }
    
    //ZCOM #32434
    public static BigDecimal getAllocatedAmt(Ctx ctx, int c_payment_id){
    	BigDecimal allocated = Env.ZERO;
        MPayment payment = new MPayment(Env.getCtx(), c_payment_id, null);

        String sql = "SELECT SUM(Amount) from c_paymentallocate WHERE C_Payment_ID=? AND IsActive='Y' ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = DB.prepareStatement(sql, null);
            pstmt.setInt(1, payment.getC_Payment_ID());

            rs = pstmt.executeQuery();

            if (rs.next()) {
                allocated = rs.getBigDecimal(1);
            }

        }
        catch (Exception e) {
        	s_log.log(Level.SEVERE, "getAllocatedAmt", e);
        }
        finally {
        	Util.closeCursor(pstmt, rs);
        }

        if (allocated == null) {
            allocated = Env.ZERO;
        }
        
        return allocated;
    }

}
