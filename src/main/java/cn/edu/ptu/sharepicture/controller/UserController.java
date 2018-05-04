package cn.edu.ptu.sharepicture.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.UserService;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping(value = "login")
	public String toLoginWeb(HttpServletRequest request) {
		String addr = request.getRemoteAddr() + ":" + request.getRemotePort() + request.getContextPath();
		System.out.println("addr:" + addr);
		System.out.println("referer:" + request.getHeader("referer"));
		return "forward:login.jsp";
	}

	@RequestMapping(value = "register")
	public String toRegisterWeb() {
		return "forward:register.jsp";
	}

	@RequestMapping(value = "exit")
	public String exit(HttpSession session) {
		session.removeAttribute("userId");
		return "redirect:/";
	}

	@RequestMapping(value = "my")
	public String showUserInfo(HttpSession session, HttpServletRequest request) {
		String path = "redirect:login";
		String userId = String.valueOf(session.getAttribute("userId"));
		if (userId != null && userId.trim().length() > 0) {
			User user = userService.getUserInfo(userId);
			if (user != null) {
				user.setUserId(userId);
				request.setAttribute("user", user);
				path = "userInfo";
			}
		}
		return path;
	}

	@ResponseBody
	@RequestMapping(value = "isRepeat", method = RequestMethod.GET)
	public boolean isRepeat(@Param(value = "email") String email, @Param(value = "userName") String userName) {
		boolean flag = userService.isRepeat(email, userName);
		return flag;
	}

	@RequestMapping(value = "userRegister", method = RequestMethod.POST)
	public String registered(User user, HttpSession session) {
		String path = "forward:/";
		String userId = userService.insertUser(user);
		if (userId != null) {
			session.setAttribute("userId", userId);
		} else {
			path += "register";
		}
		return path;
	}

	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
	@ResponseBody
	public User login(@Param(value = "email") String email, @Param(value = "password") String password,
			HttpSession session) {
		User u = userService.login(email, password, session);
		return u;
	}

	@ResponseBody
	@RequestMapping(value = "updateUser", method = RequestMethod.PUT)
	public boolean updateUser(User user) {
		boolean flag = userService.updateUser(user);
		return flag;
	}

	@ResponseBody
	@RequestMapping(value = "updatePWD", method = RequestMethod.PUT)
	public boolean updatePassword(User user, @Param(value = "new_pwd") String new_pwd) {
		boolean flag = userService.updatePassword(user, new_pwd);
		return flag;
	}

}
