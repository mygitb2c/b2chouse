package cn.edu.ptu.sharepicture.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.AdminMapper;
import cn.edu.ptu.sharepicture.util.MD5Util;

@Service
public class AdminService {

	@Resource
	private AdminMapper am;

	public boolean adminLogin(String email, String password, HttpSession session) {
		boolean flg = false;
		password=MD5Util.getMD5Str(password);
		String adminId = am.adminLogin(email, password);
		if (adminId != null && adminId.length() > 0) {
			session.setAttribute("adminId", adminId);
			flg = true;
		}
		return flg;
	}

}
