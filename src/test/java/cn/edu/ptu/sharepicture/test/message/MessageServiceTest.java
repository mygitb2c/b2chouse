package cn.edu.ptu.sharepicture.test.message;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.ptu.sharepicture.dao.PictureMapper;
import cn.edu.ptu.sharepicture.dao.UserMapper;
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
	@Resource
	private UserMapper um;
	@Resource
	private PictureMapper pm;

	@Test
	public void insert() {
		List<User> list = um.getUserListByKey(new SearchForm());
		String[] contents = new String[] { "非常棒！！水电费看是打发斯蒂芬见程序多负登山屐，是第三方分公司答复，市场都是分散如自行车v",
				"按时丢弃我的付出发的感受到法国多少需，萨达是否大是大非。大地飞歌！！！！", "啊啊所大若翁额外我的撒地方是，都是分散的阿斯达我",
				"阿萨德若收到辅导，阿斯达萨多是萨芬框架萨芬IUDFJSDF，阿斯蒂芬味儿" };
		String[] bgs = new String[] { "#E8E8FF", "#E8D098", "#336699", "#6699CC", "#00B271", "#F2F1D7" };
		String[] colos = new String[] { "#fff", "#6a6ab9", "#fff", "#fff", "#fff", "#444" };
		SearchForm sf = new SearchForm();
		sf.setPageSize(139);
		List<User> ulist = pm.getPicturesByKey(sf);
		boolean flg = true;
		for (int i = 0; i < 400; i++) {
			int pindex = (int) (Math.random() * ulist.size());
			int index = (int) (Math.random() * contents.length);
			int user = (int) (Math.random() * list.size());
			int star = (int) (Math.random() * 5 + 1);
			int cindex = (int) (Math.random() * bgs.length);
			Message msg = new Message();
			msg.setPictureId(ulist.get(pindex).getPictures().get(0).getPictureId());
			msg.setSenderId(list.get(user).getUserId());
			msg.setContent("<font style='color:" + colos[cindex] + "'>" + contents[index] + "</font>");
			msg.setStar(star);
			msg.setBgColor(bgs[cindex]);
			flg &= ms.insert(msg);
		}
		System.out.println(flg);
	}

	@Test
	public void getMsgsByPId() {
		SearchForm sf = new SearchForm();
		sf.setKey("293328BDE8C0416098C326DBB59C3F4F");
		ReturnForm<Message> rf = ms.getMsgsByPId(sf);
		System.out.println(rf);
	}

	@Test
	public void getMessageByKey() {
		SearchForm sf = new SearchForm();
		ReturnForm<Message> rf = ms.getMsgByKey(sf);
		System.out.println(rf.getData());
	}
	
	@Test
	public void getTotal() {
		int n=ms.getTotal("293328BDE8C0416098C326DBB59C3F4F");
		System.out.println(n);
	}

}
