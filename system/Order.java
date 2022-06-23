package bean;

public class Order {

	// 変数準備
	private String orderid; // 注文No
	private String userid; // ユーザID
	private String productid; // 商品id
	private int quantity; // 数量
	private String remarks; // 備考
	private String date; // 購入日付


	// コンストラクタ
	public Order() {
		this.orderid = null;
		this.userid = null;
		this.productid = null;
		this.quantity = 0;
		this.remarks = null;
		this.date = null;
	}

	// getter・setter
	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
