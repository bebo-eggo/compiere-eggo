/*
* JBoss, the OpenSource J2EE webOS
*
* Distributable under LGPL license.
* See terms of license at gnu.org.
*/
package com.audaxis.tomcat.filters;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import org.jboss.logging.Logger;

/** A servlet filter that simply adds all header specified in its config
to replies the filter is mapped to. An example would be to set the cache
 control max age:

   <filter>
      <filter-name>CacheControlFilter</filter-name>
      <filter-class>filter.ReplyHeaderFilter</filter-class>
      <init-param>
         <param-name>Cache-Control</param-name>
         <param-value>max-age=3600</param-value>
      </init-param>
   </filter>
   
 <filter-mapping>
    <filter-name>CacheControlFilter</filter-name>
    <url-pattern>/images/*</url-pattern>
 </filter-mapping>
 <filter-mapping>
    <filter-name>CacheControlFilter</filter-name>
    <url-pattern>*.js</url-pattern>
 </filter-mapping>


 @author Scott.Stark@jboss.org
 @version $Revison:$
 
 ZCOM #35148 On reprend cette  classe pour comprendre quand se produit 
 java.net.SocketTimeoutException: Read timed out - The call failed on the server ...
 */
public class ReplyHeaderFilter implements Filter
{
	static Logger log = Logger.getLogger(ReplyHeaderFilter.class);
	private String[][] replyHeaders = {{}};

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void init(FilterConfig config)
	{
		log.info("INITIALISATION "+config);
		Enumeration names = config.getInitParameterNames();
		ArrayList tmp = new ArrayList();
		while( names.hasMoreElements() )
		{
			String name = (String) names.nextElement();
			String value = config.getInitParameter(name);
			log.debug("Adding header name: "+name+"='"+value+"'");
			String[] pair = {name, value};
			tmp.add(pair);
		}	
		replyHeaders = new String[tmp.size()][2];
		tmp.toArray(replyHeaders);
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
    throws IOException, ServletException
    {
		try { //ZCOM #35148
			// Apply the headers
			HttpServletResponse httpResponse = (HttpServletResponse) response;
			for(int n = 0; n < replyHeaders.length; n ++)
			{	
				String name = replyHeaders[n][0];
				String value = replyHeaders[n][1];
				httpResponse.addHeader(name, value);
			}
			if (chain != null) //ZCOM #35148
			chain.doFilter(request, response);
		//ZCOM #35148
		} catch (Throwable t) {
		   log.error("Exception while adding some Header on HTTP Reply, let's do not care about that...", t);
		}
		//ZCOM #35148
    }

	public void destroy()
	{
	}
	
}
