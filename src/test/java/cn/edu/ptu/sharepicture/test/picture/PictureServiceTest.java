package cn.edu.ptu.sharepicture.test.picture;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.PictureService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:spring-mybatis.xml" })
public class PictureServiceTest {

	@Resource
	private PictureService ps;

	@Test
	public void getPicturesByKey() {
		SearchForm sf = new SearchForm();
		sf.setKey("王");
		ReturnForm<User> rf = ps.getPicturesByKey(sf);
		System.out.println(rf);
	}

	@Test
	public void getPicturesByKey_admin() {
		Picture picture = new Picture();
		picture.setPictureTitle("");
		User user = new User();
		user.setUserName("");
		picture.setAuthorId("8EA7EDE3A8AB4CBFB9819C5ED28460FB");
		ReturnForm<User> rf = ps.getPicturesByKey_admin(user, picture, new SearchForm());
		for (User u : rf.getData()) {
			System.out.println(u);
		}
	}

	@Test
	public void updateNum() {
		String pictureId = "B94AAB2B57B54B2C8E32439A7192DF5E";
		boolean d = ps.updataDownload(pictureId);
		boolean c = ps.updataClick(pictureId);
		System.out.println(d + "," + c);
	}
	
	@Test
	public void getDownload() {
		String pictureId = "B94AAB2B57B54B2C8E32439A7192DF5E";
		int download=ps.getDownload(pictureId);
		System.out.println(download);
	}
}
