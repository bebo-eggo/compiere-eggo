package com.ecenter.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class MInOutWS extends org.compiere.model.MInOut {

	public MInOutWS(Ctx ctx, int M_InOut_ID, Trx trx) {
		super(ctx, M_InOut_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MInOutWS(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public MInOutWS(MOrder order, int C_DocTypeShipment_ID, Timestamp movementDate) {
		super(order, C_DocTypeShipment_ID, movementDate);
		// TODO Auto-generated constructor stub
	}

	public MInOutWS(MOrder order, int C_DocTypeShipment_ID, Timestamp movementDate, int AD_org_ID) {
		super(order, C_DocTypeShipment_ID, movementDate, AD_org_ID);
		// TODO Auto-generated constructor stub
	}

	public MInOutWS(MInvoice invoice, int C_DocTypeShipment_ID, Timestamp movementDate, int M_Warehouse_ID) {
		super(invoice, C_DocTypeShipment_ID, movementDate, M_Warehouse_ID);
		// TODO Auto-generated constructor stub
	}

	public MInOutWS(org.compiere.model.MInOut original, int C_DocTypeShipment_ID, Timestamp movementDate) {
		super(original, C_DocTypeShipment_ID, movementDate);
		// TODO Auto-generated constructor stub
	}
	
	public void setOrder (MOrder order)
	{
		setClientOrg(order);
		setC_Order_ID(order.getC_Order_ID());
		//
		setC_BPartner_ID (order.getC_BPartner_ID());
		setC_BPartner_Location_ID (order.getC_BPartner_Location_ID());	//	shipment address
		setAD_User_ID(order.getAD_User_ID());
		//
		setM_Warehouse_ID (order.getM_Warehouse_ID());
		setIsSOTrx (order.isSOTrx());
		setIsReturnTrx (order.isReturnTrx());

		if (!isReturnTrx())
			setMovementType (order.isSOTrx() ? MOVEMENTTYPE_CustomerShipment : MOVEMENTTYPE_VendorReceipts);
		else
			setMovementType (order.isSOTrx() ? MOVEMENTTYPE_CustomerReturns : MOVEMENTTYPE_VendorReturns);
		//
		setDeliveryRule (order.getDeliveryRule());
		setDeliveryViaRule (order.getDeliveryViaRule());
		setM_Shipper_ID(order.getM_Shipper_ID());
		setFreightCostRule (order.getFreightCostRule());
		setFreightAmt(order.getFreightAmt());
		setSalesRep_ID(order.getSalesRep_ID());
		//
		setC_Activity_ID(order.getC_Activity_ID());
		setC_Campaign_ID(order.getC_Campaign_ID());
		setC_Charge_ID(order.getC_Charge_ID());
		setChargeAmt(order.getChargeAmt());
		//
		setC_Project_ID(order.getC_Project_ID());
		setDateOrdered(order.getDateOrdered());
		setDescription(order.getDescription());
		setPOReference(order.getPOReference());
		setSalesRep_ID(order.getSalesRep_ID());
		setAD_OrgTrx_ID(order.getAD_OrgTrx_ID());
		setUser1_ID(order.getUser1_ID());
		setUser2_ID(order.getUser2_ID());

	}	//	setOrder

}
