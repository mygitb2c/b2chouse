package cn.edu.ptu.sharepicture.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;

public interface PictureMapper {

	List<User> getPicturesByKey(SearchForm sf);

	List<User> getPicturesByUserId(SearchForm sf);

	User getPictureById(@Param(value = "pictureId") String pictureId);

	boolean insertPicture(Picture picture);

	boolean deletePicture(String pictureId);

	boolean updatePicture(Picture picture);

}
