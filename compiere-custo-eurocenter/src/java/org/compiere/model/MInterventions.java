package org.compiere.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

import org.compiere.framework.PO;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;
import org.compiere.util.Trx;

import com.audaxis.compiere.model.X_XT_Interventions;

public class MInterventions extends X_Z_Interventions {

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// TODO Auto-generated method stub
		String Flux = Msg.getMsg(getCtx(), "XX_Flux_Inter_Rest");
		String Role = Msg.getMsg(getCtx(), "XX_Roles_Inter_Rest");
		String msg = Msg.getMsg(getCtx(), "XX_Msg_Inter_Rest");
		String ODV_ID = Msg.getMsg(getCtx(), "XX_Doc_Inter_Rest");
		MOrder mo = new MOrder(getCtx(), getC_Order_ID(), get_Trx());
		String orderFlux = mo.get_ValueAsString("Z_OrderStepStatus");
		int Role_ID = getCtx().getAD_Role_ID();
		if(ODV_ID.contains(""+mo.getC_DocType_ID()) && Role !=null && Role.contains(""+Role_ID) && !Flux.contains(orderFlux))
		{
			log.saveError("Error", msg);
			return false;
		}
		return super.beforeSave(newRecord);
	}

	public MInterventions(Ctx ctx, int X_Z_Interventions_ID, Trx trx) {
		super(ctx, X_Z_Interventions_ID, trx);
	}

	public MInterventions(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
	}

	public MOrder getParent() {
		return new MOrder(getCtx(), getC_Order_ID(), get_Trx());
	}

	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return true if can be saved
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{

		if ("P".equalsIgnoreCase(getTaskType()) || "S".equalsIgnoreCase(getTaskType()) ) {
			MOrder ord = this.getParent();
			ord.set_Value("Monteur_ID", getVendor_ID());
			ord.set_Value("DatePose", getDateFrom());
			ord.set_Value("DateTo", getDateTo());
			ord.save(get_Trx());
			
			//OA Centralisť
			//Propager Date de POSe dans les DAE
			DB.executeUpdate(get_Trx(), "UPDATE M_Requisition set DatePose = ?,DateTo = ? where REF_ORDER_ID = ? ", getDateFrom(),getDateTo(),ord.getC_Order_ID()  );
			 
		}
		
		if("P".equalsIgnoreCase(getTaskType()))
		{
			MOrder ord = this.getParent();
			GregorianCalendar gc = new GregorianCalendar();
			gc.setTimeInMillis(getDateFrom().getTime());
			gc.add(Calendar.DAY_OF_MONTH, -6);
			gc.setFirstDayOfWeek(Calendar.SUNDAY);
			Timestamp ts = new Timestamp(gc.getTime().getTime());
			String ss = QueryUtil.getSQLValueString(get_Trx(), "Select week from xx_cal_week where dates = ? ", ts);
			int week = 0;
			if(ss!=null)
			{
				try {
					week = Integer.parseInt(ss);
				}
				catch (Exception e) {
					week = gc.get(Calendar.WEEK_OF_YEAR);
				}
			}
			else
				week = gc.get(Calendar.WEEK_OF_YEAR);
			
			ord.set_Value("XX_SemRec", week<10?"0"+week:""+week);
			ord.save(get_Trx());
			
		}
		GregorianCalendar gc = new GregorianCalendar();
		/*
		X_XT_Interventions xxx = new X_XT_Interventions(getCtx(), 0, get_Trx());
		xxx.setAD_Org_ID(getAD_Org_ID());
		xxx.setC_Order_ID(getC_Order_ID());
		xxx.setDateAction(new Timestamp(gc.getTimeInMillis()));
		xxx.setDateFrom(getDateFrom());
		xxx.setDateTo(getDateTo());
		xxx.setIsXX_AM(this.isXX_AM());
		xxx.setIsXX_PM(isXX_PM());
		xxx.setTaskType(getTaskType());
		xxx.setXX_Ressource(getXX_Ressource());
		xxx.setVendor_ID(getVendor_ID());
		xxx.setIsXX_IsSecVendor(isXX_IsSecVendor());
		xxx.setDescription(getDescription());
		xxx.setXX_Hours(getXX_Hours());
		xxx.setZ_Interventions_ID(getZ_Interventions_ID());
		xxx.save();
		*/
		if (!success || newRecord)
			return success;
		
		return true;
	}
	

}
