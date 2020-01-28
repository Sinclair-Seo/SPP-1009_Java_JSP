<%@page import="com.javalec.backup.MemberDto"%>
<%@page import="com.javalec.backup.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	MemberDao dao = MemberDao.getInstance();
	int chkNum = dao.userCheck(id, pw);
	if (chkNum == -1) {
%>
<script>
	alert("ID is not found.");
	history.go(-1);
</script>
<%
	} else if (chkNum == 0) {
%>
<script>
	alert("Password in not matched.");
	history.go(-1);
</script>
<%
	} else if (chkNum == 1) {
		MemberDto dto = dao.getMember(id);

		if (dto == null) {
%>
<script>
	alert("Member is not found.");
	history.go(-1);
</script>
<%
		} else {
			String name = dto.getName();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("ValidMem", "yes");
			response.sendRedirect("main.jsp");
		}
	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>21강 회원 인증 프로그래밍</title>
</head>
<body>

</body>
</html>