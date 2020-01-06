<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>14강 세션</title>
</head>
<body>
	<%
		String id, pw;
	%>
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		if(id.equals("sinclair") && pw.equals("demian")) {
			session.setAttribute("id", id);
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.html");
		}
	%>

</body>
</html>