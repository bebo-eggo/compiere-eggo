package com.ecenter.compiere.action;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.apache.commons.io.FileUtils;
import org.compiere.common.CompiereStateException;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProductPricing;
import org.compiere.model.MUser;
import org.compiere.util.DB;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.contract.action.BasicContractAction;
import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.sync.proxy.MInvoiceProxy;
import com.audaxis.compiere.sync.proxy.MUserProxy;
import com.audaxis.compiere.util.CompiereException;

public class ActionInvoice extends BasicContractAction<MInvoice>{

	MInvoice po;
	int v_C_BPartner;
	int v_C_Order;
	int v_ProductCOMMISSION;
	int v_DocTypeTargetCOMMISSION;

	public ActionInvoice(MInvoice po) {
		super(po);
		this.po = po;
	}

	@Override
	public String afterComplete() {

		String sql = ""
			+ "SELECT IL.* "
			+ "FROM C_Invoice INV "
			+ "INNER JOIN C_InvoiceLine IL ON (IL.C_Invoice_ID = INV.C_Invoice_ID) "
			+ "INNER JOIN M_Product P ON (P.M_Product_ID = IL.M_Product_ID) "
			+"WHERE P.IsCommission = 'Y' AND INV.C_Invoice_ID= ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setInt (1, po.getC_Invoice_ID());

			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				v_C_Order = 0;
				v_C_BPartner = 0;

				MInvoiceLine po_InvoiceLine	=new MInvoiceLine(getCtx(),rs, get_Trx());
				GetSupplier(po_InvoiceLine);
				GetPurchaseOrder();	
				if(v_C_Order != 0)
					AddLines(po_InvoiceLine);
				else
					CreatPurchaseOrder(po_InvoiceLine);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
		
		//Redmine 30745
		if (!getPO().isSOTrx()){
			MInvoiceProxy proxy = new MInvoiceProxy(getPO());
			proxy.setXX_ValidateBy_ID(getPO().getCtx().getAD_User_ID()==0?getPO().getSalesRep_ID():getPO().getCtx().getAD_User_ID());
		}
		
		//Evolution #83301
		if(getPO().get_Value("ZZ_FileName") != null )
		{
			File file = new File((String) getPO().get_Value("ZZ_FileName"));
			File dir = new File(Msg.getMsg(getCtx(), "EC_INVOICE_PDF_OUT")); 
			
			if(file.exists() && dir.exists())
			{
				try{
					if(!(new File(dir, "A"+getPO().getC_Invoice_ID()+"Z.pdf")).exists())
					{
						FileUtils.copyFile(file, new File(dir, "A"+getPO().getC_Invoice_ID()+"Z.pdf"));
						FileUtils.deleteQuietly(file);
					}else
						FileUtils.deleteQuietly(file);
				//boolean success = file.renameTo(); 
				}catch (Exception e) {
					throw new CompiereException("File not moved from ("+(String) getPO().get_Value("ZZ_FileName")+")");
				}			
			}
		}

		return null;
	}

	public String GetSupplier(MInvoiceLine p_InvoiceLine) {
		String sql = ""
			+ "SELECT BP.C_BPartner_ID "
			+ "FROM C_BPartner BP "
			+ "INNER JOIN M_Product_PO MP ON(MP.C_BPartner_ID = BP.C_BPartner_ID) "
			+ "INNER JOIN M_Product P ON (P.M_Product_ID = MP.M_Product_ID) "
			+ "WHERE MP.IsCurrentVendor = 'Y' AND P.M_Product_ID= ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setInt (1, p_InvoiceLine.getM_Product_ID());

			rs = pstmt.executeQuery ();
			if (rs.next ())
				v_C_BPartner = rs.getInt(1);
			else
				throw new CompiereStateException ("L'Article " + DB.getSQLValueString(get_Trx(), "SELECT P.Name FROM M_Product P WHERE P.M_Product_ID = ? ", p_InvoiceLine.getM_Product_ID())
						+ " n'a pas un Fournisseur par défaut");
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
		return null;
	}

	public String GetPurchaseOrder() {
		String sql = ""
			+ "SELECT O.C_Order_ID "
			+ "FROM C_Order O "
			+ "WHERE O.IsSOTrx = 'N' AND O.DocStatus IN('DR','IP') AND O.C_BPartner_ID = ? "
			+ "ORDER BY O.DateOrdered DESC ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setInt (1, v_C_BPartner);

			rs = pstmt.executeQuery ();
			if (rs.next ())
				v_C_Order = rs.getInt(1);
			else
				v_C_Order = 0;
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
		return null;
	}

