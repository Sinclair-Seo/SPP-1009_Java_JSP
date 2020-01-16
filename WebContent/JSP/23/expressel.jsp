<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.javalec.ex.MemberInfo" scope="page" />
<jsp:setProperty name="member" property="name" value="서민원" />
<jsp:setProperty name="member" property="id" value="sinclair" />
<jsp:setProperty name="member" property="pw" value="demian" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>23강 EL(Expression Language)</title>
</head>
<body>

	<br /> Name: <jsp:getProperty property="name" name="member"/>
	<br /> ID: <jsp:getProperty property="id" name="member"/>
	<br /> Password: <jsp:getProperty property="pw" name="member"/>
	<br />
	<br /> Name: ${ member.name }
	<br /> ID: ${ member.id }
	<br /> Password: ${ member.pw }
	<br />

</body>
</html>