package org.compiere.gwt.server.window;

/**
 * @author dizhao
 * 
 */



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.compiere.common.*;
import org.compiere.common.constants.*;
import org.compiere.db.QueryWithBindings;
import org.compiere.gwt.server.component.*;
import org.compiere.intf.*;
import org.compiere.model.*;
import org.compiere.process.*;
import org.compiere.util.*;
import org.compiere.vos.*;
import org.compiere.vos.WindowVO.*;

import com.audaxis.compiere.ws.WS_TvaCheck;
import com.audaxis.compiere.ws.pojo.CheckTVA;

public class NewCustomerWindowImpl extends WindowImpl // implements ASyncProcess 
{
	private static CLogger log = CLogger.getCLogger( NewCustomerWindowImpl.class );
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	
	public static final String C_EMAIL = "C_EMAIL";
	public static final String C_PHONE = "C_PHONE";
	public static final String C_NAME = "C_NAME";
	public static final String C_FIRSTNAME = "C_FIRSTNAME";
	public static final String C_TAXID = "C_TAXID";	
	public static final String C_POSTAL = "C_POSTAL";
	
	
	public static final String S_VALUE = "VALUE";
	public static final String S_EMAIL = "EMAIL";
	public static final String S_PHONE = "PHONE";
	public static final String S_CTRY = "COUNTRY";
	public static final String S_NAME = "NAME";
	public static final String S_NAME2 = "NAME2";
	public static final String S_TAXID = "TAXID";	
	public static final String S_POSTAL = "POSTAL";
	public static final String S_CITY = "CITY";
	public static final String S_BPNAME = "BPNAME";
	public static final String S_BPNAME2 = "BPNAME2";
	public static final String L_VALUE = "S_VALUE";
	public static final String L_EMAIL = "S_EMAIL";
	public static final String L_PHONE = "S_PHONE";
	public static final String L_CTRY = "S_COUNTRY";
	public static final String L_NAME = "S_NAME";
	public static final String L_NAME2 = "S_NAME2";
	public static final String L_TAXID = "S_TAXID";	
	public static final String L_POSTAL = "S_POSTAL";
	public static final String L_CITY = "S_CITY";
	public static final String L_BPNAME = "S_BPNAME";
	public static final String L_BPNAME2 = "S_BPNAME2";


	public static final String D_GREETING = "D_GREETING";
	public static final String D_TAXID 	= "D_TAXID";
	public static final String D_LANGUAGE = "D_LANGUAGE";

	public static final String D_CONTACT = "D_CONTACT";
	
	public static final String D_GREETING1 = "D_GREETING1";
	public static final String D_NAME = "D_NAME";
	public static final String D_PRENOM = "D_PRENOM";
	public static final String D_EMAIL = "D_EMAIL";
	public static final String D_PHONE = "D_PHONE";
	public static final String D_GSM = "D_GSM";

	public static final String D_CONTACT2 = "D_CONTACT2";
	
	
	public static final String D_GREETING2 = "D_GREETING2";
	public static final String D_NAME2 = "D_NAME2";
	public static final String D_PRENOM2 = "D_PRENOM2";
	public static final String D_EMAIL2 = "D_EMAIL2";
	public static final String D_PHONE2 = "D_PHONE2";
	public static final String D_GSM2 = "D_GSM2";

	public static final String D_CONTACT3 = "D_CONTACT3";
	
	public static final String D_GREETING3 = "D_GREETING3";
	public static final String D_NAME3 = "D_NAME3";
	public static final String D_PRENOM3 = "D_PRENOM3";
	public static final String D_EMAIL3 = "D_EMAIL3";
	public static final String D_PHONE3 = "D_PHONE3";
	public static final String D_GSM3 = "D_GSM3";
	
	public static final String D_ADDRESS = "D_ADDRESS";
	
	public static final String D_POSTAL = "D_POSTAL";
	public static final String D_ADDR1 = "D_ADDR1";
	public static final String D_ADDR2 = "D_ADDR2";
	public static final String D_CITY = "D_CITY";
	public static final String D_CTRY = "D_CTRY";
	
	public static final String D_ADDRESS2 = "D_ADDRESS2";
	
	public static final String D_POSTAL2 = "D_POSTAL2";
	public static final String D_ADDR12 = "D_ADDR12";
	public static final String D_ADDR22 = "D_ADDR22";
	public static final String D_CITY2 = "D_CITY2";
	public static final String D_CTRY2 = "D_CTRY2";
	
	private String bpvalue = null;
	
	private int bpID = 0;
	private int aduserID1 = 0;
	private int aduserID2 = 0;
	private int aduserID3 = 0;
	private int bplocID1 = 0;
	private int bplocID2 = 0;
	private int locID1 = 0;
	private int locID2 = 0;
	
	 

	public void executeASync(ProcessInfo pi) {

		
		// TODO Auto-generated method stub

	}

	public boolean isUILocked() {
		// TODO Auto-generated method stub
		return false;
	}

	public void lockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	public void unlockUI(ProcessInfo pi) {
		// TODO Auto-generated method stub

	}

	public NewCustomerWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		serverCtx.setContext("IsSOTrx", "Y");
		
		// Criteria

		FieldVO c_Name = new FieldVO( C_NAME, Msg.translate( serverCtx, C_NAME ), DisplayTypeConstants.String );
		FieldVO c_EMail = new FieldVO( C_EMAIL, Msg.translate( serverCtx, C_EMAIL ), DisplayTypeConstants.String );
		FieldVO c_Phone = new FieldVO( C_PHONE, Msg.translate( serverCtx, C_PHONE ), DisplayTypeConstants.String );
		FieldVO c_FirstName = new FieldVO( C_FIRSTNAME, Msg.translate( serverCtx, C_FIRSTNAME ), DisplayTypeConstants.String );
		FieldVO c_TaxID = new FieldVO( C_TAXID, Msg.translate( serverCtx, C_TAXID ), DisplayTypeConstants.String );
		FieldVO c_Postal = new FieldVO( C_POSTAL, Msg.translate( serverCtx, C_POSTAL ), DisplayTypeConstants.String );
		SearchComponentImpl  c_criteria = new SearchComponentImpl( new FieldVO[] {c_Name, c_EMail, c_Phone, c_FirstName, c_TaxID, c_Postal } );
		components.add( c_criteria );
		
		 
		// Search
		
