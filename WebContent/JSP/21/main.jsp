<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("ValidMem") == null) {
%>
	<jsp:forward page="login.jsp"/>
<%
	}

	String name = session.getAttribute("name").toString();
	String id = session.getAttribute("id").toString();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>21강 회원 인증 프로그래밍</title>
</head>
<body>
	<h1>Hello <%= name %></h1><br/>
	<form action="logout.jsp" method="post">
		<input type="submit" value="Sign out">&nbsp;&nbsp;&nbsp;
		<input type="button" value="정보수정" onclick="javascript:window.location='modify.jsp'">
	</form>
</body>
</html>