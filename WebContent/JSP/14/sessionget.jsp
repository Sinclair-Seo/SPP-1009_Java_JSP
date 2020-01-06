<%@ page import="java.util.Enumeration" %>
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
		out.println("# getAttribute<br/>");
	
		String mySessionName = session.getAttribute("mySessionName").toString();
		out.println("mySessionName: " + mySessionName + "<br/>");
		
		Integer myNum = (Integer)session.getAttribute("myNum");
		out.println("myNum: " + myNum + "<br/>");
		
		out.println("==========================<br/>");
	%>
	<%
		out.println("<br/># getAttributeNames<br/>");
	
		String sName;
		String sValue;
		Enumeration enumeration = session.getAttributeNames();
		while(enumeration.hasMoreElements()) {
			sName = enumeration.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName: " + sName + "<br/>");
			out.println("sValue: " + sValue + "<br/>");
		}

		out.println("==========================<br/>");
	%>
	<%
		out.println("<br/># getId<br/>");
	
		String sessionID = session.getId().toString();
		out.println("sessionID: " + sessionID + "<br/>");
		
		int sessionInterval = session.getMaxInactiveInterval();
		out.println("sessionInterval: " + sessionInterval + "<br/>");
		
		out.println("==========================<br/>");
	%>
	<%
		out.println("<br/># removeAttribute<br/>");
	
		session.removeAttribute("mySessionName");
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()) {
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName: " + sName + "<br/>");
			out.println("sValue: " + sValue + "<br/>");
		}
	
		out.println("==========================<br/>");
	%>
	<%
		out.println("<br/># invalidate<br/>");
	
		if(request.isRequestedSessionIdValid()) {
			out.print("The session is valid.<br/>");
		} else {
			out.print("The session is invalid.<br/>");
		}
		
		session.invalidate();
		out.println("Invalidate the session.<br/>");
		
		if(request.isRequestedSessionIdValid()) {
			out.print("The session is still valid.<br/>");
		} else {
			out.print("The session is invalid now.<br/>");
		}
		out.println("==========================<br/>");
	%>
</body>
</html>