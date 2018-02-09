package cn.edu.ptu.sharepicture.controller;

import java.util.Enumeration;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

	@ResponseBody
	@RequestMapping(value = "isRepeat", method = RequestMethod.GET)
	public String isRepeat(@Param(value = "email") String email, @Param(value = "userName") String userName) {
		boolean flag = userService.isRepeat(email, userName);
		return String.valueOf(flag);
	}

	@ResponseBody
	@RequestMapping(value = "userRegister", method = RequestMethod.POST)
	public String registered(User user) {
		boolean flag = userService.insertUser(user);
		return String.valueOf(flag);
	}

	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
	@ResponseBody
	public String login(@Param(value = "email") String email, @Param(value = "password") String password) {
		return userService.login(email, password);
	}

	@ResponseBody
	@RequestMapping(value = "updateUser", method = RequestMethod.PUT)
	public String updateUser(User user) {
		boolean flag = userService.updateUser(user);
		return String.valueOf(userService.updateUser(user));
	}

	@ResponseBody
	@RequestMapping(value = "updatePWD", method = RequestMethod.PUT)
	public String updatePassword(User user, @Param(value = "new_pwd") String new_pwd) {
		boolean flag = userService.updatePassword(user, new_pwd);
		return String.valueOf(flag);
	}

}
