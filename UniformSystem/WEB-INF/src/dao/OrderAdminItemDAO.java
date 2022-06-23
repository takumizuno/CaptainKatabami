package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.OrderAdminItem;

public class OrderAdminItemDAO {

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
	public ArrayList<OrderAdminItem> selectAll() {

		ArrayList<OrderAdminItem> adminlist = new ArrayList<OrderAdminItem>();
		String sql = "SELECT o.order_id,u.user_name,p.product_name,o.product_quantity,o.order_date,o.payment_status,o.shipping_status FROM product_info p INNER JOIN (order_info o INNER JOIN user_info u ON o.user_id=u.user_id) ON p.product_id=o.product_id";
		Connection con = null;
		Statement smt = null;

		try {
			con = ProductDAO.getConnection();
			smt = con.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			while (rs.next()) {
				OrderAdminItem adminItem = new OrderAdminItem();
				adminItem.setOrderid(rs.getString("order_id"));
				adminItem.setUsername(rs.getString("user_name"));
				adminItem.setProductname(rs.getString("product_name"));
				adminItem.setQuantity(rs.getInt("product_quantity"));
				adminItem.setDate(rs.getString("order_date"));
				adminItem.setPayment(rs.getString("payment_status"));
				adminItem.setShipping(rs.getString("shipping_status"));
				adminlist.add(adminItem);
			}
			return adminlist;
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
