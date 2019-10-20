package mapper;

import java.util.HashMap;
import java.util.List;

import entity.Customer;

public interface CustomerMapper {

	//查询所有用户
	public List<Customer> findAllCustomer();
	
	//查询所有用户数量
	public int findAllCustomersNum();
	
	//账号查询用户
	public Customer findCustomerByCode(int customer_code);
	
	//添加用户
	public int addCustomer(Customer customer);
	
	//账号删除用户
	public int deleteCustomer(int Customer_code);
	
	//修改用户信息
	public int updateCustomer(Customer customer);
	
	//分页查询
	public List<Customer> findCustomersByPage(HashMap<String,Object> map);
}
