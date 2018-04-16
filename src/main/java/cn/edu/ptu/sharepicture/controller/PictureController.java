package cn.edu.ptu.sharepicture.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.PictureService;

@Controller
public class PictureController {

	@Resource
	private PictureService ps;

	@RequestMapping(value = "/")
	public String index() {
		return "forward:main.jsp";
	}

	@RequestMapping(value = "pictureInfo/{pId}")
	public ModelAndView getPictureInfo(@PathVariable(value = "pId") String pictureId, ModelAndView modelAndView) {
		modelAndView.setViewName("pictureInfo");
		User u = ps.getPictureById(pictureId);
		System.out.println(u);
		modelAndView.addObject("picture", u);
		return modelAndView;
	}

	@RequestMapping(value = "picList_key")
	@ResponseBody
	public List<User> getPictureByKey(SearchForm sf) {
		return ps.getPicturesByKey(sf);
	}

	@RequestMapping(value = "picList_uId")
	@ResponseBody
	public List<User> getPictureByUserId(SearchForm sf) {
		return ps.getPicturesByUserId(sf);
	}

	@RequestMapping(value = "insert")
	@ResponseBody
	public boolean insert(Picture picture, @RequestParam(value = "img") MultipartFile img, HttpServletRequest request) {
		String path = request.getRealPath("static/picture") + "/" + img.getOriginalFilename();
		File file = new File(path);
		try {
			FileUtils.copyInputStreamToFile(img.getInputStream(), file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		picture.setPicturePath(path);
		return ps.insertPicture(picture);
	}
}
