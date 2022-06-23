package dao;

import java.sql.*;

import bean.User;
import dao.*;

/**
 *
 * @author RDPUser
 *
 */
public class UserDAO {

	/*
	 *  DB接続情報
	 */
	private static String RDB_DRIVE = "com.mysql.jdbc.Driver";
	private static String URL = "jdbc:mysql://localhost/mybookdb";
	private static String USER = "root";
	private static String PASSWD = "root123";

	/*
	 * DB接続情報を利用し、データベースに接続する
	 */
	private static Connection getConnection() {
		try {
			Class.forName(RDB_DRIVE);
			Connection con = DriverManager.getConnection(URL, USER, PASSWD);
			return con;
		} catch (Exception e) {
			throw new IllegalStateException(e);
		}
	}

	/*
	 * userinfoテーブルから指定ユーザーとパスワードの条件に合致する情報を取得する
	 */
	public User selectByUser(String userid,String password) {

		// 変数宣言
		Connection con = null;
		Statement smt = null;

		//Userオブジェクト生成
		User user = new User();

		//SQL文
		String sql = "SELECT * FROM userinfo WHERE user ='" + userid + "' AND password ='" + password + "'";

		try {
			// DB接続
			con = getConnection();
			smt = con.createStatement();

			// SQL文発行
			ResultSet rs = smt.executeQuery(sql);

			// 受け取ったSQLの結果をuserオブジェクトに格納
			while (rs.next()) {
				user.setUserid(rs.getString("user_id"));
				user.setUsername(rs.getString("user_name"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("mailaddress"));
				user.setAddress(rs.getString("address"));
				user.setAuthority(rs.getString("authority"));
			}

		} catch (Exception e) {
			throw new IllegalStateException("selectByUser" + e);
		} finally {
			// リソース解放
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

		return user;
	}

}
