<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>22강 파일 업로드</title>
</head>
<body>
	<form action="fileFormOk.jsp" method="post"
		enctype="multipart/form-data">
		File: <input type="file" name="file"><br />
		<input type="submit" value="File Upload">
	</form>
</body>
</html>