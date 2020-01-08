<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19강 데이터 베이스 - III</title>
</head>
<body>
	<h4>Successfully done for your request for the Info Modified, <%= session.getAttribute("name") %></h4> <br/>
	<a href="logout.jsp">Sing out</a> &nbsp;&nbsp; <a href="modify.jsp">정보수정</a>
</body>
</html>