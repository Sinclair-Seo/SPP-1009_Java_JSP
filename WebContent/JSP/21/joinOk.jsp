<%@page import="com.javalec.backup.MemberDao"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="com.javalec.backup.MemberDto" />
<jsp:setProperty property="*" name="dto" />
<%
	dto.setrDate(new Timestamp(System.currentTimeMillis()));
	MemberDao dao = MemberDao.getInstance();
	if (dao.confirmId(dto.getId()) == MemberDao.MEMBER_EXISTED) {
%>
<script type="text/javascript">
	alert("ID is already existed.");
	history.back();
</script>
<%
	} else {
		int rv = dao.insertMember(dto);
		if (rv == MemberDao.MEMBER_JOIN_SUCCESS) {
			session.setAttribute("id", dto.getId());
%>
<script type="text/javascript">
	alert("Welcome to be Member.");
	documemt.location.href = "login.jsp";
</script>
<%
	} else {
%>
<script type="text/javascript">
	alert("Failed to sing up");
	documemt.location.href = "login.jsp";
</script>
<%
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