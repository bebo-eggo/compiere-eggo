package org.compiere.gwt.server.window;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.gwt.server.Util;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.layout.Box;
import org.compiere.layout.ElementBox;
import org.compiere.layout.VerticalBox;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInterventions;
import org.compiere.model.MLocation;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MSalesRegion;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.NamePair;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;

import com.audaxis.compiere.model.MOrder;
import com.audaxis.compiere.sync.proxy.MInterventionsProxy;
import com.audaxis.compiere.sync.proxy.MOrderProxy;

public class CalendarDialogWindowImpl extends WindowImpl {

	private static CLogger log = CLogger
			.getCLogger(CalendarDialogWindowImpl.class);
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected Ctx serverCtx;
	protected WindowCtx windowCtx;
	protected UWindowID m_uid;
	protected int windowNO;

	private SearchComponentImpl left;

	private FieldVO orders;
	private FieldVO bookmarks;
	private FieldVO comment;
	private FieldVO hours;
	private FieldVO am;
	private FieldVO pm;
	private FieldVO isEdit;
	private FieldVO name;
	private FieldVO adress;
	private FieldVO dateFrom;
	private FieldVO dateTo;
	private FieldVO resource;
	private FieldVO type;
	private int C_Order_ID = 0;
	private String defaultname = "";
	private String defaultadress = "";
	private String defaulttype = "P";
	private String defaultcomment = "";
	private String defaulthours = "8.0";
	private Timestamp defaultdatefrom;
	private Timestamp defaultdateto;
	private String defaultAm = "N";
	private String defaultPm = "N";
	private int S_Resource_ID = 0;
	MUser user;

