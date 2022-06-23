package bean;

public class OrderAdminItem {

	// 変数準備
	private String orderid; // 注文No
	private String username; // ユーザー名
	private String productname; // 商品名
	private int quantity; // 数量
	private String date; // 購入日付
	private String payment; // 入金状況（1：未入金、2：入金済み）
	private String shipping; // 配送状況（1：発送準備、2：発送済み）

	// コンストラクタ
	public OrderAdminItem() {
		this.orderid = null;
		this.username = null;
		this.productname = null;
		this.quantity = 0;
		this.date = null;
		this.payment = null;
		this.shipping = null;
	}

	// getter・setter
	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getShipping() {
		return shipping;
	}

	public void setShipping(String shipping) {
		this.shipping = shipping;
	}
}
