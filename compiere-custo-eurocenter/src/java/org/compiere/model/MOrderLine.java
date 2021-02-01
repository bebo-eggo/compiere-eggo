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
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.api.UICallout;
import org.compiere.common.CompiereStateException;
import org.compiere.common.constants.EnvConstants;
import org.compiere.util.CLogger;
import org.compiere.util.CThreadUtil;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;

import com.audaxis.compiere.eurocenter.ws.WSUtil;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrderLinePosAction;
import com.audaxis.compiere.model.proxy.MDocTypeProxy;
import com.audaxis.compiere.model.proxy.MOrgInfoProxy;
import com.audaxis.compiere.pos.process.OrgPosCtx;
import com.audaxis.compiere.pos.process.PosCtx;
import com.audaxis.compiere.util.CompiereException;
import com.sun.mail.imap.protocol.ENVELOPE;

/**
 *  Order Line Model.
 * 	<code>
 * 			MOrderLine ol = new MOrderLine(m_order);
			ol.setM_Product_ID(wbl.getM_Product_ID());
			ol.setQtyOrdered(wbl.getQuantity());
			ol.setPrice();
			ol.setPriceActual(wbl.getPrice());
			ol.setTax();
			ol.save();

 *	</code>
 *  @author Jorg Janke
 *  @version $Id: MOrderLine.java,v 1.6 2006/10/02 05:18:39 jjanke Exp $
 */
