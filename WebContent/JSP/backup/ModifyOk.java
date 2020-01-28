package com.javalec.backup;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ModifyOk
 */
@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection con;
	private Statement stmt;

	private String name, id, pw, phone1, phone2, phone3, gender;

	HttpSession session;

	public ModifyOk() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(req, resp);
	}

	private void actionDo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		session = req.getSession();

		id = req.getParameter("id");
		pw = req.getParameter("pw");
		name = req.getParameter("name");
		phone1 = req.getParameter("phone1");
		phone2 = req.getParameter("phone2");
		phone3 = req.getParameter("phone3");
		gender = req.getParameter("gender");

		if (pwConfirmed()) {
			System.out.println("PW checked");

			String query = "UPDATE member " + "SET name ='" + name + "'," + " phone1 = '" + phone1 + "',"
					+ " phone2 = '" + phone2 + "'," + " phone3 = '" + phone3 + "'," + " gender = '" + gender + "' "
					+ "WHERE id = '" + id + "' ";
//			System.out.println(query);

			try {
				Class.forName("org.mariadb.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mariadb", "sinclair", "demian00!");
				stmt = con.createStatement();

				int i = stmt.executeUpdate(query);
				if (i == 1) {
					System.out.println("Update succeded");
					session.setAttribute("name", name);
					resp.sendRedirect("modifyResult.jsp");
				} else {
					System.out.println("Update failed");
					resp.sendRedirect("modify.jsp");
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (stmt != null)
						stmt.close();
					if (con != null)
						con.close();
				} catch (Exception e) {
				}
			}

		} else {
			System.out.println("NG");
		}
	}

	private boolean pwConfirmed() {
		boolean rs = false;

		String sessionPw = session.getAttribute("pw").toString();

		if (sessionPw.equals(pw)) {
			rs = true;
		} else {
			rs = false;
		}

		return rs;
	}

}
