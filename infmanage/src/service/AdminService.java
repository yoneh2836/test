package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import entity.Admin;
import mapper.AdminMapper;

@Service
@Transactional
public class AdminService {
	@Autowired
	private AdminMapper adminMapper;
	
	public Admin findAdmin(String admin_code,String admin_password) {
		// TODO Auto-generated method stub
		return adminMapper.findAdmin(admin_code, admin_password);
	}
}
