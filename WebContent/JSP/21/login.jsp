<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>21강 회원 인증 프로그래밍</title>
</head>
<body>
	<form action="loginOk.jsp" method="post">
		ID: <input type="text" name="id"
			value="<%if (session.getAttribute("id") != null)
				out.println(session.getAttribute("id"));%>"><br />
		PW: <input type="password" name="pw"><br />&nbsp;&nbsp; <input
			type="button" value="회원가입"
			onclick="javascript:window.location='join.jsp'">
	</form>
</body>
</html>