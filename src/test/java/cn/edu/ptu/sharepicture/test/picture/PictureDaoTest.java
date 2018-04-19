package cn.edu.ptu.sharepicture.test.picture;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.dao.PictureMapper;
import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:mybatis-config.xml" })
public class PictureDaoTest {

	@Resource
	private PictureMapper pm;
	@Value("${picture_path}")
	private String picPath;

	@Test
	public void insert() {
		String fSPath = "D://potp截图/";
		File file = new File(fSPath);
		getPicture(file);

	}

	@Test
	public void select() {
		List<User> list = pm.getPicturesByKey(new SearchForm());
		for (User user : list) {
			System.out.println(user);
		}
	}

	public void getPicture(File file) {

		Picture picture = null;
		File[] files = file.listFiles();
		for (File f : files) {
			if (f.isFile()) {
				picture = new Picture();
				String type = f.getName().substring(f.getName().lastIndexOf("."));
				String id = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				int clickCount = (int) (Math.random() * 99) + 1;
				picture.setClickCount(clickCount + "");
				int download = (int) (Math.random() * 99) + 1;
				picture.setDownload(download + "");
				picture.setPictureId(id);
				picture.setUserId("8EA7EDE3A8AB4CBFB9819C5ED28460FB");
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
				String createTime = dateFormat.format(new Date()).substring(12, 14);
				int ss = (int) (Math.random() * 51) + 10;
				createTime += ss + "";
				picture.setCreateTime(createTime);
				if (f.getName().indexOf(" ") > 0) {
					picture.setPictureType("2");
				} else {
					picture.setPictureType("1");
				}
				String title = f.getName().split(" ")[0].split("_")[0];
				picture.setPictureTitle(title);
				picture.setPictureName(id + type);
				pm.insertPicture(picture);
				try {
					FileInputStream fis = new FileInputStream(f);
					int i=fis.available();
					byte[] data=new byte[i];
					fis.read(data);
					fis.close();
					FileOutputStream fos = new FileOutputStream(new File(picPath + id + type));
					fos.write(data);
					fos.flush();
					fos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				getPicture(f);
			}
		}
	}

}
