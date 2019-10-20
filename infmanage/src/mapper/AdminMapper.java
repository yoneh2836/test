package mapper;

import org.apache.ibatis.annotations.Param;

import entity.Admin;

public interface AdminMapper {
	
	//ͨ查询管理员账户及密码
	public Admin findAdmin(@Param("admin_code") String admin_code,@Param("admin_password") String admin_password);

}
