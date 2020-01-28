/**
 * 
 */
package com.javalec.backup;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * @author Sinclair
 *
 */
public class MemberDao {

	public static final int MEMBER_NOTEXISTED = 0;
	public static final int MEMBER_EXISTED = 1;
	public static final int MEMBER_JOIN_FAILURE = 0;
	public static final int MEMBER_JOIN_SUCCESS = 1;
	public static final int MEMBER_LOGIN_PW_UNMATCHED = 0;
	public static final int MEMBER_LOGIN_SUCCESS = 1;
	public static final int MEMBER_LOGIN_FAILURE = 0;

	private static MemberDao instance = new MemberDao();

	/**
	 * 
	 */
	private MemberDao() {
		// TODO Auto-generated constructor stub
	}

	public static MemberDao getInstance() {
		return instance;
	}

	public int insertMember(MemberDto dto) {
		int rv = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO members VALUES (?,?,?,?,?,?)";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.geteMail());
			pstmt.setTimestamp(5, dto.getrDate());
			pstmt.setString(6, dto.getAddress());
			pstmt.executeUpdate();
			rv = MemberDao.MEMBER_JOIN_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return rv;
	}

	public int updateMember(MemberDto dto) {
		int rv = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		String query = "UPDATE members SET pw=?, eMail=?, address=? where id=?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.geteMail());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getId());
			pstmt.executeUpdate();
			rv = MemberDao.MEMBER_JOIN_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return rv;
	}

	public int confirmId(String id) {
		int rv = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT id FROM members WHERE id = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rv = MemberDao.MEMBER_EXISTED;
			} else {
				rv = MemberDao.MEMBER_NOTEXISTED;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return rv;
	}

	public int userCheck(String id, String pw) {
		int rv = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT pw FROM members WHERE id = ?";
		String dbPw;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbPw = rs.getString("pw");
				if (dbPw.equals(pw)) {
					rv = MemberDao.MEMBER_LOGIN_SUCCESS;
				} else {
					rv = MemberDao.MEMBER_LOGIN_PW_UNMATCHED;
				}
			} else {
				rv = MemberDao.MEMBER_LOGIN_FAILURE;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return rv;
	}

	public MemberDto getMember(String id) {
		MemberDto dto = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM members WHERE id = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto = new MemberDto();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.seteMail(rs.getString("eMail"));
				dto.setrDate(rs.getTimestamp("rDate"));
				dto.setAddress(rs.getString("address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return dto;
	}

	public ArrayList<MemberDto> membersAll() {
		ArrayList<MemberDto> dtos = new ArrayList<MemberDto>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = "SELECT * FROM members";

		try {
			con = getConnection();
			pstmt = con.prepareStatement(query);
			rs = pstmt.executeQuery();

			System.out.println("=======================");
			while (rs.next()) {
				MemberDto dto = new MemberDto();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.seteMail(rs.getString("eMail"));
				dto.setrDate(rs.getTimestamp("rDate"));
				dto.setAddress(rs.getString("address"));
				dtos.add(dto);
			}
			System.out.println("---------------------------");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return dtos;
	}

	private Connection getConnection() {
		// TODO Auto-generated method stub

		Context context = null;
		DataSource ds = null;
		Connection conn = null;

		try {
			context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc_mariadb");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

}
