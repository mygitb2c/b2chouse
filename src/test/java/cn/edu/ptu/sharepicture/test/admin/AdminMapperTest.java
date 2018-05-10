package cn.edu.ptu.sharepicture.test.admin;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.dao.AdminMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:spring-mybatis.xml" })
public class AdminMapperTest {

	@Resource
	private AdminMapper am;
	
	@Test
	public void Login() {
	String id=am.adminLogin("512370345@qq.com", "202CB962AC59075B964B07152D234B70");
	System.out.println(id);
	}
	
}
