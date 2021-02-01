package org.compiere.model;

import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

public class MProcessExtend extends MProcess {

	/** Logger for class MProcess */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MProcessExtend.class);
    
	public MProcessExtend(Ctx ctx, int AD_Process_ID, Trx trx) {
		super(ctx, AD_Process_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MProcessExtend(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}
	
	/**************************************************************************
	 * 	Process SQL Procedures w/o parameter
	 *	@param Record_ID record
	 *	@return Process Instance
	 */
	public MPInstance processIt (int AD_PInstance_ID, int Record_ID)
	{
		MPInstance pInstance = new MPInstance(getCtx(), AD_PInstance_ID, get_Trx());
		//	Lock
		pInstance.setIsProcessing(true);
		pInstance.save();

		boolean ok = true;

		//	PL/SQL Procedure
		String ProcedureName = getProcedureName();
	//	String Classname = getClassname();
		if ((ProcedureName != null) && (ProcedureName.length() > 0))
			ok = startProcess (ProcedureName, pInstance);
	//	else if (Classname != null && Classname.length() > 0)
	//		ok = startClass(Classname, pi, p_trx);


		//	Unlock
		pInstance.setResult(ok ? MPInstance.RESULT_OK : MPInstance.RESULT_ERROR);
		pInstance.setIsProcessing(false);
		pInstance.save();
		//
		pInstance.log();
		return pInstance;
	}	//	process
	
	/**
	 *  Start Database Process
	 *  @param ProcedureName PL/SQL procedure name
	 *  @param pInstance process instance
	 *	see ProcessCtl.startProcess
	 *  @return true if success
	 */
	private boolean startProcess (String ProcedureName, MPInstance pInstance)
	{
		int AD_PInstance_ID = pInstance.getAD_PInstance_ID();
		//  execute on this thread/connection
		log.info(ProcedureName + "(" + AD_PInstance_ID + ")");
		String sql = "{call " + ProcedureName + "(?)}";
		try
		{
			DB.executeCall(sql, AD_PInstance_ID);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
			pInstance.setResult(MPInstance.RESULT_ERROR);
			pInstance.setErrorMsg(e.getLocalizedMessage());
			return false;
		}
		pInstance.setResult(MPInstance.RESULT_OK);
		return true;
	}   //  startProcess

}
