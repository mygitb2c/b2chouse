package cn.edu.ptu.sharepicture.test.util;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.util.MD5Util;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:mybatis-config.xml" })
public class MD5UntilTest {

	@Resource
	private MD5Util md5;
	
	@Test
	public void getStr() {
		String result=md5.getMD5Str("567");
		System.out.println(result);
		System.out.println(result.equals("99C5E07B4D5DE9D18C350CDF64C5AA3D"));
	}
	
}
