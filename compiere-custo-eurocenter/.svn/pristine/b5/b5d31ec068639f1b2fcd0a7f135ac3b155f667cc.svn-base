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

import java.awt.GridBagConstraints;
import java.awt.Insets;
import java.beans.PropertyChangeEvent;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.BorderFactory;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.event.TableModelEvent;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import org.compiere.apps.ADialog;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.grid.ZCreateFrom;
import org.compiere.grid.ed.VLookup;
import org.compiere.model.GridTab;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MPayment;
import org.compiere.model.MRole;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.UtilExtended;
import org.compiere.vos.FieldVO;

import com.audaxis.compiere.model.MCheckDelivery;
import com.audaxis.compiere.model.MCheckDeliveryLine;
import com.audaxis.compiere.msg.GlobalMessage;


/**
 * Z585
 *
 * Create Check Delivery from Payments
 *
 * @author jbr
 */
public class ZCreateFromOpenPayment extends ZCreateFrom
{

	protected VLookup bankAccountField;
	private JLabel bankAccountLabel;	
	
	protected ZCreateFromOpenPayment(GridTab mTab)
    {
        super(mTab);
    }
	
	public static ArrayList< FieldVO > getTableFieldVOs( Ctx ctx )
	{    //39009 Transfert cheque et financement
		ArrayList< FieldVO > fieldVOs = new ArrayList< FieldVO >();
		fieldVOs.add( new FieldVO( "DateTrx", Msg.translate( ctx, "DateTrx"), DisplayTypeConstants.Date ) );
		fieldVOs.add( new FieldVO( "C_Payment_ID", Msg.translate( ctx, "DocumentNo"), DisplayTypeConstants.String ) );
		fieldVOs.add( new FieldVO( "Amount", Msg.translate( ctx, "Amount"), DisplayTypeConstants.Amount ) );
		fieldVOs.add( new FieldVO( "ZSubPaymentRule_ID", Msg.translate( ctx, "ZSubPaymentRule_ID"), DisplayTypeConstants.String ) );
		fieldVOs.add( new FieldVO( "Name", Msg.translate( ctx, "Name"), DisplayTypeConstants.String ) );
		fieldVOs.add( new FieldVO( "DueDate", Msg.translate( ctx, "DueDate"), DisplayTypeConstants.Date ) );
		fieldVOs.add( new FieldVO( "AccountNo", Msg.translate( ctx, "AccountNo"), DisplayTypeConstants.String ) );
		
		//fieldVOs.add( new FieldVO( "ConvertedAmount", Msg.translate( ctx, "ConvertedAmount"), DisplayTypeConstants.Amount ) );
		
		for( FieldVO f : fieldVOs )
			f.IsReadOnly = true;
		
		//fieldVOs.get(0).IsKey = true;
		
		return fieldVOs;
	}

