/**
 * 
 */
package org.compiere.gwt.server;

import java.sql.*;

import java.util.*;
import java.util.logging.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.compiere.*;
import org.compiere.common.constants.*;
import org.compiere.db.*;
import org.compiere.esb.*;
import org.compiere.gwt.client.service.*;
import org.compiere.model.*;
import org.compiere.print.*;
import org.compiere.util.*;
import org.compiere.vos.*;

/**
 * @author gwu
 *
 */
public class LoginServiceImpl extends CRemoteServiceServlet implements LoginService
{ 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	/**	Logger			*/
	private final CLogger	log = CLogger.getCLogger(getClass());


	//  WMenu picks it up
	protected static final String   P_ROLE          = "AD_Role_ID";
	protected static final String   P_CLIENT        = "AD_Client_ID";
	protected static final String   P_ORG           = "AD_Org_ID";
	protected static final String   P_DATE          = "Date";
	protected static final String   P_WAREHOUSE     = "M_Warehouse_ID";
	protected static final String   P_ERRORMSG      = "ErrorMessage";
	protected static final String   P_STORE         = "SaveCookie";



	@Override
	public void init(ServletConfig config) throws ServletException {

		super.init(config);

		
		Compiere.startup(false, "GWT");
		
		CConnection.get().testAppsServer();		

		// add console logger even if running in server mode to help debugging in Eclipse
		if( CLogConsole.get(false) == null /* && Build.isDebug() */ )
		{
			CLogConsole console = CLogConsole.get( true );
			if( Build.isVerbose() )
				console.setLevel( Level.ALL );
			else if( Build.isDebug() )
				console.setLevel( Level.CONFIG );
			else
				console.setLevel( Level.SEVERE );
			CLogMgt.addHandler( console );
		}

		Ctx ctx = new CContext();
		String error = DB.isDatabaseVersionOk(ctx);
		if (error != null) {
			throw new ServletException(error);
		}
		
	} // init

	

	public static GwtServer getGwtServer( HttpServletRequest request )
	{
		HttpSession session = null;
		GwtServer server = null; 
		if( request != null )
			session = request.getSession( false );
		if( session != null )
			server = (GwtServer) session.getAttribute( KEY_GWTServer );
		else {
			
			throw new SessionTimeoutException("Session", null);
		}
		
		if (server != null) {
			Env.setThreadLocalCtx(server.getContext());
		}
		
		return server;
	}
	

	
	public Login getSessionLogin()
	{
		GwtServer server = getGwtServer( getThreadLocalRequest() );
		Login login = null;
		if( server != null )
			login = server.getLogin();
		return login;
	}
	
	

	public ListBoxVO getLanguages()
	{
		log.info("");	
		HttpServletRequest request = getThreadLocalRequest();
		String defaultLang = Language.getAD_Language(request.getLocale());

		ValueNamePair[] languages = new ValueNamePair[ Language.getLanguageCount() ];
		for (int i = 0; i < Language.getLanguageCount(); i++)
		{
			Language language = Language.getLanguage( i );
			languages[i] = new ValueNamePair( language.getAD_Language(), language.getName());
		}

		return new ListBoxVO( languages, defaultLang );
	}


	public void logout()
	{
		log.info("");
		HttpServletRequest request = getThreadLocalRequest();
		HttpSession session = request.getSession( false );
		if( session != null ) {
			GwtServer server = getGwtServer(getThreadLocalRequest());
			if(server != null) 
				server.logout(false);
			session.invalidate();
			
		}
	}

