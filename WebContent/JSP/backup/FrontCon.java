package com.javalec.backup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontCon extends HttpServlet {

	public FrontCon() {
		// TODO Auto-generated constructor stub
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doGet(req, resp);
		System.out.println("doGet");
		actionDo(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.doPost(req, resp);
		System.out.println("doPost");
		actionDo(req, resp);
	}

	private void actionDo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("actionDo");

		String uri = req.getRequestURI();
		System.out.println("URI: " + uri);
		String conPath = req.getContextPath();
		System.out.println("Context Path: " + conPath);
		String command = uri.substring(conPath.length());
		System.out.println("Command: " + command);

		try {
			if (command.equals("/membersAll.do")) {
				resp.setContentType("text/html; charset=UTF-8");
				PrintWriter writer = resp.getWriter();
				writer.println("<html><head></head><body>");

				Service service = new MembersAllService();
				ArrayList<MemberDto> dtos = service.execute(req, resp);

				for (int i = 0; i < dtos.size(); i++) {
					MemberDto dto = dtos.get(i);
					String id = dto.getId();
					String pw = dto.getPw();
					String name = dto.getName();
					String eMail = dto.geteMail();
					Timestamp rDate = dto.getrDate();
					String address = dto.getAddress();

					writer.println(id + "," + pw + "," + name + "," + eMail + "," + rDate.toLocalDateTime() + ","
							+ address + "<hr>");
				}
				writer.println("</body></html>");

			} else if (command.equals("/update.do")) {
				System.out.println("update");
				System.out.println("------------------------------");
			} else if (command.equals("/select.do")) {
				System.out.println("select");
				System.out.println("------------------------------");
			} else if (command.equals("/delete.do")) {
				System.out.println("delete");
				System.out.println("------------------------------");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
