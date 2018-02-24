package cn.edu.ptu.sharepicture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PictureController {

	@RequestMapping(value = "index")
	public String index() {
		return "forward:main.jsp";
	}

}
