package org.compiere.gwt.servlet.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.time.DateUtils;
import org.compiere.framework.POExtended;
import org.compiere.gwt.client.service.CalendarService;
import org.compiere.gwt.server.CRemoteServiceServlet;
import org.compiere.model.MInterventions;
import org.compiere.model.MUser;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.compiere.util.Trx;
import org.compiere.vos.CalendarVO;
import org.compiere.vos.UserVO;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.sync.proxy.MOrderProxy;

public class CalendarServiceImpl extends CRemoteServiceServlet implements
		CalendarService {

	private static final long serialVersionUID = -209001082167581542L;

	@Override
	public List<CalendarVO> deleteEntry(int AD_User_ID, Integer entryID,
			Date toDay) {

		if (entryID != 0) {

			Trx trx = Trx.get("trx");

			MInterventions entry = new MInterventions(Env.getCtx(), entryID,
					trx);
			MOrder order = new MOrder(Env.getCtx(), entry.getC_Order_ID(), trx);

			int nbr = DB
					.getSQLValue(
							trx,
							"select count(*) from Z_Interventions where C_Order_ID = ? ",
							entry.getC_Order_ID());

			if (!entry.delete(true)) {
				// cVO.addError("can't delete entry");
			}

			if (nbr <= 1) {

				MOrderProxy orderproxy = new MOrderProxy(order);
				orderproxy.setMonteur_ID(0);
				if (!order.save()) {
					// cVO.addError("can't save entry");
				}

			}

			trx.commit();
		}
		return getMonthData(AD_User_ID, toDay);

	}

	@Override
	public List<CalendarVO> copyEntry(int AD_User_ID, Integer entryID,
			Date toDay) {

		MInterventions entry = new MInterventions(Env.getCtx(), entryID, null);
		MInterventions newEntry = new MInterventions(Env.getCtx(), 0, null);

		newEntry.setAD_Client_ID(entry.getAD_Client_ID());
		newEntry.setAD_Org_ID(entry.getAD_Org_ID());

		POExtended.copyValues(entry, newEntry);

		int jours = TimeUtil.getDaysBetween(entry.getDateFrom(),
				entry.getDateTo());

		Calendar cal = Calendar.getInstance();
		cal.setTime(toDay);

		newEntry.setDateFrom((new Timestamp(cal.getTimeInMillis())));
		newEntry.setDateTo(new Timestamp((DateUtils.addDays(
				newEntry.getDateFrom(), jours)).getTime()));

		// TODO CREATED BY AND UPDATED BY AD_USER_ID FROM CONTEXT
		// newEntry.set_Value("CreatedBy", entry.getAD_User_ID());

		if (!newEntry.save()) {
			// result.addError("Can't create a copy");
		}

		return getMonthData(AD_User_ID, toDay);
	}

	@Override
	public List<CalendarVO> moveEntry(int AD_User_ID, Integer entryID,
			Date toDay) {

		MInterventions entry = new MInterventions(Env.getCtx(), entryID, null);
		MInterventions newEntry = new MInterventions(Env.getCtx(), 0, null);

		newEntry.setAD_Client_ID(entry.getAD_Client_ID());
		newEntry.setAD_Org_ID(entry.getAD_Org_ID());

		POExtended.copyValues(entry, newEntry);

		int jours = TimeUtil.getDaysBetween(entry.getDateFrom(),
				entry.getDateTo());

		Calendar cal = Calendar.getInstance();
		cal.setTime(toDay);

		newEntry.setDateFrom((new Timestamp(cal.getTimeInMillis())));
		newEntry.setDateTo(new Timestamp((DateUtils.addDays(
				newEntry.getDateFrom(), jours)).getTime()));

		// TODO CREATED BY AND UPDATED BY AD_USER_ID FROM CONTEXT
		// newEntry.set_Value("CreatedBy", entry.getAD_User_ID());

		if (!entry.delete(true)) {

		}

		if (!newEntry.save()) {
			// result.addError("Can't create a copy");
		}

		return getMonthData(AD_User_ID, toDay);
	}

	@Override
	public List<CalendarVO> getMonthData(int AD_User_ID, Date date) {

		Trx trx = Trx.get("trx");
		MUser user = new MUser(Env.getCtx(), AD_User_ID, null);

		StringBuffer sql = new StringBuffer(
				"SELECT Z_INTERVENTIONS.Z_INTERVENTIONS_ID, Z_INTERVENTIONS.DESCRIPTION, Z_INTERVENTIONS.DATEFROM,Z_INTERVENTIONS.DATETO, XX_HOURS,Z_INTERVENTIONS.C_ORDER_ID, Z_INTERVENTIONS.XX_AM, Z_INTERVENTIONS.XX_PM,  co.POREFERENCE  ");//#48394
		sql.append(" FROM Z_INTERVENTIONS inner join C_Order co on co.C_Order_ID = Z_INTERVENTIONS.C_Order_ID ");
		sql.append(" WHERE Z_INTERVENTIONS.VENDOR_ID = ?  and (Z_INTERVENTIONS.DATEFROM between TRUNC(?,'MM') and LAST_DAY(?)"
				+ " OR Z_INTERVENTIONS.DATETO between TRUNC(?,'MM') and LAST_DAY(?) )");
		// TODO DATE FILTER

		List<CalendarVO> list = new ArrayList<CalendarVO>();

		PreparedStatement stm = DB.prepareStatement(sql.toString(), trx);
		ResultSet rs = null;

		try {

			stm.setInt(1, user.getC_BPartner_ID());
			stm.setTimestamp(2, new Timestamp(date.getTime()));
			stm.setTimestamp(3, new Timestamp(date.getTime()));
			stm.setTimestamp(4, new Timestamp(date.getTime()));
			stm.setTimestamp(5, new Timestamp(date.getTime()));
			rs = stm.executeQuery();
			CalendarVO cVO = null;

			while (rs.next()) {

				Date dateFrom = new Date(rs.getDate(3).getTime());
				Date dateTo = new Date(rs.getDate(4).getTime());

				cVO = new CalendarVO();
				cVO.id = rs.getInt(1);

				//MOrder order = new MOrder(Env.getCtx(), rs.getInt(6), trx);
				cVO.dateFrom = new Timestamp(dateFrom.getTime());
				cVO.dateTo = new Timestamp(dateTo.getTime());
				cVO.hours = rs.getString(5);
				cVO.comment = rs.getString(2);
				cVO.field1 = rs.getString(9);
				if(rs.getString(7).equalsIgnoreCase("Y"))//#48394
					cVO.field2 = "AM";
				if(rs.getString(8).equalsIgnoreCase("Y"))//#48394
					cVO.field3 = "PM";
				list.add(cVO);

			}
		} catch (Exception e) {
			log.severe(e.getMessage());

		}
		

		return list;
	}

	@Override
	public List<CalendarVO> getDayData(int AD_User_ID, Date date) {

		Trx trx = Trx.get("trx");
		StringBuffer sql = new StringBuffer(
				"SELECT Z_INTERVENTIONS_ID, DESCRIPTION, DATEFROM,DATETO, XX_HOURS ");
		sql.append(" FROM Z_INTERVENTIONS");
		sql.append(" WHERE VENDOR_ID = ? ");
		sql.append(" AND EXTRACT (YEAR FROM DATEORDERED) = ? AND EXTRACT (MONTH FROM DATEORDERED) = ? AND EXTRACT (DAY FROM DATEORDERED)= ? ");
		sql.append(" ORDER BY DATEFROM ");
		List<CalendarVO> list = new ArrayList<CalendarVO>();

		PreparedStatement stm = DB.prepareStatement(sql.toString(), trx);
		ResultSet rs = null;

		try {

			stm.setInt(1, AD_User_ID);
			stm.setInt(2, date.getYear() + 1900);
			stm.setInt(3, date.getMonth() + 1);
			stm.setInt(4, date.getDate());

			rs = stm.executeQuery();
			CalendarVO cVO = null;
			while (rs.next()) {
				cVO = new CalendarVO();
				cVO.id = rs.getInt(1);

				Date date1 = new Date(rs.getDate(4).getTime());
				cVO.dateFrom = new Timestamp(date1.getTime());
				cVO.hours = rs.getString(3);
				cVO.field1 = rs.getString(5);
				cVO.comment = rs.getString(2);
				list.add(cVO);
			}

		} catch (Exception e) {
			// errorMessage.add(e.getMessage());
			log.severe(e.getMessage());

		}

		return list;
	}

	@Override
	public List<UserVO> getUsers(int AD_Client_ID) {

		Trx trx = Trx.get("trx");
		StringBuffer sql = new StringBuffer(
				"SELECT pb.C_BPartner_ID, pb.NAME,pb.AD_ORG_ID ,MAX(ad.ad_user_id) as ad_user_id ");
		sql.append(" FROM C_BPartner pb ");
		sql.append("INNER JOIN AD_User ad on ( pb.C_BPartner_ID = ad.c_bpartner_id  )");
		sql.append(" WHERE pb.ISACTIVE = 'Y' AND pb.ismonteur ='Y' and ad.IsActive='Y' ");
		if (AD_Client_ID != 0)
			sql.append(" AND pb.AD_Client_ID = ? ");
		sql.append(" GROUP BY pb.C_BPartner_ID, pb.NAME,pb.AD_ORG_ID ORDER BY  pb.NAME ");

		List<UserVO> list = new ArrayList<UserVO>();

		PreparedStatement stm = DB.prepareStatement(sql.toString(), trx);
		ResultSet rs = null;

		try {
			stm.setInt(1, AD_Client_ID);
			rs = stm.executeQuery();
			UserVO cVO = null;
			while (rs.next()) {
				cVO = new UserVO();
				cVO.user_id = rs.getInt(4);
				cVO.nom = rs.getString(2);
				list.add(cVO);
			}

		} catch (Exception e) {
			// errorMessage.add(e.getMessage());
			log.severe(e.getMessage());

		}

		return list;

	}

	@Override
	public List<CalendarVO> getWorkday(int AD_User_ID, Date toDay) {
		// TODO Auto-generated method stub
		return new ArrayList<CalendarVO>();
	}

}
