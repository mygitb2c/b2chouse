package cn.edu.ptu.sharepicture.test.util;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.util.MD5Util;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:spring-mybatis.xml" })
public class MD5UntilTest {

	@Resource
	private MD5Util md5;

	@Test
	public void getStr() {
		String result = md5.getMD5Str("123456");
		System.out.println(result);
		System.out.println(result.equals("E10ADC3949BA59ABBE56E057F20F883E"));
	}

}