	public HashMap<String, ListBoxVOExt> login( String username, String password, String language, int W_Store_ID ) 
	{
		log.info("");
		GwtServer server = new GwtServer();
		Login login = server.getLogin();
		
		ListBoxVOExt voNBfailedloginAttempt = new ListBoxVOExt();//ZCOM999 38665-39021
		KeyNamePair[] roles = login.getRoles(voNBfailedloginAttempt, username, password, W_Store_ID );//ZCOM999 38665-39021

		HashMap<String, ListBoxVOExt> vos = new HashMap<String, ListBoxVOExt>();
		
		if(voNBfailedloginAttempt.isHasError())
		{
			vos.put(KEY_Roles, voNBfailedloginAttempt);//ZCOM999 38665-39021
			
		}else
		if( roles != null )
		{
			ValueNamePair[] options = new ValueNamePair[ roles.length ];
			for( int i = 0; i < roles.length; ++i )
			{
				options[i] = new ValueNamePair( roles[i].getID(), roles[i].getName() );
			}
			ListBoxVOExt voRoles = new ListBoxVOExt( options, null );
			vos.put( KEY_Roles, voRoles );
			HttpServletRequest request = getThreadLocalRequest();
			HttpSession session = request.getSession( true );

			//int expiration = 1 * 60; //
			int expiration = Integer.parseInt(Ini.getProperty(Ini.P_WEB_SESSION_EXPIRATION));
			session.setMaxInactiveInterval(expiration);
			
			session.setAttribute( KEY_GWTServer, server );
			server.getContext().setContext(CtxConstants.SESSION_TIME_OUT, expiration);
			
			server.setLocale( login.setLanguage( language ) );

		}
		return vos;
	}



	public boolean chooseRole( String role, String client, String org, String wh, String date, String printerName )
	{
		log.info("");
		HttpServletRequest request = getThreadLocalRequest();
		
		GwtServer server = getGwtServer( request );

		Login login = server.getLogin();

		//  Get Parameters: Role, Client, Org, Warehouse, Date
		log.fine( "role=" + role );
		log.fine( "client=" + client );
		log.fine( "org=" + org );
		log.fine( "warehouse=" + wh );

		if( login != null )
		{
			//no need to set locale since it is already set in login call
			//server.setLocale( login.setLanguage( language ) );

			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			
			KeyNamePair[] roles = login.getRoles();
			KeyNamePair rolePair = search( role, roles );
			
			if( rolePair == null )
				return false;
			
			KeyNamePair[] clients = login.getClients( rolePair );
			KeyNamePair clientPair = search( client, clients );
			
			if( clientPair == null )
				return false;

			KeyNamePair[] orgs = login.getOrgs( clientPair );
			KeyNamePair orgPair = search( org, orgs );
			
			if( orgPair == null )
				return false;

			KeyNamePair[] whs = login.getWarehouses( orgPair );
			KeyNamePair whPair = search( wh, whs );

			String error = login.loadPreferences( orgPair, whPair, timestamp, printerName);
			log.info(error);

			
			server.getContext().setContext("#Date", date);
			MSession.get (server.getContext(), X_AD_Session.SESSIONTYPE_GWTWebUI, true,
					request.getRemoteAddr(),
					request.getRemoteHost(), request.getSession().getId());

			if(login.validateLogin(orgPair) != null) {
				log.info(error);
				return false;
			}
			return completeLogin( server, login, orgPair );
		
		}
		else
			return false;
	}
	
	private static KeyNamePair search( String needle, KeyNamePair[] haystack )
	{
		KeyNamePair result = null;
		if( haystack != null )
		{
			for( KeyNamePair i : haystack )
			{
				if( i.getID().equals( needle ) )
				{
					result = i;
					break;
				}
			}
		}
		return result;
	}
	

	public ListBoxVO getRoles()
	{
		HttpServletRequest request = getThreadLocalRequest();
		GwtServer server = getGwtServer( request );
		server.getContext().setContext( "###LoginComplete", "N" );
		
		Login login = getSessionLogin();
		if( login == null )
			return null;
		
		String role = Integer.toString( server.getContext().getAD_Role_ID() );
		
		//  Get Data
		KeyNamePair[] roles = login.getRoles();
		return getListBoxVO( roles, role );
	}
	
