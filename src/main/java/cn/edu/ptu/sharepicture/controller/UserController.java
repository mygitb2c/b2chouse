package cn.edu.ptu.sharepicture.controller;

import javax.annotation.Resource;

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
	public String toLoginWeb() {
		return "forward:login.jsp";
	}

	@RequestMapping(value = "register")
	public String toRegisterWeb() {
		return "forward:register.jsp";
	}
	@ResponseBody
	@RequestMapping(value = "isRepeat",method=RequestMethod.GET)
	public String isRepeat(@RequestParam(value = "email",required=false) String email, @RequestParam(value = "email",required=false) String userName) {
		boolean flag=userService.isRepeat(email, userName);
		return String.valueOf(flag);
	}

	@ResponseBody
	@RequestMapping(value = "userRegister", method = RequestMethod.POST)
	public boolean registered(User user) {
		return userService.insertUser(user);
	}

	@RequestMapping(value = "userLogin", method = RequestMethod.POST)
	@ResponseBody
	public String login(@Param(value = "email") String email, @Param(value = "password") String password) {
		return userService.login(email, password);
	}

	@ResponseBody
	@RequestMapping(value = "updateUser", method = RequestMethod.PUT)
	public boolean updateUser(User user) {
		return userService.updateUser(user);
	}

	@ResponseBody
	@RequestMapping(value = "updatePWD", method = RequestMethod.PUT)
	public boolean updatePassword(User user, @Param(value = "new_pwd") String new_pwd) {
		return userService.updatePassword(user, new_pwd);
	}

}
