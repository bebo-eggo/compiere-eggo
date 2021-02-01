<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib 
	uri="http://java.sun.com/jsp/jstl/core" 
	prefix="c" %>

<html>
	<head>
		<title><c:out value="Compiere WebServices" /></title>
		<link rel="stylesheet" type="text/css" href="resources/css/css.css"/>
	</head>
  	<body>
  		<h3><c:out value="Compiere WebServices on X-SessionId=${xsessionid}" /></h3>
  		<table class="wikitable" border="1">
  			<tr>
  				<th>Nom</th>
  				<th>Paramètres</th>
  				<th>URL</th>
  				<th>... + limit et offset</th>
  				<th>... + count</th>
  				<th>ORDER BY available</th>
  			</tr>
  			<c:forEach items="${urls}" var="url">
  				<tr>
  					<%-- <td><c:out value="${url.group}"/> <c:out value="${url.name}"/></td> --%>
  					<td><c:out value="${url.name}"/></td>
    				<td>
    				<c:forEach items="${url.parameters}" var="pa">
    					<li><small><c:out value="${pa.name}" />=<c:out value="${pa.value}" /></small><br>
    				</c:forEach>
    				</td>
    				<td><a href="${url.link}"><small><c:out value="${url.url}"/></small></a></td>
    				<td><a href="${url.link2}"><small><c:out value="limit / offset"/></small></a></td>
    				<td><a href="${url.link3}"><small><c:out value="count"/></small></a></td>
    				<td>
    					<c:forEach items="${url.beanToSqlFieldConverter.queryOrderBys}" var="qob">
    						<li><small><c:out value="${qob.ID}" /></small><br>
    					</c:forEach>
    				</td>
    				<%-- 
    				<td><a href="${url.link2}"><small><c:out value="${url.url}&limit=...&offset=..."/></small></a></td>
    				<td><a href="${url.link3}"><small><c:out value="${url.url}&count=Y"/></small></a></td>
    				 --%>
    			</tr>
			</c:forEach>
  		</table>
  	</body>
</html>