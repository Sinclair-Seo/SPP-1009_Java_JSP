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
	
		if(cookies != null) {
			for(int i=0; i< cookies.length; i++) {
				if(cookies[i].getName().equals("sinclair")) {
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}
		
		//response.sendRedirect("login.html");
		response.sendRedirect("cookietest.jsp");
	%>
</body>
</html>