public class MOrderLine extends X_C_OrderLine
{
    /** Logger for class MOrderLine */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MOrderLine.class);

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	private static String sqlrate = "select rate/100 from c_tax where c_tax_id = ? ";

	/**
	 * 	Get Order Unreserved Qty
	 *	@param ctx context
	 *	@param M_Warehouse_ID wh
	 *	@param M_Product_ID product
	 *	@param M_AttributeSetInstance_ID asi
	 *	@param excludeC_OrderLine_ID exclude C_OrderLine_ID
	 *	@return Unreserved Qty
	 */
	public static BigDecimal getNotReserved (Ctx ctx, int M_Warehouse_ID,
		int M_Product_ID, int M_AttributeSetInstance_ID, int excludeC_OrderLine_ID)
	{
		BigDecimal retValue = Env.ZERO;
		String sql = "SELECT SUM(QtyOrdered-QtyDelivered-QtyReserved) "
			+ "FROM C_OrderLine ol"
			+ " INNER JOIN C_Order o ON (ol.C_Order_ID=o.C_Order_ID) "
			+ "WHERE ol.M_Warehouse_ID=?"	//	#1
			+ " AND M_Product_ID=?"			//	#2
			+ " AND o.IsSOTrx='Y' AND o.DocStatus='DR'"
			+ " AND QtyOrdered-QtyDelivered-QtyReserved<>0"
			+ " AND ol.C_OrderLine_ID<>?";
		if (M_AttributeSetInstance_ID != 0)
			sql += " AND M_AttributeSetInstance_ID=?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt (1, M_Warehouse_ID);
			pstmt.setInt (2, M_Product_ID);
			pstmt.setInt (3, excludeC_OrderLine_ID);
			if (M_AttributeSetInstance_ID != 0)
				pstmt.setInt (4, M_AttributeSetInstance_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = rs.getBigDecimal(1);
		}
		catch (Exception e)
		{
			s_log.log (Level.SEVERE, sql, e);
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		if (retValue == null)
			s_log.fine("-");
		else
			s_log.fine(retValue.toString());
		return retValue;
	}	//	getNotReserved

	/**	Logger	*/
	private static CLogger s_log = CLogger.getCLogger (MOrderLine.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param ctx context
	 *  @param  C_OrderLine_ID  order line to load
	 *  @param trx p_trx name
	 */
	public MOrderLine (Ctx ctx, int C_OrderLine_ID, Trx trx)
	{
		super (ctx, C_OrderLine_ID, trx);
		if (C_OrderLine_ID == 0)
		{
		//	setC_Order_ID (0);
		//	setLine (0);
		//	setM_Warehouse_ID (0);	// @M_Warehouse_ID@
		//	setC_BPartner_ID(0);
		//	setC_BPartner_Location_ID (0);	// @C_BPartner_Location_ID@
		//	setC_Currency_ID (0);	// @C_Currency_ID@
		//	setDateOrdered (new Timestamp(System.currentTimeMillis()));	// @DateOrdered@
			//
		//	setC_Tax_ID (0);
		//	setC_UOM_ID (0);
			//
			setFreightAmt (Env.ZERO);
			setLineNetAmt (Env.ZERO);
			setLineNetAmtTTC (Env.ZERO);
			//
			setPriceEntered(Env.ZERO);
			setPriceActual (Env.ZERO);
			setPriceLimit (Env.ZERO);
			setPriceList (Env.ZERO);
			//
			setM_AttributeSetInstance_ID(0);
			//
			setQtyEntered (Env.ZERO);
			setQtyOrdered (Env.ZERO);	// 1
			setQtyDelivered (Env.ZERO);
			setQtyInvoiced (Env.ZERO);
			setQtyReserved (Env.ZERO);
			set_Value("QtyToDeliver", Env.ZERO);
			set_Value("storePoPrice", null);
			//
			setIsDescription (false);	// N
			setProcessed (false);
			setLine (0);
		}
	}	//	MOrderLine

	/**
	 *  Parent Constructor.
	 		ol.setM_Product_ID(wbl.getM_Product_ID());
			ol.setQtyOrdered(wbl.getQuantity());
			ol.setPrice();
			ol.setPriceActual(wbl.getPrice());
			ol.setTax();
			ol.save();
	 *  @param  order parent order
	 */
	
	private int I_Order_ID=0;
	private ArrayList<Integer> lll;
	
	public MOrderLine (MOrder order)
	{
		this (order.getCtx(), 0, order.get_Trx());
		if (order.get_ID() == 0)
			throw new IllegalArgumentException("Header not saved");
		setC_Order_ID (order.getC_Order_ID());	//	parent
		setOrder(order);
	}	//	MOrderLine
	
	public MOrderLine (MOrder order, int p_I_Order_ID)
	{
		this (order.getCtx(), 0, order.get_Trx());
		if(order.getC_Order_ID() != 0)
			setC_Order_ID (order.getC_Order_ID());	//	parent
		setOrder(order);
		I_Order_ID = p_I_Order_ID;
		
	}	//	MOrderLine
	
	public int getI_Order_ID() {
		return I_Order_ID;
	}
	
	public void SetIOrderList(ArrayList<Integer> lists) {
		lll = new ArrayList<Integer>();
		lll.addAll(lists);
	}
	
	public ArrayList<Integer> getIOrderList(){
		return lll;
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trx transaction
	 */
	public MOrderLine (Ctx ctx, ResultSet rs, Trx trx)
	{
		super(ctx, rs, trx);
	}	//	MOrderLine

	private int 			m_M_PriceList_ID = 0;
	//
	private boolean			m_IsSOTrx = true;
	//	Product Pricing
	private MProductPricing	m_productPrice = null;

	/** Cached Currency Precision	*/
	private Integer			m_precision = null;
	/**	Product					*/
	private MProduct 		m_product = null;
	/** Parent					*/
	private MOrder			m_parent = null;

	/**
	 * 	Set Defaults from Order.
	 * 	Does not set Parent !!
	 * 	@param order order
	 */
	public void setOrder (MOrder order)
	{
		setClientOrg(order);
		setC_BPartner_ID(order.getC_BPartner_ID());
		setC_BPartner_Location_ID(order.getC_BPartner_Location_ID());
		setM_Warehouse_ID(order.getM_Warehouse_ID());
		setDateOrdered(order.getDateOrdered());
		
		// SR 10022845: Default from Order only if not specified
		if (getDatePromised() == null)
			setDatePromised(order.getDatePromised());
		setC_Currency_ID(order.getC_Currency_ID());
		//
		setHeaderInfo(order);	//	sets m_order
		//	Don't set Activity, etc as they are overwrites
	}	//	setOrder

	/**
	 * 	Set Header Info
	 *	@param order order
	 */
	public void setHeaderInfo (MOrder order)
	{
		m_parent = order;
		m_precision = Integer.valueOf(order.getPrecision());
		m_M_PriceList_ID = order.getM_PriceList_ID();
		m_IsSOTrx = order.isSOTrx();
	}	//	setHeaderInfo

	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MOrder getParent()
	{
		if ((m_parent == null)
			|| (m_parent.get_Trx() != get_Trx()))
			m_parent = new MOrder(getCtx(), getC_Order_ID(), get_Trx());
		return m_parent;
	}	//	getParent

	/**
	 * 	Set Price Entered/Actual.
	 * 	Use this Method if the Line UOM is the Product UOM
	 *	@param PriceActual price
	 */
	public void setPrice (BigDecimal PriceActual)
	{
		setPriceEntered(PriceActual);
		setPriceActual (PriceActual);
	}	//	setPrice

	/**
	 * 	Set Price for Product and PriceList.
	 * 	Use only if newly created.
	 * 	Uses standard price list of not set by order constructor
	 */
	public void setPrice()
	{
		if (getM_Product_ID() == 0)
			return;
		if (m_M_PriceList_ID == 0)
			throw new CompiereStateException("PriceList unknown!");
		setPrice (m_M_PriceList_ID);
	}	//	setPrice


	/**
	 * 	Set Price for Product and PriceList
	 * 	@param M_PriceList_ID price list
	 */
	public void setPrice (int M_PriceList_ID)
	{
		if (getM_Product_ID() == 0)
			return;
		//
		log.fine(toString() + " - M_PriceList_ID=" + M_PriceList_ID);
		getProductPricing (M_PriceList_ID);
		setPriceActual (m_productPrice.getPriceStd());
		setPriceList (m_productPrice.getPriceList());
		setPriceLimit (m_productPrice.getPriceLimit());
		//
		if (getQtyEntered().compareTo(getQtyOrdered()) == 0)
			setPriceEntered(getPriceActual());
		else
			setPriceEntered(getPriceActual().multiply(getQtyOrdered()
				.divide(getQtyEntered(), 12, BigDecimal.ROUND_HALF_UP)));	//	recision

		//	Calculate Discount
		setDiscount(m_productPrice.getDiscount());

		//	Set UOM
		// gwu: only set UOM if not already set
		if( getC_UOM_ID() == 0 )
			setC_UOM_ID(m_productPrice.getC_UOM_ID());
	}	//	setPrice

	public void checkPrice()
	{
		if (getM_Product_ID() == 0)
			return;
		if (m_M_PriceList_ID == 0)
			throw new CompiereStateException("PriceList unknown!");
		getProductPricing (m_M_PriceList_ID);
	}	//	setPrice

	/**
	 * 	Get and calculate Product Pricing
	 *	@param M_PriceList_ID id
	 *	@return product pricing
	 */
	private MProductPricing getProductPricing (int M_PriceList_ID)
	{
		m_productPrice = new MProductPricing (getAD_Client_ID(), getAD_Org_ID(),
			getM_Product_ID(), getC_BPartner_ID(), getQtyOrdered(), m_IsSOTrx);
		m_productPrice.setM_PriceList_ID(M_PriceList_ID);
		m_productPrice.setPriceDate(getDateOrdered());
		//
		m_productPrice.calculatePrice();
		return m_productPrice;
	}	//	getProductPrice

	/**
	 *	Set Tax
	 *	@return true if tax is set
	 */
	public boolean setTax()
	{
		int belgium_Coutry_ID = 103;
		
		String validationSql = "";
		MOrder parent = getParent();
		MBPartnerLocation billBPLocation = new MBPartnerLocation(getCtx(), parent.getBill_Location_ID(), null);
		MLocation billLocation = new MLocation(getCtx(), billBPLocation.getC_Location_ID(), null);
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), null);
		MLocation orgLocation = new MLocation(getCtx(), orgInfo.getC_Location_ID(), null);
		
		if((orgLocation.getC_Country_ID() != belgium_Coutry_ID || billLocation.getC_Country_ID() != belgium_Coutry_ID)){
			Object[] params = {"C_Tax(SO/PO Type) - Cocontractant | IsTaxTransf"};
			validationSql = QueryUtil.getSQLValueString(null, "select code from AD_Val_Rule where name = ? ", params);
			validationSql = " AND " + Env.parseContext(getCtx(), 1, validationSql, true, false);
		}
		
		if(" AND ".equals(validationSql))
			validationSql = " ";
		int ii = Tax.getTaxWithCocontractant(getCtx(),getParent().getC_BPartner_Location_ID(),0, getAD_Org_ID(), getM_Product_ID(), getC_Charge_ID(), 
				getDateOrdered(),null,getParent().getC_DocTypeTarget_ID(), getParent().isSOTrx(),get_ValueAsBoolean("IsCocontractant"),getM_Warehouse_ID());
/*
		int ii = Tax.get(getCtx(), getM_Product_ID(), getC_Charge_ID(),
			getDateOrdered(), getDateOrdered(),
			getAD_Org_ID(), getM_Warehouse_ID(),
			getC_BPartner_Location_ID(),		//	should be bill to
			getC_BPartner_Location_ID(), m_IsSOTrx
			/*ZCOM35*/		
		/*,getParent().getC_DocTypeTarget_ID(), validationSql		
		);
		*/
		//71122
		MBPartner billBPartner = new MBPartner(getCtx(), getParent().getBill_BPartner_ID(), get_Trx());
		if(billBPartner != null && !billBPartner.get_ValueAsBoolean("IsIncy"))
		{
			if (ii == 0)
			{
				log.log(Level.SEVERE, "No Tax found");
				return false;
			}
			setC_Tax_ID (ii);
		}
		//71122
		else
		{
			ii = getIncyTVA(getParent().getC_DocTypeTarget_ID(),getM_Product_ID(), getC_Charge_ID());
			
			if (ii == 0)
			{
				log.log(Level.SEVERE, "No Tax found");
				return false;
			}
			setC_Tax_ID (ii);
			
		}
		//71122
		setPriceEntered(getPriceEntered()); // JL
		return true;
	}	//	setTax

	/**
	 * 	Set Tax - (Callout follow-up)
	 *	@param windowNo window
	 *	@param columnName changed column
	 */
	protected void setTax (int windowNo, String columnName)
	{
		if(CThreadUtil.isCalloutActive())
			return;
		//	Check Product
		int M_Product_ID = getM_Product_ID();
		int C_Charge_ID = getC_Charge_ID();
		log.fine("Product=" + M_Product_ID + ", C_Charge_ID=" + C_Charge_ID);
		if ((M_Product_ID == 0) && (C_Charge_ID == 0)) {
			setAmt(windowNo, columnName);		//	true
			return;
		}

		//	Check Partner Location
		int shipC_BPartner_Location_ID = getC_BPartner_Location_ID();
		if (shipC_BPartner_Location_ID == 0) {
			setAmt(windowNo, columnName);		//
			return;
		}
		log.fine("Ship BP_Location=" + shipC_BPartner_Location_ID);

		//
		Timestamp billDate = getDateOrdered();
		log.fine("Bill Date=" + billDate);

		Timestamp shipDate = getDatePromised();
		log.fine("Ship Date=" + shipDate);

		int AD_Org_ID = getAD_Org_ID();
		log.fine("Org=" + AD_Org_ID);

		int M_Warehouse_ID = getM_Warehouse_ID();
		log.fine("Warehouse=" + M_Warehouse_ID);

		int billC_BPartner_Location_ID = getCtx().getContextAsInt(windowNo, "Bill_Location_ID");
		if (billC_BPartner_Location_ID == 0)
			billC_BPartner_Location_ID = shipC_BPartner_Location_ID;
		log.fine("Bill BP_Location=" + billC_BPartner_Location_ID);

		// C_Charge_ID
		int C_Tax_ID = Tax.getTaxWithCocontractant(getCtx(),billC_BPartner_Location_ID,shipC_BPartner_Location_ID,AD_Org_ID,M_Product_ID,C_Charge_ID,billDate,
				shipDate,getParent().getC_DocTypeTarget_ID(),getCtx().isSOTrx(windowNo),get_ValueAsBoolean("IsCocontractant"), M_Warehouse_ID);
		
//		int C_Tax_ID = Tax.get (getCtx(), M_Product_ID, C_Charge_ID, billDate, shipDate,
//			AD_Org_ID, M_Warehouse_ID, billC_BPartner_Location_ID, shipC_BPartner_Location_ID,
//			getCtx().isSOTrx(windowNo)
//			/*ZCOM35*/		,getParent().getC_DocTypeTarget_ID()		
//		);
		
		//71122
		MBPartner billBPartner = new MBPartner(getCtx(), getParent().getBill_BPartner_ID(), get_Trx());
		if(billBPartner != null && !billBPartner.get_ValueAsBoolean("IsIncy"))
		{
			log.info("Tax ID=" + C_Tax_ID);
			//
			if (C_Tax_ID == 0)
			{
				ValueNamePair pp = CLogger.retrieveError();
				if (pp != null)
					p_changeVO.addError(pp.getValue());
				else
					p_changeVO.addError("Tax Error");
			}
			else
				super.setC_Tax_ID(C_Tax_ID);
		}
		//71122
		else
		{
			C_Tax_ID = getIncyTVA(getParent().getC_DocTypeTarget_ID(),getM_Product_ID(), getC_Charge_ID());
			
			if (C_Tax_ID == 0)
			{
				ValueNamePair pp = CLogger.retrieveError();
				if (pp != null)
					p_changeVO.addError(pp.getValue());
				else
					p_changeVO.addError("Tax Error");
			}
			else
				super.setC_Tax_ID(C_Tax_ID);
			
		}
		//71122
		//
		setAmt(windowNo, columnName);
		setPriceEntered(getPriceEntered());
		System.out.println("JBR : " + getPriceEnteredTTC());
	}	//	setTax (callout)
	
	//71122
		private int getIncyTVA(int C_DocType_ID, int M_Product_ID, int C_Charge_ID)
		{
			int retValue = 0;
			if(M_Product_ID==0 && C_Charge_ID==0)
				return 0;
			int C_TaxCategory_ID = 0;
			
			C_TaxCategory_ID =M_Product_ID!=0? MProduct.get(getCtx(), M_Product_ID).getC_TaxCategory_ID():MCharge.get(getCtx(), C_Charge_ID).getC_TaxCategory_ID();
			
			if(getParent().isSOTrx())
			{
				retValue = DB.getSQLValue(get_Trx(), "SELECT MAX(C_Tax.C_Tax_ID) FROM C_Tax " +
						"inner join Z_TaxDocType zt on zt.C_Tax_ID = C_Tax.C_Tax_ID WHERE C_Tax.IsTVAIncyAR='Y' AND C_Tax.IsActive='Y'  AND C_Tax.AD_Client_ID = ? " +
						"and zt.C_DOCTYPE_ID=? and C_Tax.C_TAXCATEGORY_ID=? group by C_Tax.C_Tax_ID", new Object[]{getAD_Client_ID(),C_DocType_ID,C_TaxCategory_ID});
				
			}else
			{
				retValue = DB.getSQLValue( get_Trx(),"SELECT MAX(C_Tax.C_Tax_ID) FROM C_Tax " +
						"inner join Z_TaxDocType zt on zt.C_Tax_ID = C_Tax.C_Tax_ID WHERE C_Tax.IsTVAIncyAP='Y' AND C_Tax.IsActive='Y'  AND C_Tax.AD_Client_ID = ? " +
						"and zt.C_DOCTYPE_ID=? and C_Tax.C_TAXCATEGORY_ID=? group by C_Tax.C_Tax_ID",  new Object[]{getAD_Client_ID(),C_DocType_ID,C_TaxCategory_ID});
			}
			
		    return retValue;
		}
		//71122

	/**
	 * 	Calculate Extended Amt.
	 * 	May or may not include tax
	 */
	public void setLineNetAmt ()
	{
		BigDecimal bd = getPriceActual().multiply(getQtyOrdered());
		if (bd.scale() > getPrecision())
			bd = bd.setScale(getPrecision(), BigDecimal.ROUND_HALF_UP);
		super.setLineNetAmt (bd);
	}	//	setLineNetAmt

	
	//TA
	public void setLineNetAmtTTC ()
	{
		BigDecimal bd = getPriceEnteredTTC().multiply(getQtyOrdered());
		if (bd.scale() > getPrecision())
			bd = bd.setScale(getPrecision(), BigDecimal.ROUND_HALF_UP);
		setLineNetAmtTTC (bd);
	}
	//TA
	
	
	/**
	 * 	Get Currency Precision from Currency
	 *	@return precision
	 */
	public int getPrecision()
	{
		if (m_precision != null)
			return m_precision.intValue();
		//
		if (getC_Currency_ID() == 0)
		{
			setOrder (getParent());
			if (m_precision != null)
				return m_precision.intValue();
		}
		if (getC_Currency_ID() != 0)
		{
			MCurrency cur = MCurrency.get(getCtx(), getC_Currency_ID());
			if (cur.get_ID() != 0)
			{
				m_precision = Integer.valueOf (cur.getStdPrecision());
				return m_precision.intValue();
			}
		}
		//	Fallback
		String sql = "SELECT c.StdPrecision "
			+ "FROM C_Currency c INNER JOIN C_Order x ON (x.C_Currency_ID=c.C_Currency_ID) "
			+ "WHERE x.C_Order_ID=?";
		int i = DB.getSQLValue(get_Trx(), sql, getC_Order_ID());
		m_precision = Integer.valueOf(i);
		return m_precision.intValue();
	}	//	getPrecision

	/**
	 * 	Set Product
	 *	@param product product
	 */
	public void setProduct (MProduct product)
	{
		m_product = product;
		if (m_product != null)
		{
			setM_Product_ID(m_product.getM_Product_ID());
			setC_UOM_ID (m_product.getC_UOM_ID());
		}
		else
		{
			setM_Product_ID(0);
			set_ValueNoCheck ("C_UOM_ID", null);
		}
		setM_AttributeSetInstance_ID(0);
	}	//	setProduct


	/**
	 * 	Set M_Product_ID
	 *	@param M_Product_ID product
	 *	@param setUOM set also UOM
	 */
	public void setM_Product_ID (int M_Product_ID, boolean setUOM)
	{
		if (setUOM)
			setProduct(MProduct.get(getCtx(), M_Product_ID));
		else
			super.setM_Product_ID (M_Product_ID);
		setM_AttributeSetInstance_ID(0);
	}	//	setM_Product_ID

	/**
	 * 	Set Product and UOM
	 *	@param M_Product_ID product
	 *	@param C_UOM_ID uom
	 */
	public void setM_Product_ID (int M_Product_ID, int C_UOM_ID)
	{
		super.setM_Product_ID (M_Product_ID);
		if (C_UOM_ID != 0)
			super.setC_UOM_ID(C_UOM_ID);
		setM_AttributeSetInstance_ID(0);
	}	//	setM_Product_ID

	/**
	 * 	Set Product - Callout
	 *	@param oldM_Product_ID old value
	 *	@param newM_Product_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setM_Product_ID (String oldM_Product_ID,
			String newM_Product_ID, int windowNo) throws Exception
	{
		if ((newM_Product_ID == null) || (newM_Product_ID.length() == 0))
		{
			//Resetting the Quantity, Price, and UOM  fields in case of product field is cleared
			setQtyOrdered(BigDecimal.ONE);
			setQtyEntered(BigDecimal.ONE);
			setPriceList(BigDecimal.ZERO);  
			setPriceLimit(BigDecimal.ZERO);
			setPriceActual(BigDecimal.ZERO);
			setPriceEntered(BigDecimal.ZERO);
			setDiscount(BigDecimal.ZERO);				
			setC_UOM_ID(MUOM.Each_ID);			
			setM_AttributeSetInstance_ID(0);
			setLineNetAmt(Env.ZERO);
			setLineNetAmtTTC(Env.ZERO);
			return;
		}
		int M_Product_ID = Integer.parseInt(newM_Product_ID);
		super.setM_Product_ID(M_Product_ID);
		if (M_Product_ID == 0)
		{
			setM_AttributeSetInstance_ID(0);
			return;
		}

		// Skip these steps for RMA. These fields are copied over from the orignal order instead.
		if (getParent().isReturnTrx())
			return;


		//
		setC_Charge_ID(0);
		//	Set Attribute
		int M_AttributeSetInstance_ID = getCtx().getContextAsInt(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "M_AttributeSetInstance_ID");
		if ((getCtx().getContextAsInt(EnvConstants.WINDOW_INFO, EnvConstants.TAB_INFO, "M_Product_ID") == M_Product_ID)
			&& (M_AttributeSetInstance_ID != 0))
			setM_AttributeSetInstance_ID(M_AttributeSetInstance_ID);
		else
			setM_AttributeSetInstance_ID(0);

		/*****	Price Calculation see also qty	****/
		int C_BPartner_ID = getCtx().getContextAsInt(windowNo, "C_BPartner_ID");
		BigDecimal Qty = getQtyOrdered();
		boolean IsSOTrx = getCtx().isSOTrx(windowNo);
		MProductPricing pp = new MProductPricing (getAD_Client_ID(), getAD_Org_ID(),
				M_Product_ID, C_BPartner_ID, Qty, IsSOTrx);
		//
		MOrder order = getParent();
		order.setPriceListVersion(windowNo);	//	why?? inconstent to swing and invoice
		int M_PriceList_ID = order.getM_PriceList_ID();	
	//	int M_PriceList_ID = getCtx().getContextAsInt(WindowNo, "M_PriceList_ID");
		pp.setM_PriceList_ID(M_PriceList_ID);
		MPriceList pl = MPriceList.get(getCtx(), M_PriceList_ID, null);
		Timestamp orderDate = getDateOrdered();
		pp.setPriceDate(orderDate);
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(M_PriceList_ID);
		params.add(M_Product_ID);
		params.add(orderDate);
		int M_PriceList_Version_ID = -1;
		try {
			M_PriceList_Version_ID = DB.getSQLValue(get_Trx(), "Select getPriceListLastVersionPrice(?,?,?) from DUAL  ",params );
		} catch (Exception e) {
			log.log(Level.SEVERE, "E", e);
		}
		if(M_PriceList_Version_ID==-1)
			M_PriceList_Version_ID = pl.getPriceListVersion(orderDate).getM_PriceList_Version_ID();
		pp.setM_PriceList_Version_ID(M_PriceList_Version_ID);
		
		if (p_changeVO != null)
			p_changeVO.setContext(getCtx(), windowNo, "M_PriceList_Version_ID", M_PriceList_Version_ID);

		pp.calculatePrice();
		if (!pp.isCalculated())
		{
			setPriceList(BigDecimal.ZERO);
			setPriceLimit(BigDecimal.ZERO);
			setPriceActual(BigDecimal.ZERO);
			setPriceEntered(BigDecimal.ZERO);
			p_changeVO.addError(Msg.getMsg(getCtx(), "ProductNotOnPriceList"));
			return;
		}

		//
		setPriceList(pp.getPriceList());
		setPriceLimit(pp.getPriceLimit());
		setPriceActual(pp.getPriceStd());
		setPriceEntered(pp.getPriceStd());
		setC_Currency_ID(pp.getC_Currency_ID());
		setDiscount(pp.getDiscount());
		setC_UOM_ID(pp.getC_UOM_ID());
		setQtyOrdered(getQtyEntered());
		if (p_changeVO != null)
		{
			p_changeVO.setContext(getCtx(), windowNo, "EnforcePriceLimit", pp.isEnforcePriceLimit());
			p_changeVO.setContext(getCtx(), windowNo, "DiscountSchema", pp.isDiscountSchema());
		}

		//	Check/Update Warehouse Setting
		//	int M_Warehouse_ID = ctx.getContextAsInt( Env.WINDOW_INFO, "M_Warehouse_ID");
		//	Integer wh = (Integer)mTab.getValue("M_Warehouse_ID");
		//	if (wh.intValue() != M_Warehouse_ID)
		//	{
		//		mTab.setValue("M_Warehouse_ID", Integer.valueOf(M_Warehouse_ID));
		//		ADialog.warn(,WindowNo, "WarehouseChanged");
		//	}


		if (IsSOTrx)
		{
			MProduct product = getProduct();
			
			System.out.println("--> DEBUG: init Y_Marque & Product " + product.get_ValueAsInt("Y_Marque_ID") + product.getM_Product_Category_ID() );
			
			if (product.get_ValueAsInt("Y_Marque_ID") > 0) setY_Marque_ID(product.get_ValueAsInt("Y_Marque_ID"));
			if (product.getM_Product_Category_ID() > 0) setM_Product_Category_ID(product.getM_Product_Category_ID());
			
			if (product.isStocked())
			{
				BigDecimal QtyOrdered = getQtyOrdered();
				int M_Warehouse_ID = getM_Warehouse_ID();
				M_AttributeSetInstance_ID = getM_AttributeSetInstance_ID();
				BigDecimal available = Storage.getQtyAvailable
					(M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID, null);
				if (available == null)
					available = Env.ZERO;
				if (available.signum() == 0)
					p_changeVO.addError(Msg.getMsg(getCtx(), "NoQtyAvailable", "0"));
				else if (available.compareTo(QtyOrdered) < 0)
					p_changeVO.addError(Msg.getMsg(getCtx(), "InsufficientQtyAvailable", available.toString()));
				else
				{
					int C_OrderLine_ID = getC_OrderLine_ID();
					BigDecimal notReserved = MOrderLine.getNotReserved(getCtx(),
						M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID,
						C_OrderLine_ID);
					if (notReserved == null)
						notReserved = Env.ZERO;
					BigDecimal total = available.subtract(notReserved);
					if (total.compareTo(QtyOrdered) < 0)
					{
						String info = Msg.parseTranslation(getCtx(), "@QtyAvailable@=" + available
							+ " - @QtyNotReserved@=" + notReserved + " = " + total);
						p_changeVO.addError(Msg.getMsg(getCtx(), "InsufficientQtyAvailable", info));
					}
				}
			}
		}
		else
		{
			String sql = "SELECT po.C_UOM_ID "
				+ "FROM M_Product_PO po WHERE po.M_Product_ID = ? and po.IsActive='Y'" ;
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try
			{
				pstmt = DB.prepareStatement (sql, (Trx) null);
				pstmt.setInt (1, M_Product_ID);
				rs = pstmt.executeQuery ();
				while (rs.next ())
				{
					Integer ii = Integer.valueOf(rs.getInt(1));
					if (ii!=0)
						setC_UOM_ID(ii);
				}
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, sql, e);
			}	
			finally {
				DB.closeResultSet(rs);
				DB.closeStatement(pstmt);
			}
		}
		//
		setTax (windowNo, "M_Product_ID");
		System.out.println("JBR 2: " + getPriceEnteredTTC());

	}	//	setM_Product_ID

	/**
	 * 	Set Warehouse - Callout
	 *	@param oldM_Warehouse_ID old value
	 *	@param newM_Warehouse_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setM_Warehouse_ID (String oldM_Warehouse_ID,
			String newM_Warehouse_ID, int windowNo) throws Exception
	{
		if ((newM_Warehouse_ID == null) || (newM_Warehouse_ID.length() == 0))
			return;
		int M_Warehouse_ID = Integer.parseInt(newM_Warehouse_ID);
		if (M_Warehouse_ID == 0)
			return;
		super.setM_Warehouse_ID(M_Warehouse_ID);		
		set_Value("M_Locator_ID", MDefaultWarehouse.getM_Locator_ID(get_Trx(),getParent().getC_DocType_ID(), getParent().getAD_Org_ID(),getParent().getM_Warehouse_ID(),getParent().getAD_Client_ID()));
		
		int M_Product_ID = getM_Product_ID();
		// if product is not yet selected/chosen
		if (M_Product_ID == 0)
			return;

		// Skip these steps for RMA. These fields are copied over from the orignal order instead.
		if (getParent().isReturnTrx())
			return;

		boolean IsSOTrx = getCtx().isSOTrx(windowNo);

		if (IsSOTrx)
		{
			MProduct product = getProduct();
			if (product.isStocked())
			{
				BigDecimal QtyOrdered = getQtyOrdered();
				int M_AttributeSetInstance_ID = getM_AttributeSetInstance_ID();
				BigDecimal available = Storage.getQtyAvailable
					(M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID, null);
				if (available == null)
					available = Env.ZERO;
				if (available.signum() == 0)
					p_changeVO.addError(Msg.getMsg(getCtx(), "NoQtyAvailable", "0"));
				else if (available.compareTo(QtyOrdered) < 0)
					p_changeVO.addError(Msg.getMsg(getCtx(), "InsufficientQtyAvailable", available.toString()));
				else
				{
					int C_OrderLine_ID = getC_OrderLine_ID();
					BigDecimal notReserved = MOrderLine.getNotReserved(getCtx(),
						M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID,
						C_OrderLine_ID);
					if (notReserved == null)
						notReserved = Env.ZERO;
					BigDecimal total = available.subtract(notReserved);
					if (total.compareTo(QtyOrdered) < 0)
					{
						String info = Msg.parseTranslation(getCtx(), "@QtyAvailable@=" + available
							+ " - @QtyNotReserved@=" + notReserved + " = " + total);
						p_changeVO.addError(Msg.getMsg(getCtx(), "InsufficientQtyAvailable", info));
					}
				}
			}
		}
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), getParent().getC_DocTypeTarget_ID(), get_Trx());
		//MERGE if (!getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")
		if (dti != null && ! dti.isCuisine()
				|| is_new())
			setTax (windowNo, "M_Warehouse_ID");
		
	}	//	setM_Warehouse_ID

	
	/**
	 * 	Get Product
	 *	@return product or null
	 */
	public MProduct getProduct()
	{
		if ((m_product == null) && (getM_Product_ID() != 0))
			m_product =  MProduct.get (getCtx(), getM_Product_ID());
		return m_product;
	}	//	getProduct

	/**
	 * 	Set M_AttributeSetInstance_ID
	 *	@param M_AttributeSetInstance_ID id
	 */
	@Override
	public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID)
	{
		if (M_AttributeSetInstance_ID == 0)		//	 0 is valid ID
			set_Value("M_AttributeSetInstance_ID", Integer.valueOf(0));
		else
			super.setM_AttributeSetInstance_ID (M_AttributeSetInstance_ID);
	}	//	setM_AttributeSetInstance_ID

	/**
	 * 	Set Warehouse
	 *	@param M_Warehouse_ID warehouse
	 */
	@Override
	public void setM_Warehouse_ID (int M_Warehouse_ID)
	{
		if ((getM_Warehouse_ID() > 0)
			&& (getM_Warehouse_ID() != M_Warehouse_ID)
			&& !canChangeWarehouse())
			log.severe("Ignored - Already Delivered/Invoiced/Reserved");
		else
			super.setM_Warehouse_ID (M_Warehouse_ID);
	}	//	setM_Warehouse_ID

	/**
	 * 	Set Partner Location - Callout
	 *	@param oldC_BPartner_Location_ID old value
	 *	@param newC_BPartner_Location_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setC_BPartner_Location_ID (String oldC_BPartner_Location_ID,
			String newC_BPartner_Location_ID, int windowNo) throws Exception
	{
		if ((newC_BPartner_Location_ID == null) || (newC_BPartner_Location_ID.length() == 0))
			return;
		int C_BPartner_Location_ID = Integer.parseInt(newC_BPartner_Location_ID);
		if (C_BPartner_Location_ID == 0)
			return;
		//
		super.setC_BPartner_Location_ID(C_BPartner_Location_ID);
		setTax(windowNo, "C_BPartner_Location_ID");
	}	//	setC_BPartner_Location_ID

	/**
	 * 	Set UOM - Callout
	 *	@param oldC_UOM_ID old value
	 *	@param newC_UOM_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setC_UOM_ID (String oldC_UOM_ID,
			String newC_UOM_ID, int windowNo) throws Exception
	{
		if ((newC_UOM_ID == null) || (newC_UOM_ID.length() == 0))
			return;
		int C_UOM_ID = Integer.parseInt(newC_UOM_ID);
		if (C_UOM_ID == 0)
			return;
		//
		super.setC_UOM_ID(C_UOM_ID);
		setQty(windowNo, "C_UOM_ID");
		setAmt(windowNo, "C_UOM_ID");
	}	//	setC_UOM_ID

	/**
	 * 	Set AttributeSet Instance - Callout
	 *	@param oldM_AttributeSetInstance_ID old value
	 *	@param newM_AttributeSetInstance_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setM_AttributeSetInstance_ID (String oldM_AttributeSetInstance_ID,
			String newM_AttributeSetInstance_ID, int windowNo) throws Exception
	{
		if ((newM_AttributeSetInstance_ID == null) || (newM_AttributeSetInstance_ID.length() == 0))
			return;
		int M_AttributeSetInstance_ID = Integer.parseInt(newM_AttributeSetInstance_ID);
		if (M_AttributeSetInstance_ID == 0)
			return;
		//
		super.setM_AttributeSetInstance_ID(M_AttributeSetInstance_ID);
		setQty(windowNo, "M_AttributeSetInstance_ID");
	}	//	setM_AttributeSetInstance_ID

	/**
	 * 	Set Discount - Callout
	 *	@param oldDiscount old value
	 *	@param newDiscount new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setDiscount (String oldDiscount,
			String newDiscount, int windowNo) throws Exception
	{
		if ((newDiscount == null) || (newDiscount.length() == 0))
			return;
		BigDecimal Discount = new BigDecimal(newDiscount);
		super.setDiscount(Discount);
		setAmt(windowNo, "Discount");
		
	}	//	setDiscount

	/**
	 * 	Set PriceActual - Callout
	 *	@param oldPriceActual old value
	 *	@param newPriceActual new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setPriceActual (String oldPriceActual,
			String newPriceActual, int windowNo) throws Exception
	{
		if ((newPriceActual == null) || (newPriceActual.length() == 0))
			return;
		BigDecimal PriceActual = new BigDecimal(newPriceActual);
		super.setPriceActual(PriceActual);
		setAmt(windowNo, "PriceActual");
		
	}	//	setPriceActual

	/**
	 * 	Set PriceEntered - Callout
	 *	@param oldPriceEntered old value
	 *	@param newPriceEntered new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setPriceEntered (String oldPriceEntered,
			String newPriceEntered, int windowNo) throws Exception
	{
		if ((newPriceEntered == null) || (newPriceEntered.length() == 0))
			return;
		BigDecimal PriceEntered = new BigDecimal(newPriceEntered);
//		super.setPriceEntered(PriceEntered);
		setPriceEntered(PriceEntered);
		setAmt(windowNo, "PriceEntered");
		
		System.out.println("JBR4 : " + getPriceEnteredTTC());
	}	//	setPriceEntered
	
	@UICallout public void setXX_PrixSN (String oldXX_PrixSN,
			String newXX_PrixSN, int windowNo) throws Exception
	{
		if ((newXX_PrixSN == null) || (newXX_PrixSN.length() == 0))
			return;
		BigDecimal PriceEntered = new BigDecimal(newXX_PrixSN);
		//GetCoef
		
		BigDecimal coef = QueryUtil.getSQLValueBD(get_Trx(), "Select getCoefProduct(?,?) from dual", getM_Product_ID(),  getDateOrdered());
//		super.setPriceEntered(PriceEntered);
		setPriceEntered(PriceEntered.multiply(coef));
		setAmt(windowNo, "PriceEntered");
		
		System.out.println("JBR4 : " + getPriceEnteredTTC());
	}

	/**
	 * 	Set C_Tax_ID - Callout
	 *	@param oldC_Tax_ID old value
	 *	@param newC_Tax_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setC_Tax_ID (String oldC_Tax_ID,
			String newC_Tax_ID, int windowNo) throws Exception
	{
		if ((newC_Tax_ID == null) || (newC_Tax_ID.length() == 0))
			return;
		int C_Tax_ID = new Integer(newC_Tax_ID).intValue();
		setC_Tax_ID(C_Tax_ID);
		setPriceEntered(getPriceEntered());
		setAmt(windowNo, "PriceEntered");
		System.out.println("JBR41 : " + getPriceEnteredTTC());
	}	//	setPriceEntered
	
	
	/**
	 * 	Set PriceEnteredTTC - Callout
	 *	@param oldPriceEnteredTTC old value
	 *	@param newPriceEnteredTTC new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setPriceEnteredTTC (String oldPriceEnteredTTC,
			String newPriceEnteredTTC, int windowNo) throws Exception
	{
		if ((newPriceEnteredTTC == null) || (newPriceEnteredTTC.length() == 0))
			return;
		BigDecimal PriceEnteredTTC = new BigDecimal(newPriceEnteredTTC);
//		super.setPriceEntered(PriceEntered);
		setPriceEnteredTTC(PriceEnteredTTC);
		setAmt(windowNo, "PriceEntered");
	}	//	setPriceEntered


	/**
	 * 	Set PriceList - Callout
	 *	@param oldPriceList old value
	 *	@param newPriceList new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setPriceList (String oldPriceList,
			String newPriceList, int windowNo) throws Exception
	{
		if ((newPriceList == null) || (newPriceList.length() == 0))
			return;
		BigDecimal PriceList = new BigDecimal(newPriceList);
		super.setPriceList(PriceList);
		setAmt(windowNo, "PriceList");
	}	//	setPriceList

	/**
	 * 	Set QtyEntered - Callout
	 *	@param oldQtyEntered old value
	 *	@param newQtyEntered new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setQtyEntered (String oldQtyEntered,
			String newQtyEntered, int windowNo) throws Exception
	{
		if ((newQtyEntered == null) || (newQtyEntered.length() == 0))
			return;
		BigDecimal QtyEntered = new BigDecimal(newQtyEntered);
		super.setQtyEntered(QtyEntered);
		setQty(windowNo, "QtyEntered");
		setAmt(windowNo, "QtyEntered");
	}	//	setQtyEntered

	/**
	 * 	Set QtyOrdered - Callout
	 *	@param oldQtyOrdered old value
	 *	@param newQtyOrdered new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setQtyOrdered (String oldQtyOrdered,
			String newQtyOrdered, int windowNo) throws Exception
	{
		if ((newQtyOrdered == null) || (newQtyOrdered.length() == 0))
			return;
		BigDecimal QtyOrdered = new BigDecimal(newQtyOrdered);
		super.setQtyOrdered(QtyOrdered);
		setQty(windowNo, "QtyOrdered");
		setAmt(windowNo, "QtyOrdered");
	}	//	setQtyOrdered

	/**
	 * 	Set Resource Assignment - Callout
	 *	@param oldS_ResourceAssignment_ID old value
	 *	@param newS_ResourceAssignment_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setS_ResourceAssignment_ID (String oldS_ResourceAssignment_ID,
			String newS_ResourceAssignment_ID, int windowNo) throws Exception
	{
		if ((newS_ResourceAssignment_ID == null) || (newS_ResourceAssignment_ID.length() == 0))
			return;
		int S_ResourceAssignment_ID = Integer.parseInt(newS_ResourceAssignment_ID);
		if (S_ResourceAssignment_ID == 0)
			return;
		//
		super.setS_ResourceAssignment_ID(S_ResourceAssignment_ID);

		int M_Product_ID = 0;
		String Name = null;
		String Description = null;
		BigDecimal Qty = null;
		String sql = "SELECT p.M_Product_ID, ra.Name, ra.Description, ra.Qty "
			+ "FROM S_ResourceAssignment ra"
			+ " INNER JOIN M_Product p ON (p.S_Resource_ID=ra.S_Resource_ID) "
			+ "WHERE ra.S_ResourceAssignment_ID=?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, S_ResourceAssignment_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				M_Product_ID = rs.getInt (1);
				Name = rs.getString(2);
				Description = rs.getString(3);
				Qty = rs.getBigDecimal(4);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally 
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}

		log.fine("S_ResourceAssignment_ID=" + S_ResourceAssignment_ID
				+ " - M_Product_ID=" + M_Product_ID);
		if (M_Product_ID != 0)
		{
			setM_Product_ID(M_Product_ID);
			if (Description != null)
				Name += " (" + Description + ")";
			if (!".".equals(Name))
				setDescription(Name);
			if (Qty != null)
				setQtyOrdered(Qty);
		}
	}	//	setS_ResourceAssignment_ID

	/**
	 * 	Set Amount (Callout)
	 *	@param windowNo window
	 *	@param columnName changed column
	 */
	protected void setAmt(int windowNo, String columnName)
	{
		if(CThreadUtil.isCalloutActive())
			return;
		log.info("NOw in setAmt:"+columnName);
		int C_UOM_To_ID = getC_UOM_ID();
		int M_Product_ID = getM_Product_ID();
		int M_PriceList_ID = getCtx().getContextAsInt(windowNo, "M_PriceList_ID");
		int StdPrecision = MPriceList.getPricePrecision(getCtx(), M_PriceList_ID);
		BigDecimal QtyEntered, QtyOrdered, PriceEntered, PriceActual, PriceLimit, Discount, PriceList;
		//	get values
		QtyEntered = getQtyEntered();
		QtyOrdered = getQtyOrdered();
		log.fine("QtyEntered=" + QtyEntered + ", Ordered=" + QtyOrdered + ", UOM=" + C_UOM_To_ID);
		//
		PriceEntered = getPriceEntered();
		PriceActual = getPriceActual();
		Discount = getDiscount();
		PriceLimit = getPriceLimit();
		PriceList = getPriceList();
		log.fine("PriceList=" + PriceList + ", Limit=" + PriceLimit + ", Precision=" + StdPrecision);
		log.fine("PriceEntered=" + PriceEntered + ", Actual=" + PriceActual + ", Discount=" + Discount);

		//	Qty changed - recalc price
		if ((columnName.equals("QtyOrdered")
			|| columnName.equals("QtyEntered")
			|| columnName.equals("M_Product_ID"))
			&& !"N".equals(getCtx().getContext(windowNo, "DiscountSchema")))
		{
			int C_BPartner_ID = getC_BPartner_ID();
			if (columnName.equals("QtyEntered"))
				QtyOrdered = MUOMConversion.convertProductTo (getCtx(), M_Product_ID,
					C_UOM_To_ID, QtyEntered);
			if (QtyOrdered == null)
				QtyOrdered = QtyEntered;
			boolean IsSOTrx = getCtx().isSOTrx(windowNo);
			MProductPricing pp = new MProductPricing (getAD_Client_ID(), getAD_Org_ID(),
					M_Product_ID, C_BPartner_ID, QtyOrdered, IsSOTrx);
			pp.setM_PriceList_ID(M_PriceList_ID);
			int M_PriceList_Version_ID = getCtx().getContextAsInt(windowNo, "M_PriceList_Version_ID");
			pp.setM_PriceList_Version_ID(M_PriceList_Version_ID);
			Timestamp date = getDateOrdered();
			pp.setPriceDate(date);
			//
			PriceEntered = MUOMConversion.convertProductFrom (getCtx(), M_Product_ID,
				C_UOM_To_ID, pp.getPriceStd());
			if (PriceEntered == null)
				PriceEntered = pp.getPriceStd();
			//
			log.fine("QtyChanged -> PriceActual=" + pp.getPriceStd()
				+ ", PriceEntered=" + PriceEntered + ", Discount=" + pp.getDiscount());
			PriceActual = pp.getPriceStd();
			setPriceActual(PriceActual);
			setDiscount(pp.getDiscount());
			setPriceEntered(PriceEntered);
			p_changeVO.setContext(getCtx(), windowNo, "DiscountSchema", pp.isDiscountSchema());
		}
		else if (columnName.equals("PriceActual"))
		{
			PriceEntered = MUOMConversion.convertProductFrom (getCtx(), M_Product_ID,
				C_UOM_To_ID, PriceActual);
			if (PriceEntered == null)
				PriceEntered = PriceActual;
			//
			log.fine("PriceActual=" + PriceActual
				+ " -> PriceEntered=" + PriceEntered);
			setPriceEntered(PriceEntered);
		}
		else if (columnName.equals("PriceEntered"))
		{
			PriceActual = MUOMConversion.convertProductTo (getCtx(), M_Product_ID,
				C_UOM_To_ID, PriceEntered);
			if (PriceActual == null)
				PriceActual = PriceEntered;
			//
			log.fine("PriceEntered=" + PriceEntered
				+ " -> PriceActual=" + PriceActual);
			setPriceActual(PriceActual);
		}

		//  Discount entered - Calculate Actual/Entered
		if (columnName.equals("Discount"))
		{
			//Do not apply discount for charge lines
			int c_charge_id=getC_Charge_ID();			
			if(!(c_charge_id > 0))
			{
				PriceActual = new BigDecimal ((100.0 - Discount.doubleValue())
						/ 100.0 * PriceList.doubleValue());
				if (PriceActual.scale() > StdPrecision)
					PriceActual = PriceActual.setScale(StdPrecision, BigDecimal.ROUND_HALF_UP);
				PriceEntered = MUOMConversion.convertProductFrom (getCtx(), M_Product_ID,
						C_UOM_To_ID, PriceActual);
				if (PriceEntered == null)
					PriceEntered = PriceActual;
				setPriceActual(PriceActual);
				setPriceEntered(PriceEntered);
			}

		}
		//	calculate Discount
		else
		{
			if (PriceList.intValue() == 0)
				Discount = Env.ZERO;
			else
				Discount = new BigDecimal ((PriceList.doubleValue() - PriceActual.doubleValue()) / PriceList.doubleValue() * 100.0);
			if (Discount.scale() > 2)
				Discount = Discount.setScale(2, BigDecimal.ROUND_HALF_UP);
			setDiscount(Discount);
		}
		log.fine("PriceEntered=" + PriceEntered + ", Actual=" + PriceActual + ", Discount=" + Discount);

		//	Check PriceLimit
		boolean epl = "Y".equals(getCtx().getContext(windowNo, "EnforcePriceLimit"));
		boolean enforce = epl && getCtx().isSOTrx(windowNo);
		if (enforce && MRole.getDefault(getCtx(), false).isOverwritePriceLimit())
			enforce = false;
		//	Check Price Limit?
		if (enforce && (PriceLimit.doubleValue() != 0.0)
		  && (PriceActual.compareTo(PriceLimit) < 0))
		{
			PriceActual = PriceLimit;
			PriceEntered = MUOMConversion.convertProductFrom (getCtx(), M_Product_ID,
				C_UOM_To_ID, PriceLimit);
			if (PriceEntered == null)
				PriceEntered = PriceLimit;
			log.fine("(under) PriceEntered=" + PriceEntered + ", Actual" + PriceLimit);
			setPriceActual(PriceLimit);
			setPriceEntered(PriceEntered);
			p_changeVO.addError(Msg.getMsg(getCtx(), "UnderLimitPrice"));
			//	Repeat Discount calc
			if (PriceList.intValue() != 0)
			{
				Discount = new BigDecimal ((PriceList.doubleValue () - PriceActual.doubleValue ()) / PriceList.doubleValue () * 100.0);
				if (Discount.scale () > 2)
					Discount = Discount.setScale (2, BigDecimal.ROUND_HALF_UP);
				setDiscount(Discount);
			}
		}

		//	Line Net Amt
		BigDecimal LineNetAmt = QtyOrdered.multiply(PriceActual);
		if (LineNetAmt.scale() > StdPrecision)
			LineNetAmt = LineNetAmt.setScale(StdPrecision, BigDecimal.ROUND_HALF_UP);
		log.info("LineNetAmt=" + LineNetAmt);
		setLineNetAmt(LineNetAmt);
		
		/**************************

		BigDecimal ttc0 = getPriceActual().multiply(getQtyOrdered());
		String sql = "select rate/100 from c_tax where c_tax_id = ? ";
		BigDecimal rate = DB.getSQLValueBD (get_Trx(), sql, getC_Tax_ID());
		BigDecimal ttc1 = getPriceActual().multiply(rate);
		BigDecimal ttc2 = getQtyOrdered().multiply(ttc1);
		BigDecimal ttc = ttc0.add(ttc2);
		if (ttc.scale() > getPrecision())
			ttc = ttc.setScale(getPrecision(), BigDecimal.ROUND_HALF_UP);
		setLineNetAmtTTC (ttc);
		*********************************************/
		BigDecimal LineNetAmtTTC = QtyOrdered.multiply(getPriceEnteredTTC());
		if (LineNetAmtTTC.scale() > StdPrecision)
			LineNetAmtTTC = LineNetAmtTTC.setScale(StdPrecision, BigDecimal.ROUND_HALF_UP);
		setLineNetAmtTTC(LineNetAmtTTC);
		
	}	//	setAmt (callout)

	/**
	 * 	Set Qty (Callout follow-up).
	 * 	enforces qty UOM relationship
	 *	@param windowNo window
	 *	@param columnName changed column
	 */
	private void setQty (int windowNo, String columnName)
	{
		if(CThreadUtil.isCalloutActive())
			return;
		int M_Product_ID = getM_Product_ID();
		BigDecimal QtyOrdered = Env.ZERO;
		BigDecimal QtyEntered = null;
		BigDecimal PriceActual, PriceEntered;
		int C_UOM_To_ID = getC_UOM_ID();
		boolean IsReturnTrx = getParent().isReturnTrx();

		//	No Product
		if (M_Product_ID == 0)
		{
			QtyEntered = getQtyEntered();
			QtyOrdered = QtyEntered;
			setQtyOrdered(QtyOrdered);
		}
		//	UOM Changed - convert from Entered -> Product
		else if (columnName.equals("C_UOM_ID") || columnName.equals("Orig_InOutLine_ID"))
		{
			QtyEntered = getQtyEntered();
			BigDecimal QtyEntered1 = QtyEntered.setScale(
				MUOM.getPrecision(getCtx(), C_UOM_To_ID), BigDecimal.ROUND_HALF_UP);
			if (QtyEntered.compareTo(QtyEntered1) != 0)
			{
				log.fine("Corrected QtyEntered Scale UOM=" + C_UOM_To_ID
					+ "; QtyEntered=" + QtyEntered + "->" + QtyEntered1);
				QtyEntered = QtyEntered1;
				setQtyEntered(QtyEntered);
			}
			QtyOrdered = MUOMConversion.convertProductFrom (getCtx(), M_Product_ID,
				C_UOM_To_ID, QtyEntered);
			if (QtyOrdered == null)
				QtyOrdered = QtyEntered;
			boolean conversion = QtyEntered.compareTo(QtyOrdered) != 0;
			PriceActual = getPriceActual();
			PriceEntered = MUOMConversion.convertProductFrom (getCtx(),
				M_Product_ID, C_UOM_To_ID, PriceActual);
			if (PriceEntered == null)
				PriceEntered = PriceActual;
			log.fine("UOM=" + C_UOM_To_ID
				+ ", QtyEntered/PriceActual=" + QtyEntered + "/" + PriceActual
				+ " -> " + conversion
				+ " QtyOrdered/PriceEntered=" + QtyOrdered + "/" + PriceEntered);
			p_changeVO.setContext(getCtx(), windowNo, "UOMConversion", conversion);
			setQtyOrdered(QtyOrdered);
			setPriceEntered(PriceEntered);
		}
		//	QtyEntered changed - calculate QtyOrdered
		else if (columnName.equals("QtyEntered"))
		{
			QtyEntered = getQtyEntered();
			BigDecimal QtyEntered1 = QtyEntered.setScale(
				MUOM.getPrecision(getCtx(), C_UOM_To_ID), BigDecimal.ROUND_HALF_UP);
			if (QtyEntered.compareTo(QtyEntered1) != 0)
			{
				log.fine("Corrected QtyEntered Scale UOM=" + C_UOM_To_ID
					+ "; QtyEntered=" + QtyEntered + "->" + QtyEntered1);
				QtyEntered = QtyEntered1;
				setQtyEntered(QtyEntered);
			}
			QtyOrdered = MUOMConversion.convertProductFrom (getCtx(),
				M_Product_ID, C_UOM_To_ID, QtyEntered);
			if (QtyOrdered == null)
				QtyOrdered = QtyEntered;
			boolean conversion = QtyEntered.compareTo(QtyOrdered) != 0;
			log.fine("UOM=" + C_UOM_To_ID
				+ ", QtyEntered=" + QtyEntered
				+ " -> " + conversion
				+ " QtyOrdered=" + QtyOrdered);
			p_changeVO.setContext(getCtx(), windowNo, "UOMConversion", conversion);
			setQtyOrdered(QtyOrdered);
		}
		//	QtyOrdered changed - calculate QtyEntered (should not happen)
		else if (columnName.equals("QtyOrdered"))
		{
			QtyOrdered = getQtyOrdered();
			int precision = getProduct().getUOMPrecision();
			BigDecimal QtyOrdered1 = QtyOrdered.setScale(precision, BigDecimal.ROUND_HALF_UP);
			if (QtyOrdered.compareTo(QtyOrdered1) != 0)
			{
				log.fine("Corrected QtyOrdered Scale "
					+ QtyOrdered + "->" + QtyOrdered1);
				QtyOrdered = QtyOrdered1;
				setQtyOrdered(QtyOrdered);
			}
			QtyEntered = MUOMConversion.convertProductTo (getCtx(),
				M_Product_ID, C_UOM_To_ID, QtyOrdered);
			if (QtyEntered == null)
				QtyEntered = QtyOrdered;
			boolean conversion = QtyOrdered.compareTo(QtyEntered) != 0;
			log.fine("UOM=" + C_UOM_To_ID
				+ ", QtyOrdered=" + QtyOrdered
				+ " -> " + conversion
				+ " QtyEntered=" + QtyEntered);
			p_changeVO.setContext(getCtx(), windowNo, "UOMConversion", conversion);
			setQtyEntered(QtyEntered);
		}
		else
		{
		//	QtyEntered = getQtyEntered();
			QtyOrdered = getQtyOrdered();
		}

		// RMA : Check qty returned is less than qty shipped
		if((M_Product_ID != 0)
				   && IsReturnTrx)
		{
			Integer inOutLine_ID = getOrig_InOutLine_ID();
			if(inOutLine_ID != 0)
			{
				BigDecimal shippedQty = MOrderLine.getInOutOpenQty(getCtx(), inOutLine_ID, getC_Order_ID(), getC_OrderLine_ID());

				QtyOrdered = getQtyOrdered();
				if(shippedQty.compareTo(QtyOrdered)<0)
				{
					if(getCtx().isSOTrx(windowNo))
						p_changeVO.addError(Msg.getMsg(getCtx(), "ReturnQtyExceedsShippedQty"));
					else
						p_changeVO.addError(Msg.getMsg(getCtx(), "ReturnQtyExceedsReceivedQty"));

					setQtyOrdered(shippedQty);
					QtyOrdered = shippedQty;

					QtyEntered = MUOMConversion.convertProductTo (getCtx(), M_Product_ID,
							C_UOM_To_ID, QtyOrdered);
					if (QtyEntered == null)
						QtyEntered = QtyOrdered;
					setQtyEntered(QtyEntered);
					log.fine("QtyEntered : "+ QtyEntered.toString() +
							"QtyOrdered : " + QtyOrdered.toString());
				}
			}
		}

		//	Storage
		if ((M_Product_ID != 0)
			&& getCtx().isSOTrx(windowNo)
			&& (QtyOrdered.signum() > 0)
			&& !IsReturnTrx)		//	no negative (returns)
		{
			MProduct product = getProduct();
			if (product.isStocked())
			{
				int M_Warehouse_ID = getM_Warehouse_ID();
				int M_AttributeSetInstance_ID = getM_AttributeSetInstance_ID();
				BigDecimal available = Storage.getQtyAvailable
					(M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID, null);
				if (available == null)
					available = Env.ZERO;
				if (available.signum() == 0)
					p_changeVO.addError(Msg.getMsg(getCtx(), "NoQtyAvailable"));
				else if (available.compareTo(QtyOrdered) < 0)
					p_changeVO.addError(Msg.getMsg(getCtx(), "InsufficientQtyAvailable", available));
				else
				{
					int C_OrderLine_ID = getC_OrderLine_ID();
					BigDecimal notReserved = MOrderLine.getNotReserved(getCtx(),
						M_Warehouse_ID, M_Product_ID, M_AttributeSetInstance_ID,
						C_OrderLine_ID);
					if (notReserved == null)
						notReserved = Env.ZERO;
					BigDecimal total = available.subtract(notReserved);
					if (total.compareTo(QtyOrdered) < 0)
					{
						String info = Msg.parseTranslation(getCtx(), "@QtyAvailable@=" + available
							+ "  -  @QtyNotReserved@=" + notReserved + "  =  " + total);
						p_changeVO.addError(Msg.getMsg(getCtx(), "InsufficientQtyAvailable", info));
					}
				}
			}
		}
	}	//	setQty (callout)


	/**
	 * 	Can Change Warehouse
	 *	@return true if warehouse can be changed
	 */
	public boolean canChangeWarehouse()
	{
		if (getQtyDelivered().signum() != 0)
		{
			log.saveError("Error", Msg.translate(getCtx(), "QtyDelivered") + "=" + getQtyDelivered());
			return false;
		}
		if (getQtyInvoiced().signum() != 0)
		{
			log.saveError("Error", Msg.translate(getCtx(), "QtyInvoiced") + "=" + getQtyInvoiced());
			return false;
		}
		if (getQtyReserved().signum() != 0)
		{
			log.saveError("Error", Msg.translate(getCtx(), "QtyReserved") + "=" + getQtyReserved());
			return false;
		}
		//	We can change
		return true;
	}	//	canChangeWarehouse

	/**
	 * 	Get C_Project_ID
	 *	@return project
	 */
	@Override
	public int getC_Project_ID()
	{
		int ii = super.getC_Project_ID ();
		if (ii == 0)
			ii = getParent().getC_Project_ID();
		return ii;
	}	//	getC_Project_ID

	/**
	 * 	Get C_Activity_ID
	 *	@return Activity
	 */
	@Override
	public int getC_Activity_ID()
	{
		int ii = super.getC_Activity_ID ();
		if (ii == 0)
			ii = getParent().getC_Activity_ID();
		return ii;
	}	//	getC_Activity_ID

	/**
	 * 	Get C_Campaign_ID
	 *	@return Campaign
	 */
	@Override
	public int getC_Campaign_ID()
	{
		int ii = super.getC_Campaign_ID ();
		if (ii == 0)
			ii = getParent().getC_Campaign_ID();
		return ii;
	}	//	getC_Campaign_ID

	/**
	 * 	Get User2_ID
	 *	@return User2
	 */
	@Override
	public int getUser1_ID ()
	{
		int ii = super.getUser1_ID ();
		if (ii == 0)
			ii = getParent().getUser1_ID();
		return ii;
	}	//	getUser1_ID

	/**
	 * 	Get User2_ID
	 *	@return User2
	 */
	@Override
	public int getUser2_ID ()
	{
		int ii = super.getUser2_ID ();
		if (ii == 0)
			ii = getParent().getUser2_ID();
		return ii;
	}	//	getUser2_ID

	/**
	 * 	Get AD_OrgTrx_ID
	 *	@return p_trx org
	 */
	@Override
	public int getAD_OrgTrx_ID()
	{
		int ii = super.getAD_OrgTrx_ID();
		if (ii == 0)
			ii = getParent().getAD_OrgTrx_ID();
		return ii;
	}	//	getAD_OrgTrx_ID

	/**************************************************************************
	 * 	String Representation
	 * 	@return info
	 */
	@Override
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("MOrderLine[")
			.append(get_ID()).append(",Line=").append(getLine())
			.append(",Ordered=").append(getQtyOrdered())
			.append(",Delivered=").append(getQtyDelivered())
			.append(",Dedicated=").append(getQtyDedicated())
			.append(",Allocated=").append(getQtyAllocated())
			.append(",Invoiced=").append(getQtyInvoiced())
			.append(",Reserved=").append(getQtyReserved())
			.append(", LineNet=").append(getLineNetAmt())
			.append ("]");
		return sb.toString ();
	}	//	toString

	/**
	 * 	Add to Description
	 *	@param description text
	 */
	public void addDescription (String description)
	{
		String desc = getDescription();
		if (desc == null)
			setDescription(description);
		else
			setDescription(desc + " | " + description);
	}	//	addDescription

	/**
	 * 	Get Description Text.
	 * 	For jsp access (vs. isDescription)
	 *	@return description
	 */
	public String getDescriptionText()
	{
		return super.getDescription();
	}	//	getDescriptionText

	/**
	 * 	Get Name
	 *	@return get the name of the line (from Product)
	 */
	public String getName()
	{
		getProduct();
		if (m_product != null)
			return m_product.getName();
		if (getC_Charge_ID() != 0)
		{
			MCharge charge = MCharge.get(getCtx(), getC_Charge_ID());
			return charge.getName();
		}
		return "";
	}	//	getName

	/**
	 * 	Set C_Charge_ID
	 *	@param C_Charge_ID charge
	 */
	@Override
	public void setC_Charge_ID (int C_Charge_ID)
	{
		super.setC_Charge_ID (C_Charge_ID);
		if (C_Charge_ID > 0)
			set_ValueNoCheck ("C_UOM_ID", null);
	}	//	setC_Charge_ID

	/**
	 * 	Set Charge - Callout
	 *	@param oldC_Charge_ID old value
	 *	@param newC_Charge_ID new value
	 *	@param windowNo window
	 *	@throws Exception
	 */
	@UICallout public void setC_Charge_ID (String oldC_Charge_ID,
			String newC_Charge_ID, int windowNo) throws Exception
	{
		if ((newC_Charge_ID == null) || (newC_Charge_ID.length() == 0))
		{
			if(oldC_Charge_ID != null && oldC_Charge_ID.length() != 0) {
				setQtyOrdered(BigDecimal.ONE);
				setQtyEntered(BigDecimal.ONE);
				setPriceList(BigDecimal.ZERO);  
				setPriceLimit(BigDecimal.ZERO);
				setPriceActual(BigDecimal.ZERO);
				setPriceEntered(BigDecimal.ZERO);
				setDiscount(BigDecimal.ZERO);				
				setC_UOM_ID(MUOM.Each_ID);			
				setM_AttributeSetInstance_ID(0);
				setLineNetAmt(Env.ZERO);
				setLineNetAmtTTC(Env.ZERO);
			}
			return;
		}
		int C_Charge_ID = Integer.parseInt(newC_Charge_ID);
		if (C_Charge_ID == 0)
			return;

		// Skip these steps for RMA. These fields are copied over from the orignal order instead.
		if (getParent().isReturnTrx())
			return;

		//
		//	No Product defined
		if (getM_Product_ID() != 0)
		{
			super.setC_Charge_ID(0);
			p_changeVO.addError(Msg.getMsg(getCtx(), "ChargeExclusively"));
			return;
		}

		super.setC_Charge_ID(C_Charge_ID);
		setM_AttributeSetInstance_ID(0);
		setS_ResourceAssignment_ID(0);
		setC_UOM_ID(100);	//	EA

		p_changeVO.setContext(getCtx(), windowNo, "DiscountSchema", "N");
		String sql = "SELECT ChargeAmt FROM C_Charge WHERE C_Charge_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt(1, C_Charge_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				setPriceEntered(rs.getBigDecimal (1));
				setPriceActual(rs.getBigDecimal (1));
				setPriceLimit(Env.ZERO);
				setPriceList(Env.ZERO);
				setDiscount(Env.ZERO);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		//
		setTax (windowNo, "C_Charge_ID");
	}	//	setC_Charge_ID


	/**
	 *	Set Discount
	 */
	public void setDiscount()
	{
		BigDecimal list = getPriceList();
		//	No List Price
		if (Env.ZERO.compareTo(list) == 0)
			return;
		BigDecimal discount = list.subtract(getPriceActual())
			.multiply(new BigDecimal(100))
			.divide(list, getPrecision(), BigDecimal.ROUND_HALF_UP);
		setDiscount(discount);
	}	//	setDiscount

	/**
	 *	Is Tax Included in Amount
	 *	@return true if tax calculated
	 */
	public boolean isTaxIncluded()
	{
		if (m_M_PriceList_ID == 0)
		{
			m_M_PriceList_ID = DB.getSQLValue(get_Trx(),
				"SELECT M_PriceList_ID FROM C_Order WHERE C_Order_ID=?",
				getC_Order_ID());
		}
		MPriceList pl = MPriceList.get(getCtx(), m_M_PriceList_ID, get_Trx());
		return pl.isTaxIncluded();
	}	//	isTaxIncluded


	/**
	 * 	Set Qty Entered/Ordered.
	 * 	Use this Method if the Line UOM is the Product UOM
	 *	@param Qty QtyOrdered/Entered
	 */
	public void setQty (BigDecimal Qty)
	{
		super.setQtyEntered (Qty);
		super.setQtyOrdered (getQtyEntered());
	}	//	setQty

	/**
	 * 	Set Qty Entered - enforce entered UOM
	 *	@param QtyEntered
	 */
	@Override
	public void setQtyEntered (BigDecimal QtyEntered)
	{
		if ((QtyEntered != null) && (getC_UOM_ID() != 0))
		{
			int precision = MUOM.getPrecision(getCtx(), getC_UOM_ID());
			QtyEntered = QtyEntered.setScale(precision, BigDecimal.ROUND_HALF_UP);
		}
		super.setQtyEntered (QtyEntered);
	}	//	setQtyEntered

	/**
	 * 	Set Qty Ordered - enforce Product UOM
	 *	@param QtyOrdered
	 */
	@Override
	public void setQtyOrdered (BigDecimal QtyOrdered)
	{
		MProduct product = getProduct();
		if ((QtyOrdered != null) && (product != null))
		{
			int precision = product.getUOMPrecision();
			QtyOrdered = QtyOrdered.setScale(precision, BigDecimal.ROUND_HALF_UP);
		}
		super.setQtyOrdered(QtyOrdered);
	}	//	setQtyOrdered


	/**
	 * 	Set Original OrderLine for RMA
	 * 	SOTrx should be set.
	 * 	@param origIOLine MInOutLine
	 */
	public void setOrigOrderLine (MOrderLine origOrderLine)
	{

		if ((origOrderLine == null) || (origOrderLine.get_ID()==0))
			return;

		setOrig_InOutLine_ID(-1);
		setC_Tax_ID(origOrderLine.getC_Tax_ID());

		setPriceList(origOrderLine.getPriceList());
		setPriceLimit(origOrderLine.getPriceLimit());
		setPriceActual(origOrderLine.getPriceActual());
		setPriceEntered(origOrderLine.getPriceEntered());
		setC_Currency_ID(origOrderLine.getC_Currency_ID());
		setDiscount(origOrderLine.getDiscount());

		return;

	} // setOrigOrder

	/**
	 * 	Set Original Order Line - Callout
	 *	@param oldOrig_InOutLine_ID old Orig Order
	 *	@param newOrig_InOutLine_ID new Orig Order
	 *	@param windowNo window no
	 */
	@UICallout public void setOrig_OrderLine_ID (String oldOrig_OrderLine_ID,
			String newOrig_OrderLine_ID, int windowNo) throws Exception
	{
		if ((newOrig_OrderLine_ID == null) || (newOrig_OrderLine_ID.length() == 0))
			return;
		int Orig_OrderLine_ID = Integer.parseInt(newOrig_OrderLine_ID);
		if (Orig_OrderLine_ID == 0)
			return;

		// For returns, Price Limit is not enforced
		p_changeVO.setContext(getCtx(), windowNo, "EnforcePriceLimit", false);
		// For returns, discount is copied over from the sales order
		p_changeVO.setContext(getCtx(), windowNo, "DiscountSchema", false);

		//	Get Details
		MOrderLine oLine = new MOrderLine (getCtx(), Orig_OrderLine_ID, null);
		if (oLine.get_ID() != 0)
			setOrigOrderLine(oLine);

	}	//	setOrig_Order_ID

	/**
	 * 	Set Original Shipment Line for RMA
	 * 	SOTrx should be set.
	 * 	@param origIOLine MInOutLine
	 */
	public void setOrigInOutLine (MInOutLine Orig_InOutLine)
	{

		if ((Orig_InOutLine == null) || (Orig_InOutLine.get_ID()==0))
			return;

		setC_Project_ID(Orig_InOutLine.getC_Project_ID());
		setC_Campaign_ID(Orig_InOutLine.getC_Campaign_ID());
		setM_Product_ID(Orig_InOutLine.getM_Product_ID());
		setM_AttributeSetInstance_ID(Orig_InOutLine.getM_AttributeSetInstance_ID());
		setC_UOM_ID(Orig_InOutLine.getC_UOM_ID());

		return;

	} // setOrigOrder

	/**
	 * 	Set Original Shipment Line - Callout
	 *	@param oldOrig_InOutLine_ID old Orig Order
	 *	@param newOrig_InOutLine_ID new Orig Order
	 *	@param windowNo window no
	 */
	@UICallout public void setOrig_InOutLine_ID (String oldOrig_InOutLine_ID,
			String newOrig_InOutLine_ID, int windowNo) throws Exception
	{
		if ((newOrig_InOutLine_ID == null) || (newOrig_InOutLine_ID.length() == 0))
			return;
		int Orig_InOutLine_ID = Integer.parseInt(newOrig_InOutLine_ID);
		if (Orig_InOutLine_ID == 0)
			return;

		//		Get Details
		MInOutLine ioLine = new MInOutLine (getCtx(), Orig_InOutLine_ID, null);
		if (ioLine.get_ID() != 0)
			setOrigInOutLine(ioLine);

		setQty(windowNo, "Orig_InOutLine_ID");

	} // setOrig_Order_ID

	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be saved
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		//	Get Defaults from Parent
		if ((getC_BPartner_ID() == 0) || (getC_BPartner_Location_ID() == 0)
			|| (getM_Warehouse_ID() == 0)
			|| (getC_Currency_ID() == 0))
			setOrder (getParent());
		if (m_M_PriceList_ID == 0)
			setHeaderInfo(getParent());
		
		//79675
		if(newRecord && getC_Charge_ID() == 0 && getM_Product_ID() == 0)
			throw new CompiereException(Msg.getMsg(getCtx(), "Z_ORDERLINE_SAVE"));

		//	R/O Check - Product/Warehouse Change
		if (!newRecord
			&& (is_ValueChanged("M_Product_ID") || is_ValueChanged("M_Warehouse_ID")))
		{
			if (!canChangeWarehouse())
				return false;
		}	//	Product Changed

		//	Charge
		if (getC_Charge_ID() != 0)
		{
			if (getM_Product_ID() != 0)
				setM_Product_ID(0);
			setC_UOM_ID(MUOM.Each_ID);
		}
		//	No Product
		if (getM_Product_ID() == 0)
			setM_AttributeSetInstance_ID(0);
		//	Product
		else	//	Set/check Product Price
		{
			if (m_productPrice == null )
			{
				//	Set Price if Actual = 0, otherwise, just check if product is on pricelist
//				if((Env.ZERO.compareTo(getPriceActual()) == 0)
//						&&  (Env.ZERO.compareTo(getPriceList()) == 0))
//					setPrice();
//				else
					checkPrice();
			}

			//	Check if on Price list
			if ((m_productPrice == null) || !m_productPrice.isCalculated())
			{
				if(((Env.ZERO.compareTo(getPriceActual()) == 0)
						&&  (Env.ZERO.compareTo(getPriceList()) == 0)) ||
						getParent().isSOTrx())
				{
					log.saveError("Error", Msg.getMsg(getCtx(), "ProductNotOnPriceList"));
					return false;
				}
			}
		}

		//	UOM
		if ((getC_UOM_ID() == 0)
			&& ((getM_Product_ID() != 0)
				|| (getQtyEntered().signum() != 0)))
		{
			int C_UOM_ID = MUOM.getDefault_UOM_ID(getCtx());
			if (C_UOM_ID > 0)
				setC_UOM_ID (C_UOM_ID);
		}
		//	Qty Precision
		if (newRecord || is_ValueChanged("QtyEntered"))
		{
			setQtyEntered(getQtyEntered());
			BigDecimal qtyOrdered = MUOMConversion.convertProductFrom(getCtx(), getM_Product_ID(), getC_UOM_ID(), getQtyEntered());
			if( qtyOrdered == null )
				qtyOrdered = getQtyEntered();
			setQtyOrdered(qtyOrdered);
		}
		if (newRecord || is_ValueChanged("QtyOrdered"))
			setQtyOrdered(getQtyOrdered());
		
		if(is_ValueChanged("QtyEntered") && getQtyOrdered().equals(Env.ZERO) && getQtyDelivered().equals(Env.ZERO) 
				&& getQtyInvoiced().equals(Env.ZERO) && !get_ValueAsBigDecimal("QtyToDeliver").equals(Env.ZERO))
		{
			//SetQty
			set_ValueNoCheck("QtyToDeliver", Env.ZERO);
		}

		//	Qty on instance ASI for SO
		// Does Not Check For Eurocenter ! ! !
