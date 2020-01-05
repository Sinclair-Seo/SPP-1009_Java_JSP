<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>12강 JSP 액션태그</title>
</head>
<body>

	<jsp:forward page="forward_param.jsp">
		<jsp:param value="id" name="sinclair"/>
		<jsp:param value="pw" name="demian"/>
	</jsp:forward>

</body>
</html>