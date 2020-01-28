<%@page import="com.javalec.backup.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dto" class="com.javalec.backup.MemberDto" scope="page" />
<jsp:setProperty property="*" name="dto" />

<%
String id = session.getAttribute("id").toString();
dto.setId(id);

MemberDao dao = MemberDao.getInstance();
int rv = dao.updateMember(dto);

if(rv == 1) {
%>
<script type="text/javascript">
	alert("Done to be modified.");
	documemt.location.href = "main.jsp";
</script>
<%	
} else {
%>
<script type="text/javascript">
	alert("Failed to be modified.");
	history.go(-1);
</script>
<%	
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