<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Connection con;
	PreparedStatement prestmt;
	ResultSet rs;

	String driver = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://localhost:3306/mariadb";
	String uid = "sinclair";
	String upw = "demian00!";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20강 커넥션풀</title>
</head>
<body>
	<%
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, uid, upw);

			Long n;
			String query = "INSERT INTO memberforpre (id, pw, name, phone) VALUES (?, ?, ?, ?)";
			prestmt = con.prepareStatement(query);

			prestmt.setString(1, "abc");
			prestmt.setString(2, "123");
			prestmt.setString(3, "홍길동");
			prestmt.setString(4, "010-1234-5678");
			n = prestmt.executeLargeUpdate();

			prestmt.setString(1, "def");
			prestmt.setString(2, "456");
			prestmt.setString(3, "홍길자");
			prestmt.setString(4, "010-9012-3456");
			n = prestmt.executeLargeUpdate();

			prestmt.setString(1, "ghi");
			prestmt.setString(2, "789");
			prestmt.setString(3, "홍길순");
			prestmt.setString(4, "010-7890-1234");
			n = prestmt.executeLargeUpdate();

			prestmt.setString(1, "AAA");
			prestmt.setString(2, "111");
			prestmt.setString(3, "이길동");
			prestmt.setString(4, "010-1234-1111");
			n = prestmt.executeLargeUpdate();

			if (n == 1) {
				out.println("insert success");
			} else {
				out.println("insert fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (prestmt != null)
					prestmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
	%>
	
	<br/>
	<a href="memberDateView.jsp">회원정보 보기</a>
</body>
</html>