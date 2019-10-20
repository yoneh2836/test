package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Customer;
import entity.PageBean;
import service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	// 查询所有用户信息
	@RequestMapping("/findAllCustomer")
	public String findAllCustomer(Model model) {
		List<Customer> list = customerService.findAllCustomer();
		model.addAttribute("customerList", list);
		return "customerList";
	}

	// 添加用户
	@RequestMapping("/addCustomer")
	public String addCustomer(Customer customer) {
		Customer a = customerService.findCustomerByCode(customer.getCustomer_code());
		if (a != null) {
			return "false";
		} else {
			int num = customerService.addCustomer(customer);
			if (num > 0) {
				return "success";
			} else
				return "false";
		}
	}

	// 删除用户
	@RequestMapping("/deleteCustomer")
	public String deleteCustomer(int Customer_code) {
		int num = customerService.deleteCustomer(Customer_code);
		if (num > 0) {
			return "customer";
		} else
			return "false";
	}

	@RequestMapping("/update")
	public String update(int customer_code, Model model) {
		Customer customer = customerService.findCustomerByCode(customer_code);
		model.addAttribute("customer", customer);
		return "customer";
	}

	// 修改用户信息
	@RequestMapping("/updateCustomer")
	public String updateCustomer(Customer customer) {
		int num = customerService.updateCustomer(customer);
		if (num > 0) {
			return "success";
		} else
			return "false";
	}
	
	//分页
	@RequestMapping("/pageinfo")
	public String findCustomerByPage(Model model,@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage) {
		if(currentPage<1) {
			currentPage=1;
			PageBean<Customer> list = (PageBean<Customer>) customerService.findCustomersByPage(currentPage);
			model.addAttribute("page", list);
			return "customer";
		}
		else {
			PageBean<Customer> list = (PageBean<Customer>) customerService.findCustomersByPage(currentPage);
			model.addAttribute("page", list);
			return "customer";
		}
	}
}
