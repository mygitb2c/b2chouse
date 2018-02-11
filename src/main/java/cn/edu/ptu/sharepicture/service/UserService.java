package cn.edu.ptu.sharepicture.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.UserMapper;
import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.util.MD5Util;

@Service
public class UserService {

	@Resource
	private UserMapper userMapper;

	/**
	 * 录入用户信息
	 * 
	 * @param user
	 *            (userName,account,password,email)
	 * @return
	 */
	public boolean insertUser(User user) {
		String userId = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String createTime = dateFormat.format(new Date());
		String password = user.getPassword();
		user.setUserId(userId);
		user.setCreateTime(createTime);
		user.setPassword(MD5Util.getMD5Str(password));
		return userMapper.insertUser(user);
	}

	/**
	 * 用户登录
	 * 
	 * @param account
	 * @param password
	 * @return
	 */
	public User login(String email, String password, HttpSession session) {
		password = MD5Util.getMD5Str(password);
		User u = userMapper.login(email, password);
		if (u != null) {
			if (u.getIsLock() == "Y") {
				u.setUserId(null);
			} else {
				session.setAttribute("userId", u.getUserId());
			}
		}
		return u;
	}

	/**
	 * 更新用户信息
	 * 
	 * @param user
	 *            (userId,sex,userImage)
	 * @return
	 */
	public boolean updateUser(User user) {
		return userMapper.updateUser(user);
	}

	/**
	 * 用户修改密码
	 * 
	 * @param user
	 *            (userId,password)
	 * @param new_pwd
	 *            新密码
	 * @return
	 */
	public boolean updatePassword(User user, String new_pwd) {
		String password = MD5Util.getMD5Str(user.getPassword());
		user.setPassword(password);
		new_pwd = MD5Util.getMD5Str(new_pwd);
		return userMapper.updatePassword(user, new_pwd);
	}

	public boolean isRepeat(String email, String userName) {
		return userMapper.isRepeat(email, userName);
	}

}