//		if (1 == 2 
//			&& m_IsSOTrx
//			&& (getM_AttributeSetInstance_ID() != 0)
//			&& (newRecord || is_ValueChanged("M_Product_ID")
//				|| is_ValueChanged("M_AttributeSetInstance_ID")
//				|| is_ValueChanged("M_Warehouse_ID")))
//		{
//			MProduct product = getProduct();
//			if (product.isStocked())
//			{
//				int M_AttributeSet_ID = product.getM_AttributeSet_ID();
//				boolean isInstance = M_AttributeSet_ID != 0;
//				if (isInstance)
//				{
//					MAttributeSet mas = MAttributeSet.get(getCtx(), M_AttributeSet_ID);
//					isInstance = mas.isInstanceAttribute();
//				}
//				//	Max
//				if (isInstance)
//				{
//					List<Storage.VO> storages = Storage.getWarehouse(getCtx(),
//						getM_Warehouse_ID(), getM_Product_ID(), getM_AttributeSetInstance_ID(),
//						M_AttributeSet_ID, false, null, true, get_Trx());
//					BigDecimal qty = Env.ZERO;
//					for (Storage.VO element : storages) {
//						if (element.getM_AttributeSetInstance_ID() == getM_AttributeSetInstance_ID())
//							qty = qty.add(element.getQtyOnHand());
//					}
//					if (getQtyOrdered().compareTo(qty) > 0)
//					{
//						log.warning("Qty - Stock=" + qty + ", Ordered=" + getQtyOrdered());
//						log.saveError("QtyInsufficient", "=" + qty);
//						return false;
//					}
//				}
//			}	//	stocked
//		}	//	SO instance

		//	FreightAmt Not used
		if (Env.ZERO.compareTo(getFreightAmt()) != 0)
			setFreightAmt(Env.ZERO);

		//	Set Tax
		if (getC_Tax_ID() == 0)
			setTax();

		//	Get Line No
		if (getLine() == 0 || is_new())
		{
			int lineX = DB.getSQLValue(get_Trx(), "Select COALESCE(MAX(Line),0) FROM C_OrderLine WHERE C_Order_ID=? and line = ?", getC_Order_ID(), getLine());
			if(lineX == getLine() || getLine() == 0)
			{	
				String sql = "SELECT COALESCE(MAX(Line),0)+10 FROM C_OrderLine WHERE C_Order_ID=?";
				int ii = DB.getSQLValue (get_Trx(), sql, getC_Order_ID());
				setLine (ii);
			}
		}
		
		MOrder order = getParent();
		if (order.isSOTrx()){
			MDocType doctype = new MDocType(getCtx(), order.getC_DocTypeTarget_ID(),get_Trx());
			MDocTypeProxy docTypeProxy = new MDocTypeProxy(doctype);
			MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), order.getC_DocTypeTarget_ID(), get_Trx());
			if (dti != null && "Y".equalsIgnoreCase(doctype.get_ValueAsString("IsConsignation")) 
					// MERGE
					&& dti.isCuisine()) {
				int consID = new ConsignationUtil(getCtx(), getAD_Client_ID(), get_Trx()).getConsignment_Product_ID();
				if (consID <1) throw new CompiereException("Pas d'article CONSIGNATION d�fini pour la soci�t� ");
				if(getM_Product_ID() != consID)
					this.setPrice(BigDecimal.ZERO);
				 
				if (getM_Product_ID() != consID)
				{
					int existCons = DB.getSQLValue(get_Trx(), "select count(*) from c_orderline where c_order_id = ? and m_product_id = ? ", order.get_ID(),consID);
					if (existCons < 1 ){
					MOrderLine ordl = new MOrderLine(order);
					ordl.setLine(getLine() + 10); 
					ordl.setM_Product_ID(consID);
					ordl.setQtyEntered(BigDecimal.ONE);
					ordl.setPrice(BigDecimal.ZERO);
					ordl.save(get_Trx());
					}
				}	
				
			}	
		}
 

		//	Calculations & Rounding
		setLineNetAmt();	//	extended Amount with or without tax
		setDiscount();
		setLineNetAmtTTC();

		// Validate Return Policy for RMA
