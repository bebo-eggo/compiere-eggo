/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 3600 Bridge Parkway #102, Redwood City, CA 94065, USA      *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

import java.util.ArrayList;
import java.util.Calendar;

import org.compiere.util.Ctx;
import org.compiere.util.Trx;


/**
 *	Schedule Model
 *
 *  @author Jorg Janke
 *  @version $Id$
 */
public class ZSynchSchedule extends MSchedule
{
    /** Logger for class MSchedule */
    private static final org.compiere.util.CLogger log = org.compiere.util.CLogger.getCLogger(MSchedule.class);
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	public ZSynchSchedule(Ctx ctx, int AD_Schedule_ID, Trx trx) {
		super(ctx,AD_Schedule_ID,trx);
	}
	
	/**
	 * 	Get Next Run
	 *	@param last in MS
	 *	@return next run in MS
	 */
	public long getNextRunMS (long last)
	{
		Calendar calNow = Calendar.getInstance();
		calNow.setTimeInMillis (last);
		//
		Calendar calNext = Calendar.getInstance();
		calNext.setTimeInMillis (last);
//		calNext.set (Calendar.SECOND, 0);
//		calNext.set (Calendar.MILLISECOND, 0);
		//
//		int hour = getScheduleHour();
//		int minute = getScheduleMinute();
		int hour = calNow.get(Calendar.HOUR_OF_DAY);
		int minute = calNow.get(Calendar.MINUTE);
		//
		String scheduleType = getScheduleType();
		if (SCHEDULETYPE_Frequency.equals(scheduleType))
		{
			String frequencyType = getFrequencyType();
			int frequency = getFrequency();

			ArrayList<Integer> validDays = new ArrayList<Integer>();
			if(isOnMonday())
				validDays.add(new Integer(Calendar.MONDAY));
			if(isOnTuesday())
				validDays.add(new Integer(Calendar.TUESDAY));
			if(isOnWednesday())
				validDays.add(new Integer(Calendar.WEDNESDAY));
			if(isOnThursday())
				validDays.add(new Integer(Calendar.THURSDAY));
			if(isOnFriday())
				validDays.add(new Integer(Calendar.FRIDAY));
			if(isOnSaturday())
				validDays.add(new Integer(Calendar.SATURDAY));
			if(isOnSunday())
				validDays.add(new Integer(Calendar.SUNDAY));

			if(validDays.isEmpty())
			{
				log.warning("Incorrect Schedule setup. Please enable at least one of the weekdays");
				validDays.add(new Integer(Calendar.MONDAY));
			}

			boolean increment=true;
			int ct = 0;
			while ((ct < 8)
				&& !(validDays.contains(new Integer(calNext.get(Calendar.DAY_OF_WEEK)))))
			{
				calNext.add(Calendar.DAY_OF_YEAR, 1);
				ct++;
				increment=false;
			}


			/*****	DAY		******/
			if (X_R_RequestProcessor.FREQUENCYTYPE_Day.equals(frequencyType))
			{
				calNext.set (Calendar.HOUR_OF_DAY, hour);
				calNext.set (Calendar.MINUTE, minute);
				if(increment)
				{
					calNext.add(Calendar.DAY_OF_YEAR, frequency);
				}
			}	//	Day

			/*****	HOUR	******/
			else if (X_R_RequestProcessor.FREQUENCYTYPE_Hour.equals(frequencyType))
			{
				
				calNext.set (Calendar.MINUTE, minute);
				if(increment)
				{
					calNext.add (Calendar.HOUR_OF_DAY, frequency);
				}

			}	//	Hour

			/*****	MINUTE	******/
			else if (X_R_RequestProcessor.FREQUENCYTYPE_Minute.equals(frequencyType))
			{
				if(increment)
				{
					calNext.add(Calendar.MINUTE, frequency);
				}
			}	//	Minute

		}

		/*****	MONTH	******/
		else if (SCHEDULETYPE_MonthDay.equals(scheduleType))
		{
			calNext.set (Calendar.HOUR_OF_DAY, hour);     //  ICI
			calNext.set (Calendar.MINUTE, minute);
			//
			int day = getMonthDay();
			int dd = calNext.get(Calendar.DAY_OF_MONTH);
			int max = calNext.getActualMaximum (Calendar.DAY_OF_MONTH);
			int dayUsed = Math.min (day, max);
			//	Same Month
			if (dd < dayUsed)
				calNext.set (Calendar.DAY_OF_MONTH, dayUsed);
			else
			{
				if (calNext.get (Calendar.MONTH) == Calendar.DECEMBER)
				{
					calNext.add (Calendar.YEAR, 1);
					calNext.set (Calendar.MONTH, Calendar.JANUARY);
				}
				else
					calNext.add (Calendar.MONTH, 1);
				max = calNext.getActualMaximum (Calendar.DAY_OF_MONTH);
				dayUsed = Math.min (day, max);
				calNext.set (Calendar.DAY_OF_MONTH, dayUsed);
			}
		}	//	month

		/*****	WEEK	******/
		else // if (SCHEDULETYPE_WeekDay.equals(scheduleType))
		{
			String weekDay = getWeekDay();
			int dayOfWeek = 0;
			if (WEEKDAY_Monday.equals(weekDay))
				dayOfWeek = Calendar.MONDAY;
			else if (WEEKDAY_Tuesday.equals(weekDay))
				dayOfWeek = Calendar.TUESDAY;
			else if (WEEKDAY_Wednesday.equals(weekDay))
				dayOfWeek = Calendar.WEDNESDAY;
			else if (WEEKDAY_Thursday.equals(weekDay))
				dayOfWeek = Calendar.THURSDAY;
			else if (WEEKDAY_Friday.equals(weekDay))
				dayOfWeek = Calendar.FRIDAY;
			else if (WEEKDAY_Saturday.equals(weekDay))
				dayOfWeek = Calendar.SATURDAY;
			else if (WEEKDAY_Sunday.equals(weekDay))
				dayOfWeek = Calendar.SUNDAY;
			calNext.set (Calendar.DAY_OF_WEEK, dayOfWeek);
			calNext.set (Calendar.HOUR_OF_DAY, hour);        // ICI
			calNext.set (Calendar.MINUTE, minute);
			calNext.set (Calendar.SECOND, 0);
			calNext.set (Calendar.MILLISECOND, 0);
			//
			if (!calNext.after(calNow))
			{
				calNext.add (Calendar.WEEK_OF_YEAR, 1);
			}
		}	//	week

		long delta = calNext.getTimeInMillis() - calNow.getTimeInMillis();
		String info = "Now=" + calNow.getTime().toString()
			+ ", Next=" + calNext.get(Calendar.HOUR)
			+ ", Delta=" + delta
			+ ", " + toString();
		if (delta < 0)
		{
			log.warning(info);
		}
		else
			log.info (info);

		return calNext.getTimeInMillis();
	}	//	getNextRunMS


}	//	MSchedule
