package cn.edu.ptu.sharepicture.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.MessageService;

@Controller
public class MessageController {

	@Resource
	private MessageService ms;

	@ResponseBody
	@RequestMapping(value = "msg/insert")
	public boolean insert(Message msg) {
		return ms.insert(msg);
	}

	@ResponseBody
	@RequestMapping(value = "msg/pId")
	public ReturnForm<Message> getMsgsByPId(SearchForm sf) {
		return ms.getMsgsByPId(sf);
	}

}
