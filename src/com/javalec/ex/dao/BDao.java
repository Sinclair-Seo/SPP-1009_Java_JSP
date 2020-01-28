package com.javalec.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BDao {

	DataSource dtSource;

	public BDao() {
		// TODO Auto-generated constructor stub
		try {
			Context context = new InitialContext();
			dtSource = (DataSource) context.lookup("java:comp/env/jdbc_mariadb");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void write(String bName, String bTitle, String bContent) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = dtSource.getConnection();
			String query = "INSERT INTO mvc_board (bId, bName, bTitle, bContent, bHit, bGroup, bStep, bIndent) VALUES (NEXTVAL(mvc_board_seq), ?, ?, ?, 0, LASTVAL(mvc_board_seq), 0, 0 )";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, bName);
			pstmt.setString(2, bTitle);
			pstmt.setString(3, bContent);
			int rv = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}
