package com.javalec.backup;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {
	public ArrayList<MemberDto> execute(HttpServletRequest req, HttpServletResponse resp);
}
