package cn.edu.ptu.sharepicture.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

public class ImageUtil {

	public static void getImage(HttpServletResponse response, String path) {
		FileInputStream fis = null;
		BufferedOutputStream bos = null;
		try {
			fis = new FileInputStream(new File(path));
			int i = fis.available();
			byte[] data = new byte[i];
			fis.read(data);
			bos = new BufferedOutputStream(response.getOutputStream());
			bos.write(data);
			bos.flush();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.err.println("未找到文件:" + path);
			/* e.printStackTrace(); */
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (fis != null) {
					fis.close();
				}
				if (bos != null) {
					bos.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
