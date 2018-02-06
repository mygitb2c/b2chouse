package cn.edu.ptu.sharepicture.dao;

import java.util.List;

import cn.edu.ptu.sharepicture.entity.Picture;

public interface PictureMapper {

	List<Picture> getPictures(String key);

	boolean insertPicture(Picture picture);

	boolean deletePicture(String pictureId);

	boolean updatePicture(Picture picture);

}
