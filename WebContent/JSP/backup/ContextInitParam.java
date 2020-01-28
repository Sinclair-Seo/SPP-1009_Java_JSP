package com.javalec.backup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContextInitParam
 */
@WebServlet("/ContextParam")
public class ContextInitParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContextInitParam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
		
		String id = getServletContext().getInitParameter("id");
		String pw = getServletContext().getInitParameter("pw");
		String path = getServletContext().getInitParameter("path");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();

		writer.println("<html><head></head><body>");
		writer.println("id : " + id + "<br />");
		writer.println("pw : " + pw + "<br />");
		writer.println("path : " + path);
		writer.println("</body></html>");

		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost");
	}

}