	public ListBoxVO getClients( String role )
	{
		HttpServletRequest request = getThreadLocalRequest();
		GwtServer server = getGwtServer( request );
		Login login = getSessionLogin();
		if( login == null )
			return null;
		
		String client = Integer.toString( server.getContext().getAD_Client_ID() );
		//  Get Data
		KeyNamePair rolePair = null;
		KeyNamePair[] clients = null;
		try {
			rolePair = new KeyNamePair( Integer.parseInt( role ), role );
			clients = login.getClients( rolePair );
		}
		catch (NumberFormatException e) {
		}
		return getListBoxVO( clients, client );
	}
	public ListBoxVO getOrgs( String client )
	{
		HttpServletRequest request = getThreadLocalRequest();
		GwtServer server = getGwtServer( request );
		Login login = getSessionLogin();
		if( login == null )
			return null;
		//  Get Data
		
		String org = Integer.toString( server.getContext().getAD_Org_ID() );
		
		KeyNamePair clientPair = null;
		KeyNamePair[] orgs = null;
		try
		{
			clientPair = new KeyNamePair( Integer.parseInt( client ), client );
			orgs = login.getOrgs( clientPair );
		}
		catch (NumberFormatException e) {
		}
		return getListBoxVO( orgs, org );
	}
	public ListBoxVO getWarehouses( String org )
	{
		HttpServletRequest request = getThreadLocalRequest();
		GwtServer server = getGwtServer( request );
		Login login = getSessionLogin();
		if( login == null )
			return null;
		
		String wh = server.getContext().getContext( "#M_Warehouse_ID" );
		
		//  Get Data
		KeyNamePair orgPair = null; 
		KeyNamePair[] whs = null;
		try
		{
			orgPair = new KeyNamePair(Integer.parseInt(org), org );
			whs = login.getWarehouses( orgPair );
		}
		catch (NumberFormatException e) {
		}
		return getListBoxVO( whs, wh );
	}

	public ListBoxVO getListBoxVO( KeyNamePair[] p_options, String defaultKey )
	{
		ValueNamePair[] options = null;
		if( p_options != null )
		{
			options = new ValueNamePair[ p_options.length ];
			for( int i = 0; i < p_options.length; ++i )
			{
				options[i] = new ValueNamePair( p_options[i].getID(), p_options[i].getName() );
			}
		}
		else
		{
			options = new ValueNamePair[ 0 ];
		}
		return new ListBoxVO( options, defaultKey );
	}


	
	public Ctx getContext() 
	{
		HttpServletRequest request = getThreadLocalRequest();
		//avoid using getGwtServer since getGwtSever assumes a session, and it will throw SessionOutException when cannot find one
		if(request.getSession( false ) == null)
			return null;
		GwtServer server = getGwtServer(request);
		CContext context = null;
		if( server != null )
			context = server.getContext();
		
		// need to construct a new Ctx object here because we cannot pass CContext to the client
		Ctx ctx = null;
		if( context != null )
		{
			ctx = new Ctx( context );
		}
		return ctx;
	}


	

	public boolean chooseDefaultRole()
	{
		log.info("");
		HttpServletRequest request = getThreadLocalRequest();
		
		
		GwtServer server = getGwtServer( request );

		Login login = server.getLogin();

		if( login != null )
		{
			//server.setLocale( login.setLanguage( language ) );

			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			String[] printerNames = CPrinter.getPrinterNames(); 
			String printerName = "";
			if( printerNames != null && printerNames.length > 0 )
				printerName = printerNames[0];
			
			KeyNamePair[] roles = login.getRoles();
			String role = null;
			if( roles.length > 0 )
				role = roles[0].getID();
			else
				return false;
			KeyNamePair rolePair = search( role, roles );
			
			KeyNamePair[] clients = login.getClients( rolePair );
			String client = null;
			if( clients.length > 0 )
				client = clients[0].getID();
			else
				return false;
			KeyNamePair clientPair = search( client, clients );

			KeyNamePair[] orgs = login.getOrgs( clientPair );
			String org = null;
			// set default value to the first non-* option
			if( orgs != null && orgs.length > 0 )
			{
				for( int i = 0; i < orgs.length; ++i )
				{
					if( !orgs[i].getID().equals( "0" ) )
					{
						org = orgs[i].getID();
						break;
					}
				}
				if( org == null )
					org = orgs[0].getID();
			}
			else
				return false;
			KeyNamePair orgPair = search( org, orgs );

			KeyNamePair[] whs = login.getWarehouses( orgPair );
			String wh = null;
			if( whs != null && whs.length > 0 )
				wh = whs[0].getID();
			KeyNamePair whPair = search( wh, whs );

			String error = login.loadPreferences( orgPair, whPair, timestamp, printerName);
			log.info(error);


			return completeLogin( server, login, orgPair );
		}
		else
			return false;
	}


