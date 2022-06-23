package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.OrderUserItem;

public class OrderUserItemDAO {

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

	// DBのorder_infoとproduct_infoテーブルを結合して購入情報を取得するメソッド定義
	public ArrayList<OrderUserItem> selectAll() {

		ArrayList<OrderUserItem> userlist = new ArrayList<OrderUserItem>();
		String sql = "SELECT o.user_id,p.product_name,o.order_date FROM product_info p INNER JOIN order_info o ON p.product_id=o.product_id";
		Connection con = null;
		Statement smt = null;

		try {
			con = ProductDAO.getConnection();
			smt = con.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			while (rs.next()) {
				OrderUserItem userItem = new OrderUserItem();
				userItem.setUserid(rs.getString("user_id"));
				userItem.setProductname(rs.getString("product_name"));
				userItem.setDate(rs.getString("order_date"));
				userlist.add(userItem);
			}
			return userlist;
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
