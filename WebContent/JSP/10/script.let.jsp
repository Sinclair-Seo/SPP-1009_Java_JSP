<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10강 JSP 본격적으로 살펴보기-II</title>
</head>
<body>

<%
	int i = 0;
	while(true){
		i++;
		out.println("2 * " + i + " = " + (2 * i) + "<br/>");
%>
	============<br/>
<%
		if(i >=16) break;
	}
%>
</body>
</html>