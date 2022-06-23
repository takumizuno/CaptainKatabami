package bean;

public class User {

	// 変数準備
	private String userid; // ユーザーID
	private String password; // パスワード
	private String username; // ユーザー名
	private String email; // メールアドレス
	private String address; // 住所
	private String authority; // 権限（1：管理者、2：一般ユーザー）

	// コンストラクタ
	public User() {
		this.userid = null;
		this.password = null;
		this.username = null;
		this.email = null;
		this.address = null;
		this.authority = null;
	}

	// getter・setter
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

}