//		MOrder order = getParent();
		boolean isReturnTrx = order.isReturnTrx();
		if (isReturnTrx)
		{
			Boolean withinPolicy = true;

			if (order.getM_ReturnPolicy_ID() == 0)
				order.setM_ReturnPolicy_ID();

			if (order.getM_ReturnPolicy_ID()== 0)
				withinPolicy = false;
			else
			{
				MInOut origInOut = new MInOut (getCtx(), order.getOrig_InOut_ID(), get_Trx());
				MReturnPolicy rpolicy = new MReturnPolicy (getCtx(), order.getM_ReturnPolicy_ID(), get_Trx());

				log.fine("RMA Date : " + order.getDateOrdered() + " Shipment Date : " + origInOut.getMovementDate());
			    withinPolicy = rpolicy.checkReturnPolicy(origInOut.getMovementDate(),order.getDateOrdered(),getM_Product_ID());
			}

			if(!withinPolicy)
			{
				if ( !MRole.getDefault(getCtx(), false).isOverrideReturnPolicy())
				{
					log.saveError("Error", Msg.getMsg(getCtx(), "ReturnPolicyExceeded"));
					return false;
				}
				else
					log.saveWarning("Warning", Msg.getMsg(getCtx(), "ReturnPolicyExceeded"));
			}
		}
		
		// Check Qty to Deliver
		// MERGE
		MDocType dt = MDocType.get(getCtx(), getParent().getC_DocTypeTarget_ID());
		MDocTypeProxy dtp = new MDocTypeProxy(dt);
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), getParent().getC_DocTypeTarget_ID(), get_Trx());
		//if ( (getCtx().getContext("#IsEGGO_CLIENTID").equals("Y"))
		if (dti != null && dti.isCuisine()// MERGE
				&& this.getParent().isSOTrx()){
			if (getQtyEntered().compareTo(BigDecimal.ZERO) > 0 && get_ValueAsBigDecimal("QtyToDeliver") != null && get_ValueAsBigDecimal("QtyToDeliver").compareTo(getQtyEntered().subtract(getQtyDelivered())) > 0 ){
				log.saveError("Error", Msg.getMsg(getCtx(), "ToDelivetQtyExceeded"));
				return false;
			}
			//if (get_ValueAsBigDecimal("QtyToDeliver") != null && get_ValueAsBigDecimal("QtyToDeliver").compareTo(BigDecimal.ZERO) < 0 ) {
			if (get_ValueAsBigDecimal("QtyToDeliver") != null && 
					(get_ValueAsBD("QtyToDeliver").compareTo(BigDecimal.ZERO) < 0 && getQtyEntered().compareTo(BigDecimal.ZERO) > 0 
					|| get_ValueAsBD("QtyToDeliver").compareTo(BigDecimal.ZERO) > 0 && getQtyEntered().compareTo(BigDecimal.ZERO) < 0)		
				) {	
				log.saveError("Error", Msg.getMsg(getCtx(), "POS_ERR_QTYNEG"));
				return false;
			}
		}
		//if((getCtx().getContext("#IsEGGO_CLIENTID").equals("Y"))
		if (dti.isCuisine() // MERGE
				&& getParent().isSOTrx() && getQtyDelivered().equals(getQtyEntered()))
		{
			setProcessed(true);
		}
		
		return true;
	}	//	beforeSave


	/**
	 * 	Before Delete
	 *	@return true if it can be deleted
	 */
	@Override
	protected boolean beforeDelete ()
	{
		//	R/O Check - Something delivered. etc.
		if (Env.ZERO.compareTo(getQtyDelivered()) != 0)
		{
			log.saveError("DeleteError", Msg.translate(getCtx(), "QtyDelivered") + "=" + getQtyDelivered());
			return false;
		}
		if (Env.ZERO.compareTo(getQtyInvoiced()) != 0)
		{
			log.saveError("DeleteError", Msg.translate(getCtx(), "QtyInvoiced") + "=" + getQtyInvoiced());
			return false;
		}
		if (Env.ZERO.compareTo(getQtyReserved()) != 0)
		{
			//	For PO should be On Order
			log.saveError("DeleteError", Msg.translate(getCtx(), "QtyReserved") + "=" + getQtyReserved());
			return false;
		}
		if (Env.ZERO.compareTo(getQtyDedicated()) != 0)
		{
			log.saveError("DeleteError", Msg.translate(getCtx(), "QtyDedicated") + "=" + getQtyDedicated());
			return false;
		}
		if (Env.ZERO.compareTo(getQtyAllocated()) != 0)
		{
			log.saveError("DeleteError", Msg.translate(getCtx(), "QtyAllocated") + "=" + getQtyAllocated());
			return false;
		}

		return true;
	}	//	beforeDelete

	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return saved
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{

		
//		PosCtx.setConstants(getCtx(),get_Trx());
//		EggoCtx.setConstants();
		MOrgInfo moi = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_Trx());
		MOrgInfoProxy oif = new MOrgInfoProxy(moi);
		MOrgPOS orgPOS = MOrgPOS.getOrgPos(getCtx(), getAD_Org_ID(), get_Trx());
		if (oif.isPOS() && orgPOS != null && orgPOS.getDocType_WebSales_ID() == this.getParent().getC_DocTypeTarget_ID() && newRecord){
//			String stockedProduct = " AND M_PRODUCT_ID IN ( SELECT p.M_Product_ID FROM M_PRODUCT p where p.m_product_id = C_OrderLine.M_Product_ID AND p.isstocked = 'Y')";
//			int qtyOL = DB.getSQLValue(get_Trx(), "SELECT SUM(QtyEntered) from C_OrderLine WHERE C_Order_ID = ? " + stockedProduct, get_ID()) ;
			String isStocked =  DB.getSQLValueString(get_Trx(), "SELECT isstocked from M_Product WHERE M_Product_ID = ? " , getM_Product_ID()) ;
			if ("Y".equalsIgnoreCase(isStocked)){
				MOrderLinePosAction olpa = new MOrderLinePosAction(getCtx(), 0, get_Trx());
				olpa.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				olpa.setAD_OrgTo_ID(getAD_Org_ID());
				olpa.setC_OrderLine_ID(this.get_ID());
				olpa.setDateAction(getDateOrdered());
				olpa.set_ValueNoCheck("Z_PosWfAction_ID", orgPOS.getPosAction_Ship_ID());
				olpa.setQtyEntered(this.getQtyEntered());
				olpa.save(get_Trx());
			}	
		}
		
		/**
		 * Generate action for service product  
		 * **/
		if(oif.isPOS() && orgPOS != null && (orgPOS.getDocType_Rep_ID()==this.getParent().getC_DocTypeTarget_ID() 
				|| orgPOS.getDocType_SavDom_ID()==this.getParent().getC_DocTypeTarget_ID()) && newRecord){
			String isStocked =  DB.getSQLValueString(get_Trx(), "SELECT isstocked from M_Product WHERE M_Product_ID = ? " , getM_Product_ID()) ;
			if ("N".equalsIgnoreCase(isStocked)){
				MOrderLinePosAction olpa = new MOrderLinePosAction(getCtx(), 0, get_Trx());
				olpa.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
				olpa.setAD_OrgTo_ID(getAD_Org_ID());
				olpa.setC_OrderLine_ID(this.get_ID());
				olpa.setDateAction(getDateOrdered());
				olpa.set_ValueNoCheck("Z_PosWfAction_ID", orgPOS.getPosAction_ShipNow_ID());
				olpa.setQtyEntered(this.getQtyEntered());
				olpa.save(get_Trx());
			}	
		}
		
		
		

		
		if (!success)
			return success;
		
