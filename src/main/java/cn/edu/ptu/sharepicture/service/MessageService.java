package cn.edu.ptu.sharepicture.service;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.MessageMapper;
import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;

@Service
public class MessageService {

	private MessageMapper mm;

	public boolean insert(Message msg) {
		return mm.insertMessage(msg);
	}

	public ReturnForm<User> getMsgsByPId(SearchForm sf) {
		ReturnForm<User> rf = new ReturnForm<User>();
		rf.setData(mm.getMsgsByPId(sf));
		rf.setTotal(mm.getTotal(sf.getKey()));
		rf.setPage(sf.getPage());
		rf.setPageSize(sf.getPageSize());
		return rf;

	}

}
