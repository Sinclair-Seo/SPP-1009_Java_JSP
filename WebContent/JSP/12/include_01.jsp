<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12강 JSP 액션태그</title>
</head>
<body>

	<h1>It's include_01.jsp.</h1>
	<jsp:include page="include_02.jsp" flush="true"></jsp:include>
	<h3>It's include_01.jsp again.</h3>

</body>
</html>