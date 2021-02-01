package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Msg;

import org.compiere.model.MOrder;
import org.compiere.model.MPoAcknoledgment;

import com.audaxis.compiere.eurocenter.ws.WSUtil;
import com.audaxis.compiere.util.CompiereException;

public class GenerateAR extends SvrProcess{

	private int Ref_Order_ID =0;
	private String NoAR = null;
	private BigDecimal ArAmt = null;
	private Timestamp dateAr = null;
	private boolean isPrincipal = false;
	private boolean isControlled = false;
	private String zz_SemAR = null;
	
	public GenerateAR() {
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
				NoAR = (String)element.getParameter();
			else if (name.equals("ArAmt"))
				ArAmt = (BigDecimal)element.getParameter();
			else if (name.equals("DateAR"))
				dateAr = (Timestamp)element.getParameter();
			else if (name.equals("Z_ArMain"))
				isPrincipal = ((String)element.getParameter()).equals("Y");
			else if (name.equals("Z_ArControled"))
				isControlled = ((String)element.getParameter()).equals("Y");
			else if (name.equals("ZZ_SemAR"))
				zz_SemAR = (String)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		MOrder mo = new MOrder(getCtx(), Ref_Order_ID, get_Trx());
		//Find if NoAR exist pour OA
		ArrayList<MPoAcknoledgment> newAr = MPoAcknoledgment.getRecordFrom(getCtx(),null,Ref_Order_ID , get_Trx() );
		boolean isprinc = false;
		if(newAr.size()>0)
			for (int i = 0; i <newAr.size(); i++) {
				if(newAr.get(i).isZ_ArMain())
				{
					isprinc = true;
					break;
				}
			}
		if(isPrincipal && isprinc)
		{
			//Vérifier que pour l'AR créé, il n'existe pas déjà un AR principal par OA
			return Msg.translate(getCtx(), "EGGO_AR_MAIN_EXIST").replace("$NoOA$", mo.getDocumentNo());	
		}
		 newAr = MPoAcknoledgment.getRecordFrom(getCtx(),NoAR,Ref_Order_ID , get_Trx() );
		//On ajoute un AR !
		if(newAr != null && newAr.size()>0 && newAr.get(0).getZ_ArNumber().equals(NoAR))
		{
			return Msg.translate(getCtx(), "EGGO_AR_EXISTS").replace("$NoAR$", NoAR);	
		}
		MOrder mov = new MOrder(getCtx(), getRecord_ID(), get_Trx());
		if(mov.get_Value("XX_SemAR")==null){
			mov.set_Value("XX_SemAR", zz_SemAR);
			mov.save(get_Trx());
		}

		MPoAcknoledgment newArX = new MPoAcknoledgment(getCtx(), 0, get_Trx());
		newArX.setAD_Org_ID(mo.getAD_Org_ID());
		newArX.setC_Order_ID(Ref_Order_ID);
		newArX.setZ_ArNumber(NoAR);
		newArX.setZ_ArAmt(ArAmt);
		//newArX.setZ_ArDate(dateAr);
		newArX.setZ_ArMain(isPrincipal);
		newArX.setZ_ArControled(isControlled);
		newArX.setXX_SemAR(zz_SemAR);
		newArX.save();
		//WSUtil.updatePoAcknoledgment(getCtx(), newArX, true, get_Trx());
		return Msg.translate(getCtx(), "EGGO_AR_ADD_OK");
	}

}
