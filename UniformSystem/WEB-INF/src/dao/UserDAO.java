package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.User;

public class UserDAO {

	// DB情報をフィールド変数に定義
	private static String RDB_DRIVE = "com.mysql.jdbc.Driver";
	private static String URL = "jdbc:mysql://localhost/uniformdb";
	private static String USER = "root";
	private static String PASSWD = "root123";

	// getConnectionメソッド準備
	public static Connection getConnection() {
		try {
			Class.forName(RDB_DRIVE);
			Connection con = DriverManager.getConnection(URL, USER, PASSWD);
			return con;
		} catch (Exception e) {
			throw new IllegalStateException(e);
		}
	}

	// DBのuser_infoテーブルから指定ユーザーの条件に合致する情報を取得するメソッド定義
	public User selectByUser(String userid, String password) {

		User user = new User();
		String sql = "SELECT * FROM user_info WHERE user_id ='" + userid + "' AND user_password='" + password + "'";
		Connection con = null;
		Statement smt = null;

		try {
			con = getConnection();
			smt = con.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			if (rs.next()) {
				user.setUserid(rs.getString("user_id"));
				user.setPassword(rs.getString("user_password"));
				user.setUsername(rs.getString("user_name"));
				user.setEmail(rs.getString("mailaddress"));
				user.setAuthority(rs.getString("authority"));
			}
			return user;
		} catch (Exception e) {
			throw new IllegalStateException(e);
		} finally {
			if (smt != null) {
				try {
					smt.close();
				} catch (SQLException ignore) {
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException ignore) {
				}
			}
		}
	}
}
