<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19강 데이터 베이스 - III</title>
</head>
<body>

	<%
		session.invalidate();
		response.sendRedirect("/JSP/19/login.html");
	%>

</body>
</html>