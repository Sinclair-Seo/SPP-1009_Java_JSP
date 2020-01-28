<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.javalec.backup.Student" scope="page" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>16강 자바 빈</title>
</head>
<body>

	<h1>16강 자바 빈</h1>
	<br />

	<jsp:setProperty name="student" property="name" value="sinclair" />
	<jsp:setProperty name="student" property="age" value="16" />
	<jsp:setProperty name="student" property="grade" value="99" />
	<jsp:setProperty name="student" property="studentNum" value="938" />

	Name:
	<jsp:getProperty property="name" name="student" /><br /> Age:
	<jsp:getProperty property="age" name="student" /><br /> Grade:
	<jsp:getProperty property="grade" name="student" /><br /> Num:
	<jsp:getProperty property="studentNum" name="student" /><br />

</body>
</html>