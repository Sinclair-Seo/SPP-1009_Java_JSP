<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14강 세션</title>
</head>
<body>

	<%
		Enumeration enumeration = session.getAttributeNames();
		while(enumeration.hasMoreElements()) {
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			if(sValue.equals("sinclair"))
				out.println("Hello " + sValue + "<br/>");
		}
	%>
	
	<a href="logout.jsp">Sign out</a>

</body>
</html>