package cn.edu.ptu.sharepicture.test.picture;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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

}
