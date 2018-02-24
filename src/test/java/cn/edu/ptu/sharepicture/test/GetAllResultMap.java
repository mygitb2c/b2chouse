package cn.edu.ptu.sharepicture.test;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.User;

public class GetAllResultMap {

	public void getResultMap(Object obj) {
		boolean first = true;
		for (Field field : obj.getClass().getDeclaredFields()) {
			field.setAccessible(true);
			if (first) {
				System.out.println("<id property=\"" + field.getName() + "\" column=\"" + field.getName()
						+ "\" jdbcType=\"varchar\"/>");
				first = false;
			} else {
				System.out.println("<result property=\"" + field.getName() + "\" column=\"" + field.getName()
						+ "\" jdbcType=\"varchar\"/>");
			}
		}
		System.out.println("*************************************");
	}

	@Test
	public void demo() {
		List<Object> list = new ArrayList();
		list.add(new User());
		list.add(new Picture());
		list.add(new Message());
		for (Object object : list) {
			getResultMap(object);
		}
	}

}
