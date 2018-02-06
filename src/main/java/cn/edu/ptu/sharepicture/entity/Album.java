package cn.edu.ptu.sharepicture.entity;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Album {

	private String albumId;
	private String userId;
	private String albumName;
	private String albumImage;
	private String createTime;
	private String isLock;
	private List<Picture> pices;

	public Album() {
		// TODO Auto-generated constructor stub
	}

	public String getAlbumId() {
		return albumId;
	}

	public void setAlbumId(String albumId) {
		this.albumId = albumId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public String getAlbumImage() {
		return albumImage;
	}

	public void setAlbumImage(String albumImage) {
		this.albumImage = albumImage;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getIsLock() {
		return isLock;
	}

	public void setIsLock(String isLock) {
		this.isLock = isLock;
	}

	public List<Picture> getPices() {
		return pices;
	}

	public void setPices(List<Picture> pices) {
		this.pices = pices;
	}

	@Override
	public String toString() {
		return "Album [albumId=" + albumId + ", userId=" + userId + ", albumName=" + albumName + ", albumImage="
				+ albumImage + ", createTime=" + createTime + ", isLock=" + isLock + ", pices=" + pices + "]";
	}

}
