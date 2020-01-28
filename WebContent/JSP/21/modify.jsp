<%@page import="com.javalec.backup.MemberDao"%>
<%@page import="com.javalec.backup.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = session.getAttribute("id").toString();
	MemberDao dao = MemberDao.getInstance();
	MemberDto dto = dao.getMember(id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>21강 회원 인증 프로그래밍</title>
<script language="JavaScript" src="members.js"></script>
</head>
<body>
	<form action="modifyOk.jsp" method="post" name="reg_frm">
		ID: <%=dto.getId()%><br />
		PW: <input type="password" name="pw" size="20"><br />
		PW2: <input type="password" name="pw_check" size="20"><br />
		Name: <%=dto.getName()%><br /> 
		eMail: <input type="text" name="eMail"
			size="20" value="<%=dto.geteMail()%>>"><br /> 
		Address: <input	type="text" name="address" size="50" value="<%=dto.getAddress()%>>"><br />
		<input type="button" value="Modify" onclick="updateInfoConfirm()">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소"
			onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>