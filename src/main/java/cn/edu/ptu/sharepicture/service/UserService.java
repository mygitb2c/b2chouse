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
	public String insertUser(User user) {
		String userId = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String createTime = dateFormat.format(new Date());
		String password = user.getPassword();
		user.setUserId(userId);
		user.setCreateTime(createTime);
		user.setPassword(MD5Util.getMD5Str(password));
		if(userMapper.insertUser(user))
		{
			return userId;
		}
		return null;
	}

	/**
	 * 用户登录
	 * 
	 * @param account
	 * @param password
	 * @return
	 */
	public boolean login(String email, String password, HttpSession session) {
		password = MD5Util.getMD5Str(password);
		boolean result=false;
		String userId = userMapper.login(email, password);
		if (userId!=null) {
			session.setAttribute("userId", userId);
			result=true;
		}
		return result;
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

	/**
	 * 判断用户名或用户邮箱是否已存在
	 * 
	 * @param email
	 * @param userName
	 * @return
	 */
	public boolean isRepeat(String email, String userName) {
		return userMapper.isRepeat(email, userName);
	}

	/**
	 * 获取用户基础信息
	 * @param userId
	 * @return
	 */
	public User getUserInfo(String userId) {
		User user = userMapper.getUserInfo(userId);
		return user;
	}
	
	public String getUserImage(String userId)
	{
		return userMapper.getUserImage(userId);
	}
	
	public boolean changeUserImage(String userId,String userImage) {
		return userMapper.changeUserImage(userId, userImage);
	}

}
