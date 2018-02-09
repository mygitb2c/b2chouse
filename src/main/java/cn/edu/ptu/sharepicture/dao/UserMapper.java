package cn.edu.ptu.sharepicture.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import cn.edu.ptu.sharepicture.entity.User;

/**
 * User 持久层
 * 
 * @author WHJ
 *
 */
public interface UserMapper {

	/**
	 * 获取所有用户信息
	 * 
	 * @return 集合
	 */
	List<User> getAll();

	/**
	 * 录入用户信息
	 * 
	 * @param user
	 *            (userId,userName,account,passwor,email,createTime)
	 * @return
	 */
	boolean insertUser(User user);

	/**
	 * 查询特定用户
	 * 
	 * @param userName
	 * @return
	 */
	User getUserAndAlbum(@Param(value = "userName") String userName);

	/**
	 * 用户登录方法
	 * 
	 * @param account
	 * @param password
	 * @return isLock
	 */
	String login(@Param(value = "email") String email, @Param(value = "password") String password);

	/**
	 * 更新用户信息
	 * 
	 * @param user
	 *            (userId,sex,userImage)
	 * @return
	 */
	boolean updateUser(User user);

	/**
	 * 用户修改密码
	 * 
	 * @param user
	 *            (userId,password)
	 * @param new_pwd
	 *            新密码
	 * @return
	 */
	boolean updatePassword(User user, @Param(value = "new_pwd") String new_pwd);

	boolean isRepeat(@Param(value = "email") String email, @Param(value = "userName") String userName);
}
