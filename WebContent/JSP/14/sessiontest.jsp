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
		
		int i = 0;
		while(enumeration.hasMoreElements()) {
			i++;
			String sName = enumeration.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			out.println("sName: " + sName + "<br/>");
			out.println("sValue: " + sValue + "<br/>");
		}
		
		if(i == 0)
			out.println("No session exists.<br/>");
	%>
</body>
</html>