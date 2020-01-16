<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>23강 EL(Expression Language)</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>

	<br> ID:
	<%=id%>
	<br> PW:
	<%=pw%>
	<br>
	<hr>
	ID: ${ param.id }
	<br> PW: ${ param.pw }
	<br> ID: ${ param["id"] }
	<br> PW: ${ param["pw"] }
	<br>
	<hr>

</body>
</html>