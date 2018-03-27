package cn.edu.ptu.sharepicture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.ptu.sharepicture.entity.Picture;

@Controller
public class PictureController {

	@RequestMapping(value = "/")
	public String index() {
		return "forward:main.jsp";
	}

	@RequestMapping(value = "pictureInfo/{pId}")
	public ModelAndView getPictureInfo(@PathVariable(value = "pId") String pictureId, ModelAndView modelAndView) {
		modelAndView.setViewName("pictureInfo");
		Picture p = new Picture();
		p.setPictureId(pictureId);
		System.out.println(pictureId);
		return modelAndView;
	}

}
