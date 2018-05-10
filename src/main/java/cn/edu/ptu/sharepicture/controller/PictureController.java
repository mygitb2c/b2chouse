package cn.edu.ptu.sharepicture.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.ptu.sharepicture.entity.Page;
import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.PictureService;
import cn.edu.ptu.sharepicture.util.ImageUtil;

@Controller
public class PictureController {

	@Value("${picture_path}")
	private String prePath;

	@Resource
	private PictureService ps;

	@RequestMapping(value = "/form")
	public String demo() {
		return "form";
	}

	@RequestMapping(value = { "/", "main" })
	public String index() {
		return "forward:main.jsp";
	}

	@RequestMapping(value = "/share")
	public String share() {
		return "sharepicture";
	}

	@RequestMapping(value = "picture/{pId}")
	public ModelAndView getPictureInfo(@PathVariable(value = "pId") String pictureId, ModelAndView modelAndView) {
		modelAndView.setViewName("picture");
		User u = ps.getPictureById(pictureId);
		modelAndView.addObject("picture", u.getPictures().get(0));
		modelAndView.addObject("authorName", u.getUserName());
		return modelAndView;
	}

	@RequestMapping(value = "picList_key")
	@ResponseBody
	public ReturnForm<User> getPictureByKey(SearchForm sf) {
		return ps.getPicturesByKey(sf);
	}

	@RequestMapping(value = "picList_uId")
	@ResponseBody
	public List<User> getPictureByUserId(SearchForm sf) {
		return ps.getPicturesByAuthorId(sf);
	}

	@RequestMapping(value = "insert")
	@ResponseBody
	@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
	public String insert(Picture picture, @RequestParam(value = "img") MultipartFile img, HttpServletRequest request) {
		/*
		 * HttpSession session=request.getSession(); String
		 * authorId=session.getAttribute("userId")+"";
		 */
		int i = img.getOriginalFilename().lastIndexOf(".");
		String type = img.getOriginalFilename().substring(i);
		String pictureId = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		String fileName = pictureId + type;
		String path = prePath + fileName;
		File file = new File(path);
		try {
			FileUtils.copyInputStreamToFile(img.getInputStream(), file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		picture.setAuthorId("79DC6FA4F265451E8C2947E26FFC7713");
		picture.setPictureId(pictureId);
		picture.setPictureName(fileName);
		String result = null;
		if (ps.insertPicture(picture)) {
			result = pictureId;
			System.out.println("true");
		}
		return result;
	}

	// 通过图片编号获取图片名，并通过图片名从本地硬盘上获取图片返回给页面
	@RequestMapping(value = "picture/{pictureId}/{download}")
	public void getPictureFromHD(@PathVariable(value = "pictureId") String pictureId,
			@PathVariable(value = "download") boolean download, HttpServletRequest request,
			HttpServletResponse response) {
		String pictureName = ps.getPictureNameById(pictureId);
		String picturePath = prePath + pictureName;
		if (download == true) {
			response.setContentType("application/file-download");
			response.addHeader("Content-Disposition", "attachment; filename=" + pictureName);
		}
		ImageUtil.getImage(response, picturePath);
	}

	@ResponseBody
	@RequestMapping(value = "admin/pictures")
	public ReturnForm<User> getPicturesByKey_admin(User user, Picture picture, SearchForm sf) {
		return ps.getPicturesByKey_admin(user, picture, sf);
	}

	@ResponseBody
	@RequestMapping(value = "admin/picture/{pId}")
	public User getPictureByPId_admin(@PathVariable(value = "pId") String pictureId) {
		return ps.getPictureByPId_admin(pictureId);
	}

	@RequestMapping(value = "when")
	public String when() {
		return "forward:when.jsp";
	}

	@RequestMapping(value = "when_ajax")
	@ResponseBody
	public String when(@RequestParam(value = "value") int value) {
		List<Page> list = new ArrayList<Page>();
		Page page = new Page();
		page.setPage(value);
		list.add(page);
		return value * 2 + "";
	}
}
