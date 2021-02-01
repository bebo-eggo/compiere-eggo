package org.compiere.gwt.server;

								  
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;

import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.servlet.http.HttpServletRequest;

import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.esb.GwtServer;
import org.compiere.gwt.client.service.InitService;
import org.compiere.translate.ALoginRes;
import org.compiere.util.CCache;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Language;
import org.compiere.util.Login;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;
import org.compiere.util.ValueNamePair;
import org.compiere.vos.FormatVO;
import org.compiere.vos.PreloadVO;

import com.compiere.client.SysEnv;

public class InitServiceImpl extends CRemoteServiceServlet
implements InitService
{
	// #102292
	private boolean isSSO = false;
	public static final String TOKEN_TENANT 		= "compiere-tenant";
	public static final String TOKEN_ORGANIZATION 	= "compiere-org"; 
	public static final String TOKEN_ROLE 			= "compiere-role"; 
	public static final String TOKEN_WAREHOUSE 		= "compiere-wh"; 
	public static final String TOKEN_PRINTER 		= "compiere-printer"; 
	//
	private static final long serialVersionUID = 1L;
	private final CLogger log = CLogger.getCLogger(getClass());

	private static HashMap<String, String> loginMessages = new HashMap();
	private static final CCache<String, HashMap<String, String>> globalMessagesCache;
	private static int windowSerial;

	private String checkLicense()
	{
		SysEnv env = SysEnv.get("CPRO");
		if ((env == null) || (!env.checkLicense()))
			return CLogger.retrieveError().getName();
		return null;
	}

	private HashMap<String, ArrayList<ValueNamePair>> getLookups(Ctx ctx) {
		HashMap<String, ArrayList<ValueNamePair>> ret = new HashMap<String, ArrayList<ValueNamePair>>();
		ret.put("195", Util.readReference(ctx, 195));
		ret.put("135", Util.readReference(ctx, 135));
		ret.put("234", Util.readReference(ctx, 234));
		return ret;
	}
	
	//Redmine 102292: SSO
	private Map<String, String> getLookups() {
		Ctx ctx = new Ctx();
		Map<String, String> ret=Util.readSystem(ctx);
		return ret;
	}

	public PreloadVO preload(String languageCode)
	{
		PreloadVO preload = new PreloadVO();

		preload.licenseCheck = checkLicense();
		if (preload.licenseCheck != null) {
			this.log.info("License Expired! " + preload.licenseCheck);
			return preload;
		}

		preload.licenses = SysEnv.getLicensed();

		this.log.config("getMessages( " + languageCode + " )");
		 if (languageCode == null)
		{
			languageCode="fr_FR"; 
			this.log.severe("getMessagesfr_FR( " + languageCode + " )");
		}					

		HttpServletRequest request = getThreadLocalRequest();

		HashMap<String, String> m = new HashMap<String, String>(loginMessages);
		
		m.put("DISPALY_PRODUCTIMAGE", Msg.getMsg(Language.AD_Language_en_US, "DISPALY_PRODUCTIMAGE")); 
		
		if (languageCode == null)
		{
			m.put("s_LOCALE", Language.getAD_Language(request.getLocale()));
		}
		else {
			m.putAll(getGlobalMessages(languageCode));

			Ctx ctx = new Ctx();
			ctx.setContext("LANGUAGE", languageCode);
			ctx.setContext("#AD_Language", languageCode);//#Redmine 6352 - ZCOM999
			preload.lookups = getLookups(ctx);

			preload.windowSerial = getWindowSerial();
			m.putAll(GlobalMessagesUtil.readElements(ctx));//#Redmine 6352 - ZCOM999
			m.putAll(GlobalMessagesUtil.readMessages(ctx));//#Redmine 6352 - ZCOM999
			m.put("DASHBOARD_URL", DashbordUrlImpl.getDashboardUrl(ctx));//ZCOM999 : Redmine 10220
		}

		Language language = null;
		GwtServer server = null;
		Locale locale = null;
		try {
			server = LoginServiceImpl.getGwtServer(request);
		}
		catch (Exception e)
		{
		}
		if (server != null) {
			locale = server.getLocale();
		}
		if (locale != null)
			language = Language.getLanguage(locale.toString());
		else
			language = Language.getLanguage(languageCode);
		FormatVO formatVO = new FormatVO();
		formatVO.df_Date = DisplayType.getDateFormat(15, language).toPattern();
		formatVO.df_DateTime = DisplayType.getDateFormat(16, language).toPattern();
		formatVO.df_Time = DisplayType.getDateFormat(24, language).toPattern();
		formatVO.nf_Integer = DisplayType.getNumberFormat(11, language).toPattern();
		formatVO.nf_Quantity = DisplayType.getNumberFormat(29, language).toPattern();
		formatVO.nf_Amount = DisplayType.getNumberFormat(12, language).toPattern();
		formatVO.nf_CostPrice = DisplayType.getNumberFormat(37, language).toPattern();

		formatVO.df_DateTime = formatVO.df_DateTime.replace('z', 'Z');
		formatVO.df_Time = formatVO.df_Time.replace('z', 'Z');

		DecimalFormat nf = DisplayType.getNumberFormat(22, language);
		formatVO.nf_Number = nf.toPattern();

		DecimalFormatSymbols symbols = nf.getDecimalFormatSymbols();
		formatVO.decimalSeparator = (symbols.getDecimalSeparator() + "");
		if (Character.isSpaceChar(formatVO.decimalSeparator.charAt(0))) {
			formatVO.decimalSeparator = " ";
		}
		formatVO.groupingSeparator = (symbols.getGroupingSeparator() + "");
		if (Character.isSpaceChar(formatVO.groupingSeparator.charAt(0))) {
			formatVO.groupingSeparator = " ";
		}
		formatVO.monetarySeparator = (symbols.getMonetaryDecimalSeparator() + "");
		if (Character.isSpaceChar(formatVO.monetarySeparator.charAt(0))) {
			formatVO.monetarySeparator = " ";
		}
		formatVO.monetaryGroupingSeparator = formatVO.groupingSeparator;

		formatVO.currencyPattern = formatVO.nf_Amount;
		formatVO.decimalPattern = formatVO.nf_Quantity;

		formatVO.defCurrencyCode = "USD";
		formatVO.exponentialSymbol = symbols.getExponentSeparator();
		formatVO.infinity = symbols.getInfinity();
		formatVO.minusSign = (symbols.getMinusSign() + "");
		formatVO.notANumber = symbols.getNaN();
		formatVO.percent = (symbols.getPercent() + "");
		formatVO.percentPattern = "#,##0%";
		formatVO.perMill = (symbols.getPerMill() + "");
		formatVO.plusSign = "+";

		formatVO.scientificPattern = "0.###E0";
		formatVO.zeroDigit = (symbols.getZeroDigit() + "");

		preload.formatVO = formatVO;

		preload.messages = m;
		
		//Redmine 102292: SSO
		Map< String, String > sso =getLookups( ); // SSO or 3rd Party Authentication Enabled
		
		if("T".equalsIgnoreCase(sso.get("Enabled3rdPartyAuthentication"))) { //Enabled 3rd Party Authentication
			
			String username= getUser( sso);
			
			String lng = null;
			if(username==null || username.length()==0)
				return preload;
				
			Enumeration<String> enumeration = request.getHeaderNames();
			while (enumeration.hasMoreElements()) {
				String name = (String) enumeration.nextElement();
				log.finest(name  + ":" + request.getHeader(name) );
				if(name.equalsIgnoreCase("compiere-language")){
					lng = request.getHeader(name);
					break;
				}
			}
			
			//Redmine #102292
			String client 		= getSSOToken(sso, TOKEN_TENANT);
			String organization = getSSOToken(sso, TOKEN_ORGANIZATION);
			String role 		= getSSOToken(sso, TOKEN_ROLE);
			String warehouse 	= getSSOToken(sso, TOKEN_WAREHOUSE);
			String printer 		= getSSOToken(sso, TOKEN_PRINTER);
			//
			
			if(server == null) server = new GwtServer();
			Login login=server.getLogin();
			if(lng == null)
				server.setLocale(login.setLanguage(language.getName()));
			else
				server.setLocale(login.setLanguage(Language.getLanguage(lng).getName()));
			KeyNamePair[] retValue =login.getRoles(username);
			KeyNamePair[] clients =login.getClients(retValue[0]);
			KeyNamePair[] orgs =login.getOrgs(clients[0]);
			preload.messages.put("username", username);
			if(retValue !=null && retValue.length >0){
				preload.messages.putAll(sso);
				preload.messages.put("language", (lng == null)?language.getName():Language.getLanguage(lng).getName());
				preload.messages.put("Role", "Role");
				preload.messages.put("Client", "Client");
				preload.messages.put("Organization", "Organization");
				preload.messages.put("Warehouse", "Warehouse");
				preload.messages.put("isValidUser", "T");
				preload.messages.put( GlobalMessageConstants.DATE, GlobalMessageConstants.DATE);
			//	preload.messages.put( GlobalMessageConstants.PRINTER, GlobalMessageConstants.PRINTER);
				preload.messages.put( GlobalMessageConstants.OK, GlobalMessageConstants.OK);
				
				//1 Role 1 Org

				if (retValue.length==1 && orgs.length==1) {
					role =getIDFromValue(TOKEN_ROLE,retValue[0].toString());
					if (role!= null && role.length()>0) {
						boolean correctRole = false;
						for (KeyNamePair mrole : retValue) {
							if (role.equals(mrole.getID())){
								correctRole = true;
								break;
							}
						}
						if (correctRole) {

							role =getIDFromValue(TOKEN_ROLE,retValue[0].toString());
							organization =getIDFromValue(TOKEN_ORGANIZATION,orgs[0].toString());
							warehouse =getWarehouseIDFromOrg(organization);

							preload.messages.put(TOKEN_ROLE, role);
							preload.messages.put(TOKEN_TENANT, client);
							preload.messages.put(TOKEN_ORGANIZATION, organization);
							preload.messages.put(TOKEN_WAREHOUSE, warehouse);
							//		preload.messages.put(TOKEN_PRINTER, printer);
							preload.messages.put( GlobalMessageConstants.OK, "OK");
						}}
				}else {
					//
					
				if (role!= null && role.length()>0) {
					boolean correctRole = false;
					for (KeyNamePair mrole : retValue) {
						if (role.equals(mrole.getID())){
							correctRole = true;
							break;
						}
					}
					if (correctRole) {
						preload.messages.put(TOKEN_ROLE, role);
						preload.messages.put(TOKEN_TENANT, client);
						preload.messages.put(TOKEN_ORGANIZATION, organization);
						preload.messages.put(TOKEN_WAREHOUSE, warehouse);
				//		preload.messages.put(TOKEN_PRINTER, printer);
						preload.messages.put( GlobalMessageConstants.OK, "OK");
					}
				}else if ((role== null || role.length()==0) && client!= null && client.length()>0){
					if(retValue.length==1)
					{
						KeyNamePair mrole = retValue[0];
						String xx = login.getOrgWarehouseByRoleUser(username, mrole.getName(), client);
						if(xx == null)
						{
							return preload;
						}
						String xxs[] = xx.split(";");
						preload.messages.put(TOKEN_TENANT, client);
						preload.messages.put(TOKEN_ROLE, mrole.getName());
						preload.messages.put(TOKEN_ORGANIZATION, xxs[0]);
						preload.messages.put(TOKEN_WAREHOUSE, xxs[1].equals("NULL")?"":xxs[1]);
				//		preload.messages.put(TOKEN_PRINTER, printer);
						preload.messages.put( GlobalMessageConstants.OK, "OK");
					}
				}	
				}
				//
			}
		}

		return preload;
	}
	//Redmine 102292: SSO
			private  String getUser(Map< String, String > sso) {
				HttpServletRequest request = getThreadLocalRequest();
				log.config(sso.get("HTTPMessage")  + ":" + sso.get("Token") );
				String username="";
				if ("HTTPHeader".equalsIgnoreCase(sso.get("HTTPMessage"))){
					Enumeration<String> enumeration = request.getHeaderNames();
					while (enumeration.hasMoreElements()) {
						String name = (String) enumeration.nextElement();
						log.finest(name  + ":" + request.getHeader(name) );
						if(name.equalsIgnoreCase(sso.get("Token"))){
							username = request.getHeader(name);
							break;
						}
					}
				}else if ("HTTPRequest".equalsIgnoreCase(sso.get("HTTPMessage"))){
					username= request.getParameter(sso.get("Token"));
				}else if ("HTTPSession".equalsIgnoreCase(sso.get("HTTPMessage"))){
					username= (String)request.getSession().getAttribute(sso.get("Token"));
				}  
				
				return username;
			}
	private HashMap<String, String> getGlobalMessages(String languageCode)
	{
		 if (languageCode == null)
		{
			languageCode="fr_FR";
			this.log.severe("getMessagesfr_FR( " + languageCode + " )");
		}					

		HashMap<String, String> globalMessages = (HashMap<String, String>)globalMessagesCache.get(null, languageCode);

		if (globalMessages != null)
		{
			
			//log.config(globalMessages.toString());
			return globalMessages;
		}

		globalMessages = new HashMap<String, String>();
		for (Field f : GlobalMessageConstants.class.getFields()) {
			String value = null;
			try
			{
				value = (String)f.get(null);
			}
			catch (IllegalArgumentException e)
			{
				e.printStackTrace();
			}
			catch (IllegalAccessException e)
			{
				e.printStackTrace();
			}

			if (value == null)
				continue;
			String elementName = Msg.getElement(languageCode, value, true);
			globalMessages.put(value, elementName);
			globalMessages.put(value + "_PO", Msg.getElement(languageCode, value, false));

			if (Msg.getMsg(languageCode, value).length() <= 0)
				continue;
			globalMessages.put(value, Msg.getMsg(languageCode, value));
		}

		globalMessagesCache.put(languageCode, globalMessages);
											   
		return globalMessages;
	}

	private int getWindowSerial()
	{
		synchronized (InitServiceImpl.class) {
			windowSerial += 1;
		}
		this.log.finest("Current window NO is:" + windowSerial);
		return windowSerial;
	}
	public static void main(String[] args) {
		File keyFile = new File("c:/public.der");
		byte[] encodedKey = new byte[(int)keyFile.length()];
		try
		{
			new FileInputStream(keyFile).read(encodedKey);

			X509EncodedKeySpec publicKeySpec = new X509EncodedKeySpec(encodedKey);

			KeyFactory kf = KeyFactory.getInstance("RSA");
			PublicKey pk = kf.generatePublic(publicKeySpec);

			Cipher rsa = Cipher.getInstance("RSA");

			rsa.init(1, pk);
			OutputStream os = new CipherOutputStream(new FileOutputStream("c:/encrypted.rsa"), rsa);

			Writer out = new OutputStreamWriter(os);
			out.write("Hello World!!");
			out.close();
			os.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	static
	{
		ALoginRes a = new ALoginRes();
		Object[][] c = a.getContents();

		int languageCount = Language.getLanguageCount();
		for (int i = 0; i < languageCount; i++)
		{
			Language lang = Language.getLanguage(i);
			String AD_Language = lang.getAD_Language();

			ResourceBundle b = ResourceBundle.getBundle("org.compiere.translate.ALoginRes", lang.getLocale());
			for (int j = 0; j < c.length; j++)
			{
				String messageName = (String)c[j][0];
				loginMessages.put(AD_Language + " " + messageName, b.getString(messageName));

				loginMessages.put(AD_Language + " " + "#DateFormat", DisplayType.getDateFormat(15, lang).toPattern());
			}

			if (lang != Env.verifyLanguage(lang))
				continue;
			loginMessages.put(AD_Language + " " + "Ok", Msg.translate(AD_Language, "Ok"));
			loginMessages.put(AD_Language + " " + "AD_Role_ID", Msg.translate(AD_Language, "AD_Role_ID"));
			loginMessages.put(AD_Language + " " + "AD_Client_ID", Msg.translate(AD_Language, "AD_Client_ID"));
			loginMessages.put(AD_Language + " " + "AD_Org_ID", Msg.translate(AD_Language, "AD_Org_ID"));
			loginMessages.put(AD_Language + " " + "M_Warehouse_ID", Msg.translate(AD_Language, "M_Warehouse_ID"));
			loginMessages.put(AD_Language + " " + "ChangeRole", Msg.translate(AD_Language, "ChangeRole"));
			loginMessages.put(AD_Language + " " + "UserPwdError", Msg.translate(AD_Language, "UserPwdError"));
		}

		globalMessagesCache = new CCache("GlobalMessageCache");

		windowSerial = 0;
	}
	//Redmine #102292
		private  String getSSOToken(Map< String, String > sso, String specialToken) {
			HttpServletRequest request = getThreadLocalRequest();
			log.config(sso.get("HTTPMessage")  + ":" + sso.get(specialToken) );
			String value="";
			if ("HTTPHeader".equalsIgnoreCase(sso.get("HTTPMessage"))){
				Enumeration<String> enumeration = request.getHeaderNames();
				while (enumeration.hasMoreElements()) {
					String name = (String) enumeration.nextElement();
					log.finest(name  + ":" + request.getHeader(name) );
					if(name.equalsIgnoreCase(specialToken)){
						value = request.getHeader(name);
						break;
					}
				}
			}else if ("HTTPRequest".equalsIgnoreCase(sso.get("HTTPMessage"))){
				value= request.getParameter(specialToken);
			}else if ("HTTPSession".equalsIgnoreCase(sso.get("HTTPMessage"))){
				value= (String)request.getSession().getAttribute(specialToken);
			}
			
			String tablename = "";
			if (specialToken.equals(TOKEN_TENANT)) {
				tablename = "AD_Client";
			}else if (specialToken.equals(TOKEN_ROLE)) {
				tablename = "AD_Role";
			}else if (specialToken.equals(TOKEN_ORGANIZATION)) {
				tablename = "AD_Org";
			}else if (specialToken.equals(TOKEN_WAREHOUSE)) {
				tablename = "M_Warehouse";
			}
			
			if (tablename.length()>0 && value != null && value.length()>0) {
				int valueASInt = QueryUtil.getSQLValue(null, "SELECT "+tablename+"_ID FROM "+ tablename+" WHERE Name=?", value);
				value = Integer.toString(valueASInt);
			}
				
			return value;
		}
		//
		private String getIDFromValue(String specialToken,String value) {
			String result= "";
			String tablename = "";
			if (specialToken.equals(TOKEN_TENANT)) {
				tablename = "AD_Client";
			}else if (specialToken.equals(TOKEN_ROLE)) {
				tablename = "AD_Role";
			}else if (specialToken.equals(TOKEN_ORGANIZATION)) {
				tablename = "AD_Org";
			}else if (specialToken.equals(TOKEN_WAREHOUSE)) {
				tablename = "M_Warehouse";
			}
			
			if (tablename.length()>0 && value != null && value.length()>0) {
				int valueASInt = QueryUtil.getSQLValue(null, "SELECT "+tablename+"_ID FROM "+ tablename+" WHERE Name=?", value);
				result = Integer.toString(valueASInt);
			}
				
			return result;
		}
		private String getWarehouseIDFromOrg(String AD_Org_ID) {
			String result ="";
			if ( AD_Org_ID != null && AD_Org_ID.length()>0) {
				int valueASInt = QueryUtil.getSQLValue(null, "SELECT M_Warehouse_ID FROM AD_OrgInfo WHERE AD_Org_ID=?", AD_Org_ID);
				result = Integer.toString(valueASInt);
			}
			return result;
		}
}