	public void AddLines(MInvoiceLine p_InvoiceLine) {
		GetProductCOMMISSION();
		MOrder po_MOrder = new MOrder(getCtx(),v_C_Order,get_Trx());

		MOrderLine po_MOrderLine = new MOrderLine(po_MOrder);
		po_MOrderLine.setM_Product_ID(p_InvoiceLine.getM_Product_ID());
		po_MOrderLine.setQtyEntered(p_InvoiceLine.getQtyInvoiced());
		po_MOrderLine.setPriceEntered(p_InvoiceLine.getPriceEntered());
		po_MOrderLine.setPriceList(p_InvoiceLine.getPriceList());
		po_MOrderLine.setPriceActual(p_InvoiceLine.getPriceActual());
		po_MOrderLine.setC_Tax_ID(p_InvoiceLine.getC_Tax_ID());
		if (!po_MOrderLine.save())
			throw new CompiereStateException("Could not create Order Line");

		MOrderLine po_MOrderLineCommission  = new MOrderLine(po_MOrder);
		po_MOrderLineCommission.setM_Product_ID(v_ProductCOMMISSION);
		po_MOrderLineCommission.setQtyEntered(p_InvoiceLine.getQtyInvoiced().negate());
		po_MOrderLineCommission.setPriceEntered(p_InvoiceLine.getPriceEntered().subtract(GetPriceEnteredPurchase(po_MOrderLine)));
		po_MOrderLineCommission.setPriceList(po_MOrderLineCommission.getPriceEntered());
		po_MOrderLineCommission.setPriceActual(po_MOrderLineCommission.getPriceEntered());
		po_MOrderLineCommission.setC_Tax_ID(p_InvoiceLine.getC_Tax_ID());
		if (!po_MOrderLineCommission.save())
			throw new CompiereStateException("Could not create Order Line");
	}

	public void CreatPurchaseOrder (MInvoiceLine p_InvoiceLine) {
		GetProductCOMMISSION();
		GetDocTypeTargetCOMMISSION();
		MOrder po_MOrder = new MOrder(getCtx(),0,get_Trx());
		
		po_MOrder.setAD_Org_ID(p_InvoiceLine.getAD_Org_ID());
		po_MOrder.setC_BPartner_ID(v_C_BPartner);
		po_MOrder.setSalesRep_ID(p_InvoiceLine.getParent().getSalesRep_ID());
		po_MOrder.setC_DocTypeTarget_ID(v_DocTypeTargetCOMMISSION);
		po_MOrder.setIsSOTrx(false);
		po_MOrder.setM_PriceList_ID(DB.getSQLValue(get_Trx(), "SELECT COALESCE(P.PO_PriceList_ID,G.PO_PriceList_ID) AS PO_PriceList_ID FROM C_BPartner P INNER JOIN C_BP_Group G ON (P.C_BP_Group_ID=G.C_BP_Group_ID) WHERE P.C_BPartner_ID = ? ", v_C_BPartner));

		if (!po_MOrder.save())
			throw new CompiereStateException("Could not create Order");

		MOrderLine po_MOrderLine = new MOrderLine(po_MOrder);
		po_MOrderLine.setM_Product_ID(p_InvoiceLine.getM_Product_ID());
		po_MOrderLine.setQtyEntered(p_InvoiceLine.getQtyInvoiced());
		po_MOrderLine.setPriceEntered(p_InvoiceLine.getPriceEntered());
		po_MOrderLine.setPriceList(p_InvoiceLine.getPriceList());
		po_MOrderLine.setPriceActual(p_InvoiceLine.getPriceActual());
		po_MOrderLine.setC_Tax_ID(p_InvoiceLine.getC_Tax_ID());
		if (!po_MOrderLine.save())
			throw new CompiereStateException("Could not create Order Line");

		MOrderLine po_MOrderLineCommission  = new MOrderLine(po_MOrder);
		po_MOrderLineCommission.setM_Product_ID(v_ProductCOMMISSION);
		po_MOrderLineCommission.setQtyEntered(p_InvoiceLine.getQtyInvoiced().negate());
		po_MOrderLineCommission.setPriceEntered(p_InvoiceLine.getPriceEntered().subtract(GetPriceEnteredPurchase(po_MOrderLine)));
		po_MOrderLineCommission.setPriceList(po_MOrderLineCommission.getPriceEntered());
		po_MOrderLineCommission.setPriceActual(po_MOrderLineCommission.getPriceEntered());
		po_MOrderLineCommission.setC_Tax_ID(p_InvoiceLine.getC_Tax_ID());
		if (!po_MOrderLineCommission.save())
			throw new CompiereStateException("Could not create Order Line");
	}

