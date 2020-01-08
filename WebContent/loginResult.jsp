<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id, pw, name;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19강 데이터 베이스 - III</title>
</head>
<body>

	<%
		id = session.getAttribute("id").toString();
		pw = session.getAttribute("pw").toString();
		name = session.getAttribute("name").toString();
	%>
	<h4>Hello <%= name %></h4><br/>
	<a href="/JSP/19/modify.jsp">Modify Member Info</a>
	
</body>
</html>