<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>23강 EL(Expression Language)</title>
</head>
<body>
	${ 16 + 1 }
	<br /> ${ 16 - 1 }
	<br /> ${ 16 * 2 }
	<br /> ${ 16 / 1 }
	<br /> ${ 16 > 1 }
	<br /> ${ 16 < 1 }
	<br /> ${ (16 > 1) ? 16 : 1 }
	<br /> ${ (16 > 1) || (16 < 1) }
	<br />
</body>
</html>