    public static Vector<Vector<Object>> getData(Ctx ctx, int Z_CheckDelivery_ID, int C_BankAccount_ID, boolean asc, int sortCol) {
    	
    	MCheckDelivery cd = new MCheckDelivery(ctx, Z_CheckDelivery_ID, null);
    	int ZSubPaymentRule_ID = cd.get_ValueAsInt("ZSubPaymentRule_ID");
    	int C_Currency_ID = cd.get_ValueAsInt("C_Currency_ID");
    	if (C_BankAccount_ID == 0)
    		C_BankAccount_ID=cd.getC_BankAccount_ID();
    	
    	
        Vector<Vector<Object>> data = new Vector<Vector<Object>>();
        String sql = "SELECT   (select name from c_bpartner bp where bp.C_Bpartner_id = p.C_Bpartner_id ) , ";
        sql = sql + "p.C_Payment_ID, p.DateTrx, p.DocumentNo, (SELECT ISO_Code FROM C_Currency c WHERE c.C_Currency_ID=p.C_Currency_ID), ";
        sql = sql + "p.PayAmt, ";
        sql = sql + "currencyBase(p.PayAmt, p.C_Currency_ID, p.DateAcct, p.AD_Client_ID, p.AD_Org_ID), ";
        sql = sql + "p.Description, c_bpartner_id, ";
        sql = sql + " (select ba.AccountNo from C_BankAccount ba Where ba.C_BankAccount_ID = p.C_BankAccount_ID )  ";
        sql = sql + " , p.dueDate,zs.name ";
        sql = sql + "FROM  C_Payment p ";
        sql = sql + "INNER JOIN  ZSubPaymentRule zs ON zs.ZSubPaymentRule_ID=p.ZSubPaymentRule_ID ";
        sql = sql + "WHERE p.IsActive='Y' AND p.DocStatus IN ('CO','CL') "; //ZCOM908
        sql = sql + "AND p.payamt > 0 "; //ZCOM908
        sql = sql + "AND isreconciled = 'N' ";
        sql = sql + "AND p.C_Payment_ID not in ( select  dl.C_Payment_ID FROM Z_CheckDeliveryLine dl WHERE p.C_Payment_ID = dl.C_Payment_ID ) ";
        if(ZSubPaymentRule_ID >0)
        {
        	sql = sql + "AND p.ZSubPaymentRule_ID = ? ";
        }
        if(C_Currency_ID >0)
        {
        	   sql = sql + "AND p.C_Currency_id = ? ";
        }
        if(C_BankAccount_ID >0)
        {
        	sql = sql + " AND (p.C_BankAccount_ID = ? or p.C_BankAccount_ID IN (SELECT ba.C_BankAccount_ID FROM C_BankAccount ba WHERE ba.AD_Client_ID=p.AD_Client_ID AND ba.BankAccountType='P')) "; // #31374
        }

        sql = sql + " AND p.AD_CLIENT_ID= ? ";//ZCOM COR 143

        // #31374
		MRole role = MRole.get( ctx, ctx.getAD_Role_ID(), ctx.getAD_User_ID(), false );
		sql = role.addAccessSQL( sql, "C_Payment", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO );
		//
		
        if(sortCol < 0)
        	sql = sql + " ORDER BY 1,3,4 ";
        else {
        	sql = sql + " ORDER BY " + fieldsNRSMatching(sortCol) + (asc ? " asc " : " desc ");
        }

        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try
        {
            pstmt = DB.prepareStatement(sql, null);
            int k = 1;
            if(ZSubPaymentRule_ID >0)
            {
            	pstmt.setInt(k++,ZSubPaymentRule_ID);
            }
            if(C_Currency_ID >0)
            {
            	pstmt.setInt(k++,C_Currency_ID);
            }
            if(C_BankAccount_ID >0)
            {
            	pstmt.setInt(k++,C_BankAccount_ID);
            }
            
            pstmt.setInt(k++, ctx.getAD_Client_ID()); //ZCOM COR 143
            
            rs = pstmt.executeQuery();

            while (rs.next())
            {
                Vector<Object> line = new Vector<Object>();
                line.add(new Boolean(false)); // Selection
                KeyNamePair kp = new KeyNamePair(rs.getInt(2), rs.getString(4));
                line.add(rs.getTimestamp(3)); // Date Trx
                line.add(kp); // Doc
                line.add(rs.getBigDecimal(6)); // PayAmt
                line.add(rs.getString(12)); // Sous méthode 
                line.add(rs.getString(1)); // BPartner
                line.add(rs.getTimestamp(11)); // due date
                line.add(rs.getString(10)); // BankAcct
//                line.add(rs.getBigDecimal(7)); // Base Amt

                data.add(line);
            }

        }
        catch (SQLException e)
        {
            s_log.log(Level.SEVERE, "load", e);
        }
        finally
        {
        	UtilExtended.closeCursor(pstmt, rs);
        }

        	
        return data;
    }
    
    public static int fieldsNRSMatching(int fieldColPos) {
    	
    	switch (fieldColPos) {
    	case 0 : return 4;
    	case 1 : return 1;
    	case 2 : return 10;
    	case 3 : return 3;
    	case 4 : return 11;
    	case 5 : return 6;
    	case 6 : return 7;
    	default: return -1;
    	}
    	
    }
    
    public static boolean saveData(Ctx ctx, TableModel model, int Z_CheckDelivery_ID){
        MCheckDelivery checkDel = new MCheckDelivery(ctx, Z_CheckDelivery_ID, null);
        String trxName = "ZCFOP";
        Trx tr = Trx.get(trxName);

        for (int i = 0; i < model.getRowCount(); i++)
        {
            if (((Boolean) model.getValueAt(i, 0)).booleanValue())
            {
            	MCheckDeliveryLine checkDelLine = new MCheckDeliveryLine(ctx, 0, tr);
                checkDelLine.setZ_CheckDelivery_ID(checkDel.getZ_CheckDelivery_ID());
                KeyNamePair knp = (KeyNamePair)model.getValueAt(i, 2);
                int C_Payment_ID = knp.getKey();
                MPayment payment = new MPayment(ctx, C_Payment_ID, tr);
                checkDelLine.setC_Payment_ID(C_Payment_ID);
                checkDelLine.setC_BPartner_ID(payment.getC_BPartner_ID());
                checkDelLine.setTrxAmt((BigDecimal) model.getValueAt(i, 3));

                checkDelLine.save(tr);
            }
        }

        tr.commit();
        tr.close();

        return true;
    }
    
