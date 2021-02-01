package com.audaxis.compiere.acct;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.acct.Doc;
import org.compiere.acct.Fact;
import org.compiere.acct.FactLine;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCostDetail;
import org.compiere.model.MMatchPO;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MProductCategoryAcct;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.ProductCost;


public class Doc_MatchPO extends org.compiere.acct.Doc_MatchPO {

	public Doc_MatchPO(MAcctSchema[] ass, ResultSet rs, Trx trxName) {
		super(ass, rs, trxName);
	}
	
	/**
	 *  Load Specific Document Details
	 *  @return error message or null
	 */
	@Override
	public String loadDocumentDetails() 
	{
		setC_Currency_ID (Doc.NO_CURRENCY);
		MMatchPO matchPO = (MMatchPO)getPO();
		setDateDoc(matchPO.getDateTrx());
		//
		m_M_AttributeSetInstance_ID = matchPO.getM_AttributeSetInstance_ID();
		setQty (matchPO.getQty());
		//
		m_C_OrderLine_ID = matchPO.getC_OrderLine_ID();
		m_oLine = new MOrderLine (getCtx(), m_C_OrderLine_ID, getTrx());
		//
		m_M_InOutLine_ID = matchPO.getM_InOutLine_ID();
	//	m_C_InvoiceLine_ID = matchPO.getC_InvoiceLine_ID();
		//
		m_pc = new ProductCost (Env.getCtx(), 
			getM_Product_ID(), m_M_AttributeSetInstance_ID, getTrx());
		m_pc.setQty(getQty());
		return null;
	}   //  loadDocumentDetails

	public ArrayList<Fact> createFacts (MAcctSchema as)
	{
		ArrayList<Fact> facts = new ArrayList<Fact>();
		//
		if (getM_Product_ID() == 0		//  Nothing to do if no Product
			|| getQty().signum() == 0
			|| m_M_InOutLine_ID == 0)	//  No posting if not matched to Shipment
		{
			log.fine("No Product/Qty - M_Product_ID=" + getM_Product_ID()
				+ ",Qty=" + getQty());
			return facts;
		}

		//  create Fact Header
		Fact fact = new Fact(this, as, Fact.POST_Actual);
		setC_Currency_ID(as.getC_Currency_ID());
		
		//	Purchase Order Line
		BigDecimal poCost = m_oLine.getPriceCost();
		if (poCost == null || poCost.signum() == 0)
			poCost = m_oLine.getPriceActual();
		poCost = poCost.multiply(getQty());			//	Delivered so far
		//	Different currency
		if (m_oLine.getC_Currency_ID() != as.getC_Currency_ID())
		{
			MOrder order = m_oLine.getParent();
			BigDecimal rate = MConversionRate.getRate(
				order.getC_Currency_ID(), as.getC_Currency_ID(),
				order.getDateAcct(), order.getC_ConversionType_ID(),
				m_oLine.getAD_Client_ID(), m_oLine.getAD_Org_ID());
			if (rate == null)
			{
				p_Error = "Purchase Order not convertible - " + as.getName();
				return null;
			}
			poCost = poCost.multiply(rate);
			if (poCost.scale() > as.getCostingPrecision())
				poCost = poCost.setScale(as.getCostingPrecision(), BigDecimal.ROUND_HALF_UP);
		}

		MOrder order = m_oLine.getParent();
		boolean isReturnTrx = order.isReturnTrx();
		log.fine("Temp");
		//	Create PO Cost Detail Record firs
		MCostDetail.createOrder(as, m_oLine.getAD_Org_ID(), 
				getM_Product_ID(), m_M_AttributeSetInstance_ID,
				m_C_OrderLine_ID, 0,		//	no cost element
				isReturnTrx? poCost.negate() : poCost, isReturnTrx? getQty().negate(): getQty(),			//	Delivered
				m_oLine.getDescription(), getTrx());
	
		
		//	Current Costs
		String costingMethod = as.getCostingMethod();
		MProduct product = MProduct.get(getCtx(), getM_Product_ID());
		MProductCategoryAcct pca = MProductCategoryAcct.get(getCtx(), 
			product.getM_Product_Category_ID(), as.getC_AcctSchema_ID(), getTrx());
		if (pca.getCostingMethod() != null)
			costingMethod = pca.getCostingMethod();
		BigDecimal costs = m_pc.getProductCosts(as, getAD_Org_ID(), 
			costingMethod, m_C_OrderLine_ID, false);	//	non-zero costs

		//ZCOM547
		// pas de Match PO pour les Service
		if (product.isService())
			return new ArrayList<Fact>();
		
		MOrg org = MOrg.get(Env.getCtx(),m_oLine.getAD_Org_ID());
		MOrgInfo inf = org.getInfo();
		Object x = inf.get_Value("Z_AllowZeroCosts");
	    boolean allowZero = false;
	    if (x != null) allowZero = ((Boolean)x).booleanValue();
	    if (!allowZero){
	    //END OF ZCOM547

		//	No Costs yet - no PPV
		if (costs == null || costs.signum() == 0)
		{
			p_Error = "Resubmit - No Costs for " + product.getName();
			log.log(Level.SEVERE, p_Error);
			return null;
		}

		//ZCOM547 START
	    }
	    else {
	    	if (costs == null)
	    		costs = Env.ZERO;
	    }
	    //ZCOM547 END
	    
		//	Difference
		BigDecimal difference = poCost.subtract(costs);
		//	Nothing to post
		if (difference.signum() == 0)
		{
			log.log(Level.FINE, "No Cost Difference for M_Product_ID=" + getM_Product_ID());
			facts.add(fact);
			return facts;
		}

		//  Product PPV
		FactLine cr = fact.createLine(null,
			m_pc.getAccount(ProductCost.ACCTTYPE_P_PPV, as),
			as.getC_Currency_ID(), difference);
		if (cr != null)
		{
			cr.setQty(getQty());
			cr.setC_BPartner_ID(m_oLine.getC_BPartner_ID());
			cr.setC_Activity_ID(m_oLine.getC_Activity_ID());
			cr.setC_Campaign_ID(m_oLine.getC_Campaign_ID());
			cr.setC_Project_ID(m_oLine.getC_Project_ID());
			cr.setC_UOM_ID(m_oLine.getC_UOM_ID());
			cr.setUser1_ID(m_oLine.getUser1_ID());
			cr.setUser2_ID(m_oLine.getUser2_ID());
		}

		//  PPV Offset
		/*ZCOM169********* NOT CONSISTENT ***********
		FactLine dr = fact.createLine(null,
			getAccount(Doc.ACCTTYPE_PPVOffset, as),
			as.getC_Currency_ID(), difference.negate());
		**/
		/*ZCOM169*/
		FactLine dr = fact.createLine(null,
				m_pc.getAccount(ProductCost.ACCTTYPE_Z_P_PPVOffset, as),
				as.getC_Currency_ID(), difference.negate());
		/*ZCOM169*/
			
		if (dr != null)
		{
			dr.setQty(getQty().negate());
			dr.setC_BPartner_ID(m_oLine.getC_BPartner_ID());
			dr.setC_Activity_ID(m_oLine.getC_Activity_ID());
			dr.setC_Campaign_ID(m_oLine.getC_Campaign_ID());
			dr.setC_Project_ID(m_oLine.getC_Project_ID());
			dr.setC_UOM_ID(m_oLine.getC_UOM_ID());
			dr.setUser1_ID(m_oLine.getUser1_ID());
			dr.setUser2_ID(m_oLine.getUser2_ID());
		}

		//
		facts.add(fact);
		return facts;
	}   //  createFact
	
}
