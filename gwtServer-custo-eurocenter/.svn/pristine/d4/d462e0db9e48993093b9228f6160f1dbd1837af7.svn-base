package org.compiere.gwt.servlet.impl;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.time.DateUtils;
import org.compiere.gwt.client.service.PlanningService;
import org.compiere.gwt.server.CRemoteServiceServlet;
import org.compiere.model.MOrder;
import org.compiere.model.MResource;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.vos.PlanningVO;
import org.compiere.vos.UserVO;

public class PlanningServiceImpl extends CRemoteServiceServlet implements
		PlanningService {

	private static final long serialVersionUID = -209001082167581542L;

	@SuppressWarnings("deprecation")
	@Override
	public List<PlanningVO> getUserPlanning(int AD_client_ID, int year,
			int month) {

		int day_hours = Integer.parseInt(Msg.getMsg(Env.getCtx(),
				"AUDAXIS_CALENDAR_DAY_HOURS"));

		Trx trx = Trx.get("trx");

		List<PlanningVO> list = new ArrayList<PlanningVO>();

		List<UserVO> users = getUsers(AD_client_ID);
		
		int ordre_id = 0;
		
		for (UserVO user : users) {

			Date date1 = new Date();
			date1.setMonth(month - 1);
			date1.setYear(year - 1900);
			date1.setDate(1);
			
		do {

				//recupere l'ID du client
				StringBuffer sql0 = new StringBuffer("SELECT o.c_order_id ");
				sql0.append(" FROM Z_INTERVENTIONS int "); 
				sql0.append(" inner join c_order o");
				sql0.append(" on o.c_order_id = int.c_order_id");
				sql0.append(" WHERE  int.VENDOR_ID= ? ");
				sql0.append(" AND  (TRUNC(?) BETWEEN TRUNC(int.DATEFROM) AND TRUNC(int.DATETO)) ");

				PreparedStatement stm0 = DB.prepareStatement(sql0.toString(),trx);
				ResultSet rs0 = null;

				try {
					stm0.setInt(1, user.user_id);
					stm0.setTimestamp(2, new Timestamp(date1.getTime()));
					rs0 = stm0.executeQuery();
					if (rs0.next()) {
						ordre_id = rs0.getInt(1);
					}
				} catch (Exception e) {
					log.severe(e.getMessage());
				}
			    finally {
				DB.closeResultSet(rs0);
				DB.closeStatement(stm0);
		     	}
				
				// Calcul somme heures par date et par ressource
				StringBuffer sql1 = new StringBuffer("SELECT SUM(XX_HOURS) ");
				sql1.append(" FROM Z_INTERVENTIONS");
				sql1.append(" WHERE  VENDOR_ID= ? ");
				sql1.append(" AND  (TRUNC(?) BETWEEN TRUNC(DATEFROM) AND TRUNC(DATETO)) ");

				PreparedStatement stm1 = DB.prepareStatement(sql1.toString(),
						trx);
				ResultSet rs1 = null;
				PlanningVO cVO = null;

				try {

					stm1.setInt(1, user.user_id);
					stm1.setTimestamp(2, new Timestamp(date1.getTime()));

					rs1 = stm1.executeQuery();

					if (rs1.next()) {

						if (rs1.getString(1) != null) {

							BigDecimal hours = new BigDecimal(rs1.getString(1));
							
							//Evolution #45666
							StringBuffer sql2 = new StringBuffer(" SELECT areacode ");
							sql2.append(" FROM c_city c ");
							sql2.append(" INNER JOIN c_location l ");
							sql2.append(" ON l.Postal = c.postal AND l.C_Country_ID = c.C_Country_ID");
							sql2.append(" INNER JOIN C_BPARTNER_LOCATION bpl ");
							sql2.append(" ON bpl.c_location_id = l.c_location_id ");
							sql2.append(" WHERE bpl.c_bpartner_location_id  = ? ");
							MOrder order = new MOrder(Env.getCtx(), ordre_id, trx);
							String areaCode = DB.getSQLValueString(null, sql2.toString() , order.getC_BPartner_Location_ID());
							
							
							if (hours.compareTo(BigDecimal.ZERO) > 0) {
								cVO = new PlanningVO();
								cVO.dateFrom = new Timestamp(date1.getTime());
								cVO.dateTo = new Timestamp(date1.getTime());
								cVO.user_id = user.user_id;
								if (hours.compareTo(new BigDecimal(day_hours)) < 0)
								{
									cVO.statut = "yellow";
									cVO.text = hours.toString();
									if (areaCode != null)
									{
										//Evolution #48035 1ere ligne pr le nombre d'heure 2eme ligne pr l'areacode
										cVO.text += "-\n";
										cVO.text += areaCode;
									}
								}						
								else
								{
									cVO.statut = "green";
									if (areaCode != null)
									{
										//Evolution #48035 1ere ligne pr le nombre d'heure 2eme ligne pr l'areacode
										cVO.text  = "\n";
										cVO.text += areaCode;
									}
								}

								list.add(cVO);
							}

						}
					}
				} catch (Exception e) {
					log.severe(e.getMessage());

				}
				finally {
				DB.closeResultSet(rs1);
				DB.closeStatement(stm1);
				}
				date1 = DateUtils.addDays(date1, 1);

			} while (date1.getMonth() == (month - 1));

		}

		// Indisponibilité des resssources

		StringBuffer sql2 = new StringBuffer(
				"SELECT DATEFROM,DATETO,S_RESOURCE_ID ");
		sql2.append(" FROM S_ResourceUnAvailable");
		sql2.append(" WHERE  AD_Client_ID= ? ");

		PreparedStatement stm2 = DB.prepareStatement(sql2.toString(), trx);
		ResultSet rs2 = null;

		try {

			stm2.setInt(1, AD_client_ID);

			rs2 = stm2.executeQuery();
			PlanningVO cVO = null;

			while (rs2.next()) {

				MResource ressource = new MResource(Env.getCtx(),
						rs2.getInt(3), null);

				if (ressource.getAD_User_ID() != 0) {

					int BPartner_id = DB
							.getSQLValue(
									null,
									"SELECT C_BPartner_ID from AD_User WHERE AD_User_ID = ? ",
									ressource.getAD_User_ID());

					
					cVO = new PlanningVO();
					cVO.dateFrom = new Timestamp(rs2.getDate(1).getTime());
					cVO.dateTo = new Timestamp(rs2.getDate(2).getTime());
					cVO.user_id = BPartner_id;
					cVO.statut = "red";
					
					list.add(cVO);
				}
			}

		} catch (Exception e) {
			log.severe(e.getMessage());

		}
		finally {
			DB.closeResultSet(rs2);
			DB.closeStatement(stm2);
			}
		return list;
	}

	@Override
	public List<UserVO> getUsers(int AD_Client_ID) {

		Trx trx = Trx.get("trx");
		StringBuffer sql = new StringBuffer(
				"SELECT C_BPartner_ID, NAME,AD_ORG_ID ");
		sql.append(" FROM C_BPartner ");
		sql.append(" WHERE ISACTIVE = 'Y' AND ismonteur ='Y' and ISREPAIRER = 'Y'");
		if (AD_Client_ID != 0)
			sql.append(" AND AD_Client_ID = ? ");
		sql.append(" ORDER BY NAME ");
		List<UserVO> list = new ArrayList<UserVO>();

		PreparedStatement stm = DB.prepareStatement(sql.toString(), trx);
		ResultSet rs = null;

		try {
			stm.setInt(1, AD_Client_ID);
			rs = stm.executeQuery();
			UserVO cVO = null;
			while (rs.next()) {
				cVO = new UserVO();
				cVO.user_id = rs.getInt(1);
				cVO.nom = rs.getString(2);
				list.add(cVO);
			}

		} catch (Exception e) {
			// errorMessage.add(e.getMessage());
			log.severe(e.getMessage());

		}
		finally {
			DB.closeResultSet(rs);
			DB.closeStatement(stm);
		}
		return list;
	}

	@Override
	public List<UserVO> getOrgs() {
		// TODO Auto-generated method stub
		return null;
	}

}