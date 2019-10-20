package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import entity.Admin;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		// 获取当前请求的url
		String url = request.getRequestURI();
		// 对登陆跳转路径和登陆处理路径进行放行
		if (url.indexOf("/index") > 0 || url.indexOf("/login") > 0||url.indexOf("/pageinfo") > 0) {
			return true;
		}
		// 获取session
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		if (admin != null) {
			return true;
		}else {
		request.setAttribute("msg", "你还没有登陆，请先登录");
		// 登陆者信息不存在，跳转到登录界面
		request.getRequestDispatcher("/WEB.INF/jsp/login.jsp").forward(request, response);		
		return false;   
		}
	}  

}
