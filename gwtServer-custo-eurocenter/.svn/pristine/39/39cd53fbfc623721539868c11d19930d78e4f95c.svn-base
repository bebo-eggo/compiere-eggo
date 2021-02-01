/**
 * 
 */
package org.compiere.gwt.server.window;

import static org.compiere.common.constants.GlobalMessageConstants.*;

import java.math.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;

import org.compiere.common.constants.*;
import org.compiere.gwt.server.component.*;
import org.compiere.intf.*;
import org.compiere.model.*;
import org.compiere.util.*;
import org.compiere.vos.*;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.util.CompiereException;
/**
 * @author sraval
 * 
 */
public class BusinessPartnerWindowImpl extends WindowImpl
{
	private static CLogger log = CLogger.getCLogger( BusinessPartnerWindowImpl.class );

	public static final String SEARCHKEY = "SearchKey";
	public static final String GREETING = "Greeting";
	public static final String NAME = "Name";
	public static final String NAME2 = "Name2";
	public static final String CONTACT = "Nom Contact";	
	public static final String CONTACTP = "Prénom Contact";
	public static final String GREETING2 = "Greeting2";
	public static final String TITLE = "Title";
	public static final String EMAIL = "EMail";
	public static final String ADDRESS = "C_Location_ID";
	public static final String PHONE = "Phone";
	public static final String PHONE2 = "Phone2";
	public static final String FAX = "Fax";
	public static final String TAXID = "TaxID";
    private int C_BPartner_ID = 0;
    
    private MBPartner		m_partner = null;
	/** The Location			*/
	private MBPartnerLocation	m_pLocation = null;
	/** The User				*/
	private MUser			m_user = null;

	private boolean m_readOnly = false;

	private final SearchComponentImpl c_search;

	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();

	protected final Ctx serverCtx;

	protected final WindowCtx windowCtx;

	protected final UWindowID m_uid;

	protected final int windowNO;
	
