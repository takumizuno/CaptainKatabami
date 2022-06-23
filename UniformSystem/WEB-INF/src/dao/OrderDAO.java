package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import bean.Order;

public class OrderDAO {

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

	// 引数の購入データを元にDBのorder_infoテーブルに新規登録処理を行うメソッド定義
	public void insert(Order order) {

		String sql = "INSERT INTO order_info VALUES(NULL,'" + order.getUserid() + "','" + order.getProductid() + "','"
				+ order.getQuantity() + "','" + order.getRemarks() + "',CURDATE()" + 1 + "," + 1 + ")";
		Connection con = null;
		Statement smt = null;

		try {
			con = getConnection();
			smt = con.createStatement();
			smt.executeUpdate(sql);
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