    protected boolean dynInit() throws Exception
    {
        log.config("dynInit");

        if (p_mTab.getValue("Z_CheckDelivery_ID") == null)
        {
            ADialog.error(0, this, "SaveErrorRowNotFound");

            return false;
        }

        setTitle(Msg.translate(Env.getCtx(), "Z_CheckDelivery_ID") + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));
        this.setSize(800, 480);
        parameterStdPanel.setVisible(false);

        
		int AD_Column_ID = 4917;        //  C_BankStatement.C_BankAccount_ID
		if (GlobalMessage.isAllBank()) { //ZCOM999 C048
			bankAccountLabel = new JLabel();
			bankAccountLabel.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));

			MLookup lookup = MLookupFactory.get (Env.getCtx(), p_WindowNo, AD_Column_ID, DisplayTypeConstants.TableDir);
			bankAccountField = new VLookup ("C_BankAccount_ID", false, false, true, lookup);
			bankAccountField.addVetoableChangeListener(this);
			
			parameterStdPanel.add(bankAccountLabel);
			parameterStdPanel.add(bankAccountField);
			parameterStdPanel.setVisible(true);
			
			bankAccountLabel.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
			parameterStdPanel.setBorder(BorderFactory.createEmptyBorder(5, 5, 5, 5));
			
		} //ZCOM999 C048
		//  Set Default
		
		//int C_BankAccount_ID = Env.getCtx().getContextAsInt( p_WindowNo, "C_BankAccount_ID");  // Defautlt Bank from ZCheckDelivery 
		int C_BankAccount_ID = 0;     /// Default all bank
		
        loadData(C_BankAccount_ID);

        return true;
    }

    protected void loadData(int C_BankAccount_ID)
    {
		Vector<String> columnNames = new Vector<String>();
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		for( FieldVO vo : getTableFieldVOs( Env.getCtx() ) )
		{
			columnNames.add( vo.name );
		}

        int Z_CheckDelivery_ID= 0;
        if( p_mTab.getValue("Z_CheckDelivery_ID") != null)
        	Z_CheckDelivery_ID =  ((Integer) p_mTab.getValue("Z_CheckDelivery_ID")).intValue();
        
        dataTable.getModel().removeTableModelListener(this);

        Vector<Vector<Object>> data = getData(Env.getCtx(), Z_CheckDelivery_ID, C_BankAccount_ID, false, -1);
        DefaultTableModel model = new DefaultTableModel(data, columnNames);
        model.addTableModelListener(this);
        dataTable.setModel(model);
        
        dataTable.setColumnClass(0, Boolean.class, false);
        dataTable.setColumnClass(1, Timestamp.class, true);
        dataTable.setColumnClass(2, String.class, true);
        dataTable.setColumnClass(3, BigDecimal.class, true);
        dataTable.setColumnClass(4, String.class, true);
        dataTable.setColumnClass(5, String.class, true);
        dataTable.setColumnClass(6, Timestamp.class, true);
        dataTable.setColumnClass(7, String.class, true);
    
        dataTable.autoSize();
    }
    
    protected boolean save()
    {
        TableModel model = dataTable.getModel();
        int rows = model.getRowCount();

        if (rows == 0)
        {
            return false;
        }

        int Z_CheckDelivery_ID = ((Integer) p_mTab.getValue("Z_CheckDelivery_ID")).intValue();
        
        return saveData(Env.getCtx(), model, Z_CheckDelivery_ID);
    }

    protected void info()
    {
        TableModel model = dataTable.getModel();
        int rows = model.getRowCount();
        int count = 0;
        BigDecimal totalSelect = Env.ZERO;

        for (int i = 0; i < rows; i++)
        {
            if (((Boolean) model.getValueAt(i, 0)).booleanValue())
            {
                count++;
                totalSelect = totalSelect.add((BigDecimal) model.getValueAt(i, 6));
            }
        }

        statusBar.setStatusLine("Nbr Ln:" + String.valueOf(count) + " - Tot.Sel:" + String.valueOf(totalSelect));
    }
    
    public void tableChanged(TableModelEvent e)
    {
        super.tableChanged(e);
    }

    public void vetoableChange(PropertyChangeEvent e)
    {
    	
		//  BankAccount
		if (e.getPropertyName() == "C_BankAccount_ID")
		{
			int C_BankAccount_ID = (e.getNewValue() !=null) ? (Integer)e.getNewValue() : 0;
			loadData(C_BankAccount_ID);
		}
		tableChanged(null);

    	
        super.vetoableChange(e);
    }

}
