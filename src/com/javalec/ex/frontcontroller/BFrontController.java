package com.javalec.ex.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.command.BCommand;

@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BFrontController() {
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

		String uri = req.getRequestURI();
		String conPath = req.getContextPath();
		String com = uri.substring(conPath.length());

		String viewPage = null;
		BCommand command = null;

		if (com.equals("/write_view.do")) {
			viewPage = "write_view.do";
		} else if (com.equals("/write.do")) {
			viewPage = "write.do";
			command = new BWriteCommand
		} else if (com.equals("/write.do")) {
			viewPage = "write.do";
		} else if (com.equals("/list.do")) {
			viewPage = "list.do";
		} else if (com.equals("/content_view.do")) {
			viewPage = "content_view.do";
		} else if (com.equals("/modify.do")) {
			viewPage = "modify.do";
		} else if (com.equals("/delete.do")) {
			viewPage = "delete.do";
		} else if (com.equals("/reply_view.do")) {
			viewPage = "reply_view.do";
		} else if (com.equals("/reply.do")) {
			viewPage = "reply.do";
		}
	}

}
