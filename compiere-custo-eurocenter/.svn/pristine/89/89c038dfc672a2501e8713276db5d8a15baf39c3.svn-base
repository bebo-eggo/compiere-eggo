package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.AccompteUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Language;
import org.compiere.util.Msg;

import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.model.MTypeEcheance;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.sync.proxy.MOrderPaymScheduleProxy;
import com.audaxis.compiere.sync.proxy.MTypeEcheanceProxy;
import com.audaxis.compiere.util.CompiereException;

public class GenerateInvoiceProm extends SvrProcessExtended {

	private int recordID;
	private int orderid;
	private String			m_docAction = MInvoice.DOCACTION_Complete;
	@Override
	protected void prepare() {

		recordID=getRecord_ID();
		orderid=getParameterAsInt("C_Order_ID");
	}

	@Override
	protected String doIt() throws Exception {

		if(recordID>0)
		{
			MOrderPaymSchedule orderpay=new MOrderPaymSchedule(getCtx(), recordID, get_Trx());
			MTypeEcheance ech=new MTypeEcheance(getCtx(), orderpay.getZ_TypeEcheance_ID(), get_Trx());
			MTypeEcheanceProxy echproxy=new MTypeEcheanceProxy(ech);
			if(! echproxy.IsProm())
				throw new CompiereException("Le Type d'échéance n'est pas de type Promoteur");
			MOrderPaymScheduleProxy proxy=new MOrderPaymScheduleProxy(orderpay);
			MOrder order=new MOrder(getCtx(),orderpay.getC_Order_ID(),get_Trx());
			if(orderpay.getTotalAmt().compareTo(BigDecimal.ZERO)==0)
				throw new CompiereException(Msg.getMsg(Language.AD_Language_en_US, "ERR_ACP_PROM1"));
			//Create Invoice Prom
			if(proxy.getPROM_INV_ID()<=0)
			{
				//Create Invoice
				MInvoice inv=CreateInvoiceProm( ech, order, proxy, echproxy, orderpay);
				// Create NC
				CreateNC( order, echproxy, orderpay, inv, proxy);

			}

		}
		else
		{
			//Test Si existe Facture Attaché
			int ordersch= DB.getSQLValue(get_Trx(), "SELECT Z_OrderPaymSchedule_ID FROM Z_OrderPaymSchedule WHERE C_Order_ID=? AND PROM_INV_ID is not null AND rownum=1 ", orderid);
			int minouid=DB.getSQLValue(get_Trx(), "SELECT M_InOut_ID FROM M_InOut WHERE C_Order_ID=?", orderid);
			if(ordersch>0)
				return "Already there is a type of Invoice Promoter Attached to this Order of Sale";
			if(minouid>0)
				return "There are bound shipment to this order of sale";
			else
			{
				StringBuffer sql=new StringBuffer("SELECT z.Z_OrderPaymSchedule_ID FROM Z_OrderPaymSchedule z WHERE z.C_Order_ID=? ")
				.append(" AND z.Created = (SELECT MIN(Created) FROM Z_OrderPaymSchedule WHERE C_Order_ID=z.C_Order_ID AND TotalAmt<>0")
  .append(" AND Z_TypeEcheance_ID =(SELECT MAX(Z_TypeEcheance_ID) FROM Z_TypeEcheance WHERE AD_Client_ID=? AND IsProm='Y'))")
				.append(" Order By z.Z_OrderPaymSchedule_ID ASC ");
				ordersch=DB.getSQLValue(get_Trx(),sql.toString(),orderid,getAD_Client_ID());
				if(ordersch>0)
				{
					MOrderPaymSchedule orderpay=new MOrderPaymSchedule(getCtx(), ordersch, get_Trx());
					MTypeEcheance ech=new MTypeEcheance(getCtx(), orderpay.getZ_TypeEcheance_ID(), get_Trx());
					MTypeEcheanceProxy echproxy=new MTypeEcheanceProxy(ech);

					MOrderPaymScheduleProxy proxy=new MOrderPaymScheduleProxy(orderpay);
					MOrder order=new MOrder(getCtx(),orderpay.getC_Order_ID(),get_Trx());

					//Create Invoice
					MInvoice inv=CreateInvoiceProm( ech, order, proxy, echproxy, orderpay);
					// Create NC
					CreateNC( order, echproxy, orderpay, inv, proxy);


				}


			}
		}
		return null;
	}
	public void UpdateLineAmt(BigDecimal linenetamt,int C_InvoiceLine_ID)
	{
		DB.executeUpdate("UPDATE C_InvoiceLine set LineNetAmt=? WHERE C_InvoiceLine_ID=?",new Object[]{linenetamt,C_InvoiceLine_ID},get_Trx());
	}

