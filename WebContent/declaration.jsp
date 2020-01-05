<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>10강 JSP 본격적으로 살펴보기-II</title>
</head>
<body>

	<%!
		int i = 10;
		String str = "JSP";
	%>
	
	<%!
		public int sum(int a, int b) {
			return a +b;
		}
	%>
	
	<%
		out.println("i = " + i + "<br />");
		out.println("str = " + str + "<br />");
		out.println("sum = " + sum(1,5) + "<br />");
	%>
	
</body>
</html>