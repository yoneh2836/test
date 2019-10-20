package controller;

import java.io.IOException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import entity.Admin;
import listener.SessionListener;
import service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping("/index")
	public String index() {
		return "login";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}

	@RequestMapping("/login")
	public String findAdmin(HttpServletRequest request, HttpServletResponse response, String admin_password,
			String admin_code, Model model, HttpSession session) {

		session = request.getSession();
		Admin admin = adminService.findAdmin(admin_code, admin_password);
		
		if (admin != null) {
			Boolean hasLogin = SessionListener.checkIfHasLogin(admin);
			if (!hasLogin) {
				// 手动设置session的有效期为分钟
				String sessionId = session.getId();
				Cookie cookie = new Cookie("JSESSIONID", sessionId);
				cookie.setMaxAge(60 * 30);
				cookie.setPath(request.getContextPath());
				response.addCookie(cookie);
				
				// 比较保存所有用户session的静态变量中，是否含有当前session的键值映射，如果含有就删除
				if (SessionListener.containsKey(sessionId)) {
					SessionListener.removeSession(sessionId);
				}
				// 把当前用户封装的session按sessionID和session进行键值封装，添加到静态变量map中。
				SessionListener.addAdminSession(session);

				// 如果没有重复登录，则将该登录的用户信息添加入admin中
				session.setAttribute("admin", admin);

				return "redirect:/main";
			} else {
				model.addAttribute("msg", "该账号已登录，请勿重复登录");
				return "login";
			}
		} else {
			model.addAttribute("msg", "账号或密码错误或用户不存在，请重新输入");
			return "login";
		}
	}

	// 退出
	@RequestMapping("/logout")
	public void logout(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		session = request.getSession(false);
		if (session == null) {
			// 没登录，重定向到首页
			String url = response.encodeRedirectURL(request.getContextPath()  
		              + "/index.jsp");  
		    response.sendRedirect(url);
		}
		// 从session中移除登录状态
		session.removeAttribute("admin");

		String url = response.encodeRedirectURL(request.getContextPath()  
	              + "/index.jsp");  
	    response.sendRedirect(url);
	}

}