<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 11강 JSP 본격적으로 살펴보기-III</title>
</head>
<body>

	<%
		out.println("서버: " + request.getServerName() + "<br />");
		out.println("포트: " + request.getServerPort() + "<br />");
		out.println("요청 방식: " + request.getMethod() + "<br />");
		out.println("프로토콜: " + request.getProtocol() + "<br />");
		out.println("서버: " + request.getRequestURL() + "<br />");
		out.println("서버: " + request.getRequestURI() + "<br />");
	%>
	
</body>
</html>