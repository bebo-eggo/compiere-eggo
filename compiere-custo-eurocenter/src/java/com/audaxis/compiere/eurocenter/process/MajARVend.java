package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Msg;

import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.model.MPoAcknoledgment;

import com.audaxis.compiere.eurocenter.ws.WSUtil;
import com.audaxis.compiere.util.CompiereException;

public class MajARVend extends SvrProcess{

	private int Ref_Order_ID =0;
	private String NoAR,newNoAR = null;
	//private BigDecimal ArAmt = null;
	//private Timestamp dateAr = null;
	//private boolean isPrincipal = false;
	private boolean isControlled = false;
	public MajARVend() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null && element.getParameter_To() == null)
				;
			else if (name.equals("Ref_Order_ID"))
				Ref_Order_ID = element.getParameterAsInt();
			else if (name.equals("NoAR"))
				NoAR = ""+element.getParameterAsInt();
		//	else if (name.equals("NewNoAR"))
		//		newNoAR = (String)element.getParameter();
		//	else if (name.equals("ArAmt"))
		//		ArAmt = (BigDecimal)element.getParameter();
		//	else if (name.equals("DateAR"))
		//		dateAr = (Timestamp)element.getParameter();
		//	else if (name.equals("Z_ArMain"))
		//		isPrincipal = ((String)element.getParameter()).equals("Y");
			else if (name.equals("Z_ArControled"))
				isControlled = ((String)element.getParameter()).equals("Y");
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		MOrder mo = new MOrder(getCtx(), Ref_Order_ID, get_Trx());
		//Find if NoAR exist pour OA
		MPoAcknoledgment newAr = new MPoAcknoledgment(getCtx(),Integer.parseInt(NoAR) , get_Trx() );
		if(newAr != null && newAr.getZ_PoAcknoledgment_ID()==0)
		{
			return Msg.translate(getCtx(), "EGGO_AR_NOT_EXISTS").replace("$NoAR$", NoAR);
		}
		//newAr.setAD_Org_ID(mo.getAD_Org_ID());
		//newAr.setC_Order_ID(Ref_Order_ID);
		//if(newNoAR !=null)
		//	newAr.setZ_ArNumber(newNoAR);
		//if (ArAmt != null) 
		//{	
		//	if(!ArAmt.equals(new BigDecimal(-1)))
		//		newAr.setZ_ArAmt(ArAmt);
		//}
		//newAr.setZ_ArDate(dateAr);
		//newAr.setZ_ArMain(isPrincipal);
		newAr.setZ_ArControled(isControlled);
		newAr.save();
		//WSUtil.updatePoAcknoledgment(getCtx(), newAr, false, get_Trx());
		return Msg.translate(getCtx(), "EGGO_AR_ADD_MAJ").replace("$NoAR$", NoAR);	

	}

}
