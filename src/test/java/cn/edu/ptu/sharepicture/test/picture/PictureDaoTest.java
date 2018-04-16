package cn.edu.ptu.sharepicture.test.picture;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.dao.PictureMapper;
import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:applicationContext.xml","classpath:mybatis-config.xml"})
public class PictureDaoTest {

	@Resource
	private PictureMapper pm;
	
	@Test
	public void insert() {
		String fSPath = "D://image/";
		File file=new File(fSPath);
		getPicture(file);
		
	}
	
	@Test
	public void select() {
		List<User> list=pm.getPicturesByKey(new SearchForm());
		for (User user : list) {
			System.out.println(user);
		}
	}
	
	public void getPicture(File file) {

		Picture picture=null;
		File[] files = file.listFiles();
		for (File f : files) {
			if (f.isFile()) {
				picture = new Picture();
				String id = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
				picture.setPictureId(id);
				picture.setUserId("8EA7EDE3A8AB4CBFB9819C5ED28460FB");
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
				String createTime = dateFormat.format(new Date());
				picture.setCreateTime(createTime);
				if(f.getName().indexOf(" ")>0)
				{
					picture.setPictureType("2");
				}else {
					picture.setPictureType("1");
				}
				String name=f.getName().split(" ")[0].split("_")[0];
				picture.setPictureName(name);
				picture.setPicturePath("static/image/"+f.getName());
				pm.insertPicture(picture);
			} else {
				getPicture(f);
			}
		}
	}

}
