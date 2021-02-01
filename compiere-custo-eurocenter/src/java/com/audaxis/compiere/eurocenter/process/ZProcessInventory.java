package com.audaxis.compiere.eurocenter.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MInOut;
import org.compiere.model.MInventory;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;

public class ZProcessInventory extends SvrProcess {


	private int p_M_Warehouse_ID;
	private int p_C_DocType_ID;
	private int p_AD_org_ID = 0,p_M_Inventory_ID = 0;
	private Timestamp p_ValidFrom,p_ValidTo;
	private String	p_docAction = DocActionConstants.ACTION_Complete;
	private int			m_created = 0;
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("M_Warehouse_ID"))
				p_M_Warehouse_ID = element.getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = element.getParameterAsInt();
			else if (name.equals("ValidFrom"))
			{
				p_ValidFrom = (Timestamp)element.getParameter();
				p_ValidTo = (Timestamp)element.getParameter_To();
			}
			else if (name.equals("DocAction"))
				p_docAction = (String)element.getParameter();
			else if (name.equals("AD_Org_ID"))
				p_AD_org_ID = element.getParameterAsInt();
            else if (name.equals("M_Inventory_ID"))
            	p_M_Inventory_ID = element.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			

		}
		//		DocAction check
		if (!DocActionConstants.ACTION_Complete.equals(p_docAction))
			p_docAction = DocActionConstants.ACTION_Prepare;
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		String sql = "select M_Inventory_ID from M_Inventory mi " +
				"where MI.DOCSTATUS IN ('DR','IP') and mi.C_DocType_ID = ?";
		if (p_ValidFrom != null)
			sql+=" AND TRUNC(mi.MovementDate,'DD') >= ? ";
		if (p_ValidTo != null)
			sql+=" AND TRUNC(mi.MovementDate,'DD') < ? ";
		if (p_AD_org_ID != 0)
			sql += " AND mi.AD_Org_ID=?";
		if (p_M_Inventory_ID != 0)
			sql += " AND mi.M_Inventory_ID=?";
		if(p_M_Warehouse_ID !=0)
			sql += " AND mi.M_Warehouse_ID=?";
		
		sql += " and mi.ad_client_id = ";
		sql += getCtx().getAD_Client_ID();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			int index = 1;
			pstmt.setInt(index++, p_C_DocType_ID);
			if (p_ValidFrom != null)
				pstmt.setTimestamp(index++, p_ValidFrom);
			if (p_ValidTo != null)
				pstmt.setTimestamp(index++, p_ValidTo);
			if (p_AD_org_ID != 0)
				pstmt.setInt(index++, p_AD_org_ID);
			if (p_M_Inventory_ID != 0)
				pstmt.setInt(index++, p_M_Inventory_ID);
			if (p_M_Warehouse_ID != 0)
				pstmt.setInt(index++, p_M_Warehouse_ID);

		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		try
		{
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				//Traiter shipment
				int M_Inventory_ID = rs.getInt(1);
				if(M_Inventory_ID!=0)
				{
					MInventory mi = new MInventory(getCtx(), M_Inventory_ID, get_Trx());
					boolean processOK = DocumentEngine.processIt(mi, p_docAction);
					mi.save();
					if (processOK)
						addLog(mi.getM_Inventory_ID(), mi.getMovementDate(), null, mi.getDocumentNo());
					else
					{
						log.warning("Failed: " + mi);
						String msg = Msg.getMsg(getCtx(), "Error") + " " + mi.getDocumentNo();
						addLog(mi.getM_Inventory_ID(), mi.getMovementDate(), null, msg);
					}
					m_created++;
				}
			}
		}catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
			get_Trx().rollback();
		}
		finally{
			Util.closeCursor(pstmt, rs);
		}
		return null;
	}

}
