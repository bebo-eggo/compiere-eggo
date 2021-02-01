package com.audaxis.compiere.sync.utils;

import java.sql.Timestamp;
import java.util.Date;
import java.util.GregorianCalendar;

import org.compiere.model.MSchedule;

import com.audaxis.compiere.process.SvrProcessExtended;

/**
 * Synchronization DOWN.  Du Centrale vers un magasin.
 * Le centrak déclenche la synchronisation et se connecte sur la base magasin via un database link crée au préalable.<p>
 * <pre>
 * drop database link bouge;
 * create database link bouge connect to eurocenterpos identified by compiere using 'compiere';
 * </pre>
 * 
 * @author vha
 *
 */
public class TestScheduleProcess extends SvrProcessExtended {

	@Override
	protected void prepare() {
	}

	@Override
	protected String doIt() throws Exception {
		Timestamp startingTime = new Timestamp(new Date().getTime());
		MSchedule sched = new MSchedule(getCtx(), 101, null);
		GregorianCalendar cal = new GregorianCalendar(2012,8, 19,13,30, 00);
		Timestamp lastRun = new Timestamp(cal.getTimeInMillis());

		SyncSchedule schedUtil = new SyncSchedule();
		long next = schedUtil.calculateSleep(sched, cal.getTimeInMillis());
		Timestamp nextr = new Timestamp(next);
		String retour;
		if(schedUtil.isTimeToRun(next))
			retour="RUN : "+nextr;
		else
			retour="NOT RUN , NEXT RUN AT : "+nextr;
		return retour;
	}


}
