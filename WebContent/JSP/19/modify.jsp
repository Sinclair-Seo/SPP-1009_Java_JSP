<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%!
	Connection con;
	Statement stmt;
	ResultSet rs;

	String id, pw, name, phone1, phone2, phone3, gender;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>19강 데이터 베이스 - III</title>
</head>
<body>
	<%
		id = session.getAttribute("id").toString();
	
		String query = "SELECT * FROM member WHERE id = '" + id + "'";
		
		Class.forName("org.mariadb.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mariadb", "sinclair", "demian00!");
		stmt = con.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()) {
			pw = rs.getString("pw");
			name = rs.getString("name");
			phone1 = rs.getString("phone1");
			phone2 = rs.getString("phone2");
			phone3 = rs.getString("phone3");
			gender = rs.getString("gender");
		}
	%>
	
	<form action="ModifyOk" method="post">
		Name : <input type="text" name="name" size="10" value=<%=name %>><br />
		ID : <%=id %><br />
		PW : <input type="text" name="pw" size="10"><br />
		Phone : <select name="phone1">
			<option value="010">010</option>
			<option value="016">016</option>
			<option value="017">017</option>
			<option value="018">018</option>
			<option value="019">019</option>
			<option value="011">011</option>
		</select> -
		<input type="text" name="phone2" size="5" value=<%=phone2 %>> - <input type="text" name="phone3" size="5" value=<%=phone3 %>> <br />
		<%
			if(gender.equals("M")) {
		%>
		성별구분 : <input type="radio" name="gender" value="M" checked="checked">남 &nbsp;<input type="radio" name="gender" value="F">여 <br />
		<%
			} else {
		%>
		성별구분 : <input type="radio" name="gender" value="M" >남 &nbsp;<input type="radio" name="gender" value="F" checked="checked">여 <br />
		<%
			}
		%>
		<input type="submit" value="정보수정"> <input type="reset" value="취소">
	</form>

</body>
</html>