package com.audaxis.compiere.eurocenter.process;

import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MWarehouse;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.model.MTypeOA;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.util.CompiereException;


public class GenerateInOutOV  extends SvrProcessExtended{

	private int z_Order_ID;
	private int record_ID;

	@Override
	protected void prepare() {
		
			z_Order_ID = getParameterAsInt("Z_Order_ID");
			record_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		
		MOrder OV = new MOrder(getCtx(), record_ID, get_Trx());
		MOrder OA = new MOrder(getCtx(), z_Order_ID, get_Trx());
		
		MTypeOA toa = MTypeOA.getTypeOAByValue(getCtx(), getAD_Client_ID(), "POSE", get_Trx());
		//OA de POSE
		if(OA.getC_BPartner_ID() != OV.get_ValueAsInt("Monteur_ID") && OA.get_ValueAsInt("Z_TypeOA_ID")>0 && OA.get_ValueAsInt("Z_TypeOA_ID") == toa.getZ_TypeOA_ID())
			throw new CompiereException(Msg.getMsg(getCtx(), "EGGO_POSE_ERR"));
		
		int docType_ID = DB.getSQLValue(get_Trx(), "Select MAX(C_DocType_ID) from C_DocType where "
				+ "C_DocType.DocBaseType IN ('MMR', 'MMS') AND C_DocType.IsSOTrx='N' AND C_DocType.IsReturnTrx='N' "
				+ "AND C_DocType.C_DocType_ID!=1002288 AND C_DocType.C_DocType_ID!=1005026 AND C_DocType.C_DocType_ID!=1006391 and AD_Client_ID = ? ", OA.getAD_Client_ID());
		MInOut mi = null;
		if(OA!=null && z_Order_ID>0)
		{//VS188026
			mi = new MInOut(getCtx(), 0, get_Trx());
			mi.setOrder(OA);
			mi.setC_DocType_ID(docType_ID);
			mi.isFromOV = true;
			mi.save();
		}
		if(mi!=null){
			MOrderLine[] OALs = OA.getLines();
			for (int i = 0; i < OALs.length; i++) {
				MInOutLine mil = new MInOutLine(mi);
				mil.setOrderLine(OALs[i], 0, OALs[i].getQtyOrdered());
				mil.setQty(OALs[i].getQtyOrdered());
				mil.save();
			}

			boolean successPay = DocumentEngine.processIt(mi, DocActionConstants.ACTION_Complete);
			mi.save();
			if (!successPay) 
				throw new CompiereException(mi.getProcessMsg());
		
		}
		
		return ""+mi.getDocumentNo();
	}

}
