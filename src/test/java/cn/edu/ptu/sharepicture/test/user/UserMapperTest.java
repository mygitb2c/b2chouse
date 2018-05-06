package cn.edu.ptu.sharepicture.test.user;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.dao.UserMapper;
import cn.edu.ptu.sharepicture.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:spring-mybatis.xml" })
public class UserMapperTest {

	@Resource
	private UserMapper userMapper;

	@Test
	public void getUserAndAlbum() {
		User u=userMapper.getUserAndAlbum("王王王");
		System.out.println(u);
	}
	
	@Test
	public void getAll(){
		List<User> list=userMapper.getAll();
		for (User user : list) {
			System.out.println(user);
		}
	}
	
	@Test
	public void login(){
		User u=userMapper.login("WWW", "1234");
		System.out.println(u);
	}

	@Test
	public void insertUser() {
		User user = new User();
		user.setUserId(UUID.randomUUID().toString().replaceAll("-", ""));
		user.setUserName("java小王子");
		user.setPassword("123");
		user.setEmail("891671286@qq.com");
		user.setCreateTime("20180124145122");
		boolean flag = userMapper.insertUser(user);
		System.out.println(flag);

	}
	@Test
	public void isRepeatTest() {
		boolean n=userMapper.isRepeat("512370345@qq.co", "");
		System.out.println(n);
	}
	@Test
	public void demo() {
		boolean email=false;
		System.out.println("email:"+(email==false));
	}
	
	@Test
	public void getUserNameByUserIdTest() {
		User u=userMapper.getUserInfo("BA7138C26B0544329F0CDDD931055CAF");
		System.out.println(u.toString());
	}
	
	

}
