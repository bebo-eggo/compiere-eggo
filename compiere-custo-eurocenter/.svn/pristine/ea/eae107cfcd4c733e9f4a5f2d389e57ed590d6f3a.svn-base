package com.audaxis.compiere.sync.utils;

import java.sql.Timestamp;

import org.compiere.model.MSchedule;
import org.compiere.model.X_R_RequestProcessor;
import org.compiere.model.ZSynchSchedule;
import org.compiere.util.CLogger;

public class SyncSchedule {
	/**	Logger						*/
	protected CLogger	log = CLogger.getCLogger(getClass());




public long calculateSleep (MSchedule sched, long lastRun)
{
	String frequencyType = sched.getFrequencyType();
	int frequency = sched.getFrequency();
	if (frequency < 1)
		frequency = 1;
	//
	long typeSec = 600;			//	10 minutes
	if (frequencyType == null)
		typeSec = 300;			//	5 minutes
	else if (X_R_RequestProcessor.FREQUENCYTYPE_Minute.equals(frequencyType))
		typeSec = 60;
	else if (X_R_RequestProcessor.FREQUENCYTYPE_Hour.equals(frequencyType))
		typeSec = 3600;
	else if (X_R_RequestProcessor.FREQUENCYTYPE_Day.equals(frequencyType))
		typeSec = 86400;
	//
	long sleep = typeSec * 1000 * frequency;		//	ms
	if (sched.getAD_Schedule_ID() == 0)
		return sleep;

	//	Calculate Schedule
	ZSynchSchedule schedule = new ZSynchSchedule(sched.getCtx(), sched.getAD_Schedule_ID(), null);
	long next = schedule.getNextRunMS (lastRun);

	return next;
}	//	calculateSleep

public boolean isTimeToRun(long nextRun){
	return nextRun <= System.currentTimeMillis();
}

}
