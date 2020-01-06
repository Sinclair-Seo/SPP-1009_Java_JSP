<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<% response.setStatus(200); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15강 예외 페이지</title>
</head>
<body>
	<h3>404 Error</h3>
	
	<h4>application.getContextPath()</h4><br/>
	<%= application.getContextPath()  %><br/><br/>
	
	<h4>request.getSession().getServletContext().getRealPath("/")</h4><br/>
	<%= request.getSession().getServletContext().getRealPath("/") %><br/><br/>
	
	<h4>application.getRealPath("/")</h4><br/>
	<%= application.getRealPath("/")  %><br/>
	
		
</body>
</html>