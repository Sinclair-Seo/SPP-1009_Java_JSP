/**
 * 
 */
package com.javalec.backup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Sinclair
 *
 */
@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection con;
	private Statement stmt;
	private ResultSet rs;

	private String id, pw, name, phone1, phone2, phone3, gender;

	/**
	 * 
	 */
	public LoginOk() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		actionDo(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
		actionDo(req, resp);
	}

	private void actionDo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		id = req.getParameter("id");
		pw = req.getParameter("pw");

		String query = "SELECT * FROM member WHERE id = '" + id + "' AND pw = '" + pw + "'";

		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mariadb", "sinclair", "demian00!");
			stmt = con.createStatement();

			rs = stmt.executeQuery(query);

			int i = 0;
			while (rs.next()) {
				i++;

				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				phone1 = rs.getString("phone1");
				phone2 = rs.getString("phone2");
				phone3 = rs.getString("phone3");
				gender = rs.getString("gender");

				System.out.println(i + ": " + id);
			}

			HttpSession session = req.getSession();
			System.out.println("Session is set");
			session.setAttribute("id", id);
			session.setAttribute("pw", pw);
			session.setAttribute("name", name);

			// resp.setStatus(200);
			System.out.println("Redirect");
			// resp.sendRedirect("loginResult.jsp");
			req.getRequestDispatcher("/JSP/19/loginResult.jsp").forward(req, resp);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

}