		components.add(new TableComponentImpl(serverCtx, new FieldVO[] {
				new FieldVO(S_VALUE, Msg.translate( serverCtx, L_VALUE ), S_VALUE, DisplayTypeConstants.String, true, true, true),
				new FieldVO(S_NAME, Msg.translate( serverCtx, L_NAME ), S_NAME, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_NAME2, Msg.translate( serverCtx, L_NAME2 ), S_NAME2, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_EMAIL, Msg.translate( serverCtx, L_EMAIL ), S_EMAIL, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_PHONE, Msg.translate( serverCtx, L_PHONE ), S_PHONE, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_POSTAL, Msg.translate( serverCtx, L_POSTAL ), S_POSTAL, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_CITY, Msg.translate( serverCtx, L_CITY ), S_CITY, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_CTRY, Msg.translate( serverCtx, L_CTRY ), S_CTRY, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_BPNAME, Msg.translate( serverCtx, L_BPNAME ), S_BPNAME, DisplayTypeConstants.String, true, true, false),
				new FieldVO(S_BPNAME2, Msg.translate( serverCtx, L_BPNAME2 ), S_BPNAME2, DisplayTypeConstants.String, true, true, false),

		},
		"",
		//	FROM
		"RV_CUSTOMER c",
		//	WHERE
		"c.AD_Client_ID=?"
		+ " AND c.AD_Org_ID=?",
		true, false, null) { //null means don't define security sql access here. Security access code is added manually
			@Override
			protected QueryWithBindings getQueryInput(QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol ) {
				ArrayList<Object> params = new ArrayList<Object>(2);
				params.add(ctx.getAD_Client_ID());
				params.add(ctx.getAD_Org_ID());
				StringBuffer otherClause = new StringBuffer();
				otherClause.append("AND ( 1=1 ");
				if((windowCtx.get(C_POSTAL) != null) && !"".equals(windowCtx.get(C_POSTAL))) {
					otherClause.append("AND  c.Postal=? ");
					params.add(windowCtx.get(C_POSTAL));
				}
				if((windowCtx.get(C_EMAIL) != null) && !"".equals(windowCtx.get(C_EMAIL))) {
					otherClause.append("AND c.EMail=? ");
					params.add(windowCtx.get(C_EMAIL));
				}
				if((windowCtx.get(C_PHONE) != null) && !"".equals(windowCtx.get(C_PHONE))) {
					otherClause.append("AND c.Phone=? ");
					params.add(windowCtx.get(C_PHONE));
				}
				if((windowCtx.get(C_NAME) != null) && !"".equals(windowCtx.get(C_NAME))) {
					otherClause.append("AND upper(c.Name) like '" + windowCtx.get(C_NAME).toUpperCase() + "%" + "' ");
				}
				if((windowCtx.get(C_FIRSTNAME) != null) && !"".equals(windowCtx.get(C_FIRSTNAME))) {
					otherClause.append("AND upper(c.Name2) like '" + windowCtx.get(C_FIRSTNAME).toUpperCase() + "%" + "' ");
				}
				if((windowCtx.get(C_TAXID) != null) && !"".equals(windowCtx.get(C_TAXID))) {
					otherClause.append("AND c.TaxID=? ");
					params.add(windowCtx.get(C_TAXID));
				}
				if( (windowCtx.get(C_EMAIL) == null)   &&
				    (windowCtx.get(C_PHONE) == null)  &&
				    (windowCtx.get(C_POSTAL) == null)  &&
				    (windowCtx.get(C_FIRSTNAME) == null)  &&
				    (windowCtx.get(C_NAME) == null)  &&
				    (windowCtx.get(C_TAXID) == null) ) {
					otherClause.append("AND 1=2 ");
				}
				otherClause.append(" ) or c.value = 'NEW-CUSTOMER'  ");
				String sql = getComponentSQL(null, null, fieldVO, otherClause.toString(), countOnly, asc, sortCol);
				return new QueryWithBindings( sql, params );
			}
			@Override
			protected String getDefaultOrderBy()
			{
				return " ORDER BY c.tri, c.name";
			}
		});

		
		FieldVO fieldXL = new FieldVO("ADDNEW","Ajout/Modification Client", DisplayTypeConstants.Button);
		fieldXL.IsReadOnly=false;
		fieldXL.isImpactsUI=true;
		components.add(new SearchComponentImpl(new FieldVO[]{fieldXL, })); 

		FieldVO F_GREETING = new FieldVO(D_GREETING,Msg.translate( serverCtx, D_GREETING), DisplayTypeConstants.TableDir);
		String sql = "SELECT C_Greeting_ID, Name FROM C_Greeting WHERE IsActive='Y' and ad_client_id = " + serverCtx.getAD_Client_ID() + " ORDER BY 2";
		fillListBox(F_GREETING,sql);
		F_GREETING.IsDisplayed = true;
//		F_GREETING.IsMandatoryUI = true;

		FieldVO F_TAXID = new FieldVO(D_TAXID,Msg.translate( serverCtx, D_TAXID), DisplayTypeConstants.String);
		F_TAXID.isImpactsValue=true;
		
		FieldVO F_LANGUAGE = new FieldVO(D_LANGUAGE,Msg.translate( serverCtx, D_LANGUAGE), DisplayTypeConstants.TableDir);
		sql = "select AD_LANGUAGE_ID, name from AD_LANGUAGE where (ISSYSTEMLANGUAGE = 'Y' or ISBASELANGUAGE = 'Y')";
		fillListBox(F_LANGUAGE,sql);


		components.add(new SearchComponentImpl(new FieldVO[]{F_GREETING, F_TAXID,F_LANGUAGE, })); 
		
		FieldVO F_CONTACT = new FieldVO(D_CONTACT,Msg.translate( serverCtx, D_CONTACT), DisplayTypeConstants.Button);
		F_CONTACT.IsReadOnly = true;
		components.add(new SearchComponentImpl(new FieldVO[]{F_CONTACT, })); 

		
		FieldVO F_GREETING1 = new FieldVO(D_GREETING1,Msg.translate( serverCtx, D_GREETING1), DisplayTypeConstants.TableDir);
		sql = "SELECT C_Greeting_ID, Name FROM C_Greeting WHERE IsActive='Y' and ad_client_id = " + serverCtx.getAD_Client_ID() + " ORDER BY 2";
		fillListBox(F_GREETING1,sql);
		F_GREETING1.IsDisplayed = true;
		FieldVO F_NAME = new FieldVO(D_NAME,Msg.translate( serverCtx, D_NAME), DisplayTypeConstants.String);
		F_NAME.isImpactsValue=true;
		FieldVO F_PRENOM = new FieldVO(D_PRENOM,Msg.translate( serverCtx, D_PRENOM), DisplayTypeConstants.String);
		F_PRENOM.isImpactsValue=true;
		FieldVO F_PHONE = new FieldVO(D_PHONE,Msg.translate( serverCtx, D_PHONE), DisplayTypeConstants.String);
		F_PHONE.isImpactsValue=true;
		FieldVO F_GSM = new FieldVO(D_GSM,Msg.translate( serverCtx, D_GSM), DisplayTypeConstants.String);
		F_GSM.isImpactsValue=true;
		FieldVO F_EMAIL = new FieldVO(D_EMAIL,Msg.translate( serverCtx, D_EMAIL), DisplayTypeConstants.String);
		F_EMAIL.isImpactsValue=true;

		components.add(new SearchComponentImpl(new FieldVO[]{F_GREETING1, F_NAME, F_PRENOM, F_PHONE, F_GSM, F_EMAIL, })); 

		FieldVO F_CONTACT2 = new FieldVO(D_CONTACT2,Msg.translate( serverCtx, D_CONTACT2), DisplayTypeConstants.Button);
		F_CONTACT2.IsReadOnly = true;
		components.add(new SearchComponentImpl(new FieldVO[]{F_CONTACT2, })); 

		
		FieldVO F_GREETING2 = new FieldVO(D_GREETING2,Msg.translate( serverCtx, D_GREETING2), DisplayTypeConstants.TableDir);
		sql = "SELECT C_Greeting_ID, Name FROM C_Greeting WHERE IsActive='Y' and ad_client_id = " + serverCtx.getAD_Client_ID() + " ORDER BY 2";
		fillListBox(F_GREETING2,sql);
		F_GREETING2.IsDisplayed = true;
		FieldVO F_NAME2 = new FieldVO(D_NAME2,Msg.translate( serverCtx, D_NAME2), DisplayTypeConstants.String);
		F_NAME2.isImpactsValue=true;
		FieldVO F_PRENOM2 = new FieldVO(D_PRENOM2,Msg.translate( serverCtx, D_PRENOM2), DisplayTypeConstants.String);
		F_PRENOM2.isImpactsValue=true;
		FieldVO F_PHONE2 = new FieldVO(D_PHONE2,Msg.translate( serverCtx, D_PHONE2), DisplayTypeConstants.String);
		F_PHONE2.isImpactsValue=true;
		FieldVO F_GSM2 = new FieldVO(D_GSM2,Msg.translate( serverCtx, D_GSM2), DisplayTypeConstants.String);
		F_GSM2.isImpactsValue=true;
		FieldVO F_EMAIL2 = new FieldVO(D_EMAIL2,Msg.translate( serverCtx, D_EMAIL2), DisplayTypeConstants.String);
		F_EMAIL2.isImpactsValue=true;

		components.add(new SearchComponentImpl(new FieldVO[]{F_GREETING2, F_NAME2, F_PRENOM2,  F_PHONE2, F_GSM2,F_EMAIL2, })); 
		
