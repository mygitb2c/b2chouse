package cn.edu.ptu.sharepicture.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EntityTest {

	@Test
	public void test(){
		String resouce="applicationContext.xml";
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext(resouce);
		System.out.println("完成");
	}
	
}
