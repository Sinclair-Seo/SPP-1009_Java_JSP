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
		session.setAttribute("mySessionName", "mySessionData");
		session.setAttribute("myNum", 2784723);
	%>
	
	<a href="sessionget.jsp">Get Session</a>
</body>
</html>