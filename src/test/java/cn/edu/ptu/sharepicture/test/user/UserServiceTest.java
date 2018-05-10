package cn.edu.ptu.sharepicture.test.user;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:spring-mybatis.xml" })
public class UserServiceTest {

	@Resource
	private UserService userService;

	@Test
	public void insertTest() {
		String[] names = new String[] { "王王王", "阿斯达", "考拉", "海艺大厦", "超级管理员", "史蒂夫" };
		String[] emails = new String[] { "www", "asd", "kola", "stupid", "admin", "sdf" };
		for (int i = 0; i < names.length; i++) {
			User user = new User(names[i], "123456", emails[i]+"@qq.com");
			String userId = userService.insertUser(user);
			System.out.println(userId);
		}
	}

	@Test
	public void loginTest() {
		boolean result = userService.login("512370345@qq.com", "123456", null);
		System.out.println(result);
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
		boolean n = userService.isRepeat(null, "王王");
		System.out.println(n);
	}

}
