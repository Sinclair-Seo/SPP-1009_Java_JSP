<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>23강 EL(Expression Language)</title>
</head>
<body>
	<form action="objectOk.jsp" method="post">
		ID: <input type="text" name="id" value="sinclair"><br>
		PW: <input type="password" name="pw" value="demian"><br>
		<input type="submit" value="Login">
	</form>

	<%
		application.setAttribute("app_name", "app_value");
		session.setAttribute("session_name", "session_value");
		pageContext.setAttribute("page_name", "page_value");
		request.setAttribute("req_name", "req_value");
	%>
</body>
</html>