package entity;

public class Admin {

	private int admin_code;
	private String admin_name;
	private String admin_password;
	private int admin_value;
	private String admin_session;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "admin [admin_code=" + admin_code + ", admin_name=" + admin_name + ", admin_password=" + admin_password
				+ ", admin_value=" + admin_value + ", admin_session=" + admin_session + "]";
	}
	public int getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(int admin_code) {
		this.admin_code = admin_code;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public int getAdmin_value() {
		return admin_value;
	}
	public void setAdmin_value(int admin_value) {
		this.admin_value = admin_value;
	}
	public String getAdmin_session() {
		return admin_session;
	}
	public void setAdmin_session(String admin_session) {
		this.admin_session = admin_session;
	}
	public Admin(int admin_code, String admin_name, String admin_password, int admin_value, String admin_session) {
		super();
		this.admin_code = admin_code;
		this.admin_name = admin_name;
		this.admin_password = admin_password;
		this.admin_value = admin_value;
		this.admin_session = admin_session;
	}
}
