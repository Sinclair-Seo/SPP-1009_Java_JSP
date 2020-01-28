package com.javalec.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.BDao;
import com.javalec.ex.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.list();
		req.setAttribute("list", dtos);
	}

}
