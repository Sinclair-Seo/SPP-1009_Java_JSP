package com.javalec.ex.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.command.BCommand;
import com.javalec.ex.command.BContentCommand;
import com.javalec.ex.command.BDeleteCommand;
import com.javalec.ex.command.BListCommand;
import com.javalec.ex.command.BModifyCommand;
import com.javalec.ex.command.BReplyCommand;
import com.javalec.ex.command.BReplyViewCommand;
import com.javalec.ex.command.BWriteCommand;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BFrontController() {
		super();
		// TODO Auto-generated constructor stub
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

		req.setCharacterEncoding("UTF-8");

		String viewPage = null;
		BCommand command = null;

		String uri = req.getRequestURI();
		String conPath = req.getContextPath();
		String com = uri.substring(conPath.length());

		if (com.equals("/write_view.do")) {
			viewPage = "write_view.jsp";
		} else if (com.equals("/write.do")) {
			command = new BWriteCommand();
			command.execute(req, resp);
			viewPage = "list.do";
		} else if (com.equals("/list.do")) {
			command = new BListCommand();
			command.execute(req, resp);
			viewPage = "list.jsp";
		} else if (com.equals("/content_view.do")) {
			command = new BContentCommand();
			command.execute(req, resp);
			viewPage = "content_view.jsp";
		} else if (com.equals("/modify.do")) {
			command = new BModifyCommand();
			command.execute(req, resp);
			viewPage = "list.do";
		} else if (com.equals("/delete.do")) {
			command = new BDeleteCommand();
			command.execute(req, resp);
			viewPage = "list.do";
		} else if (com.equals("/reply_view.do")) {
			command = new BReplyViewCommand();
			command.execute(req, resp);
			viewPage = "reply_view.jsp";
		} else if (com.equals("/reply.do")) {
			command = new BReplyCommand();
			command.execute(req, resp);
			viewPage = "list.do";
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher(viewPage);
		dispatcher.forward(req, resp);
	}

}
