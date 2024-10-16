package common;

import java.sql.*;

public class JDBConnect2 {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

	public JDBConnect2() {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/test";
			String id = "manager";
			String pw = "1234";
			con = DriverManager.getConnection(url, id, pw);

			System.out.println("연결 성공");
		} catch (Exception e) {
			System.out.println("연결실패");
		}
	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();
			System.out.println("정상적으로 데이터베이스 종료");
		} catch (Exception e) {
			System.out.println("데이터베이스 종료 오류");
		}

	}

}