		FieldVO F_CONTACT3 = new FieldVO(D_CONTACT3,Msg.translate( serverCtx, D_CONTACT3), DisplayTypeConstants.Button);
		F_CONTACT3.IsReadOnly = true;
		components.add(new SearchComponentImpl(new FieldVO[]{F_CONTACT3, })); 

		
		FieldVO F_GREETING3 = new FieldVO(D_GREETING3,Msg.translate( serverCtx, D_GREETING3), DisplayTypeConstants.TableDir);
		sql = "SELECT C_Greeting_ID, Name FROM C_Greeting WHERE IsActive='Y' and ad_client_id = " + serverCtx.getAD_Client_ID() + " ORDER BY 2";
		fillListBox(F_GREETING3,sql);
		F_GREETING3.IsDisplayed = true;
		FieldVO F_NAME3 = new FieldVO(D_NAME3,Msg.translate( serverCtx, D_NAME3), DisplayTypeConstants.String);
		F_NAME3.isImpactsValue=true;
		FieldVO F_PRENOM3 = new FieldVO(D_PRENOM3,Msg.translate( serverCtx, D_PRENOM3), DisplayTypeConstants.String);
		F_PRENOM3.isImpactsValue=true;
		FieldVO F_PHONE3 = new FieldVO(D_PHONE3,Msg.translate( serverCtx, D_PHONE3), DisplayTypeConstants.String);
		F_PHONE3.isImpactsValue=true;
		FieldVO F_GSM3 = new FieldVO(D_GSM3,Msg.translate( serverCtx, D_GSM3), DisplayTypeConstants.String);
		F_GSM3.isImpactsValue=true;
		FieldVO F_EMAIL3 = new FieldVO(D_EMAIL3,Msg.translate( serverCtx, D_EMAIL3), DisplayTypeConstants.String);
		F_EMAIL3.isImpactsValue=true;

		components.add(new SearchComponentImpl(new FieldVO[]{F_GREETING3, F_NAME3, F_PRENOM3,  F_PHONE3, F_GSM3,F_EMAIL3, })); 


		FieldVO F_ADDRESS = new FieldVO(D_ADDRESS,Msg.translate( serverCtx, D_ADDRESS), DisplayTypeConstants.Button);
		F_ADDRESS.IsReadOnly = true;
		components.add(new SearchComponentImpl(new FieldVO[]{F_ADDRESS, })); 

		FieldVO F_POSTAL = new FieldVO(D_POSTAL,Msg.translate( serverCtx, D_POSTAL), DisplayTypeConstants.String);
		F_POSTAL.IsReadOnly=false;
		F_POSTAL.isImpactsValue=true;
		FieldVO F_ADDR1 = new FieldVO(D_ADDR1,Msg.translate( serverCtx, D_ADDR1), DisplayTypeConstants.String);
		F_ADDR1.isImpactsValue=true;
		FieldVO F_ADDR2 = new FieldVO(D_ADDR2,Msg.translate( serverCtx, D_ADDR2), DisplayTypeConstants.String);
		F_ADDR2.isImpactsValue=true;
		FieldVO F_CITY = new FieldVO(D_CITY,Msg.translate( serverCtx, D_CITY), DisplayTypeConstants.TableDir);
		sql = "select c_city_id, name from c_city where postal = '" + windowCtx.get(C_POSTAL) + "'   order by name";
		fillListBox(F_CITY,sql);
		F_CITY.isImpactsValue=true;
		FieldVO F_CTRY = new FieldVO(D_CTRY,Msg.translate( serverCtx, D_CTRY), DisplayTypeConstants.String);
		F_CTRY.IsReadOnly=true;
		//		sql = "select c_country_id, name from c_country order by name";
//		fillListBox(F_CTRY,sql);

		components.add(new SearchComponentImpl(new FieldVO[]{F_POSTAL, F_ADDR1, F_ADDR2, F_CITY, F_CTRY, })); 

		FieldVO F_ADDRESS2 = new FieldVO(D_ADDRESS2,Msg.translate( serverCtx, D_ADDRESS2), DisplayTypeConstants.Button);
		F_ADDRESS2.IsReadOnly = true;
		components.add(new SearchComponentImpl(new FieldVO[]{F_ADDRESS2, })); 


		FieldVO F_POSTAL2 = new FieldVO(D_POSTAL2,Msg.translate( serverCtx, D_POSTAL2), DisplayTypeConstants.String);
		F_POSTAL2.isImpactsValue=true;
		FieldVO F_ADDR12 = new FieldVO(D_ADDR12,Msg.translate( serverCtx, D_ADDR12), DisplayTypeConstants.String);
		F_ADDR12.isImpactsValue=true;
		FieldVO F_ADDR22 = new FieldVO(D_ADDR22,Msg.translate( serverCtx, D_ADDR22), DisplayTypeConstants.String);
		F_ADDR22.isImpactsValue=true;
		FieldVO F_CITY2 = new FieldVO(D_CITY2,Msg.translate( serverCtx, D_CITY2), DisplayTypeConstants.TableDir);
		sql = "select c_city_id, name from c_city where postal = '" + windowCtx.get(D_POSTAL2) + "'   order by name";
		fillListBox(F_CITY2,sql);
		F_CITY2.isImpactsValue=true;
		FieldVO F_CTRY2 = new FieldVO(D_CTRY2,Msg.translate( serverCtx, D_CTRY2), DisplayTypeConstants.String);
		F_CTRY2.IsReadOnly=true;
		//		sql = "select c_country_id, name from c_country order by name";
//		fillListBox(F_CTRY2,sql);

