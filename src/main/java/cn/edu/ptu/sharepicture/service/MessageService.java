package cn.edu.ptu.sharepicture.service;

import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.MessageMapper;
import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;

@Service
public class MessageService {

	@Resource
	private MessageMapper mm;

	public boolean insert(Message msg) {
		String msgId = UUID.randomUUID().toString().replaceAll("-", "").toLowerCase();
		msg.setMessageId(msgId);
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

	public ReturnForm<Message> getMsgByKey(SearchForm sf) {
		ReturnForm<Message> rf = new ReturnForm<Message>();
		rf.setData(mm.getMsgByKey(sf));
		rf.setTotal(mm.getTotal(sf.getKey()));
		rf.setPage(sf.getPage());
		rf.setPageSize(sf.getPageSize());
		return rf;
	}

}
