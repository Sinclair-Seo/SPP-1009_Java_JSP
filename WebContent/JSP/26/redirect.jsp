<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>26강 포워딩(Forwarding)</title>
</head>
<body>
	<%
		request.setAttribute("id", "sinclair");
		request.setAttribute("pw", "demian");
		
		response.sendRedirect("RequestObj");
	%>
</body>
</html>