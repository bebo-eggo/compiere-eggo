package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.util.logging.Level;

import org.compiere.db.QueryUtil;
import org.compiere.model.MAllocationHdr;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

import com.audaxis.compiere.util.CompiereException;

public class CorrigerAffectation extends SvrProcess {

	private int p_AllocationLine_ID = 0;
	private BigDecimal p_Amount = Env.ZERO;
	
	public CorrigerAffectation() {
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
			else if (name.equals("C_AllocationLine_ID"))
				p_AllocationLine_ID = element.getParameterAsInt();
			else if (name.equals("Amount"))
				p_Amount = (BigDecimal)element.getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		if(p_Amount.equals(Env.ZERO))
			throw new CompiereException("Le montant doit etre différent de 0");
		MAllocationHdr mh = new MAllocationHdr(getCtx(), getRecord_ID(), get_Trx());
		String msg = DocumentEngine.isPeriodOpen(mh);
		if(msg!=null)
			throw new CompiereException("Période cloturée");
		QueryUtil.executeQuery("UPDATE C_AllocationLine set Amount = ?, updated = sysdate, updatedby=? where C_AllocationLine_ID = ?",
				new Object[]{p_Amount, getAD_User_ID(), p_AllocationLine_ID});
		//QueryUtil.executeQuery("UPDATE C_Allocation set posted = 'N' where C_Allocation_ID = ?",new Object[]{getRecord_ID()} );
		return "Ligne d'affectation corrigée. Comptabilisé de nouveau.";
	}

}
