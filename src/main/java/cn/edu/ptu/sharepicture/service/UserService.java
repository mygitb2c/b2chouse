package cn.edu.ptu.sharepicture.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.UserMapper;
import cn.edu.ptu.sharepicture.entity.User;

@Service
public class UserService {

	@Resource
	private UserMapper userMapper;

	/**
	 * 录入用户信息
	 * 
	 * @param user
	 *            (userName,account,passwor,email)
	 * @return
	 */
	public boolean insertUser(User user) {
		String userId = UUID.randomUUID().toString().replaceAll("-", "");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String createTime = dateFormat.format(new Date());
		user.setUserId(userId);
		user.setCreateTime(createTime);
		return userMapper.insertUser(user);
	}

	/**
	 * 用户登录
	 * 
	 * @param account
	 * @param password
	 * @return
	 */
	public String login(String email, String password) {
		return userMapper.login(email, password);
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
		return userMapper.updatePassword(user, new_pwd);
	}

	public boolean isRepeat(String email, String userName) {
		return userMapper.isRepeat(email,userName);
	}

}
