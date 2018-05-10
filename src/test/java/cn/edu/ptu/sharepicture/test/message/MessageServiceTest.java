package cn.edu.ptu.sharepicture.test.message;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.MessageService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:spring-mybatis.xml" })
public class MessageServiceTest {

	@Resource
	private MessageService ms;

	@Test
	public void insert() {
		Message msg=new Message();
		msg.setPictureId("F461E3081EAB42FF9619958A9631C396");
		msg.setSenderId("79DC6FA4F265451E8C2947E26FFC7713");
		msg.setContent("非常棒！！");
		msg.setStar(5);
		msg.setBgColor("#fff");
		boolean flg=ms.insert(msg);
		System.out.println(flg);
	}
	
	@Test
	public void getMsgsByPId() {
		SearchForm sf=new SearchForm();
		sf.setKey("F461E3081EAB42FF9619958A9631C396");
		ReturnForm<Message> rf=ms.getMsgsByPId(sf);
		System.out.println(rf.getData());
	}
	
}
