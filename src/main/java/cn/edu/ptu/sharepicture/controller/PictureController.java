package cn.edu.ptu.sharepicture.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
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

	@Value("${picture_path}")
	private String prePath;

	@Resource
	private PictureService ps;

	@RequestMapping(value = "/form")
	public String demo() {
		return "form";
	}

	@RequestMapping(value = "/")
	public String index() {
		return "forward:main.jsp";
	}

	@RequestMapping(value = "pictureInfo/{pId}")
	public ModelAndView getPictureInfo(@PathVariable(value = "pId") String pictureId, ModelAndView modelAndView) {
		modelAndView.setViewName("pictureInfo");
		User u = ps.getPictureById(pictureId);
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
	@Transactional(isolation = Isolation.REPEATABLE_READ, propagation = Propagation.REQUIRED)
	public boolean insert(Picture picture, @RequestParam(value = "img") MultipartFile img, HttpServletRequest request) {
		int i = img.getOriginalFilename().lastIndexOf(".");
		String filePre = img.getOriginalFilename().substring(i);
		String fileName = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase() + filePre;
		String realPath = request.getRealPath("/static/picture") + "/" + fileName;
		String path = "/static/picture/" + fileName;
		File file = new File(realPath);

		try {
			FileUtils.copyInputStreamToFile(img.getInputStream(), file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		picture.setPictureName(path);
		/* ps.insertPicture(picture); */
		return true;
	}

	@RequestMapping(value = "picture/{name}")
	public void getPictureFromHD(@PathVariable(value = "name") String fileName, HttpServletRequest request,
			HttpServletResponse response) {
		String picturePaht = prePath + fileName + ".jpg";
		FileInputStream fis = null;
		BufferedOutputStream bos = null;
		try {
			fis = new FileInputStream(new File(picturePaht));
			int i = fis.available();
			byte[] data = new byte[i];
			fis.read(data);
			bos = new BufferedOutputStream(response.getOutputStream());
			bos.write(data);
			bos.flush();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (fis != null) {
					fis.close();
				}
				if (bos != null) {
					bos.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
