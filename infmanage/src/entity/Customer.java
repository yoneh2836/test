package entity;

public class Customer {

	private int customer_code;
	private String customer_name;
	private String customer_adress;
	private String customer_phone;
	private String customer_password;
	private double customer_allmoney;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int customer_code, String customer_name, String customer_adress, String customer_phone,
			String customer_password, double customer_allmoney) {
		super();
		this.customer_code = customer_code;
		this.customer_name = customer_name;
		this.customer_adress = customer_adress;
		this.customer_phone = customer_phone;
		this.customer_password = customer_password;
		this.customer_allmoney = customer_allmoney;
	}
	@Override
	public String toString() {
		return "Customer [customer_code=" + customer_code + ", customer_name=" + customer_name + ", customer_adress="
				+ customer_adress + ", customer_phone=" + customer_phone + ", customer_password=" + customer_password
				+ ", customer_allmoney=" + customer_allmoney + "]";
	}
	public int getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(int customer_code) {
		this.customer_code = customer_code;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_adress() {
		return customer_adress;
	}
	public void setCustomer_adress(String customer_adress) {
		this.customer_adress = customer_adress;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getCustomer_password() {
		return customer_password;
	}
	public void setCustomer_password(String customer_password) {
		this.customer_password = customer_password;
	}
	public double getCustomer_allmoney() {
		return customer_allmoney;
	}
	public void setCustomer_allmoney(double customer_allmoney) {
		this.customer_allmoney = customer_allmoney;
	}
	
}
