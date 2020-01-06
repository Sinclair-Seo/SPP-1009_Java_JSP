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
			for(int i=0; i<cookies.length; i++){
				out.println("cookies[" + i + "] name : " + cookies[i].getName() + "<br/>");
				out.println("cookies[" + i + "] value : " + cookies[i].getValue() + "<br/>");
			}
		}
	%>
	
	<a href="cookiedel.jsp">Delete Cookie</a><br/>
	<a href="cookietest.jsp">Check Cookie</a>

</body>
</html>