	public CalendarDialogWindowImpl(int windowNO, Ctx serverCtx,
			WindowCtx windowCtx, UWindowID uid) {

		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		int entryID = windowCtx.getAsInt("Z_Entry_ID");


		Timestamp date1 = new Timestamp(Long.valueOf(windowCtx.get("Z_Date")));

		user = new MUser(serverCtx, windowCtx.getAsInt("Z_User_ID"), null);
		MInterventions intervention = null;

		if (entryID > 0) {

			intervention = new MInterventions(serverCtx, entryID, null);
			MInterventionsProxy proxy = new MInterventionsProxy(intervention);
			C_Order_ID = intervention.getC_Order_ID();

			MOrder ordre = new MOrder(serverCtx, C_Order_ID, null);
			MBPartner client = new MBPartner(serverCtx,
					ordre.getC_BPartner_ID(), null);
			MBPartnerLocation adresse = new MBPartnerLocation(serverCtx,
					ordre.getC_BPartner_Location_ID(), null);
			
			MLocation location = new MLocation(serverCtx,
					adresse.getC_Location_ID(), null);
			String areaCode = null;
			if (location.getPostal()!= null)
			{
				areaCode = DB.getSQLValueString(null, 
					"SELECT AreaCode from C_City where postal = '"+ (location.getPostal())+"' and C_Country_ID = ? " , location.getC_Country_ID() );
			}
			
			MSalesRegion region = new MSalesRegion(serverCtx,
					adresse.getC_SalesRegion_ID(), null);

			StringBuffer nom = new StringBuffer();
			if (client.getName() != null)
				nom.append(client.getName());
			if (client.getName2()!= null)
				nom.append(" ,  ").append(client.getName2());

			StringBuffer adresses = new StringBuffer();
			if (adresse.getName()!= null )
				adresses.append(adresse.getName());
			if (region.getName() != null )
				adresses.append(" ,  ").append(region.getName());
			if (adresse.getPhone() != null )
				adresses.append(" ,  ").append(adresse.getPhone());
			
			if (areaCode != null  )
				adresses.append(" ,  ").append(areaCode);
			
			defaultname = nom.toString();
			defaultadress = adresses.toString();

			defaulttype = intervention.getTaskType();
			defaultcomment = intervention.getDescription();
			defaultdatefrom = intervention.getDateFrom();
			defaultdateto = intervention.getDateTo();
			defaulthours = String.valueOf(proxy.getXX_Hours());
			defaultAm = String.valueOf(proxy.isXX_AM() ? "Y" : "N");
			defaultPm = String.valueOf(proxy.isXX_PM() ? "Y" : "N");

		} else {

			C_Order_ID = 0;
			defaultdatefrom = date1;
			defaultdateto = date1;
		}

		orders = new FieldVO("C_Order_ID", Msg.translate(serverCtx,
				"C_Order_ID"), DisplayTypeConstants.Search);//#48120
		
		//Anomalie #48120
		if(C_Order_ID != 0)
			orders.DefaultValue = ""+C_Order_ID;
		
		orders.listBoxVO =getListOrderLookUp(); // Util.convertLookupToVO(getOrderLookUp(), true,String.valueOf(C_Order_ID));
		orders.IsMandatoryUI = true;
		orders.isImpactsValue = true;

		type = new FieldVO("TaskType", "TaskType", DisplayTypeConstants.List,
				false);
		MLookup SavStatusL = MLookupFactory.get(serverCtx, windowNO, 1018420,
				DisplayTypeConstants.List);
		type.listBoxVO = Util.convertLookupToVO(SavStatusL, type.IsMandatoryUI,
				"defaulttype");
		type.DefaultValue = defaulttype;

		bookmarks = new FieldVO("Z_Interventions_ID", "BookMarks",
				DisplayTypeConstants.TableDir);
		bookmarks.isImpactsValue = true;
		bookmarks.listBoxVO = getBookMarksLookUp();

		name = new FieldVO("BPartner", Msg.getMsg(serverCtx, "BusPartner"),
				DisplayTypeConstants.Text);
		name.ReadOnlyLogic = "1=1";
		name.DefaultValue = defaultname;

		adress = new FieldVO("C_Location_ID", Msg.getMsg(serverCtx, "Adress"),
				DisplayTypeConstants.Text);
		adress.ReadOnlyLogic = "1=1";
		adress.DefaultValue = defaultadress;

		dateFrom = new FieldVO("DateFrom", Msg.getMsg(serverCtx, "DateFrom"),
				DisplayTypeConstants.Date);
		dateFrom.IsMandatoryUI = true;
		dateFrom.DefaultValue = String.valueOf(defaultdatefrom.getTime());

		dateTo = new FieldVO("DateTo", Msg.getMsg(serverCtx, "DateTo"),
				DisplayTypeConstants.Date);
		dateTo.IsMandatoryUI = true;
		dateTo.DefaultValue = String.valueOf(defaultdateto.getTime());

		comment = new FieldVO("Comment", Msg.getMsg(serverCtx, "Comment"),
				DisplayTypeConstants.Text);
		//comment.DisplayLength = 1999;
		//Evolution #45666
		comment.DefaultValue = defaultcomment == null ? "" : defaultcomment;
		
		hours = new FieldVO("Hours", Msg.getMsg(serverCtx, "Hours"),
				DisplayTypeConstants.Number);
		hours.IsMandatoryUI = true;
		hours.DefaultValue = defaulthours;

		resource = new FieldVO("C_BPartner_ID", Msg.translate(serverCtx,
				"S_Resource_ID"), DisplayTypeConstants.TableDir);

		resource.listBoxVO = Util.convertLookupToVO(getResourceLookUp(), true,
				String.valueOf(S_Resource_ID));

		isEdit = new FieldVO("Z_isEdit", "Z_isEdit",
				DisplayTypeConstants.Integer);
		isEdit.DisplayLogic = "1=2";
		
		//Evolution #45203
		if(intervention != null)
			isEdit.DefaultValue = "1";
		
		am = new FieldVO("XX_AM", Msg.getMsg(serverCtx, "AM"),
				DisplayTypeConstants.YesNo);
		am.IsMandatoryUI = true;
		am.DefaultValue = defaultAm;

		pm = new FieldVO("XX_PM", Msg.getMsg(serverCtx, "PM"),
				DisplayTypeConstants.YesNo);
		pm.IsMandatoryUI = true;
		pm.DefaultValue =  defaultPm;
		
		left = new SearchComponentImpl(new FieldVO[] { bookmarks, orders, name,
				adress, type, dateFrom, dateTo, hours, resource, comment, am,
				pm,isEdit });

		components.add(left);

	}

