package cn.edu.ptu.sharepicture.service;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.PictureMapper;
import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;

@Service
public class PictureService {

	@Resource
	private PictureMapper pm;

	// 依据id获取图片信息（单个）
	public User getPictureById(String pictureId) {
		return pm.getPictureById(pictureId);
	}

	// 模糊搜索分页得到图片信息
	public List<User> getPicturesByKey(SearchForm sf) {
		return pm.getPicturesByKey(sf);
	}

	public List<User> getPicturesByUserId(SearchForm sf) {
		return pm.getPicturesByUserId(sf);
	}

	public boolean insertPicture(Picture picture) {
		String pictureId = UUID.randomUUID().toString().replaceAll("-", "").toUpperCase();
		picture.setPictureId(pictureId);
		return pm.insertPicture(picture);
	}

}
