package cn.edu.ptu.sharepicture.test.user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:mybatis-config.xml" })
public class UserServiceTest {

	@Resource
	private UserService userService;

	@Test
	public void insertTest() {
		User user = new User("王王王", "WWW", "123", "512370345@qq.com");
		boolean flag = userService.insertUser(user);
		System.out.println(flag);
	}

	@Test
	public void loginTest() {
		String isLock = userService.login("WWW", "123");
		System.out.println(isLock);
	}

	@Test
	public void updateUserTest() {
		User user = new User();
		user.setUserImage("头像暂未上传");
		user.setUserId("8ea7ede3a8ab4cbfb9819c5ed28460fb");
		boolean flag = userService.updateUser(user);
		System.out.println(flag);
	}
	
	@Test
	public void isRepeatTest() {
		boolean n=userService.isRepeat(null, "王王");
		System.out.println(n);
	}

}