	/**
	 * @param server
	 * @param login
	 */
	private boolean completeLogin( GwtServer server, Login login, KeyNamePair orgPair )
	{
		String error;
		server.getContext().setContext( CtxConstants.WEB_SESSION, "WebApp");
		if((error = login.validateLogin(orgPair)) != null) {
			log.info(error);
			return false;
		}
		
		server.getContext().setContext( CtxConstants.LOGIN_COMPLETE, "Y" );

		MClient client = MClient.get( server.getContext() );
		MStore[] stores = MStore.getOfClient( client );

		boolean isWebStoreRole = false;
		for( MStore store : stores )
		{
			if( store.getAD_Role_ID() == login.getAD_Role_ID() )
			{
				isWebStoreRole = true;
				break;
			}
		}
		
		MRole mRole = MRole.get( server.getContext(), login.getAD_Role_ID(), login.getAD_User_ID(), true );
		server.getContext().setContext( CtxConstants.IS_RESTRICTED_UI, isWebStoreRole );
		server.getContext().setContext( CtxConstants.IS_SHOW_PREFERENCE, mRole.isShowPreference() );
		server.getContext().setContext( CtxConstants.IS_DISPLAY_ORG, mRole.isDisplayOrg() );
		server.getContext().setContext( CtxConstants.IS_DISPLAY_TENANT, mRole.isDisplayClient() );
		
		MUser user = MUser.get(server.getContext(), server.getContext().getAD_User_ID());
		MUserPreference preference = user.getPreference();
		preference.setAD_Session_ID(server.getContext().getContextAsInt("#AD_Session_ID"));
		preference.save();
		
		return true;
	}


	public ListBoxVO getPrinters()
	{
		String[] printerNames = CPrinter.getPrinterNames();
		
		ValueNamePair[] pairs = new ValueNamePair[ printerNames.length ];
		int i = 0;
		for( String printer : printerNames )
		{
			pairs[i] = new ValueNamePair( printer, printer ); 
			i++;	
		}
		
		String defaultPrinter = null;
		if( pairs.length > 0 )
			defaultPrinter = pairs[0].getValue();
		
		ListBoxVO lVO = new ListBoxVO( pairs, defaultPrinter );
		return lVO;
	}



	public HashMap<String, ListBoxVOExt> login( String username,  String language ) 
	{
		log.info("login: username,  language");
		GwtServer server = new GwtServer();
		Login login = server.getLogin();
		ListBoxVOExt voNBfailedloginAttempt = new ListBoxVOExt();//ZCOM999 38665-39021
		KeyNamePair[] roles = login.getRoles(voNBfailedloginAttempt, username );//ZCOM999 38665-39021

		HashMap<String, ListBoxVOExt> vos = new HashMap<String, ListBoxVOExt>();
		if(voNBfailedloginAttempt.isHasError())
		{
			vos.put(KEY_Roles, voNBfailedloginAttempt);//ZCOM999 38665-39021
			
		}else
		if( roles != null )
		{
			ValueNamePair[] options = new ValueNamePair[ roles.length ];
			for( int i = 0; i < roles.length; ++i )
			{
				options[i] = new ValueNamePair( roles[i].getID(), roles[i].getName() );
			}
			ListBoxVOExt voRoles = new ListBoxVOExt( options, null );
			vos.put( KEY_Roles, voRoles );
			HttpServletRequest request = getThreadLocalRequest();
			HttpSession session = request.getSession( true );

			//int expiration = 1 * 60; //
			int expiration = Integer.parseInt(Ini.getProperty(Ini.P_WEB_SESSION_EXPIRATION));
			session.setMaxInactiveInterval(expiration);
			
			session.setAttribute( KEY_GWTServer, server );
			server.getContext().setContext(CtxConstants.SESSION_TIME_OUT, expiration);
			
			server.setLocale( login.setLanguage( language ) );

		}
		return vos;
	}
	

	
	
	
	
}