	@Override
	public ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ChangeVO processCallback(String sender) {

		C_Order_ID = windowCtx.getAsInt("C_Order_ID");
		S_Resource_ID = windowCtx.getAsInt("S_Resource_ID");

		if (sender != null && !sender.isEmpty()) {

			ChangeVO cVO = new ChangeVO();

			if (sender.equals(orders.ColumnName)) {

				MOrder ordre = new MOrder(serverCtx, C_Order_ID, null);
				MBPartner client = new MBPartner(serverCtx,
						ordre.getC_BPartner_ID(), null);
				MBPartnerLocation adresse = new MBPartnerLocation(serverCtx,
						ordre.getC_BPartner_Location_ID(), null);
				
				MLocation location = new MLocation(serverCtx,
						adresse.getC_Location_ID(), null);
				
				//Evolution #45203
				String areaCode = null;
				if (location.getPostal() != null )
				{
					areaCode = DB.getSQLValueString(null, 
						"SELECT AreaCode from C_City where postal = '"+ (location.getPostal())+"' and C_Country_ID = ? " , location.getC_Country_ID() );
				}
				
				MSalesRegion region = new MSalesRegion(serverCtx,
						adresse.getC_SalesRegion_ID(), null);

				StringBuffer nom = new StringBuffer();
				if (client.getName() != null)
					nom.append(client.getName());
				if (client.getName2()!= null)
					nom.append(" ,  ").append(client.getName2());

				StringBuffer adresses = new StringBuffer();
				if (adresse.getName()!= null )
					adresses.append(adresse.getName());
				if (region.getName() != null )
					adresses.append(" ,  ").append(region.getName());
				if (adresse.getPhone() != null )
					adresses.append(" ,  ").append(adresse.getPhone());
				
				if (areaCode != null  )
					adresses.append(" ,  ").append(areaCode);

				cVO.addChangedValue(name.ColumnName, nom);
				cVO.addChangedValue(adress.ColumnName, adresses);

				serverCtx.setContext(windowNO, "Z_isEdit", 1);
			}

			else if (sender.equals(bookmarks.ColumnName)) {

				int Z_Interventions_ID = windowCtx
						.getAsInt("Z_Interventions_ID");

				if (Z_Interventions_ID > 0) {

					MInterventions intervention = new MInterventions(serverCtx,
							Z_Interventions_ID, null);

					MInterventionsProxy proxy = new MInterventionsProxy(
							intervention);
					C_Order_ID = intervention.getC_Order_ID();

					MOrder ordre = new MOrder(serverCtx, C_Order_ID, null);
					MBPartner client = new MBPartner(serverCtx,
							ordre.getC_BPartner_ID(), null);
					MBPartnerLocation adresse = new MBPartnerLocation(
							serverCtx, ordre.getC_BPartner_Location_ID(), null);
					MSalesRegion region = new MSalesRegion(serverCtx,
							adresse.getC_SalesRegion_ID(), null);
					defaultname = client.getName() + " " + client.getName2();
					defaultadress = adresse.getName() + " , "
							+ region.getName() + " , " + adresse.getPhone();

					defaulttype = intervention.getTaskType();
					defaultcomment = intervention.getDescription();
					defaultdatefrom = intervention.getDateFrom();
					defaultdateto = intervention.getDateTo();
					defaulthours = String.valueOf(proxy.getXX_Hours());
					defaultAm = String.valueOf(proxy.isXX_AM() ? "Y" : "N");
					defaultPm = String.valueOf(proxy.isXX_PM() ? "Y" : "N");

					cVO.addChangedDropDown(orders.ColumnName, getListOrderLookUp().getOptions());
					cVO.addChangedValue(name.ColumnName, client.getName() + " "
							+ client.getName2());

					cVO.addChangedValue(hours.ColumnName, defaulthours);
					cVO.addChangedValue(comment.ColumnName, defaultcomment);

					cVO.addChangedValue(adress.ColumnName,
							adresse.getName() + " , " + region.getName()
									+ " , " + adresse.getPhone());
					

					cVO.addChangedValue(am.ColumnName, defaultAm);
					cVO.addChangedValue(pm.ColumnName, defaultPm);

					serverCtx.setContext(windowNO, orders.ColumnName,
							C_Order_ID);

					// TODO TYPE NE SE REPREND PAS PAR LE BOOKMARK
					serverCtx
							.setContext(windowNO, type.ColumnName, defaulttype);
					serverCtx.setContext(windowNO, "Z_isEdit", 1);

				}
			}

			else if (sender.equals(GlobalMessageConstants.OK)) {

				processOK(cVO);

			}

			cVO.changedContext = (HashMap<String, String>) serverCtx
					.getMap(windowNO);

			return cVO;
		}

		return null;
	}
	