	public MInvoice CreateInvoiceProm(MTypeEcheance ech,MOrder order,MOrderPaymScheduleProxy proxy,
			MTypeEcheanceProxy echproxy,MOrderPaymSchedule orderpay)
	{
		AccompteUtil acu = new AccompteUtil(getCtx(), getAD_Client_ID(), get_Trx());
		MInvoice inv=new MInvoice(getCtx(), 0, get_Trx());
		MInvoiceLine invl=null;
		int pricelistid=acu.getAccompte_PriceList_ID();
		inv.setC_Order_ID(order.getC_Order_ID());
		inv.setC_DocType_ID(new Integer(ech.get_ValueAsString("C_DocType_ID")));
		inv.setC_DocTypeTarget_ID(new Integer(ech.get_ValueAsString("C_DocType_ID")));
		inv.setM_PriceList_ID(pricelistid);
		inv.setAD_Org_ID(order.getAD_Org_ID());
		inv.setDateAcct(new Timestamp(System.currentTimeMillis()));
		inv.setPOReference(order.getPOReference());
		inv.setDescription(proxy.getPROM_Comments());
		inv.setBPartner(new MBPartner(getCtx(), proxy.getPROM_BPartner_ID(), get_Trx()));
		//inv.setC_BPartner_ID(proxy.getPROM_BPartner_ID());
		inv.setC_BPartner_Location_ID(proxy.getPROM_BPartner_Location_ID());
		if(inv.save())
		{
			invl=new MInvoiceLine(inv);
			invl.setM_Product_ID(echproxy.getM_Product_ID());
			invl.setQty(1);
			invl.setPrice(orderpay.getTotalAmt());
		}
		// ProcessIt 
		if (invl.save() && m_docAction != null && m_docAction.length() > 0)
		{
			UpdateLineAmt(orderpay.getTotalAmt(),invl.getC_InvoiceLine_ID());
			inv.setDocAction(m_docAction);
			inv.save();
			boolean Ok=DocumentEngine.processIt(inv,m_docAction);
			if(Ok)
			{
				inv.save();
				proxy.setPROM_INV_ID(inv.getC_Invoice_ID());
				orderpay.save();
			}

		}
		return inv;
	}

	public void CreateNC(MOrder order,MTypeEcheanceProxy echproxy,MOrderPaymSchedule orderpay,
			MInvoice inv,MOrderPaymScheduleProxy proxy)
	{
		AccompteUtil acu = new AccompteUtil(getCtx(), getAD_Client_ID(), get_Trx());
		MInvoice invNC=new MInvoice(getCtx(), 0, get_Trx());
		MInvoiceLine invlNC=null;
		int pricelistid=acu.getAccompte_PriceList_ID();
		int doctypeinfoid=DB.getSQLValue(get_Trx(), "SELECT C_DoctypeInfo_ID FROM C_DoctypeInfo WHERE C_Doctype_ID=?", inv.getC_DocType_ID());
		MDocTypeInfo docinfo=new MDocTypeInfo(getCtx(), doctypeinfoid, get_Trx());
		invNC.setC_Order_ID(order.getC_Order_ID());
		invNC.setC_DocType_ID(docinfo.getC_DocType_RAccompte_ID());
		invNC.setM_PriceList_ID(pricelistid);
		invNC.setC_DocTypeTarget_ID(docinfo.getC_DocType_RAccompte_ID());
		invNC.setC_BPartner_ID(order.getBill_BPartner_ID());
		invNC.setC_BPartner_Location_ID(order.getBill_Location_ID());
		invNC.setPOReference(order.getPOReference());
		invNC.setAD_User_ID(order.getBill_User_ID());
		invNC.setAD_Org_ID(order.getAD_Org_ID());
		if(invNC.save())
		{
			invlNC=new MInvoiceLine(invNC);
			invlNC.setM_Product_ID(echproxy.getM_Product_ID());
			invlNC.setQty(-1);
			invlNC.setPrice(orderpay.getTotalAmt());
		}
		// ProcessIt 
		if (invlNC.save() && m_docAction != null && m_docAction.length() > 0)
		{
			//UpdateLineAmt(orderpay.getTotalAmt(),invlNC.getC_InvoiceLine_ID());
			invNC.setDocAction(m_docAction);
			invNC.save();
			DocumentEngine.processIt(invNC,m_docAction);
			invNC.save();

		}
	}


}