		components.add(new SearchComponentImpl(new FieldVO[]{F_POSTAL2, F_ADDR12, F_ADDR22, F_CITY2, F_CTRY2 })); 
	}//constructor

	@Override
	public ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ClientWindowType getClientWindowType() {
		return ClientWindowType.SELECTION;
	}
	

	@Override
	public ChangeVO processCallback(String sender) {

		// Add new Key Pressed 
		//--------------------
		ChangeVO change = new ChangeVO();
		if(sender.equals("ADDNEW")) {
			addNewPressed (change);
		}else {
			// Process key Pressed
			//--------------------
			if(sender.equals(GlobalMessageConstants.PROCESS)) {
				change = validateData(change, serverCtx, windowCtx);
			}
			else{
				change = callOutField(sender,change);
			}
		}
		return change;
	}
	
	
	
	private ChangeVO callOutField(String sender, ChangeVO change){
		
		// TaxID Validation
		//-----------------
		if(sender.equals(D_TAXID) && windowCtx.get(D_TAXID) != null) {
			String taxid = windowCtx.get(D_TAXID);
			taxid = taxid.replace(" ", "").replace(".","").replace("/", "");
			// TaxID Validation
			try {
				CheckTVA chkTVA = WS_TvaCheck.check(taxid);
				change.changedFields = new HashMap<String, String>();
				change.changedFields.put(sender, taxid);
				if (chkTVA==null)change.addError(Msg.translate( serverCtx, "E_VAT" ));
				else {
					change.changedFields.put(D_POSTAL, chkTVA.getPostal());
					change.changedFields.put(D_NAME, chkTVA.getName());
					change.changedFields.put(D_ADDR1, chkTVA.getAddress());
					String sql = "select c_city_id, name from c_city where postal =  '" +  chkTVA.getPostal() + "'   order by name";
					change.changedDropDowns =  new HashMap<String, ArrayList<NamePair>>();
					change.changedDropDowns.put(D_CITY,getListBox(sql));
					int cityID = findCity(chkTVA.getCity(),chkTVA.getPostal());
					Object[][] locCityData = QueryUtil.executeQuery("select c_city_id,c_country_id from c_city where c_city_id = ? ", new Object[]{new Integer(cityID)});
					if (locCityData.length > 0){
						change.changedFields.put(D_CITY, locCityData[0][0].toString());
						if(locCityData[0][1]!=null){
							String ctry = QueryUtil.getSQLValueString(null, "select name from c_country where c_country_id in (select c_country_id from c_city where c_country_id = ? )", new Object[]{locCityData[0][1]}); 
							if (ctry != null) change.changedFields.put(D_CTRY,ctry) ;
						}	
					}
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}	

		// Contact Validation
		//-------------------
		// Name must be in uppercase
		if((sender.equals(D_NAME) && windowCtx.get(D_NAME) != null) || (sender.equals(D_NAME2) && windowCtx.get(D_NAME2) != null) || (sender.equals(D_NAME3) && windowCtx.get(D_NAME3) != null))  {
			if (windowCtx.get("D_POSTAL") == null) change.addError(Msg.translate( serverCtx, "E_NEWCUST" ));
			String name = windowCtx.get(sender);
			name = name.toUpperCase();
			change.changedFields = new HashMap<String, String>();
			change.changedFields.put(sender, name);
		}	
		
		// First Letter of Prenom must be in uppercase
		if((sender.equals(D_PRENOM) && windowCtx.get(D_PRENOM) != null) || (sender.equals(D_PRENOM2) && windowCtx.get(D_PRENOM2) != null) || (sender.equals(D_PRENOM3) && windowCtx.get(D_PRENOM3) != null))  {
			String prename = windowCtx.get(sender);
			prename = prename.substring(0, 1).toUpperCase() + prename.substring(1).toLowerCase();
			change.changedFields = new HashMap<String, String>();
			change.changedFields.put(sender, prename);
		}	

		// Validate Email Address
		if((sender.equals(D_EMAIL) && windowCtx.get(D_EMAIL) != null) || (sender.equals(D_EMAIL2) && windowCtx.get(D_EMAIL2) != null) || (sender.equals(D_EMAIL3) && windowCtx.get(D_EMAIL3) != null))  {
			String email = windowCtx.get(sender);
			if (! (email.contains("@") && email.contains("."))) change.addError(Msg.translate( serverCtx, "E_EMAIL" ) + " " + email);
			if (!validateEmailAddress(email)) change.addError("Email : " + email + " n'est pas valide");
		}	
		
		// Validate Phone
		if((sender.equals(D_PHONE) && windowCtx.get(D_PHONE) != null) || (sender.equals(D_GSM) && windowCtx.get(D_GSM) != null) ||
		   (sender.equals(D_PHONE2) && windowCtx.get(D_PHONE2) != null) || (sender.equals(D_GSM2) && windowCtx.get(D_GSM2) != null)	||
		   (sender.equals(D_PHONE3) && windowCtx.get(D_PHONE3) != null) || (sender.equals(D_GSM3) && windowCtx.get(D_GSM3) != null)	)  {
			String phone = windowCtx.get(sender);
			phone = validatePhone(phone);
			if ("NOK".equalsIgnoreCase(phone)) change.addError(Msg.translate( serverCtx, sender) + " : " + windowCtx.get(sender) + " " + Msg.translate( serverCtx, "E_NOTVALID" ));
			else {
				change.changedFields = new HashMap<String, String>();
				change.changedFields.put(sender, phone);
			}
		}	

		// Adresse Validation
		// Country Setup Fct CP and city
		if((sender.equals(D_CITY) && windowCtx.get(D_CITY) != null) || (sender.equals(D_CITY2) && windowCtx.get(D_CITY2) != null))  {
			Integer cityID = new Integer( windowCtx.get(sender));
			String ctry = QueryUtil.getSQLValueString(null, "select name from c_country where c_country_id in (select c_country_id from c_city where c_city_id = ? )", new Object[]{cityID}); 
			if (ctry != null) {
				change.changedFields = new HashMap<String, String>();
				if (sender.equals(D_CITY) )	change.changedFields.put("D_CTRY", ctry);
				else change.changedFields.put("D_CTRY2", ctry);
			} 
		}

		if((sender.equals(D_POSTAL) && windowCtx.get(D_POSTAL) != null) )  {
			String postal = windowCtx.get(sender);
			String sql = "select c_city_id, name from c_city where postal = '" + postal + "'   order by name";
			change.changedDropDowns =  new HashMap<String, ArrayList<NamePair>>();
			change.changedDropDowns.put(D_CITY,getListBox(sql));
		}	

		
		if((sender.equals(D_POSTAL2) && windowCtx.get(D_POSTAL2) != null) )  {
			String postal2 = windowCtx.get(sender);
			String sql = "select c_city_id, name from c_city where postal = '" + postal2 + "'   order by name";
			change.changedDropDowns =  new HashMap<String, ArrayList<NamePair>>();
			change.changedDropDowns.put(D_CITY2,getListBox(sql));
		}	

		if((sender.equals(D_ADDR1) && windowCtx.get(D_ADDR1) != null) || (sender.equals(D_ADDR2) && windowCtx.get(D_ADDR2) != null) ||
		   (sender.equals(D_ADDR12) && windowCtx.get(D_ADDR12) != null) || (sender.equals(D_ADDR22) && windowCtx.get(D_ADDR22) != null)	)  {
			String addr = windowCtx.get(sender);
			change.changedFields = new HashMap<String, String>();
			change.changedFields.put(sender, addr);

		}
		return change;
	}	


	/**************************************************************************
	 *	Add new pressed, initialise and reset all fields
	 */
	private ChangeVO addNewPressed (ChangeVO change)
	{
		bpvalue = null;
		bpID = 0;
		aduserID1 = 0;
		aduserID2 = 0;
		bplocID1 = 0;
		bplocID2 = 0;
		locID1 = 0;
		locID2 = 0;
		serverCtx.setContext("ADDMODIFY",0);

		if (	(windowCtx.get(C_EMAIL) == null)   &&
				(windowCtx.get(C_PHONE) == null)  &&
				(windowCtx.get(C_NAME) == null)  &&
				(windowCtx.get(C_TAXID) == null) ) {
			change.addError("Un des critéres doit impérativement être rempli");
		}
		change.changedFields = new HashMap<String, String>();
		change.changedDropDowns =  new HashMap<String, ArrayList<NamePair>>();
		change = clsData(change);

		ArrayList<String[]> selectedValues = null;
		if (windowCtx.getAsBoolean("1|" + Ctx.TABLE_SELECT_ALL)) {
			QueryVO queryVO = windowCtx.getQueryVO(1);
			TableModel model = ((TableComponentImpl) components.get(1)).getQueryResults(queryVO, this, windowCtx, null, 0, QueryUtil.MAX_ROWS, false, true, -1);
			selectedValues = new ArrayList<String[]>();
			for( int row = 0; row < model.rows(); ++row ){
				selectedValues.add(model.getRow(row));
			}
		} else {
		}
		if(windowCtx.getSelectedRows( 1 ).size() == 0) change.addError(Msg.translate( serverCtx, "E_NOTSEL" ));	
		selectedValues = windowCtx.getSelectedRows( 1 );
		if(selectedValues.size() > 1) change.addError(Msg.translate( serverCtx, "E_ONEONLY" ));	
		if (change.hasError()) return change;
		if (selectedValues.size() == 1) bpvalue = selectedValues.get(0)[0];
		
		if ("NEW-CUSTOMER".equalsIgnoreCase(bpvalue)) {
			// if (windowCtx.get(C_POSTAL)!=null){
				change.changedFields.put(D_POSTAL, windowCtx.get(C_POSTAL));
				change.changedFields.put(D_EMAIL, windowCtx.get(C_EMAIL));
				change.changedFields.put(D_PHONE, windowCtx.get(C_PHONE));
				change.changedFields.put(D_NAME, windowCtx.get(C_NAME));
				change.changedFields.put(D_TAXID, windowCtx.get(C_TAXID));
				change.changedFields.put(D_LANGUAGE, "fr_FR");
				String sql = "select c_city_id, name from c_city where postal = '" + windowCtx.get(C_POSTAL) + "'   order by name";
				change.changedDropDowns.put(D_CITY,getListBox(sql));
			// }
		}
		// Initialise from existing data
		else {
			Object[][] bpData = QueryUtil.executeQuery("select C_Greeting_ID, taxid,c_bpartner_id,ad_language from c_bpartner where ad_client_id = ? and value = ? ", new Object[]{serverCtx.getAD_Client_ID(), bpvalue});
			bpID = new Integer(bpData[0][2].toString());
			if (bpData[0][0] != null)change.changedFields.put(D_GREETING, bpData[0][0].toString());
			if (bpData[0][1] != null)change.changedFields.put(D_TAXID, bpData[0][1].toString());
			if(bpData[0][3]!=null){
				Object[][] langIDData = QueryUtil.executeQuery("select ad_language_id from ad_language where ad_language = ?", new Object[]{bpData[0][3]});
				if(langIDData[0][0]!=null)change.changedFields.put(D_LANGUAGE,langIDData[0][0].toString());
			}

			Object[][] userData = QueryUtil.executeQuery("select name,email,phone,phone2,ad_user_id,name2,C_Greeting_ID from ad_user where c_bpartner_id = ? and isactive = 'Y' and iseggo = 'Y' order by IS_ZDEFAULT desc ", new Object[]{bpID});
			if (userData.length > 0){
				if(userData[0][0]!=null)change.changedFields.put(D_NAME, userData[0][0].toString());
				if(userData[0][1]!=null)change.changedFields.put(D_EMAIL,userData[0][1].toString());
				if(userData[0][2]!=null)change.changedFields.put(D_PHONE,userData[0][2].toString());
				if(userData[0][3]!=null)change.changedFields.put(D_GSM,userData[0][3].toString());
				if(userData[0][5]!=null)change.changedFields.put(D_PRENOM,userData[0][5].toString());
				if(userData[0][6] != null)change.changedFields.put(D_GREETING1, userData[0][6].toString());
				if(userData[0][4]!=null)aduserID1 = new Integer(userData[0][4].toString());
			}
			if (userData.length > 1){
				if(userData[1][0]!=null)change.changedFields.put(D_NAME2, userData[1][0].toString());
				if(userData[1][1]!=null)change.changedFields.put(D_EMAIL2,userData[1][1].toString());
				if(userData[1][2]!=null)change.changedFields.put(D_PHONE2,userData[1][2].toString());
				if(userData[1][3]!=null)change.changedFields.put(D_GSM2,userData[1][3].toString());
				if(userData[1][5]!=null)change.changedFields.put(D_PRENOM2,userData[1][5].toString());
				if(userData[1][6] != null)change.changedFields.put(D_GREETING2, userData[1][6].toString());
				if(userData[1][4]!=null)aduserID2 = new Integer(userData[1][4].toString());
			}
			if (userData.length > 2){
				if(userData[2][0]!=null)change.changedFields.put(D_NAME3, userData[2][0].toString());
				if(userData[2][1]!=null)change.changedFields.put(D_EMAIL3,userData[2][1].toString());
				if(userData[2][2]!=null)change.changedFields.put(D_PHONE3,userData[2][2].toString());
				if(userData[2][3]!=null)change.changedFields.put(D_GSM3,userData[2][3].toString());
				if(userData[2][5]!=null)change.changedFields.put(D_PRENOM3,userData[2][5].toString());
				if(userData[2][6] != null)change.changedFields.put(D_GREETING3, userData[2][6].toString());
				if(userData[2][4]!=null)aduserID3 = new Integer(userData[2][4].toString());
			}
			// Check ship/bill Adress
			Object[][] bpLocData = QueryUtil.executeQuery("select C_BPARTNER_LOCATION_ID, C_Location_ID from C_BPARTNER_LOCATION where c_bpartner_id = ? and isactive = 'Y' and iseggo = 'Y' and isshipto = 'Y' and isbillto = 'Y' order by C_BPARTNER_LOCATION_ID desc", new Object[]{bpID});
			if (bpLocData.length > 0){ // Shipto 
				bplocID1=new Integer(bpLocData[0][0].toString());
				if (bpLocData[0][1] != null ) locID1 = new Integer(bpLocData[0][1].toString());
				
				Object[][] locData = QueryUtil.executeQuery("select C_LOCATION_ID, postal, address1, address2,city,c_city_id,c_country_id from C_LOCATION where c_location_id = ? ", new Object[]{locID1});
				if (locData.length > 0 ){
					if(locData[0][1]!=null)change.changedFields.put(D_POSTAL,locData[0][1].toString());
					if(locData[0][2]!=null)change.changedFields.put(D_ADDR1,locData[0][2].toString());
					if(locData[0][3]!=null)change.changedFields.put(D_ADDR2,locData[0][3].toString());

					if (locData[0][1].toString() != null ){
						String sql = "select c_city_id, name from c_city where postal = '" +  locData[0][1].toString() + "'   order by name";
						change.changedDropDowns.put(D_CITY,getListBox(sql));
				
						int cityID = findCity(locData[0][4].toString(),locData[0][1].toString());
						Object[][] locCityData = QueryUtil.executeQuery("select c_city_id,c_country_id from c_city where c_city_id = ? ", new Object[]{new Integer(cityID)});
						if (locCityData.length > 0){
							if(locCityData[0][0]!=null)change.changedFields.put(D_CITY,(locCityData[0][0].toString())) ;
							if(locCityData[0][1]!=null){
								String ctry = QueryUtil.getSQLValueString(null, "select name from c_country where c_country_id in (select c_country_id from c_city where c_country_id = ? )", new Object[]{locCityData[0][1]}); 
								if (ctry != null) change.changedFields.put(D_CTRY,ctry) ;
							}	
						}
					}	
				}	
			}else {
				bpLocData = QueryUtil.executeQuery("select C_BPARTNER_LOCATION_ID, C_Location_ID from C_BPARTNER_LOCATION where c_bpartner_id = ? and isactive = 'Y' and iseggo = 'Y' and isshipto = 'Y' and isbillto = 'N' order by C_BPARTNER_LOCATION_ID desc", new Object[]{bpID});
				if (bpLocData.length > 0){ // Shipto 
					bplocID1=new Integer(bpLocData[0][0].toString());
					if (bpLocData[0][1] != null ) locID1 = new Integer(bpLocData[0][1].toString());
					
					Object[][] locData = QueryUtil.executeQuery("select C_LOCATION_ID, postal, address1, address2,city,c_city_id,c_country_id from C_LOCATION where c_location_id = ? ", new Object[]{locID1});
					if (locData.length > 0 ){
						if(locData[0][1]!=null)change.changedFields.put(D_POSTAL,locData[0][1].toString());
						if(locData[0][2]!=null)change.changedFields.put(D_ADDR1,locData[0][2].toString());
						if(locData[0][3]!=null)change.changedFields.put(D_ADDR2,locData[0][3].toString());

						if (locData[0][1].toString() != null ){
							String sql = "select c_city_id, name from c_city where postal = '" +  locData[0][1].toString() + "'   order by name";
							change.changedDropDowns.put(D_CITY,getListBox(sql));

							int cityID = findCity(locData[0][4].toString(),locData[0][1].toString());
							Object[][] locCityData = QueryUtil.executeQuery("select c_city_id,c_country_id from c_city where c_city_id = ? ", new Object[]{new Integer(cityID)});

							if (locCityData.length > 0){
								if(locCityData[0][0]!=null)change.changedFields.put(D_CITY,(locCityData[0][0].toString())) ;
								if(locCityData[0][1]!=null){
									String ctry = QueryUtil.getSQLValueString(null, "select name from c_country where c_country_id in (select c_country_id from c_city where c_country_id = ? )", new Object[]{locCityData[0][1]}); 
									if (ctry != null) change.changedFields.put(D_CTRY,ctry) ;
								}	
							}
						}	
					}	
				}

				bpLocData = QueryUtil.executeQuery("select C_BPARTNER_LOCATION_ID, C_Location_ID from C_BPARTNER_LOCATION where c_bpartner_id = ? and isactive = 'Y' and iseggo = 'Y' and isshipto = 'N' and isbillto = 'Y' order by C_BPARTNER_LOCATION_ID desc", new Object[]{bpID});
				if (bpLocData.length > 0){ // Bilto 
					bplocID2=new Integer(bpLocData[0][0].toString());
					if (bpLocData[0][1] != null ) locID2 = new Integer(bpLocData[0][1].toString());
					
					Object[][] locData = QueryUtil.executeQuery("select C_LOCATION_ID, postal, address1, address2,city,c_city_id,c_country_id from C_LOCATION where c_location_id = ? ", new Object[]{locID2});
					if (locData.length > 0 ){
						if(locData[0][1]!=null)change.changedFields.put(D_POSTAL2,locData[0][1].toString());
						if(locData[0][2]!=null)change.changedFields.put(D_ADDR12,locData[0][2].toString());
						if(locData[0][3]!=null)change.changedFields.put(D_ADDR22,locData[0][3].toString());

						if (locData[0][1].toString() != null ){
							String sql = "select c_city_id, name from c_city where postal = '" +  locData[0][1].toString() + "'   order by name";
							change.changedDropDowns.put(D_CITY2,getListBox(sql));

							int cityID = findCity(locData[0][4].toString(),locData[0][1].toString());
							Object[][] locCityData = QueryUtil.executeQuery("select c_city_id,c_country_id from c_city where c_city_id = ? ", new Object[]{new Integer(cityID)});
							if (locCityData.length > 0){
								if(locCityData[0][0]!=null)change.changedFields.put(D_CITY2,(locCityData[0][0].toString())) ;
								if(locCityData[0][1]!=null){
									String ctry = QueryUtil.getSQLValueString(null, "select name from c_country where c_country_id in (select c_country_id from c_city where c_country_id = ? )", new Object[]{locCityData[0][1]}); 
									if (ctry != null) change.changedFields.put(D_CTRY2,ctry) ;
								}	
							}
						}	
					}	
				}

			}	
		}
		
		serverCtx.setContext("C_bpID", bpID);
		serverCtx.setContext("C_aduserID1", aduserID1);
		serverCtx.setContext("C_aduserID2", aduserID2);
		serverCtx.setContext("C_aduserID3", aduserID3);
		serverCtx.setContext("C_bplocID1", bplocID1);
		serverCtx.setContext("C_bplocID2", bplocID2);
		serverCtx.setContext("C_locID1", locID1);
		serverCtx.setContext("C_locID2", locID2);
		serverCtx.setContext("ADDMODIFY", 1);
		
		return change;
	}
	
	

	/**************************************************************************
	 *	Check Data entry before insert new customer
	 */
	private ChangeVO validateData (ChangeVO change, Ctx ctx, WindowCtx windowCtx)
	{
		Integer greeting = null;
		Integer greeting1 = null;
		Integer greeting2 = null;
		Integer greeting3 = null;
		String taxID = null;
		String name = null;
		String prename = null;
		String email=null;
		String phone=null;
		String gsm=null;
		String name2 = null;
		String prename2 = null;
		String email2=null;
		String phone2=null;
		String gsm2=null;
		String name3 = null;
		String prename3 = null;
		String email3=null;
		String phone3=null;
		String gsm3=null;
		
		if(change.changedFields == null) 
			change.changedFields = new HashMap<String, String>();
		
		


	//	try{
		
		if (windowCtx.get("D_POSTAL") == null){ 
			change.addError(Msg.translate( serverCtx, "E_NEWCUST" ));
			return change;
		}
		if (serverCtx.getContext("ADDMODIFY") == null || "0".equalsIgnoreCase(serverCtx.getContext("ADDMODIFY"))){
			change.addError(Msg.translate( serverCtx, "E_NOTSEL" ));
			return change;
		}

		bpID = (new Integer(serverCtx.getContext("C_bpID"))).intValue();
		aduserID1 = (new Integer(serverCtx.getContext("C_aduserID1"))).intValue();
		aduserID2 = (new Integer(serverCtx.getContext("C_aduserID2"))).intValue();
		aduserID3 = (new Integer(serverCtx.getContext("C_aduserID3"))).intValue();
		bplocID1 = (new Integer(serverCtx.getContext("C_bplocID1"))).intValue();
		bplocID2 = (new Integer(serverCtx.getContext("C_bplocID2"))).intValue();
		locID1 = (new Integer(serverCtx.getContext("C_locID1"))).intValue();
		locID2 = (new Integer(serverCtx.getContext("C_locID2"))).intValue();
		
		
		
		if (windowCtx.get("D_GREETING") != null) greeting = new Integer(windowCtx.get("D_GREETING")) ;

		
		if (greeting == null || greeting <=0 ) change.addError(Msg.translate( serverCtx, "E_GREET" ));
		taxID =windowCtx.get("D_TAXID");
		if (taxID != null && !validatedTax(taxID)) change.addError(Msg.translate( serverCtx, "E_VAT"));

		// Contact 1
		name =windowCtx.get("D_NAME");
		if (name == null) change.addError(Msg.translate( serverCtx, "E_CONT1" ));

		greeting1 = null;
		if (windowCtx.get("D_GREETING1") != null) greeting1 = new Integer(windowCtx.get("D_GREETING1")) ;

		prename =windowCtx.get("D_PRENOM");
		email = windowCtx.get("D_EMAIL");
		if (email!= null && !validateEmailAddress(email)) change.addError(Msg.translate( serverCtx, "E_MAIL1" ));
		if (email==null ) change.addError(Msg.translate( serverCtx, "E_MAIL1" ));
		// Check existance de l'email !
		String sql = "select bp.value, l.POSTAL, u.name from AD_USER u " +
	             " inner join c_bpartner bp on bp.C_BPARTNER_ID = u.C_BPARTNER_ID " +
	             " inner join C_BPARTNER_LOCATION bpl on bpl.c_bpartner_id = u.c_bpartner_id " +
	             " inner join c_location l on l.C_LOCATION_ID = bpl.C_LOCATION_ID " +
	             " where u.ad_client_id = ? and email = ? and u.ISEGGO = 'Y'";

		if (email !=null ) {
			String sql2 = sql;
			if (bpID > 0 )  sql2 = sql2 + " and bp.c_bpartner_id <> " + bpID;
			Object[][] bpexist = QueryUtil.executeQuery(sql2, new Object[]{serverCtx.getAD_Client_ID(),email});
			String cplist = "";
			for (int i = 0; i < bpexist.length; i++) {
				cplist = cplist + bpexist[i][1] + " ";
			}
			if (!cplist.isEmpty()) change.addError(Msg.translate( serverCtx, "E_MAILEXIST" ) + " " + bpexist[0][0] + ", " + bpexist[0][2] + ", " + cplist);
		}
		
		
		phone = windowCtx.get("D_PHONE");
		if (phone!= null && "NOK".equalsIgnoreCase(validatePhone(phone))) change.addError(Msg.translate( serverCtx, "E_TEL1" ));
		gsm = windowCtx.get("D_GSM");
		if (gsm!= null && "NOK".equalsIgnoreCase(validatePhone(gsm))) change.addError(Msg.translate( serverCtx, "E_GSM1" ));
		if (name !=null && (windowCtx.get("D_EMAIL") ==null  && windowCtx.get("D_PHONE") ==null &&  windowCtx.get("D_GSM") == null ) )  change.addError(Msg.translate( serverCtx, "E_VALC1" ));
		
		// Contact 2
		name2 =windowCtx.get("D_NAME2");
		if (name2 == null && ( windowCtx.get("D_PRENOM2") != null || windowCtx.get("D_EMAIL2") !=null  || windowCtx.get("D_PHONE2") !=null ||  windowCtx.get("D_GSM2") != null )   ) change.addError(Msg.translate( serverCtx, "E_CONT2" ));

		
		greeting2 = null;
		if (windowCtx.get("D_GREETING2") != null) greeting2 = new Integer(windowCtx.get("D_GREETING2")) ;
		
		if (name2 != null && (greeting2 == null || greeting2 <=0 )) change.addError(Msg.translate( serverCtx, "E_GREET" ));

		
		prename2 =windowCtx.get("D_PRENOM2");
		email2 = windowCtx.get("D_EMAIL2");
		if (email2!= null && !validateEmailAddress(email2)) change.addError(Msg.translate( serverCtx, "E_MAIL2" ));
		// Check existance de l'email !

		if (email2 !=null ) {
			String sql2 = sql;
			if (bpID > 0 )  sql2 = sql2 + " and bp.c_bpartner_id <> " + bpID;
			Object[][] bpexist = QueryUtil.executeQuery(sql2, new Object[]{serverCtx.getAD_Client_ID(),email2});
			String cplist = "";
			for (int i = 0; i < bpexist.length; i++) {
				cplist = cplist + bpexist[i][1] + " ";
			}
			if (!cplist.isEmpty()) change.addError(Msg.translate( serverCtx, "E_MAILEXIST" ) + " " + bpexist[0][0] + ", " + bpexist[0][2] + ", " + cplist);
		}	

		phone2 = windowCtx.get("D_PHONE2");
		if (phone2!= null && "NOK".equalsIgnoreCase(validatePhone(phone2))) change.addError(Msg.translate( serverCtx, "E_TEL2"));
		gsm2 = windowCtx.get("D_GSM2");
		if (gsm2!= null && "NOK".equalsIgnoreCase(validatePhone(gsm2))) change.addError(Msg.translate( serverCtx, "E_GSM2"));
		if (name2 !=null && (windowCtx.get("D_EMAIL2") ==null  && windowCtx.get("D_PHONE2") ==null &&  windowCtx.get("D_GSM2") == null ) )  change.addError(Msg.translate( serverCtx, "E_VALC2" ));

		String need2contact = QueryUtil.getSQLValueString(null, "select ISNEED2CONTACT from C_GREETING where C_GREETING_ID = ? ", new Object[]{greeting});
		if ("Y".equalsIgnoreCase(need2contact) && ( name2 == null || name2.isEmpty() )) change.addError(Msg.translate( serverCtx, "E_2REQ" ));

		// Contact 3
		name3 =windowCtx.get("D_NAME3");
		if (name3 == null && ( windowCtx.get("D_PRENOM3") != null || windowCtx.get("D_EMAIL3") !=null  || windowCtx.get("D_PHONE3") !=null ||  windowCtx.get("D_GSM3") != null )   ) change.addError(Msg.translate( serverCtx, "E_CONT3" ));

		
		greeting3 = null;
		if (windowCtx.get("D_GREETING3") != null) greeting3 = new Integer(windowCtx.get("D_GREETING3")) ;
		
		if (name3 != null && (greeting3 == null || greeting3 <=0 )) change.addError(Msg.translate( serverCtx, "E_GREET" ));

		
		prename3 =windowCtx.get("D_PRENOM3");
		email3 = windowCtx.get("D_EMAIL3");
		if (email3!= null && !validateEmailAddress(email3)) change.addError(Msg.translate( serverCtx, "E_MAIL3" ));
		// Check existance de l'email !

		if (email3 !=null ) {
			String sql3 = sql;
			if (bpID > 0 )  sql3 = sql3 + " and bp.c_bpartner_id <> " + bpID;
			Object[][] bpexist = QueryUtil.executeQuery(sql3, new Object[]{serverCtx.getAD_Client_ID(),email3});
			String cplist = "";
			for (int i = 0; i < bpexist.length; i++) {
				cplist = cplist + bpexist[i][1] + " ";
			}
			if (!cplist.isEmpty()) change.addError(Msg.translate( serverCtx, "E_MAILEXIST" ) + " " + bpexist[0][0] + ", " + bpexist[0][3] + ", " + cplist);
		}	

		phone3 = windowCtx.get("D_PHONE3");
		if (phone3!= null && "NOK".equalsIgnoreCase(validatePhone(phone3))) change.addError(Msg.translate( serverCtx, "E_TEL3"));
		gsm3 = windowCtx.get("D_GSM3");
		if (gsm3!= null && "NOK".equalsIgnoreCase(validatePhone(gsm3))) change.addError(Msg.translate( serverCtx, "E_GSM3"));
		if (name3 !=null && (windowCtx.get("D_EMAIL3") ==null  && windowCtx.get("D_PHONE3") ==null &&  windowCtx.get("D_GSM3") == null ) )  change.addError(Msg.translate( serverCtx, "E_VALC3" ));
		
		
		// Validate Address
		if (windowCtx.get("D_POSTAL") == null || windowCtx.get("D_ADDR1") ==null  || windowCtx.get("D_CITY") ==null ||  windowCtx.get("D_CTRY") == null ) change.addError(Msg.translate( serverCtx, "E_ADRLIV" ));
		if (windowCtx.get("D_POSTAL2") != null || windowCtx.get("D_ADDR12") !=null  || windowCtx.get("D_ADDR22") !=null  || windowCtx.get("D_CITY2") !=null ||  windowCtx.get("D_CTRY2") != null ) 
			if (windowCtx.get("D_POSTAL2") == null || windowCtx.get("D_ADDR12") ==null  || windowCtx.get("D_CITY2") ==null ||  windowCtx.get("D_CTRY2") == null ) change.addError(Msg.translate( serverCtx, "E_ADRINV" ));
		
//		}catch (Exception e){
//			throw new Exception()
//	    	change.addError("Erreur de validation, " + e.getMessage());
//	    	return change;
//	    }


		if (change.hasError() ) return change;

		String trxName = "addrtrx";
        Trx trx = Trx.get(trxName);
        
        try{
        	
        
		// Add/Modify new customer
		MBPartner bp = null;
		if (bpID != 0) bp = new MBPartner(ctx, bpID, trx);
		else {
			 bp =new MBPartner(ctx, 0, trx);
			bp.setClientOrg(ctx.getAD_Client_ID(), 0);
			bp.setIsCustomer(true);
		}	
		bp.setC_Greeting_ID(greeting);
		bp.setName(name);
		bp.setTaxID(taxID);
		if (windowCtx.get("D_LANGUAGE") != null){
			Object[][] language = QueryUtil.executeQuery(null, "select ad_language from ad_language where ad_language_id = ?  ", new Object[]{windowCtx.get("D_LANGUAGE")});
			if (language[0][0] != null )bp.setAD_Language(language[0][0].toString());
		}
		String grValue = "";
		if (taxID == null || taxID.isEmpty()) grValue = "PARTICULIERS";
		else grValue = "PROFESSIONNELS";
		int bpGroupID = QueryUtil.getSQLValue(null, "select C_BP_Group_ID from C_BP_Group where ad_client_id = ? and value = ? ", new Object[]{ctx.getAD_Client_ID(),grValue});
		bp.setC_BP_Group_ID(bpGroupID);
		bp.save(trx);

		MUser user = null;
		MUser user2 = null;
		MUser user3 = null;
		if (aduserID1!=0) user = new MUser(ctx, aduserID1, trx) ;
		else{
			user = new MUser(ctx, 0, trx) ;
			user.setClientOrg(ctx.getAD_Client_ID(), 0);
			user.setC_BPartner_ID(bp.get_ID());
			user.set_Value("Is_ZDefault", "Y");
			user.set_Value("IsEggo", "Y");
		}
		user.setValue(name);
		user.setName(name);
		user.set_Value("C_Greeting_ID",greeting1);
		user.set_Value("Name2",prename);
		user.setEMail(email);
		if (email !=null) user.setNotificationType("E");
		else user.setNotificationType("N");
		user.setPhone(phone);
		user.setPhone2(gsm);
		user.save(trx);
		
		if (name2 != null && !name2.isEmpty()){
			if (aduserID2 != 0)user2 = new MUser(ctx, aduserID2, trx) ;
			else{
				user2 = new MUser(ctx, 0, trx) ;
				user2.setClientOrg(ctx.getAD_Client_ID(), 0);
				user2.setC_BPartner_ID(bp.get_ID());
				user2.set_Value("Is_ZDefault", "N");
				user2.set_Value("IsEggo", "Y");
			}	
			user2.setValue(name2);
			user2.set_Value("C_Greeting_ID",greeting2);
			user2.setName(name2);
			user2.set_Value("Name2",prename2);
			user2.setEMail(email2);
			if (email2 !=null) user2.setNotificationType("E");
			else user2.setNotificationType("N");
			user2.setPhone(phone2);
			user2.setPhone2(gsm2);
			user2.save(trx);
		} else {
			if (aduserID2 != 0) {
				user2 = new MUser(ctx, aduserID2, trx) ;
				user2.setIsActive(false);
				user2.save(trx);
			}
		}
		
		if (name3 != null && !name3.isEmpty()){
			if (aduserID3 != 0)user3 = new MUser(ctx, aduserID3, trx) ;
			else{
				user3 = new MUser(ctx, 0, trx) ;
				user3.setClientOrg(ctx.getAD_Client_ID(), 0);
				user3.setC_BPartner_ID(bp.get_ID());
				user3.set_Value("Is_ZDefault", "N");
				user3.set_Value("IsEggo", "Y");
			}	
			user3.setValue(name3);
			user3.set_Value("C_Greeting_ID",greeting3);
			user3.setName(name3);
			user3.set_Value("Name3",prename3);
			user3.setEMail(email3);
			if (email3 !=null) user3.setNotificationType("E");
			else user3.setNotificationType("N");
			user3.setPhone(phone3);
			user3.setPhone2(gsm3);
			user3.save(trx);
		} else {
			if (aduserID3 != 0) {
				user3 = new MUser(ctx, aduserID3, trx) ;
				user3.setIsActive(false);
				user3.save(trx);
			}
		}

		
		MLocation loc = null;
		if (locID1 != 0)loc = new MLocation(ctx, locID1, trx);
		else {
			loc = new MLocation(ctx, 0, trx);
			loc.setClientOrg(ctx.getAD_Client_ID(), 0);
		}
		loc.setAddress1(windowCtx.get("D_ADDR1"));
		loc.setAddress2(windowCtx.get("D_ADDR2"));
		loc.setC_City_ID(new Integer(windowCtx.get("D_CITY")));
		int ctryID = QueryUtil.getSQLValue(null, "select c_country_id from c_country where name = ?", new Object[]{windowCtx.get("D_CTRY")}); 
		loc.setC_Country_ID(ctryID);
		Object[][] city = QueryUtil.executeQuery( "select name from c_city where c_city_id = ? ", new Object[]{windowCtx.get("D_CITY")}); 
		loc.setCity(city[0][0].toString());
		loc.setPostal(windowCtx.get("D_POSTAL"));
		loc.save(trx);
		
		MBPartnerLocation bploc  = null;
		if (bplocID1 > 0) bploc = new MBPartnerLocation(ctx,bplocID1,trx);
		else{ 
			bploc = new MBPartnerLocation(ctx,0,trx);;
			bploc.setClientOrg(ctx.getAD_Client_ID(), 0);
			bploc.setC_BPartner_ID(bp.get_ID());
			bploc.setIsShipTo(true);
			bploc.set_Value("IsEggo", "Y");
		}	
		if (windowCtx.get("D_POSTAL2") == null) bploc.setIsBillTo(true); else bploc.setIsBillTo(false);
		bploc.setC_Location_ID(loc.get_ID());
		bploc.save(trx);
		
		if (windowCtx.get("D_POSTAL2") != null ){
			MLocation loc2 = null;
			if (locID2 != 0)loc2 = new MLocation(ctx, locID2, trx);
			else {
				loc2 = new MLocation(ctx, 0, trx);
				loc2.setClientOrg(ctx.getAD_Client_ID(), 0);
			}
			loc2.setAddress1(windowCtx.get("D_ADDR12"));
			loc2.setAddress2(windowCtx.get("D_ADDR22"));
			loc2.setC_City_ID(new Integer(windowCtx.get("D_CITY2")));
			int ctryID2 = QueryUtil.getSQLValue(null, "select c_country_id from c_country where name = ?", new Object[]{windowCtx.get("D_CTRY2")}); 
			loc2.setC_Country_ID(ctryID2);
			Object[][] city2 = QueryUtil.executeQuery( "select name from c_city where c_city_id = ? ", new Object[]{windowCtx.get("D_CITY2")}); 
			loc2.setCity(city2[0][0].toString());
			loc2.setPostal(windowCtx.get("D_POSTAL2"));
			loc2.save(trx);

			MBPartnerLocation bploc2  = null;
			if (bplocID2 > 0) bploc2 = new MBPartnerLocation(ctx,bplocID2,trx);
			else{ 
				bploc2 = new MBPartnerLocation(ctx,0,trx);;
			
				bploc2.setClientOrg(ctx.getAD_Client_ID(), 0);
				bploc2.setC_BPartner_ID(bp.get_ID());
				bploc2.setIsShipTo(false);
				bploc2.setIsBillTo(true);
				bploc2.set_Value("IsEggo", "Y");
			}	
			bploc2.setC_Location_ID(loc2.get_ID());
			bploc2.save(trx);
		}
		else {
			if (bplocID2 > 0){
				MBPartnerLocation bploc2 = new MBPartnerLocation(ctx,bplocID2,trx);
				bploc2.setIsActive(false);
				bploc2.save(trx);
			}
		}
	
    }
    catch (Exception e){
    	trx.rollback();
    	trx.close();
    	change.addError("Impossible de sauvegarder, " + e.getMessage());
    	return change;
    }
    trx.commit();
    trx.close();
	change = clsData(change);
	

		
		
	return change;
	}	
	
	
	private  boolean validatedTax(String taxID){
		return true;
	}

	private int findCity(String cityName, String postal) {
		for (int i = 0; i < cityName.length(); i++) {
			if (i>4) break;
			String fc = cityName.substring(0, cityName.length() - i ) + "%";
			Object[][] locCityData = QueryUtil.executeQuery("select c_city_id from c_city where postal = ? and translate(upper(name),'ÂÀÉÈÊËÏÎÔÖÜÛÇ','AAEEEEIIOOUUC') like translate(upper(?),'ÂÀÉÈÊËÏÎÔÖÜÛÇ','AAEEEEIIOOUUC') ", new Object[]{postal,fc});
			if (locCityData.length > 0) return (new Integer(locCityData[0][0].toString())).intValue();
		}
		for (int i = 0; i < cityName.length(); i++) {
			if (i>4) break;
			String fc = cityName.substring(0, cityName.length() - i ) + "%";
			Object[][] locCityData = QueryUtil.executeQuery("select c_city_id from c_city where postal = ? and translate(upper(nametrl),'ÂÀÉÈÊËÏÎÔÖÜÛÇ','AAEEEEIIOOUUC') like translate(upper(?),'ÂÀÉÈÊËÏÎÔÖÜÛÇ','AAEEEEIIOOUUC') ", new Object[]{postal,fc});
			if (locCityData.length > 0) return (new Integer(locCityData[0][0].toString())).intValue();
		}
		return 0;
	}

	private ChangeVO clsData(ChangeVO change) {
		change.changedFields.put(D_GREETING,null);
		change.changedFields.put(D_GREETING1,null);
		change.changedFields.put(D_GREETING2,null);
		change.changedFields.put(D_LANGUAGE,null);
		change.changedFields.put(D_TAXID,null);
		change.changedFields.put(D_NAME,null);
		change.changedFields.put(D_PRENOM,null);
		change.changedFields.put(D_EMAIL,null);
		change.changedFields.put(D_PHONE,null);
		change.changedFields.put(D_GSM,null);
		change.changedFields.put(D_NAME2,null);
		change.changedFields.put(D_PRENOM2,null);
		change.changedFields.put(D_EMAIL2,null);
		change.changedFields.put(D_PHONE2,null);
		change.changedFields.put(D_GSM2,null);
		change.changedFields.put(D_NAME3,null);
		change.changedFields.put(D_PRENOM3,null);
		change.changedFields.put(D_EMAIL3,null);
		change.changedFields.put(D_PHONE3,null);
		change.changedFields.put(D_GSM3,null);
		change.changedFields.put(D_POSTAL,null);
		change.changedFields.put(D_ADDR1,null);
		change.changedFields.put(D_ADDR2,null);
		change.changedFields.put(D_CITY,null);
		change.changedFields.put(D_CTRY,null);
		change.changedFields.put(D_POSTAL2,null);
		change.changedFields.put(D_ADDR12,null);
		change.changedFields.put(D_ADDR22,null);
		change.changedFields.put(D_CITY2,null);
		change.changedFields.put(D_CTRY2,null);
		serverCtx.setContext("C_bpID", 0);
		serverCtx.setContext("C_aduserID1", 0);
		serverCtx.setContext("C_aduserID2", 0);
		serverCtx.setContext("C_bplocID1", 0);
		serverCtx.setContext("C_bplocID2", 0);
		serverCtx.setContext("C_locID1", 0);
		serverCtx.setContext("C_locID2", 0);
		serverCtx.setContext("ADDMODIFY", 0);
		return change;
	}
	
	//
	public static boolean validateEmailAddress(String email){
		boolean isValid=false;
		try{
			InternetAddress internetAdress = new InternetAddress(email);
			internetAdress.validate();
			isValid = true;
		}
		catch(AddressException e){
			isValid = false;
		}
		return isValid;
	}

	//
	public static String validatePhone(String phone){
		boolean isValid=true;
		boolean isValidBE=false;
		boolean isValidFR=false;
		boolean isValidLU=false;
		try{
			phone = phone.replace("/", "").replace(".", "").replace("(", "").replace(")","").replace(" ", "");
			if ("00".equalsIgnoreCase(phone.substring(0, 2))) phone = "+" + phone.substring(2);
			isValidBE = phone.matches("(0|(\\+32)|(0032))[1-9](([0-9]{7})|([0-9]{8}))");
			isValidFR = phone.matches("(0|(\\+33)|(0033))[1-9][0-9]{8}");
			isValidLU = phone.matches("(0|(\\+352)|(00352))[0-9]{8}");
		}
		catch(Exception e){
			isValid = false;
		}
		if (isValidBE||isValidFR||isValidLU) return phone;
		else return "NOK";
	}
	
	public static void fillListBox(FieldVO f, String sql)  {
		KeyNamePair pp = new KeyNamePair(0, "");
		ArrayList<KeyNamePair> options = new ArrayList<KeyNamePair>();
		options.add(pp);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				options.add(pp);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}finally{
			try {
				pstmt.close();
				rs.close();
			}
			catch (SQLException e){}
    	}
		f.listBoxVO = new ListBoxVO(options.<KeyNamePair>toArray(new KeyNamePair[0]), "0");
	}
	
	public static ArrayList<NamePair> getListBox(String sql)  {
		NamePair pp = new KeyNamePair(0, "");
		ArrayList<NamePair> options = new ArrayList<NamePair>();
		options.add(pp);
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, (Trx) null);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				options.add(pp);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}finally{
			try {
				pstmt.close();
				rs.close();
			}
			catch (SQLException e){}
    	}
		return options;
	}

}

