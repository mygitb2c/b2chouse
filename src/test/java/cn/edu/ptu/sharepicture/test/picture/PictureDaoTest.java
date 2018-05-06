package cn.edu.ptu.sharepicture.test.picture;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:spring-mybatis.xml" })
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
		SearchForm sf = new SearchForm();

		List<User> list = pm.getPicturesByKey(sf);
		for (User user : list) {
			System.out.println(user.getPictures().get(0));
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
				picture.setAuthorId("8EA7EDE3A8AB4CBFB9819C5ED28460FB");
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String createTime = dateFormat.format(new Date()).substring(0, 17);
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
					int i = fis.available();
					byte[] data = new byte[i];
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

	@Test
	public void getPictureName() {
		String name = pm.getPictureName("246D9F870CD24994ABE88E6C9B2C91B9");
		System.out.println(name);
	}

	@Test
	public void getTotal() {
		SearchForm sf = new SearchForm();
		sf.setKey("王");
		int n = pm.getTotal(sf);
		System.out.println(n);
	}

	@Test
	public void getPicturesByKey_admin() {
		Picture picture = new Picture();
		picture.setPictureTitle("加利福");
		picture.setPictureId("ABBCFC08928D445DACC69729F5F2174E");
		User user = new User();
		List<User> lu = pm.getPicturesByKey_admin(user, picture, new SearchForm());
		for (User user2 : lu) {
			System.out.println(user2);
		}

	}

}
