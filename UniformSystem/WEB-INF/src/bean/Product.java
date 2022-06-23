package bean;

public class Product {

	// 変数準備
	private String productid; // 商品id
	private String productname; // 商品名
	private String img; // 商品画像
	private int stock; // 在庫数
	private int price; // 価格

	// コンストラクタ
	public Product() {
		this.productid = null;
		this.productname = null;
		this.img = null;
		this.stock = 0;
		this.price = 0;
	}

	// getter・setter
	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
