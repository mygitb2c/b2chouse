package cn.edu.ptu.sharepicture.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Component;
/**
 * MD5加密
 * @author Nachi
 *
 */
@Component
public class MD5Util {

	/**
	 * 对字符串进行MD5计算
	 * @param str
	 * @return
	 */
	public static String getMD5Str(String str) {
		MessageDigest md=null;
		try {
			md=MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new BigInteger(1, md.digest()).toString(16).toUpperCase();
	}
	
}
