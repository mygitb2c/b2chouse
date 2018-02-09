package cn.edu.ptu.sharepicture.test;

import java.util.UUID;

import org.junit.Test;

public class GetUUID {

	@Test
	public void get() {
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		System.out.println(uuid);
	}

}
