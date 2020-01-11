<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getSession().getServletContext().getRealPath("Upload");

	int size = 1024 * 1024 * 10; // 10 Mb
	String file = "";
	String orgFile = "";

	try {
		MultipartRequest multiReq = new MultipartRequest(request, path, size, "UTF-8",
				new DefaultFileRenamePolicy());

		Enumeration<?> files = multiReq.getFileNames();
		String str = files.nextElement().toString();

		file = multiReq.getFilesystemName(str);
		orgFile = multiReq.getOriginalFileName(str);
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>22강 파일 업로드</title>
</head>
<body>
	<h4>Success of File upload.</h4>
</body>
</html>