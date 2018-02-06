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
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:mybatis-config.xml" })
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
			System.out.println(user.getUserImage()==null);
		}
	}
	
	@Test
	public void login(){
		String isLock=userMapper.login("WWW", "1234");
		System.out.println(isLock);
	}

	@Test
	public void insertUser() {
		User user = new User();
		user.setUserId(UUID.randomUUID().toString().replaceAll("-", ""));
		user.setUserName("java小王子");
		user.setAccount("lhb");
		user.setPassword("123");
		user.setSex("男");
		user.setEmail("891671286@qq.com");
		user.setUserImage("");
		user.setCreateTime("20180124145122");
		user.setIsLock("N");
		boolean flag = userMapper.insertUser(user);
		System.out.println(flag);

	}

}
