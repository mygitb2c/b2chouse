package cn.edu.ptu.sharepicture.service;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.MessageMapper;
import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;

@Service
public class MessageService {

	private MessageMapper mm;

	public boolean insert(Message msg) {
		return mm.insertMessage(msg);
	}

	public ReturnForm<Message> getMsgsByPId(SearchForm sf) {
		ReturnForm<Message> rf = new ReturnForm<Message>();
		rf.setData(mm.getMsgsByPId(sf));
		rf.setTotal(mm.getTotal(sf.getKey()));
		rf.setPage(sf.getPage());
		rf.setPageSize(sf.getPageSize());
		return rf;

	}

}
