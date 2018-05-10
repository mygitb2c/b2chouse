package cn.edu.ptu.sharepicture.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.ptu.sharepicture.entity.User;
import cn.edu.ptu.sharepicture.service.UserService;
import cn.edu.ptu.sharepicture.util.ImageUtil;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	@Value("${image_path}")
	private String prePath;

	@RequestMapping(value = "login")
	public String toLoginWeb(HttpServletRequest request) {
		return "forward:uSign.jsp";
	}

	@RequestMapping(value = "register")
	public String toSign() {
		return "forward:uSign.jsp";
	}

	@RequestMapping(value = "exit")
	public String exit(HttpSession session) {
		session.removeAttribute("userId");
		return "redirect:/";
	}

	@RequestMapping(value = "my")
	public String showUserInfo(HttpSession session, HttpServletRequest request) {
		String path = "redirect:login";
		String userId = String.valueOf(session.getAttribute("userId"));
		if (userId != null && userId.trim().length() > 0) {
			User user = userService.getUserInfo(userId);
			if (user != null) {
				user.setUserId(userId);
				request.setAttribute("user", user);
				path = "userInfo";
			}
		}
		return path;
	}

	@ResponseBody
	@RequestMapping(value = "isRepeat", method = RequestMethod.GET)
	public boolean isRepeat(@Param(value = "email") String email, @Param(value = "userName") String userName) {
		boolean flag = userService.isRepeat(email, userName);
		return flag;
	}

	@ResponseBody
	@RequestMapping(value = "userRegister", method = RequestMethod.POST)
	public boolean registered(User user, HttpSession session) {
		boolean result = false;
		String userId = userService.insertUser(user);
		if (userId != null) {
			session.setAttribute("userId", userId);
			result = true;
		} /*
			 * else { path += "register"; }
			 */
		return result;
	}

	@RequestMapping(value = "userLogin", method = RequestMethod.GET)
	@ResponseBody
	public boolean login(@Param(value = "email") String email, @Param(value = "password") String password,
			HttpSession session) {
		boolean result = userService.login(email, password, session);
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "userImage")
	public boolean changeUserImage(@RequestParam(value = "img") MultipartFile img) {
		String userId = "79DC6FA4F265451E8C2947E26FFC7713";
		int i = img.getOriginalFilename().lastIndexOf(".");
		String type = img.getOriginalFilename().substring(i);
		String imageId = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		String fileName = imageId + type;
		String path = prePath + fileName;
		File file = new File(path);
		try {
			FileUtils.copyInputStreamToFile(img.getInputStream(), file);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return userService.changeUserImage(userId, fileName);
	}

	@RequestMapping(value = "user/{userId}")
	public void getImageFromHD(@PathVariable(value = "userId") String userId, HttpServletRequest request,
			HttpServletResponse response) {
		String userImage = userService.getUserImage(userId);
		String imagePath = prePath + userImage;
		ImageUtil.getImage(response, imagePath);
	}

	@ResponseBody
	@RequestMapping(value = "updateUser", method = RequestMethod.PUT)
	public boolean updateUser(User user) {
		boolean flag = userService.updateUser(user);
		return flag;
	}

	@ResponseBody
	@RequestMapping(value = "updatePWD", method = RequestMethod.PUT)
	public boolean updatePassword(User user, @Param(value = "new_pwd") String new_pwd) {
		boolean flag = userService.updatePassword(user, new_pwd);
		return flag;
	}

}
