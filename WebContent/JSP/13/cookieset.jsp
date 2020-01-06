<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13강 쿠키</title>
</head>
<body>

	<%
		Cookie cookie = new Cookie("cookieN", "cookieV");
		cookie.setMaxAge(60*60);	// 1 Hour
		response.addCookie(cookie);
	%>
	
	<a href="cookieget.jsp">Get Cookie</a><br/>
	<a href="cookietest.jsp">Check Cookie</a>

</body>
</html>