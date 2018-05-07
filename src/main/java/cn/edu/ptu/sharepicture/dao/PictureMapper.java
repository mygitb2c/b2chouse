package cn.edu.ptu.sharepicture.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ptu.sharepicture.entity.Picture;
import cn.edu.ptu.sharepicture.entity.ReturnForm;
import cn.edu.ptu.sharepicture.entity.SearchForm;
import cn.edu.ptu.sharepicture.entity.User;

public interface PictureMapper {

	List<User> getPicturesByKey(SearchForm sf);

	List<User> getPicturesByAuthorId(SearchForm sf);

	User getPictureById(@Param(value = "pictureId") String pictureId);

	boolean insertPicture(Picture picture);

	boolean deletePicture(String pictureId);

	boolean updatePicture(Picture picture);

	String getPictureName(@Param(value = "pictureId") String pictureId);

	int getTotal(SearchForm sf);

	public List<User> getPicturesByKey_admin(@Param(value = "User") User user,
			@Param(value = "Picture") Picture picture, @Param(value = "SearchFrom") SearchForm sf);

	int getTotal_admin(@Param(value = "User") User user, @Param(value = "Picture") Picture picture);

	public User getPictureByPId_admin(@Param(value = "pictureId") String pictureId);
}
