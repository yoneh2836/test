package service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Customer;
import entity.PageBean;
import mapper.CustomerMapper;

@Service
@Transactional
public class CustomerService {

	@Autowired
	private CustomerMapper customerMapper;
	
	//查询所有用户
	public List<Customer> findAllCustomer(){
		// TODO Auto-generated method stub
		return customerMapper.findAllCustomer();
	}
	
	//添加用户
	public int addCustomer(Customer customer) {
		return customerMapper.addCustomer(customer);
	}
	
	//删除用户
	public int deleteCustomer(int Customer_code) {
		return customerMapper.deleteCustomer(Customer_code);
	}
	
	//修改用户
	public int updateCustomer(Customer customer) {
		return customerMapper.updateCustomer(customer);
	}

	//code查询用户
	public Customer findCustomerByCode(int customer_code) {
		// TODO Auto-generated method stub
		return customerMapper.findCustomerByCode(customer_code);
	}

	//分页查询
	public PageBean<Customer> findCustomersByPage(int currentPage) {
		HashMap<String,Object> map = new HashMap<String,Object>();
        PageBean<Customer> pageBean = new PageBean<Customer>();

        //封装当前页数
        pageBean.setCurrentPage(currentPage);

        //每页显示的数据
        int pageSize=5;
        pageBean.setPageSize(pageSize);

        //封装总记录数
        int totalNum = customerMapper.findAllCustomersNum();
        pageBean.setTotalNum(totalNum);

        //封装总页数
        double tc = totalNum;
        Double num =Math.ceil(tc/pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());

        map.put("start",(currentPage-1)*pageSize);
        map.put("size", pageBean.getPageSize());
        //封装每页显示的数据
        List<Customer> list = customerMapper.findCustomersByPage(map);
        pageBean.setList(list);
        return pageBean;
	}
}