	public BigDecimal GetPriceEnteredPurchase(MOrderLine p_MOrderLine) {

		MProductPricing pp = new MProductPricing (p_MOrderLine.getAD_Client_ID(), p_MOrderLine.getAD_Org_ID(),
				p_MOrderLine.getM_Product_ID(), p_MOrderLine.getC_BPartner_ID(),p_MOrderLine.getQtyEntered() , p_MOrderLine.getParent().isSOTrx());

		pp.setM_PriceList_ID(DB.getSQLValue(get_Trx(), "SELECT COALESCE(P.PO_PriceList_ID,G.PO_PriceList_ID) AS PO_PriceList_ID FROM C_BPartner P INNER JOIN C_BP_Group G ON (P.C_BP_Group_ID=G.C_BP_Group_ID) WHERE P.C_BPartner_ID = ? ", p_MOrderLine.getC_BPartner_ID()));
		pp.setPriceDate(p_MOrderLine.getDateOrdered());
		pp.setM_PriceList_Version_ID(GetPriceListVersion(pp.getM_PriceList_ID(),pp.getM_Product_ID()));
		pp.calculatePrice();
		return pp.getPriceStd();
	}

	public int GetPriceListVersion(int m_M_PriceList_ID,int m_M_Product_ID) {
		String sql = "SELECT pv.M_PriceList_Version_ID "	//	1
			+ "FROM M_Product p"
			+ " INNER JOIN M_ProductPrice pp ON (p.M_Product_ID=pp.M_Product_ID)"
			+ " INNER JOIN  M_PriceList_Version pv ON (pp.M_PriceList_Version_ID=pv.M_PriceList_Version_ID)"
			+ " INNER JOIN M_PriceList pl ON (pv.M_PriceList_ID=pl.M_PriceList_ID) "
			+ "WHERE pv.IsActive='Y'"
			+ " AND pp.IsActive='Y'"
			+ " AND pl.IsActive='Y'"
			+ " AND p.M_Product_ID=?"				//	#1
			+ " AND pv.M_PriceList_ID=?"			//	#2
			+ " ORDER BY pv.ValidFrom DESC";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setInt(1, m_M_Product_ID);
			pstmt.setInt(2, m_M_PriceList_ID);

			rs = pstmt.executeQuery ();
			if (rs.next ())
				return rs.getInt(1);
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
		return 0;
	}

	public void GetProductCOMMISSION() {
		String sql = "SELECT p.M_Product_ID "	//	1
			+ "FROM M_Product p "
			+ "WHERE p.Value = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setString(1, Msg.getMsg(Language.AD_Language_en_US, "EUROCENTER_COMMISSION", true));

			rs = pstmt.executeQuery ();
			if (rs.next ())
				 v_ProductCOMMISSION = rs.getInt(1);
			else
				 v_ProductCOMMISSION = 0;
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
	}
	
	public void GetDocTypeTargetCOMMISSION() {
		String sql = "SELECT p.C_DocType_ID "	//	1
			+ "FROM C_DocType p "
			+ "WHERE p.Name = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_Trx());
			pstmt.setString(1, Msg.getMsg(Language.AD_Language_en_US, "EUROCENTER_DocType_COMMISSION", true));

			rs = pstmt.executeQuery ();
			if (rs.next ())
				v_DocTypeTargetCOMMISSION = rs.getInt(1);
			else
				v_DocTypeTargetCOMMISSION = 0;
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally {
			Util.closeCursor(pstmt, rs);
		}
	}
	@Override
	public String beforePrepare() {
		//Redmine 30745
		if (!getPO().isSOTrx()
				&& DocActionConstants.ACTION_Complete.equalsIgnoreCase(getPO().getDocAction())){
			MUser user = MUser.get(getCtx(), getCtx().getAD_User_ID());
			MUserProxy userp = new MUserProxy(user);
			
			if (!userp.IsInvoiceValidator())
				return Msg.getMsg(getCtx(), "EC_NOTINVOICEVALIDORUSER")+" : "+user.getValue();
			
			MInvoiceProxy invoicep = new MInvoiceProxy(getPO());
			if (invoicep.getXX_InvoiceValidator_ID()!=0 
					&& invoicep.getXX_InvoiceValidator_ID()!=user.getAD_User_ID()){
				if (!isUserSubstitute(user.getAD_User_ID(), invoicep.getXX_InvoiceValidator_ID()))
					return Msg.getMsg(getCtx(), "EC_DIFFINVOICEVALIDOR_USER");
			}
		}

		return null;
	}

	
	private boolean isUserSubstitute(int AD_User_ID, int XX_InvoiceValidator_ID){
		int AD_User_Substitute_ID = DB.getSQLValue(get_Trx(), 
				"SELECT AD_User_Substitute_ID FROM AD_User_Substitute WHERE AD_User_ID=? AND Substitute_ID=? AND IsActive='Y'", 
				XX_InvoiceValidator_ID, AD_User_ID);
		if (AD_User_Substitute_ID<0)
			return false;
		return true;
	}
}
