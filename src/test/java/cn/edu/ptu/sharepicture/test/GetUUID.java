package cn.edu.ptu.sharepicture.test;

import java.util.UUID;

import org.junit.Test;

public class GetUUID {

	@Test
	public void get() {
		String uuid = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		System.out.println(uuid);
		String userId="04152F88B73A4794BF9DE22E89EF7428";
		System.out.println(userId.toUpperCase());
		System.out.println("04152F88B73A4794BF9DE22E89EF7428".length());
	}

}