	//Evolution #45666
	private ListBoxVO getListOrderLookUp() {
		List<ValueNamePair> options = new ArrayList<ValueNamePair>();
		StringBuffer sql = new StringBuffer("SELECT ODR.PoReference, dateOrdered ,ODR.C_Order_ID ");
		sql.append(" FROM C_ORDER ODR ");
		sql.append(" WHERE ODR.IsActive = 'Y' ");
		sql.append(" AND C_DOCTYPE_ID IN ( SELECT distinct(C_DOCTYPE_ID) FROM C_DOCTYPE WHERE XX_IsPlannification= 'Y' ) ");
		sql.append(" AND ( Monteur_ID IS null OR Monteur_ID = ? ) ");
		sql.append(" ORDER BY ODR.UPDATED DESC ");
		
		
		PreparedStatement stm = DB.prepareStatement(sql.toString(), null);
		ResultSet rs = null;
		Map<String, String> map = new HashMap<String, String>();
		try {
			stm.setInt(1, user.getC_BPartner_ID());
			rs = stm.executeQuery();
			int i = 0;
			while (rs.next()) {//#48120
				String s = rs.getString("PoReference");
				if (!map.containsKey(s)) {
					map.put(s, s);
					options.add(new ValueNamePair(String.valueOf(rs.getInt("C_Order_ID")), rs.getString("PoReference") + "_" + rs.getDate("dateOrdered") ));
					i++;
				}
			}
		} catch (Exception e) {
			log.severe(e.getMessage());
		} finally {
			DB.closeResultSet(rs);
			DB.closeStatement(stm);
		}
		return new ListBoxVO(options.toArray(new NamePair[] {}), "");
	}
	
//	private MLookup getOrderLookUp() {
//
//		return MLookupFactory
//				.get(serverCtx,
//						windowNO,
//						2161,
//						DisplayTypeConstants.TableDir,
//						Env.getLanguage(serverCtx),
//						"C_Order_ID",
//						0,
//						false,
//						" IsActive = 'Y' and C_DOCTYPE_ID in ( select distinct(C_DOCTYPE_ID) from C_DOCTYPE where XX_IsPlannification= 'Y' ) and ( Monteur_ID is null or Monteur_ID = "
//								+ user.getC_BPartner_ID() + ")");
//	}

	private MLookup getResourceLookUp() {

		return MLookupFactory.get(serverCtx, windowNO, 6773,
				DisplayTypeConstants.TableDir, Env.getLanguage(serverCtx),
				"C_BPartner_ID", 0, false,
				" IsActive = 'Y' AND IsMonteur = 'Y' and C_BPartner_ID !="+ user.getC_BPartner_ID());
	}

	private ListBoxVO getBookMarksLookUp() {

		List<ValueNamePair> options = new ArrayList<ValueNamePair>();
		//Evolution #45666
		StringBuffer sql = new StringBuffer("SELECT Z_INTERVENTIONS_ID,");
		sql.append(" (SELECT PoReference FROM C_ORDER ODR WHERE ODR.C_Order_ID = ZS.C_Order_ID) PoReference ");
		sql.append(" FROM Z_INTERVENTIONS ZS ");
		sql.append(" WHERE ZS.VENDOR_ID= ? ");
		sql.append(" ORDER BY UPDATED DESC ");

		PreparedStatement stm = DB.prepareStatement(sql.toString(), null);
		ResultSet rs = null;
		Map<String, String> map = new HashMap<String, String>();

		try {

			stm.setInt(1, user.getC_BPartner_ID());

			rs = stm.executeQuery();

			int i = 0;
			while (i < 20 && rs.next()) {

				String s = rs.getString("PoReference");
				if (!map.containsKey(s)) {
					map.put(s, s);

					options.add(new ValueNamePair(String.valueOf(rs
							.getInt("Z_INTERVENTIONS_ID")), rs
							.getString("PoReference")));
					i++;
				}
			}
		} catch (Exception e) {
			log.severe(e.getMessage());
		} finally {
			DB.closeResultSet(rs);
			DB.closeStatement(stm);
		}
		return new ListBoxVO(options.toArray(new NamePair[] {}), "");
	}

