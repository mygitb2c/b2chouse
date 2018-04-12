package cn.edu.ptu.sharepicture.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ptu.sharepicture.entity.Picture;

public interface PictureMapper {

	List<Picture> getPictures(@Param(value="key")String key);

	boolean insertPicture(Picture picture);

	boolean deletePicture(String pictureId);

	boolean updatePicture(Picture picture);

}
