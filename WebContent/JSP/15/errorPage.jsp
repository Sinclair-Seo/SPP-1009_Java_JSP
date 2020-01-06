<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>15강 예외 페이지</title>
</head>
<body>
	<h1>Error Page</h1><br/>
	
	<h2>getCause</h2><br/>
	<%= exception.getCause() %><br/>
	
	<h2>getLocalizedMessage</h2><br/>
	<%= exception.getLocalizedMessage() %><br/>
	
	<h2>getMessage</h2><br/>
	<%= exception.getMessage() %><br/>
	
	<h2>getStackTrace</h2><br/>
	<%= exception.getStackTrace() %><br/>
</body>
</html>