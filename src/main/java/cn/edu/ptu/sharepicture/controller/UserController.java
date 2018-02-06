package cn.edu.ptu.sharepicture.controller;

import javax.annotation.Resource;

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

	@ResponseBody
	@RequestMapping(value = "userRegistered", method = RequestMethod.POST)
	public boolean registered(User user) {
		return userService.insertUser(user);
	}

	@ResponseBody
	@RequestMapping(value = "userLogin", method = RequestMethod.GET)
	public String login(String account, String password) {
		return userService.login(account, password);
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
