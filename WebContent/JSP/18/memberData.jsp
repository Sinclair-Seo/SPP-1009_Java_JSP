<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%!
		Connection connection;
		Statement statement;
		ResultSet resultSet;
		
		String driver = "org.mariadb.jdbc.Driver";
		String url = "jdbc:mariadb://localhost:3306/mariadb";
		String uid = "sinclair";
		String upw = "demian00!";
		String query = "select * from member";		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>18강 데이터 베이스 - II</title>
</head>
<body>
	<h4>18강 데이터 베이스 - II</h4><br/>
	
	<%
		try {
			Class.forName(driver);	// org.mariadb.jdbc.Driver
			connection = DriverManager.getConnection(url, uid, upw); // jdbc:mariadb://localhost:3306:mariadb
			statement = connection.createStatement();
			resultSet = statement.executeQuery(query);	// select * from member
			
			out.println();
			
			while(resultSet.next()) {
				String id = resultSet.getString("id");
				String pw = resultSet.getString("pw");
				String name = resultSet.getString("name");
				String phone = resultSet.getString("phone");
				
				out.println("ID: " + id + ", PW: " + pw + ", Name: " + name + ", Phone: " + phone + "<br/>" );
			}
		} catch(Exception e) {
			out.println(e.getMessage());
		} finally {
			try{
				if(resultSet != null) resultSet.close();
				if(statement != null) statement.close();
				if(connection != null) connection.close();
			} catch(Exception e) {
				out.println(e.getMessage());
			}
		}
	%>

</body>
</html>