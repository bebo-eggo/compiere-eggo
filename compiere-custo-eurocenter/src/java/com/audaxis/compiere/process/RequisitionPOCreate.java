package com.audaxis.compiere.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MCharge;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPO;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.util.CompiereSystemException;
import org.compiere.util.CompiereUserException;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.db.Util;

public class RequisitionPOCreate extends
		org.compiere.process.RequisitionPOCreate {
	
	protected int 		m_Org_ID = -1;
	protected int 		m_Supplier_ID = -1;

	/**
	 * 	Process
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		int onError = 0;
		//	Specific
		if (p_M_Requisition_ID != 0)
		{
			log.info("M_Requisition_ID=" + p_M_Requisition_ID);
			MRequisition req = new MRequisition(getCtx(), p_M_Requisition_ID, get_TrxName());
			if (!MRequisition.DOCSTATUS_Completed.equals(req.getDocStatus()))
				throw new CompiereUserException("@DocStatus@ = " + req.getDocStatus());
			MRequisitionLine[] lines = req.getLines(true);
			
			for (int i = 0; i < lines.length; i++)
			{
				if (lines[i].getC_OrderLine_ID() == 0)
					checkReqLine(lines[i]);
			}
			
			onError = DB.getSQLValue(null, "select count(*) from t_requisition where ad_pinstance_id = ?  ", this.getAD_PInstance_ID());
			if (onError > 0)  return "Error : " + onError + " on Process Instance : " + this.getAD_PInstance_ID(); 
			
			
			for (int i = 0; i < lines.length; i++)
			{
				if (lines[i].getC_OrderLine_ID() == 0)
					process (lines[i]);
			}
			closeOrder();
			return "";
		}	//	single Requisition
		
		//	
		log.info("AD_Org_ID=" + p_AD_Org_ID
			+ ", M_Warehouse_ID=" + p_M_Warehouse_ID
			+ ", DateDoc=" + p_DateDoc_From + "/" + p_DateDoc_To
			+ ", DateRequired=" + p_DateRequired_From + "/" + p_DateRequired_To
			+ ", PriorityRule=" + p_PriorityRule
			+ ", AD_User_ID=" + p_AD_User_ID
			+ ", M_Product_ID=" + p_M_Product_ID
			+ ", ConsolidateDocument" + p_ConsolidateDocument);
		
		StringBuffer sql = new StringBuffer("SELECT rl.M_RequisitionLine_ID, NVL(zssf.Z_TypeOA_ID, zt.Z_TypeOA_ID) as Z_TypeOA_ID FROM M_RequisitionLine rl "
				+ "INNER JOIN M_Product p ON (p.M_Product_ID=rl.M_Product_ID) "
				+ "INNER JOIN Z_TYPEOA zt ON (zt.AD_Client_ID = rl.AD_Client_ID and zt.IsDefault = 'Y') "
			+ " LEFT JOIN Z_S_S_FAMILLE zssf ON (zssf.Z_S_S_FAMILLE_ID = p.Z_S_S_FAMILLE_ID) ")
			.append("WHERE rl.C_OrderLine_ID IS NULL ");
		/*ZCOM495**
		if (p_AD_Org_ID != 0)
			sql.append(" AND AD_Org_ID=?");
		**/
		if (p_M_Product_ID != 0)
			sql.append(" AND M_Product_ID=?");
		//	Requisition Header
		sql.append(" AND EXISTS (SELECT * FROM M_Requisition r WHERE rl.M_Requisition_ID=r.M_Requisition_ID")
			.append(" AND r.DocStatus='CO'");
		/*ZCOM495**
		if (p_M_Warehouse_ID != 0)
			sql.append(" AND r.M_Warehouse_ID=?");
		**/
		//
		if (p_DateDoc_From != null && p_DateDoc_To != null)
			sql.append(" AND r.DateDoc BETWEEN ? AND ?");
		else if (p_DateDoc_From != null)
			sql.append(" AND r.DateDoc => ?");
		else if (p_DateDoc_To != null)
			sql.append(" AND r.DateDoc <= ?");
		//
		if (p_DateRequired_From != null && p_DateRequired_To != null)
			sql.append(" AND r.DateRequired BETWEEN ? AND ?");
		else if (p_DateRequired_From != null)
			sql.append(" AND r.DateRequired => ?");
		else if (p_DateRequired_To != null)
			sql.append(" AND r.DateRequired <= ?");
		//
		if (p_PriorityRule != null)
			sql.append(" AND r.PriorityRule => ?");
		if (p_AD_User_ID != 0)
			sql.append(" AND r.AD_User_ID=?");
		//
		sql.append(") ORDER BY ");
		if (!p_ConsolidateDocument)
			sql.append("M_Requisition_ID, ");
		sql.append("rl.ad_org_id, rl.Supplier_ID,NVL(zssf.Z_TypeOA_ID, zt.Z_TypeOA_ID), rl.M_Product_ID, rl.C_Charge_ID, rl.M_AttributeSetInstance_ID");
		
		checkForError(sql);
		onError = DB.getSQLValue(null,"select count(*) from t_requisition where ad_pinstance_id = ?  ", this.getAD_PInstance_ID());
		if (onError > 0)  return "Error : " + onError + " on Process Instance : " + this.getAD_PInstance_ID(); 

		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int index = 1;
			/*ZCOM495**
			if (p_AD_Org_ID != 0)
				pstmt.setInt (index++, p_AD_Org_ID);
			**/
			if (p_M_Product_ID != 0)
				pstmt.setInt (index++, p_M_Product_ID);
			/*ZCOM495**
			if (p_M_Warehouse_ID != 0)
				pstmt.setInt (index++, p_M_Warehouse_ID);
			**/
			if (p_DateDoc_From != null && p_DateDoc_To != null)
			{
				pstmt.setTimestamp(index++, p_DateDoc_From);
				pstmt.setTimestamp(index++, p_DateDoc_To);
			}
			else if (p_DateDoc_From != null)
				pstmt.setTimestamp(index++, p_DateDoc_From);
			else if (p_DateDoc_To != null)
				pstmt.setTimestamp(index++, p_DateDoc_To);
			if (p_DateRequired_From != null && p_DateRequired_To != null)
			{
				pstmt.setTimestamp(index++, p_DateRequired_From);
				pstmt.setTimestamp(index++, p_DateRequired_To);
			}
			else if (p_DateRequired_From != null)
				pstmt.setTimestamp(index++, p_DateRequired_From);
			else if (p_DateRequired_To != null)
				pstmt.setTimestamp(index++, p_DateRequired_To);
			if (p_PriorityRule != null)
				pstmt.setString(index++, p_PriorityRule);
			if (p_AD_User_ID != 0)
				pstmt.setInt (index++, p_AD_User_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MRequisitionLine rl = new MRequisitionLine (getCtx(), rs.getInt(1), get_TrxName());
				rl.setTypeOA_ID(rs.getInt(2));
				process (rl);
			}
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql.toString(), e);
		}
	    finally{
			Util.closeCursor(pstmt, rs);
		}
		closeOrder();
		return "";
	}	//	doit
	
	
	/**
	 * 	Process Line
	 *	@param rLine request line
	 * 	@throws Exception
	 */
	protected void process (MRequisitionLine rLine) throws Exception
	{
		if ((rLine.getM_Product_ID() == 0) && (rLine.getC_Charge_ID() == 0))
		{
			log.warning("Ignored Line" + rLine.getLine()
				+ " " + rLine.getDescription()
				+ " - " + rLine.getLineNetAmt());
			return;
		}
		

		if (rLine.getAD_Org_ID() != m_Org_ID){
			closeOrder();
			m_Org_ID = rLine.getAD_Org_ID();
		}

		if (rLine.get_ValueAsInt("Supplier_ID") != m_Supplier_ID){
				closeOrder();
				m_Supplier_ID = rLine.get_ValueAsInt("Supplier_ID");
		}
		
		if (!p_ConsolidateDocument
				&& (rLine.getM_Requisition_ID() != m_M_Requisition_ID))
				closeOrder();


		if (!p_ConsolidateDocument
			&& (rLine.getM_Requisition_ID() != m_M_Requisition_ID))
			closeOrder();
		
		
		if ((m_orderLine == null)
			|| (rLine.getM_Product_ID() != m_M_Product_ID)
			|| (rLine.getM_AttributeSetInstance_ID() != m_M_AttributeSetInstance_ID)
			|| (rLine.getC_Charge_ID() != 0))		//	single line per charge
			newLine(rLine);

		//	Update Order Line
		m_orderLine.setQty(m_orderLine.getQtyOrdered().add(rLine.getQty()));
		//  Add Orginal SO to PO ( append in description
		String reqDesc = rLine.getParent().getDescription();
		if (m_order != null &&reqDesc != null){
			if (m_order.getDescription() != null)
				m_order.setDescription(m_order.getDescription().concat(",'").concat(reqDesc.concat("'")));
			else m_order.setDescription("'".concat(reqDesc.concat("'")));
			m_order.save();
		}

		//	Update Requisition Line
		rLine.setC_OrderLine_ID(m_orderLine.getC_OrderLine_ID());
		if (!rLine.save())
			throw new CompiereSystemException("Cannot update Request Line");
	}	//	process


	@Override
	protected void newOrder(MRequisitionLine rLine, int C_BPartner_ID) throws Exception
	{
		if (m_order != null)
			closeOrder();
		//	BPartner
		if (m_bpartner == null || C_BPartner_ID != m_bpartner.getC_BPartner_ID())
			m_bpartner = new MBPartner (getCtx(), C_BPartner_ID, null);

		//	Order
		m_order = new MOrder(getCtx(), 0, get_TrxName());
		m_order.setIsSOTrx(false);
		m_order.setC_DocTypeTarget_ID();
		m_order.setBPartner(m_bpartner);
		m_order.set_ValueNoCheck("Z_TypeOA_ID", rLine.getTypeOA_ID());
		
		//ZCOM495 l'org et le warehouse donne en parametre sont ceux du PO qui sera cree
		// Cela permet de reprendre des PR de plusieurs Org vers une Org centrale qui commande
//      m_order.setAD_Org_ID(p_AD_Org_ID);
//      if(p_M_Warehouse_ID!=0)
//      	m_order.setM_Warehouse_ID(p_M_Warehouse_ID);
        //ZCOM495
 
		
		
		
        //Redmine 16901
        MRequisition req = new MRequisition(getCtx(), rLine.getM_Requisition_ID(), get_Trx());
        m_order.setClientOrg(req.getAD_Client_ID(), rLine.getAD_Org_ID());
        
        MOrgInfo orgInfo = MOrgInfo.get(getCtx(),rLine.getAD_Org_ID(), get_Trx());
        
        m_order.setM_Warehouse_ID(orgInfo.getM_Warehouse_ID());
        
        m_order.setDatePromised(req.getDateRequired());
        //Redmine 16901
        
		//	default po document type
		if (!p_ConsolidateDocument)
			m_order.setDescription(Msg.getElement(getCtx(), "M_Requisition_ID") 
				+ ": " + rLine.getParent().getDocumentNo());
		
		//ZCOM999 - ADD SalesRep_ID
		MRequisition requisition = new MRequisition(getCtx(), rLine.getM_Requisition_ID(), get_TrxName());
		m_order.setSalesRep_ID(requisition.getAD_User_ID());
		
		//	Prepare Save
		m_M_Requisition_ID = rLine.getM_Requisition_ID();
		if (!m_order.save())
			throw new CompiereSystemException("Cannot save Order");
	}	//	newOrder
	
	
	private String checkForError(StringBuffer sql){
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try
	{
		pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
		int index = 1;
		if (p_AD_Org_ID != 0)
			pstmt.setInt (index++, p_AD_Org_ID);
		if (p_M_Product_ID != 0)
			pstmt.setInt (index++, p_M_Product_ID);
		if (p_M_Warehouse_ID != 0)
			pstmt.setInt (index++, p_M_Warehouse_ID);
		if ((p_DateDoc_From != null) && (p_DateDoc_To != null))
		{
			pstmt.setTimestamp(index++, p_DateDoc_From);
			pstmt.setTimestamp(index++, p_DateDoc_To);
		}
		else if (p_DateDoc_From != null)
			pstmt.setTimestamp(index++, p_DateDoc_From);
		else if (p_DateDoc_To != null)
			pstmt.setTimestamp(index++, p_DateDoc_To);
		if ((p_DateRequired_From != null) && (p_DateRequired_To != null))
		{
			pstmt.setTimestamp(index++, p_DateRequired_From);
			pstmt.setTimestamp(index++, p_DateRequired_To);
		}
		else if (p_DateRequired_From != null)
			pstmt.setTimestamp(index++, p_DateRequired_From);
		else if (p_DateRequired_To != null)
			pstmt.setTimestamp(index++, p_DateRequired_To);
		if (p_PriorityRule != null)
			pstmt.setString(index++, p_PriorityRule);
		if (p_AD_User_ID != 0)
			pstmt.setInt (index++, p_AD_User_ID);
		rs = pstmt.executeQuery ();
		while (rs.next ())
		{
			checkReqLine (new MRequisitionLine (getCtx(), rs, get_TrxName()));
		}
	}
	catch (Exception e)
	{
		log.log (Level.SEVERE, sql.toString(), e);
	}
    finally{
		Util.closeCursor(pstmt, rs);
	}
	
	return "";
	}
	
	
	/**
	 * 	New Order Line (different Product)
	 *	@param rLine request line
	 * 	@throws Exception
	 */
	private void newLine(MRequisitionLine rLine) throws Exception
	{
		closeOrderLine();
		MProduct product = null;

		//	Get Business Partner
/**		
		int C_BPartner_ID = rLine.getC_BPartner_ID();
		if (C_BPartner_ID != 0)
			;
		else if (rLine.getC_Charge_ID() != 0)
		{
			MCharge charge = MCharge.get(getCtx(), rLine.getC_Charge_ID());
			C_BPartner_ID = charge.getC_BPartner_ID();
			if (C_BPartner_ID == 0)
				throw new CompiereUserException("No Vendor for Charge " + charge.getName());
		}
		else
		{
			//	Find Vendor from Produt
			product = MProduct.get(getCtx(), rLine.getM_Product_ID());
			MProductPO[] ppos = MProductPO.getOfProduct(getCtx(), product.getM_Product_ID(), null);
			for (MProductPO element : ppos) {
				if (element.isCurrentVendor() && (element.getC_BPartner_ID() != 0))
				{
					C_BPartner_ID = element.getC_BPartner_ID();
					break;
				}
			}
			if ((C_BPartner_ID == 0) && (ppos.length > 0))
				C_BPartner_ID = ppos[0].getC_BPartner_ID();
			if (C_BPartner_ID == 0)
				throw new CompiereUserException("No Vendor for " + product.getName());
		}
**/
		
		int C_BPartner_ID = rLine.get_ValueAsInt("Supplier_ID");
		int TypeOA_ID = rLine.get_ValueAsInt("Supplier_ID");
		product = MProduct.get(getCtx(), rLine.getM_Product_ID());
		
		//	New Order - Different Vendor
		if ((m_order == null)
			|| (m_order.getC_BPartner_ID() != C_BPartner_ID) || m_order.get_ValueAsInt("Z_TypeOA_ID")!=TypeOA_ID)
			newOrder(rLine, C_BPartner_ID);


		//	No Order Line
		m_orderLine = new MOrderLine(m_order);
		if (product != null)
		{
			m_orderLine.setPriceActual(rLine.getPriceActual());
			m_orderLine.setProduct(product);
			m_orderLine.setM_AttributeSetInstance_ID(rLine.getM_AttributeSetInstance_ID());
		}
		else
		{
			m_orderLine.setC_Charge_ID(rLine.getC_Charge_ID());
			m_orderLine.setPriceActual(rLine.getPriceActual());
		}
		m_orderLine.setAD_Org_ID(rLine.getAD_Org_ID());
		m_orderLine.setDescription(rLine.getDescription());

		//	Prepare Save
		m_M_Product_ID = rLine.getM_Product_ID();
		m_M_AttributeSetInstance_ID = rLine.getM_AttributeSetInstance_ID();
		if (!m_orderLine.save() || !m_orderLine.updateHeaderTax())
			throw new CompiereSystemException("Cannot save Order Line");
	}	//	newLine
	
	
	/**
	 * 	Close Order
	 * 	@throws Exception
	 */
	protected void closeOrder() throws Exception
	{
		closeOrderLine();
		if (m_order != null)
		{
			m_order.load(get_TrxName());
			addLog(0, null, m_order.getGrandTotal(), m_order.getDocumentNo());
		}
		m_order = null;
	}	//	closeOrder


	private void closeOrderLine() throws CompiereSystemException {
		if (m_orderLine != null)
		{
			if (!m_orderLine.save() || !m_orderLine.updateHeaderTax())
				throw new CompiereSystemException("Cannot update Order Line");
		}
		m_orderLine = null;
	}

	
	
	protected void checkReqLine (MRequisitionLine rLine) 
	{
		//	Find Vendor from Produt
		int C_BPartner_ID = 0;
		MProduct product = MProduct.get(getCtx(), rLine.getM_Product_ID());
		MProductPO[] ppos = MProductPO.getOfProduct(getCtx(), product.getM_Product_ID(), null);
		for (MProductPO element : ppos) {
			if (element.isCurrentVendor() && (element.getC_BPartner_ID() != 0))
			{
				C_BPartner_ID = element.getC_BPartner_ID();
				break;
			}
		}
		if ((C_BPartner_ID == 0) && (ppos.length > 0))
			C_BPartner_ID = ppos[0].getC_BPartner_ID();
		if (C_BPartner_ID == 0)
			setError(rLine, "Pas de fournisseur défini");
		else {
			rLine.set_ValueNoCheck("Supplier_ID", C_BPartner_ID);
			rLine.save(get_Trx());
		}
		// Find Existing PriceList
		if (C_BPartner_ID > 0){
			String bpValue = DB.getSQLValueString(null, "select Value from C_BPartner WHERE C_BPartner_ID = ?", C_BPartner_ID);
			int bpPLID = DB.getSQLValue(null, "select PO_PriceList_ID from C_BPartner WHERE C_BPartner_ID = ?  and isActive = 'Y' ", C_BPartner_ID);
			if (bpPLID < 1){ 
				setError(rLine, "Pas de liste de prix trouvée pour le fournisseur " + bpValue);
			}
			else
			{
				int prodPriceID = DB.getSQLValue(null, "select max(pp.m_pricelist_version_id) from m_productprice pp inner join m_pricelist_version pv on (pv.m_pricelist_version_id = pp.m_pricelist_version_id) where pv.m_pricelist_id = ? and pp.m_product_id = ? and pv.isActive = 'Y' and pp.isActive = 'Y' ", bpPLID, rLine.getM_Product_ID());
				if (prodPriceID < 1){
					String prodVal = DB.getSQLValueString(null, "select Value from M_Product WHERE M_Product_ID = ? ", rLine.getM_Product_ID());
					setError(rLine,"Liste de prix non trouvée pour le fournisseur " + bpValue + " - Atricle : " + prodVal);
				}
			}	
		}
	}	
	
	
	protected void setError (MRequisitionLine rLine, String msg) 
	{
		Trx tt = Trx.get("MyTrx");
		StringBuffer sql1 = new StringBuffer("Insert into T_Requisition (AD_CLIENT_ID,AD_ORGDOC_ID,AD_ORG_ID,AD_PINSTANCE_ID,ERRORMSG,LINE,M_PRODUCT_ID,M_REQUISITION_ID,DATEDOC,DATEREQUIRED) ");
		sql1.append("values (?,?,?,?,?,?,?,?,?,?) ");
		PreparedStatement pstmt = DB.prepareStatement (sql1.toString(), tt);
		try {
			pstmt.setInt(1, getCtx().getAD_Client_ID());
			pstmt.setInt(2, rLine.getAD_Org_ID());
			pstmt.setInt(3, getCtx().getAD_Org_ID());
			pstmt.setInt(4, this.getAD_PInstance_ID());
			pstmt.setString(5, msg);
			pstmt.setInt(6, rLine.getLine());
			pstmt.setInt(7, rLine.getM_Product_ID());
			pstmt.setInt(8, rLine.getM_Requisition_ID());
			pstmt.setTimestamp(9, rLine.getParent().getDateDoc());
			pstmt.setTimestamp(10, rLine.getParent().getDateRequired());
			
			pstmt.execute();
		
			pstmt.close ();
			pstmt = null;

			tt.commit();
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql1.toString(), e);
			tt.rollback();
		}
		finally{
			try
			{
				if (pstmt != null)
					pstmt.close ();
				pstmt = null;
			}
			catch (Exception e)
			{
				pstmt = null;
			}
		}
		

	}	



}
