package cn.edu.ptu.sharepicture.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.ptu.sharepicture.service.AdminService;

@Controller
public class AdminController {

	@Resource
	private AdminService as;

	@RequestMapping(value = "/admin/login")
	public String login() {
		return "adminSign";
	}

	@RequestMapping(value = "/admin")
	public String goHome(HttpSession session) {
		String path = "adHome";
		if (session.getAttribute("adminId") == null) {
			path = "adminSign";
		}
		return path;
	}

	@ResponseBody
	@RequestMapping(value = "/adminLogin")
	public boolean adminLogin(@RequestParam(value = "email") String email,
			@RequestParam(value = "password") String password, HttpSession session) {
		return as.adminLogin(email, password, session);
	}

}
