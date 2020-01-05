<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>10강 JSP 본격적으로 살펴보기-II</title>
</head>
<body>
	<%
		int i = 10;
		String str = "JSP";
		
		final int sum ( final int a , int b ) {
			return a+b;
		}
	%>
	
	<%= i %><br/>
	<%= str %><br/>
	<%= sum(48, 56) %>
	
</body>
</html>