package cn.edu.ptu.sharepicture.service;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.ptu.sharepicture.dao.PictureMapper;
import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
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
	public ReturnForm<User> getPicturesByKey(SearchForm sf) {
		ReturnForm<User> rf = new ReturnForm<User>();
		rf.setPageSize(sf.getPageSize());
		rf.setData(pm.getPicturesByKey(sf));
		rf.setTotal(pm.getTotal(sf));
		rf.setPage(sf.getPage());
		return rf;
	}

	public List<User> getPicturesByAuthorId(SearchForm sf) {
		return pm.getPicturesByAuthorId(sf);
	}

	public boolean insertPicture(Picture picture) {
		return pm.insertPicture(picture);
	}

	public String getPictureNameById(String pictureId) {
		return pm.getPictureNameById(pictureId);
	}

	public ReturnForm<User> getPicturesByKey_admin(User user, Picture picture, SearchForm sf) {
		ReturnForm<User> rf = new ReturnForm<User>();
		rf.setPageSize(sf.getPageSize());
		rf.setData(pm.getPicturesByKey_admin(user, picture, sf));
		rf.setTotal(pm.getTotal_admin(user, picture));
		rf.setPage(sf.getPage());
		return rf;
	}

	public User getPictureByPId_admin(String pictureId) {
		return pm.getPictureByPId_admin(pictureId);
	}

}
