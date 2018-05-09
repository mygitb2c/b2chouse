package cn.edu.ptu.sharepicture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.ptu.sharepicture.entity.Message;
import cn.edu.ptu.sharepicture.service.MessageService;

@Controller
public class MessageController {

	private MessageService ms;

	@ResponseBody
	@RequestMapping(value = "msg/insert")
	public boolean insert(Message msg) {
		return ms.insert(msg);
	}
	

}