	public BusinessPartnerWindowImpl(int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		m_readOnly = !MRole.getDefault(serverCtx, false).canUpdate(
				serverCtx.getAD_Client_ID(), serverCtx.getAD_Org_ID(), 
				X_C_BPartner.Table_ID, 0, false);
		log.info("R/O=" + m_readOnly);
		
		c_search = new SearchComponentImpl();
		ComponentVO c_searchVO = c_search.getComponentVO();
		
		c_search.addFieldVO( new FieldVO(SEARCHKEY, Msg.translate( serverCtx, SEARCHKEY), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(GREETING, Msg.translate( serverCtx, GREETING), DisplayTypeConstants.TableDir) );
		String sql = "SELECT C_Greeting_ID, Name FROM C_Greeting WHERE IsActive='Y' ORDER BY 2";
		sql = MRole.getDefault(serverCtx, false).addAccessSQL(sql, "C_Greeting", MRole.SQL_NOTQUALIFIED, MRole.SQL_RO);
		fillListBox(c_search.getComponentVO().getFieldVO(GREETING),sql);
		
		c_search.addFieldVO( new FieldVO(NAME, Msg.translate( serverCtx, NAME), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(NAME2, Msg.translate( serverCtx, NAME2), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(CONTACT, Msg.translate( serverCtx, CONTACT), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(CONTACTP, Msg.translate( serverCtx, CONTACTP), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(GREETING2, Msg.translate( serverCtx, GREETING), DisplayTypeConstants.TableDir) );
		fillListBox(c_search.getComponentVO().getFieldVO(GREETING2),sql);
		
		c_search.addFieldVO( new FieldVO(TITLE, Msg.translate( serverCtx, TITLE), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(EMAIL, Msg.translate( serverCtx, EMAIL), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(ADDRESS, Msg.translate( serverCtx, ADDRESS), DisplayTypeConstants.Location) );
		c_search.addFieldVO( new FieldVO(PHONE, Msg.translate( serverCtx, PHONE), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(PHONE2, Msg.translate( serverCtx, PHONE2), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(FAX, Msg.translate( serverCtx, FAX), DisplayTypeConstants.String) );
		c_search.addFieldVO( new FieldVO(TAXID, Msg.translate( serverCtx, TAXID), DisplayTypeConstants.String) );
		
		FieldVO searchKeyVO = c_searchVO.getFieldVO(SEARCHKEY);
		FieldVO greetingVO = c_searchVO.getFieldVO(GREETING);
		FieldVO nameVO = c_searchVO.getFieldVO(NAME);
		nameVO.IsMandatoryUI = true;
		FieldVO name2VO = c_searchVO.getFieldVO(NAME2);
		name2VO.IsMandatoryUI = true;
		FieldVO contactVO = c_searchVO.getFieldVO(CONTACT);
		//contactVO.IsMandatoryUI = true;
		FieldVO contactpVO = c_searchVO.getFieldVO(CONTACTP);
		//contactVO.IsMandatoryUI = true;
		FieldVO greeting2VO = c_searchVO.getFieldVO(GREETING2);
		FieldVO titleVO = c_searchVO.getFieldVO(TITLE);
		FieldVO emailVO = c_searchVO.getFieldVO(EMAIL);
		emailVO.IsMandatoryUI = true;
		FieldVO addressVO = c_searchVO.getFieldVO(ADDRESS);
		addressVO.IsMandatoryUI = true;
		//addressVO.IsReadOnly = true;
		FieldVO phoneVO = c_searchVO.getFieldVO(PHONE);
		phoneVO.IsMandatoryUI = true;
		FieldVO phone2VO = c_searchVO.getFieldVO(PHONE2);
		FieldVO faxVO = c_searchVO.getFieldVO(FAX);		
		FieldVO TaxidVO = c_searchVO.getFieldVO(TAXID);	
		
		Object businessPartnerObj = windowCtx.get("businessPartnerId");
		if ((businessPartnerObj != null) && !(businessPartnerObj.equals(""))){

			C_BPartner_ID =  Integer.parseInt(businessPartnerObj.toString());
			if (C_BPartner_ID == 0)
			{
				m_partner = null;
				m_pLocation = null;
				m_user = null;			
			}

			m_partner = new MBPartner (serverCtx, C_BPartner_ID, null);
			searchKeyVO.DefaultValue = m_partner.getValue();
			nameVO.DefaultValue = m_partner.getName();
			name2VO.DefaultValue = m_partner.getName2();
			greetingVO.DefaultValue = String.valueOf(m_partner.getC_Greeting_ID());
			TaxidVO.DefaultValue = m_partner.getTaxID();
			
			m_pLocation = m_partner.getLocation(serverCtx.getContextAsInt(windowNO,"C_BPartner_Location_ID"));
			if (m_pLocation != null)
			{
				int location = m_pLocation.getC_Location_ID();				
				addressVO.DefaultValue = String.valueOf(location);
								
				phoneVO.DefaultValue =  m_pLocation.getPhone();
				phone2VO.DefaultValue =  m_pLocation.getPhone2();
				faxVO.DefaultValue =  m_pLocation.getFax();
			}
			
			m_user = m_partner.getContact(
					serverCtx.getContextAsInt( windowNO, "AD_User_ID"));
			if (m_user != null)
			{
				greeting2VO.DefaultValue =  String.valueOf(m_user.getC_Greeting_ID());
				contactVO.DefaultValue = m_user.getName();
				contactpVO.DefaultValue = m_user.get_ValueAsString("Name2");
				titleVO.DefaultValue = m_user.getTitle();
				emailVO.DefaultValue = m_user.getEMail();
				//
				phoneVO.DefaultValue = m_user.getPhone();
				phone2VO.DefaultValue =m_user.getPhone2();
				faxVO.DefaultValue = m_user.getFax();
			}			
		}		
		components.add(c_search);
	}	
	
	public static void fillListBox(FieldVO f, String sql) {
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
    		Util.closeCursor(pstmt, rs);
    	}
		
		f.listBoxVO = new ListBoxVO(options.<KeyNamePair>toArray(new KeyNamePair[0]), "0");
	}
	
	@Override
	public ChangeVO processCallback(String sender )
	{
		ChangeVO changeVO = new ChangeVO();

		if (OK.equals(sender)) {			
			 
			String bpValue = saveBusinessPartner(changeVO);
			if ((bpValue != null) && !(bpValue.equals(""))){
				changeVO.addChangedValue("C_BPartner_ID", bpValue);
			}				
		}		
		return changeVO;
	}
	
	public String saveBusinessPartner(ChangeVO change){
		log.config("");	
		SearchComponentImpl c_search = (SearchComponentImpl)components.get(0);
		ComponentVO c_searchVO = c_search.getComponentVO();		
		
		if (m_partner  == null){
			int AD_Client_ID = serverCtx.getAD_Client_ID();
			m_partner = MBPartner.getTemplate(serverCtx, AD_Client_ID);
			boolean isSOTrx = serverCtx.isSOTrx(windowNO);
			m_partner.setIsCustomer (isSOTrx);
			m_partner.setIsVendor (!isSOTrx);
									
			// SR 10020089: User organization selected from window while creating BP. 
//			Object orgIdObj = windowCtx.get("AD_Org_ID");
			// BParnter create all organization
//			Object orgIdObj=0;
			m_partner.setAD_Org_ID(0);
					
//			if (orgIdObj != null){
//				int orgId = Integer.parseInt(orgIdObj.toString());
//				if (orgId != 0)
//					m_partner.setAD_Org_ID(orgId);
//			}			
		}
		
		String searchKeyValue = (String) c_search.getFieldValue( windowCtx, SEARCHKEY );
		String nameValue =(String) c_search.getFieldValue(windowCtx, NAME);
		String name2Value =(String) c_search.getFieldValue(windowCtx, NAME2);
		
		BigDecimal location = (BigDecimal) c_search.getFieldValue(windowCtx, ADDRESS);
		
		int locationIdValue = 0;
		if  (location != null)
			locationIdValue = location.intValue();
		String phoneValue = (String) c_search.getFieldValue(windowCtx, PHONE);
		String phone2Value = (String) c_search.getFieldValue(windowCtx, PHONE2);
		String faxValue = (String) c_search.getFieldValue(windowCtx, FAX);
		String taxidValue = (String) c_search.getFieldValue(windowCtx, TAXID);
		String contactValue = (String) c_search.getFieldValue(windowCtx, CONTACT);
		String contactpValue = (String) c_search.getFieldValue(windowCtx, CONTACTP);
		String emailValue = (String) c_search.getFieldValue(windowCtx, EMAIL);
		String titleValue =(String) c_search.getFieldValue(windowCtx, TITLE);

		BigDecimal greeting2 = (BigDecimal) c_search.getFieldValue(windowCtx, GREETING2);
		int greeting2Value = 0;
		if (greeting2 != null) 
			greeting2Value = greeting2.intValue();
		
		if (searchKeyValue == null || searchKeyValue.length() == 0)
		{
			//	get Table Document No
			searchKeyValue = DB.getDocumentNo (serverCtx.getAD_Client_ID(), "C_BPartner", null);
			c_searchVO.getFieldVO(SEARCHKEY).DefaultValue = searchKeyValue;
		}
		m_partner.setValue(searchKeyValue);
		m_partner.setName(nameValue);
		m_partner.setName2(name2Value);		
		m_partner.setC_Greeting_ID(0);	
		m_partner.setTaxID(taxidValue);
		try{
			if (m_partner.save())
				log.fine("C_BPartner_ID=" + m_partner.getC_BPartner_ID());
			else{			
				change.addError("BPartnerNotSaved");
				return "";
			}
		}catch(IllegalStateException e){
			change.addError(e.getMessage());
		}
//		***** Business Partner - Location *****
		if (m_pLocation == null)
			m_pLocation = new MBPartnerLocation(m_partner);		
		
		m_pLocation.setC_Location_ID(locationIdValue);
		m_pLocation.setPhone(phoneValue);
		m_pLocation.setPhone2(phone2Value);
		m_pLocation.setFax(faxValue);
		if (m_pLocation.save())
			log.fine("C_BPartner_Location_ID=" + m_pLocation.getC_BPartner_Location_ID());
		else{
			change.addError("BPartnerNotSaved");
			return "";
		}
		//	***** Business Partner - User *****
		
		if (contactValue == null || "".equals(contactValue)) contactValue = nameValue;
		if (contactpValue == null || "".equals(contactpValue)) contactValue = name2Value;
		
		if (contactValue != null && !(contactValue.equals(""))) 
				//&& (emailValue != null) && !(emailValue.equals(""))
				
		{		
			if (m_user == null && (contactValue.length() > 0 || emailValue.length() > 0))
				m_user = new MUser (m_partner);
			if (m_user != null)
			{
				if (contactValue.length() == 0)
					contactValue = nameValue;
				m_user.setName(contactValue);
				m_user.setValue("Name2");

				
				m_user.setEMail(emailValue);
				m_user.setTitle(titleValue);				
				m_user.setC_Greeting_ID(greeting2Value);					
				//
				m_user.setPhone(phoneValue);
				m_user.setPhone2(phone2Value);
				m_user.setFax(faxValue);
				m_user.set_Value("Is_ZDefault","Y");
				if (m_user.save())
					log.fine("AD_User_ID=" + m_user.getAD_User_ID());
				else{
					change.addError("BPartnerNotSaved");
					return "";
				}
			}
		}
		int businessPartner = m_partner.getC_BPartner_ID();		
		return Integer.toString(businessPartner);		
	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}
}