//		PosCtx.setConstants();
//		if (PosCtx.DOCTYPE_VENTEWEB_ID == this.getParent().getC_DocTypeTarget_ID() && newRecord){
//			String stockedProduct = " AND M_PRODUCT_ID IN ( SELECT p.M_Product_ID FROM M_PRODUCT p where p.m_product_id = C_OrderLine.M_Product_ID AND p.isstocked = 'Y')";
//			int qtyOL = DB.getSQLValue(get_Trx(), "SELECT SUM(QtyEntered) from C_OrderLine WHERE C_Order_ID = ? " + stockedProduct, get_ID()) ;
//			if (qtyOL != 0){
//				MOrderLinePosAction olpa = new MOrderLinePosAction(getCtx(), 0, get_Trx());
//				olpa.setClientOrg(getAD_Client_ID(), getAD_Org_ID());
//				olpa.setAD_OrgTo_ID(getAD_OrgTrx_ID());
//				olpa.setC_OrderLine_ID(this.get_ID());
//				olpa.setZ_PosWfAction_ID(PosCtx.ACTION_A_LIVRER_ID);
//				olpa.setQtyEntered(this.getQtyEntered());
//				olpa.save(get_Trx());
//			}	
//		}	

		
		
		
		if (!getCtx().isBatchMode())
		{
			if (!newRecord && is_ValueChanged("C_Tax_ID"))
			{
				Object old = get_ValueOld("C_Tax_ID");
				if (old == null)
				{
					s_log.fine("No Old Tax");
				}
				int oldC_Tax_ID = ((Integer)old).intValue();
				//	Recalculate Tax for old Tax
				MOrderTax tax = MOrderTax.get (this.getCtx(), getC_Order_ID(), oldC_Tax_ID, getPrecision(),
						get_Trx(), getAD_Client_ID(), getAD_Org_ID(), isTaxIncluded());	//	old Tax
				if (tax != null)
				{
					if (!tax.calculateTaxFromLines())
						return false;
					if (!tax.save(get_Trx()))
						return false;
				}
			}
			if(!updateHeaderTax())
				return false;
			//String docType = DB.getSQLValueString(get_Trx(), "select name from c_doctype where c_doctype_id = ?", this.getParent().getC_DocTypeTarget_ID());
			MDocType docType = MDocType.get(getCtx(), this.getParent().getC_DocTypeTarget_ID());
			MDocTypeProxy docTypeProxy = new MDocTypeProxy(docType);
			MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), this.getParent().getC_DocTypeTarget_ID(), get_Trx());
			// MERGE
			//if (getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")){
			if (dti != null && dti.isCuisine()) {
				// Margin Calulation
				if (MOrder.DOCSTATUS_InProgress.equalsIgnoreCase(this.getParent().getDocStatus()) 
						|| dti.isDirect() //MERGE
						|| dti.isStore() //MERGE
						|| dti.isDevis() //MERGE
						|| dti.isPlacard()//MERGE
						) //MERGE
					this.getParent().createOrderMargin();
			}

		}

		// Order: Fully Invoiced
		if (!getCtx().isBatchMode() && !newRecord && is_ValueChanged("QtyInvoiced"))
		{
			String sql = "UPDATE C_Order o"
				+ " SET IsInvoiced = CASE WHEN ("
					+ "SELECT COALESCE(SUM(QtyOrdered),0)-COALESCE(SUM(QtyInvoiced),0) "
					+ "FROM C_OrderLine ol WHERE ol.C_Order_ID=o.C_Order_ID) = 0 THEN 'Y' ELSE 'N' END "
				+ "WHERE C_Order_ID=?";
			int no = DB.executeUpdate(sql, getC_Order_ID(),get_Trx());
			if (no != 1)
				return false;
		}

		MDocType dt = MDocType.get(getCtx(), getParent().getC_DocTypeTarget_ID());
		MDocTypeProxy dtp = new MDocTypeProxy(dt);
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), getParent().getC_DocTypeTarget_ID(), get_Trx());
		// Order: Fully Delivered EGGO
		if (!getCtx().isBatchMode() && !newRecord && is_ValueChanged("QtyDelivered") &&
				// && (getCtx().getContext("#IsEGGO_CLIENTID").equals("Y")))
				dti != null && dti.isCuisine()  ) // MERGE
		{
			String sql = "UPDATE C_Order o"
				+ " SET IsDelivered = CASE WHEN ("
					+ "SELECT COUNT(*) "
					+ "FROM C_OrderLine ol " 
					+ "INNER JOIN M_Product p on p.M_product_ID = ol.m_product_id and p.isStocked = 'Y' " 
					+ "WHERE ol.C_Order_ID=o.C_Order_ID AND ((COALESCE(QtyOrdered,0) > COALESCE(QtyDelivered,0) and COALESCE(QtyOrdered,0) >0) " + 
					" OR (COALESCE(QtyOrdered,0) < COALESCE(QtyDelivered,0) and COALESCE(QtyOrdered,0) <0 ))) > 0 THEN 'N' ELSE 'Y' END "
				+ "WHERE C_Order_ID=?";
			int no2 = DB.executeUpdate(sql, getC_Order_ID(), get_Trx());
			if (no2 != 1)
				return false;
			else
			{
				WSUtil.updateOrder(getCtx(), m_parent, false, get_Trx());
			}
		}
		
		// Order: Fully Delivered Eurocenter
				if (!getCtx().isBatchMode() && !newRecord && is_ValueChanged("QtyInProcess") && oif.isPOS())
				{
					String sql = "UPDATE C_Order o"
						+ " SET IsDelivered = CASE WHEN ("
							+ "SELECT COUNT(*) "
							+ "FROM C_OrderLine ol " 
							+ "INNER JOIN M_Product p on p.M_product_ID = ol.m_product_id and p.isStocked = 'Y' " 
							+ " WHERE ol.C_Order_ID=o.C_Order_ID AND COALESCE(QTYINPROCESS,0) > 0 ) > 0 THEN 'N' ELSE 'Y' END "
						+ "WHERE C_Order_ID=?";
					int no2 = DB.executeUpdate(sql, getC_Order_ID(), get_Trx());
					if (no2 != 1)
						return false;
				}
				
				
		//Calcul de ZGrandTotal pour le POS
				if (!getCtx().isBatchMode() && oif.isPOS())
				{
					String sql = "UPDATE C_Order o"
						+ " SET Z_GrandTotal = (CASE WHEN (o.z_origorder IS NOT NULL AND nvl(o.Z_GrandTotal,0)=0) THEN" +
						" (SELECT SUM((l.qtyentered-l.qtyreturned)*l.priceentered) FROM c_orderline l where l.c_order_id=o.c_order_id)" +
						" ELSE o.Z_GrandTotal" +
						" END)" +
						" WHERE o.C_Order_ID=?";	
					
					int no = DB.executeUpdate(sql, getC_Order_ID(),get_Trx());
					if (no != 1)
						return false;
				}
				if(!this.getParent().getDocStatus().equals(MOrder.DOCSTATUS_Drafted))	
					WSUtil.updateOrder(getCtx(), this.getParent(), newRecord, get_Trx());
				
		return true;
	}	//	afterSave

	/**
	 * 	After Delete
	 *	@param success success
	 *	@return deleted
	 */
	@Override
	protected boolean afterDelete (boolean success)
	{
		if (!success)
			return success;
		if (getS_ResourceAssignment_ID() != 0)
		{
			MResourceAssignment ra = new MResourceAssignment(getCtx(), getS_ResourceAssignment_ID(), get_Trx());
			ra.delete(true);
		}

		return updateHeaderTax();
	}	//	afterDelete

	/**
	 *	Update Tax & Header
	 *	@return true if header updated
	 */
	public boolean updateHeaderTax()
	{
		//	Recalculate Tax for this Tax
		MOrderTax tax = MOrderTax.get (getCtx(), getC_Order_ID(), getC_Tax_ID(), getPrecision(),
			get_Trx(), getAD_Client_ID(), getAD_Org_ID(), isTaxIncluded());	//	current Tax
		if (!tax.calculateTaxFromLines())
			return false;
		if (!tax.save(get_Trx()))
			return false;

		//	Update Order Header
		String sql = "UPDATE C_Order i"
			+ " SET TotalLines="
				+ "(SELECT COALESCE(SUM(LineNetAmt),0) FROM C_OrderLine il WHERE i.C_Order_ID=il.C_Order_ID) "
			+ "WHERE C_Order_ID=?";
		int no = DB.executeUpdate(sql, new Object[] {getC_Order_ID()}, get_Trx());
		if (no != 1)
			log.warning("(1) #" + no);

		if (isTaxIncluded())
			sql = "UPDATE C_Order i "
				+ "SET GrandTotal=TotalLines "
				+ "WHERE C_Order_ID=?";
		else
			sql = "UPDATE C_Order i "
				+ "SET GrandTotal=TotalLines+"
					+ "(SELECT COALESCE(SUM(TaxAmt),0) FROM C_OrderTax it WHERE i.C_Order_ID=it.C_Order_ID) "
					+ "WHERE C_Order_ID=?";
		no = DB.executeUpdate(sql, new Object[]{getC_Order_ID()}, get_Trx());
		if (no != 1)
			log.warning("(2) #" + no);
		m_parent = null;
		
		this.getParent().checkOrderPaySchedule();
		
		
		return no == 1;
	}	//	updateHeaderTax

	public MOrderLine getRef_OrderLine ()
	{
		String sql = "SELECT C_OrderLine_ID FROM C_OrderLine WHERE Ref_OrderLine_ID=?";
		MOrderLine line=null;

		int ii = DB.getSQLValue (get_Trx(), sql, getC_OrderLine_ID());
		if(ii > 0)
			line = new MOrderLine(getCtx(), ii, get_Trx());
		return line;
	}
	
	/**
	 * 	Get InOut open quantity
	 *	@param ctx context
	 *	@param M_InOutLine_ID shipment line
	 *	@param excludeC_OrderLine_ID exclude C_OrderLine_ID
	 *	@return QtyReturn
	 */
	public static BigDecimal getInOutOpenQty(Ctx ctx, int M_InOutLine_ID, int C_Order_ID, int excludeC_OrderLine_ID)
	{
		MInOutLine inOutLine = new MInOutLine (ctx, M_InOutLine_ID, null);
		BigDecimal shippedQty = inOutLine.getMovementQty();

		BigDecimal retValue = Env.ZERO;
		String sql = "SELECT SUM(QtyOrdered) "
			+ "FROM C_OrderLine ol"
			+ " INNER JOIN C_Order o ON (ol.C_Order_ID=o.C_Order_ID) "
			+ "WHERE ol.Orig_InOutLine_ID=?"	//	#1
			+ " AND o.IsReturnTrx='Y' "
			+ " AND (o.DocStatus IN ('CO','CL') OR o.C_Order_ID=?) "
			+ " AND ol.C_OrderLine_ID<>?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			pstmt.setInt (1, M_InOutLine_ID);
			pstmt.setInt (2, C_Order_ID);
			pstmt.setInt (3, excludeC_OrderLine_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
				retValue = rs.getBigDecimal(1);
		}
		catch (Exception e)
		{
			s_log.log (Level.SEVERE, sql, e);
		}
		finally
		{
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
		}
		if (retValue == null)
			s_log.fine("-");
		else
			s_log.fine(retValue.toString());
		
		if (retValue != null)
			return shippedQty.subtract(retValue);
		
		return shippedQty;
	}	//	getQtyRMA
	
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setMProductState(String MProductState)
    {
        set_Value ("M_ProductState", MProductState);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getMProductState() 
    {
        return (String)get_Value("M_ProductState");
        
    }
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setAccessories(String Accessories)
    {
        set_Value ("Accessories", Accessories);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public String getAccessories() 
    {
        return (String)get_Value("Accessories");
        
    } 
    
    /** Set Description.
    @param Description Optional short description of the record */
    public void setPurchaseDate(Timestamp purchaseDate)
    {
        set_Value ("PurchaseDate", purchaseDate);
        
    }
    
    /** Get Description.
    @return Optional short description of the record */
    public Timestamp getPurchaseDate() 
    {
        return (Timestamp)get_Value("PurchaseDate");
        
    } 
    
    public int getY_Marque_ID() {
		return get_ValueAsInt("Y_Marque_ID");
	}

	public void setY_Marque_ID(int Y_Marque_ID) {
		set_Value("Y_Marque_ID", Integer.valueOf(Y_Marque_ID));
	}

	public int getM_Product_Category_ID() {
		return get_ValueAsInt("M_Product_Category_ID");
	}

	public void setM_Product_Category_ID(int M_Product_Category_ID) {
		set_Value("M_Product_Category_ID", Integer.valueOf(M_Product_Category_ID));
	}
	
	//TA
	/** Set Price TTC.*/
    public void setLineNetAmtTTC (java.math.BigDecimal LineNetAmtTTC)
    {
        if (LineNetAmtTTC == null) throw new IllegalArgumentException ("LineNetAmtTTC is mandatory.");
        set_Value ("LineNetAmtTTC", LineNetAmtTTC);
        
    }
    
    /** Get Price TTC.*/
    public java.math.BigDecimal getLineNetAmtTTC() 
    {
        return get_ValueAsBigDecimal("LineNetAmtTTC");
        
    }
	//TA
	
	@UICallout public void setAD_Org_ID (String oldAD_Org_ID,
			String newAD_Org_ID, int windowNo) throws Exception
			{
		if( (newAD_Org_ID == null) || (newAD_Org_ID.length() == 0) )
			return;
		int AD_Org_ID = Integer.parseInt( newAD_Org_ID );
		if( AD_Org_ID == 0 )
			return;

		if(getParent().isSOTrx()){
			MOrg org = MOrg.get(getCtx(), AD_Org_ID);
			set_Value("IsRefact", org.get_ValueAsBoolean("IsRefact"));
			if (getParent().isSOTrx())
				set_Value("IsRefact", false);

			int belgium_Coutry_ID = 103;
			int lux_country_id = 233;

			String validationSql = "";
			MOrder parent = getParent();
			MBPartnerLocation billBPLocation = new MBPartnerLocation(getCtx(), parent.getC_BPartner_Location_ID(), null);
			MLocation billLocation = new MLocation(getCtx(), billBPLocation.getC_Location_ID(), null);

			MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, null);
			MLocation orgLocation = new MLocation(getCtx(), orgInfo.getC_Location_ID(), null);

			if(orgLocation.getC_Country_ID() == belgium_Coutry_ID && billLocation.getC_Country_ID() == lux_country_id){
				Object[] params = {"C_Tax(SO/PO Type) - Cocontractant | IsTaxTransf"};
				validationSql = QueryUtil.getSQLValueString(null, "select code from AD_Val_Rule where name = ? ", params);
				validationSql = " AND " + Env.parseContext(getCtx(), 1, validationSql, true, false);
			}

			if(" AND ".equals(validationSql))
				validationSql = " ";

			int C_Tax_ID = Tax.get(getCtx(), getM_Product_ID(), getC_Charge_ID() ,  getDateOrdered(),  getDateOrdered(),
					getAD_Org_ID(), org.getM_Warehouse_ID(),
					billBPLocation.getC_BPartner_Location_ID(),		//	should be bill to
					billBPLocation.getC_BPartner_Location_ID(), m_IsSOTrx
					/*ZCOMP35*/ 	, getParent().getC_DocTypeTarget_ID(), validationSql
			);


			if (C_Tax_ID == 0)
			{
				log.log(Level.SEVERE, "No Tax found");
			}else
				setC_Tax_ID (C_Tax_ID);
		}
			}




	@UICallout public void setIsCocontractant (String oldIsCocontractant,
			String newIsCocontractant, int windowNo) throws Exception
			{
		if ((newIsCocontractant == null) || (newIsCocontractant.length() == 0))
			return;

//		if(!getParent().isSOTrx()){

			int C_Tax_ID = Tax.getTaxWithCocontractant(getCtx(),getParent().getC_BPartner_Location_ID(),0, getAD_Org_ID(), getM_Product_ID(), getC_Charge_ID(), 
					getDateOrdered(),null,getParent().getC_DocTypeTarget_ID(), getParent().isSOTrx(),newIsCocontractant.equals("Y")?true:false,getM_Warehouse_ID());

			if (C_Tax_ID == 0)
			{
				log.log(Level.SEVERE, "No Tax found");
			}else
				setC_Tax_ID (C_Tax_ID);
//		}
			}
	
    /*JL*/
    /** Set Price.
    @param PriceEntered Price Entered - the price based on the selected/base UoM */
    public void setPriceEntered (java.math.BigDecimal PriceEntered)
    {
        if (PriceEntered == null) throw new IllegalArgumentException ("PriceEntered is mandatory.");
        set_Value ("PriceEntered", PriceEntered);
        if (getC_Tax_ID() >0) {
    		BigDecimal rate = DB.getSQLValueBD (get_Trx(), sqlrate, getC_Tax_ID());
    		BigDecimal ttc = PriceEntered.add(PriceEntered.multiply(rate)).setScale(getPrecision(), BigDecimal.ROUND_HALF_UP);
    		setPriceEnteredTTC(ttc);
    		BigDecimal LineNetAmtTTC = ttc;
    		if (LineNetAmtTTC.scale() > getPrecision())
    			LineNetAmtTTC = LineNetAmtTTC.setScale(getPrecision(), BigDecimal.ROUND_HALF_UP);
    		this.setLineNetAmtTTC(LineNetAmtTTC);
        }
        
        
    }
    
    /** Get Price.
    @return Price Entered - the price based on the selected/base UoM */
    public java.math.BigDecimal getPriceEntered() 
    {
        return get_ValueAsBigDecimal("PriceEntered");
        
    }


    public void setPriceEntered (java.math.BigDecimal PriceEntered, String nottc)
    {
        if (PriceEntered == null) throw new IllegalArgumentException ("PriceEntered is mandatory.");
        set_Value ("PriceEntered", PriceEntered);
    }

	
    /** Set Price TTC.
    @param PriceEnteredTTC Price Entered - the price based on the selected/base UoM */
    public void setPriceEnteredTTC (java.math.BigDecimal PriceEnteredTTC)
    {
        if (PriceEnteredTTC == null) throw new IllegalArgumentException ("PriceEnteredTTC is mandatory. ");
        set_Value ("PriceEnteredTTC", PriceEnteredTTC);
        // Compute HT Price
        if (getC_Tax_ID() >0) {
    		BigDecimal rate = DB.getSQLValueBD (get_Trx(), sqlrate, getC_Tax_ID());
    		BigDecimal htc = PriceEnteredTTC.divide(java.math.BigDecimal.ONE.add(rate),getPrecision(),BigDecimal.ROUND_HALF_UP);
    		setPriceEntered(htc,"NOTTC");
        }

        
    }
    
    /** Get Price TTC.
    @return Price EnteredTTC - the price based on the selected/base UoM */
    public java.math.BigDecimal getPriceEnteredTTC() 
    {
        return get_ValueAsBigDecimal("PriceEnteredTTC");
        
    }
    /*JL*/
    
    public BigDecimal getReservedQty(){
    	if(get_ValueAsInt("Z_OrigOrderline_ID") > 0)
    		return BigDecimal.ZERO;
    	else
    		return getQtyReserved();
    }
    
    public java.math.BigDecimal getXX_QtyDA() 
    {
        return get_ValueAsBigDecimal("XX_QtyDA");
        
    }
    
    public void setXX_QtyDA (java.math.BigDecimal XX_QtyDA)
    {
        set_Value ("XX_QtyDA", XX_QtyDA==null?Env.ZERO:XX_QtyDA);
        
    } 

}	//	MOrderLine
