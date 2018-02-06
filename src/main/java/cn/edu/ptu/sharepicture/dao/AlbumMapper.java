package cn.edu.ptu.sharepicture.dao;

import cn.edu.ptu.sharepicture.entity.Album;

public interface AlbumMapper {

	boolean insertAlbum(Album album);

	boolean updateAlbum(Album album);

	boolean deleteAlbum(String albumId);

	Album getAlbum(String albumName);

}
