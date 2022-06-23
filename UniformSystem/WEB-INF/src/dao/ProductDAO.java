package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import bean.*;

public class ProductDAO {

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

	// DBのproduct_infoテーブルから全商品情報を取得するメソッド定義
	public ArrayList<Product> selectAll() {

		ArrayList<Product> list = new ArrayList<Product>();
		String sql = "SELECT * FROM product_info ORDER BY product_id";
		Connection con = null;
		Statement smt = null;

		try {
			con = ProductDAO.getConnection();
			smt = con.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			while (rs.next()) {
				Product products = new Product();
				products.setProductid(rs.getString("product_id"));
				products.setProductname(rs.getString("product_name"));
				products.setStock(rs.getInt("stock"));
				products.setPrice(rs.getInt("price"));
				products.setImg(rs.getString("product_img"));
				list.add(products);
			}
			return list;
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

	// 引数のproduct_idを元にDBのproduct_infoテーブルから該当商品データの検索を行うメソッド定義
	public Product selectByProductid(String productid) {

		Product product = new Product();
		String sql = "SELECT * FROM product_info WHERE product_id = '" + productid + "'";
		Connection con = null;
		Statement smt = null;

		try {
			con = getConnection();
			smt = con.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			if (rs.next()) {
				product.setProductid(rs.getString("product_id"));
				product.setProductname(rs.getString("product_name"));
				product.setStock(rs.getInt("stock"));
				product.setPrice(rs.getInt("price"));
				product.setImg(rs.getString("product_img"));
			}
			return product;
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

	// 引数の書籍データを元にDBのproduct_infoテーブルに新規登録処理を行うメソッド定義
	public void insert(Product product) {

		String sql = "INSERT INTO product_info VALUES('" + product.getProductid() + "','" + product.getProductname()
				+ "'," + product.getPrice() + "," + product.getStock() + ",'" + product.getImg() + "')";
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

	// 引数の商品データ（productid）を元にDBのproduct_infoテーブルから該当商品データの削除処理を行うメソッド定義
	public void delete(String productid) {

		String sql = "DELETE FROM product_info WHERE product_id = '" + productid + "'";
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

	// DBのproduct_infoテーブルからデータの削除処理を行うメソッド定義
	public void delete() {

		String sql = "DELETE FROM product_info";
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

	// 引数の商品データを元にDBのproduct_infoテーブルから該当商品データの更新処理を行うメソッド定義
	public void update(Product product) {

		String sql = "UPDATE product_info SET product_name='" + product.getProductname() + "',price="
				+ product.getPrice() + ",product_img='" + product.getImg() + "',stock=" + product.getStock()
				+ " WHERE product_id='" + product.getProductid() + "'";
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

	// 引数の各データを元にDBのproduct_infoテーブルから該当商品データの絞込み検索処理を行うメソッド定義
	public ArrayList<Product> search(String productid) {

		ArrayList<Product> productList = new ArrayList<Product>();
		String sql = "SELECT * FROM product_info " + "WHERE isbn LIKE '%" + productid + "%";
		Statement smt = null;
		Connection con = null;

		try {
			con = getConnection();
			smt = con.createStatement();
			ResultSet rs = smt.executeQuery(sql);
			while (rs.next()) {
				Product products = new Product();
				products.setProductid(rs.getString("product_id"));
				products.setProductname(rs.getString("product_name"));
				products.setStock(rs.getInt("stock"));
				products.setPrice(rs.getInt("price"));
				products.setImg(rs.getString("product_img"));
				productList.add(products);
			}
			return productList;
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
