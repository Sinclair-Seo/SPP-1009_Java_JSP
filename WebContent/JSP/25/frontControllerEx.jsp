<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>25강 FrontController 패턴과 Command 패턴</title>
</head>
<body>
	<a href="insert.do">Insert</a>
	<hr>
	<a href="http://localhost:8181<%=request.getContextPath()%>/update.do">Update</a>
	<hr>
	<a href="<%=request.getContextPath()%>/delete.do">Delete</a>
</body>
</html>