	private void processOK(ChangeVO cVO) {

		int entryID = windowCtx.getAsInt("Z_Entry_ID");
		int orgID = windowCtx.getAsInt("AD_Org_ID");

		MInterventions intervention = new MInterventions(serverCtx, entryID,
				null);
		MOrder order = new MOrder(serverCtx, windowCtx.getAsInt("C_Order_ID"),
				null);
		MUser user = new MUser(serverCtx, windowCtx.getAsInt("Z_User_ID"), null);

		MInterventionsProxy proxy = new MInterventionsProxy(intervention);
		MOrderProxy orderproxy = new MOrderProxy(order);
		
		
		if (orderproxy.getMonteur_ID() == 0)
			orderproxy.setMonteur_ID(user.getC_BPartner_ID());

		proxy.setXX_Hours(new BigDecimal(windowCtx.get("Hours")));
		proxy.setXX_AM(windowCtx.getAsBoolean("XX_AM"));
		proxy.setXX_PM(windowCtx.getAsBoolean("XX_PM"));
		proxy.setXX_IsSecVendor(false);

		intervention.setC_Order_ID(windowCtx.getAsInt("C_Order_ID"));
		String cmt = windowCtx.get("Comment");
		if(cmt != null && cmt.length()>1999)
			cmt = cmt.substring(0, 1999);
		intervention.setDescription(cmt);
		
		
		int AD_org_ID = order!= null?order.getAD_Org_ID():DB.getSQLValue((Trx)null, 
		"Select * from AD_Org  inner join AD_OrgInfo on AD_OrgInfo.AD_ORG_ID = AD_Org.AD_ORG_ID " +
		"where AD_OrgInfo.ISORGADMIN = 'Y' and AD_OrgInfo.ISEGGO = 'Y' and 1 = ?", 1);
		
intervention.setDateFrom(new Timestamp(Long.valueOf(windowCtx
				.get("DateFrom"))));
		intervention.setDateTo(new Timestamp(Long.valueOf(windowCtx
				.get("DateTo"))));

		intervention.setTaskType(windowCtx.get("TaskType"));
		intervention.setVendor_ID(user.getC_BPartner_ID());
		if(orgID==0)
            intervention.setAD_Org_ID(AD_org_ID);//MERGE
			
		if (!intervention.save())
			cVO.addError("can't save entry");
		else {
			// send back the id of the new entry
//			serverCtx.setContext(windowNO, "Z_Service_ID",
//					intervention.getZ_Interventions_ID());
		}

		int partner_id = windowCtx.getAsInt("C_BPartner_ID");

		// Si une autre ressource est choisie on crée une autre entrée
		// dans Z_intervention avec XX_IsSecVendor = true

		if (partner_id > 0) {

			MInterventions intervention2 = new MInterventions(serverCtx,
					entryID, null);
			MInterventionsProxy proxy2 = new MInterventionsProxy(intervention2);
			MOrderProxy orderproxy2 = new MOrderProxy(order);
			if (orderproxy2.getMonteur_ID() == 0)
				orderproxy2.setMonteur_ID(user.getC_BPartner_ID());

			proxy2.setXX_Hours(new BigDecimal(windowCtx.get("Hours")));
			proxy2.setXX_AM(windowCtx.getAsBoolean("XX_AM"));
			proxy2.setXX_PM(windowCtx.getAsBoolean("XX_PM"));
			proxy2.setXX_IsSecVendor(true);

			intervention2.setC_Order_ID(windowCtx.getAsInt("C_Order_ID"));
			intervention2.setDescription(windowCtx.get("Comment"));

			intervention2.setDateFrom(new Timestamp(Long.valueOf(windowCtx
					.get("DateFrom"))));
			intervention2.setDateTo(new Timestamp(Long.valueOf(windowCtx
					.get("DateTo"))));

			intervention2.setTaskType(windowCtx.get("TaskType"));
			intervention2.setVendor_ID(partner_id);

			if (!intervention2.save())
				cVO.addError("can't save entry");
			else {
				// send back the id of the new entry
			}

		}

	}

	@Override
	public Box getLayout() {

		VerticalBox vBox = new VerticalBox();

		for (int i = 0; i < components.size(); ++i)
			vBox.add(new ElementBox(i));

		return vBox;
	}

}
