package bean;

public class OrderUserItem {

	// 変数準備
	private String userid; // ユーザID
	private String productname; // 商品名
	private String date; // 購入日付

	// コンストラクタ
	public OrderUserItem() {
		this.userid = null;
		this.productname = null;
		this.date = null;
	}

	// getter・setter
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
