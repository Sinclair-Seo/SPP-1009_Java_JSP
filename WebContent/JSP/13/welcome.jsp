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
		Cookie[] cookies = request.getCookies();
	
		for(int i=0; i < cookies.length; i++) {
			String id = cookies[i].getValue();
			if(id.equals("sinclair"))
				out.println("Hello " + id + "<br/>");
		}
	%>
	
	<a href="logout.jsp">Sign out</a>

</body>
</html>