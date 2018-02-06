package cn.edu.ptu.sharepicture.entity;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class User {

	private String userId;
	private String userName;
	private String account;
	private String password;
	private String sex;
	private String email;
	private String createTime;
	private String userImage;
	private String isLock;
	private List<Album> albums;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getIsLock() {
		return isLock;
	}

	public void setIsLock(String isLock) {
		this.isLock = isLock;
	}

	public List<Album> getAlbums() {
		return albums;
	}

	public void setAlbums(List<Album> albums) {
		this.albums = albums;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", account=" + account + ", password=" + password
				+ ", sex=" + sex + ", email=" + email + ", createTime=" + createTime + ", userImage=" + userImage
				+ ", isLock=" + isLock + ", albums=" + albums + "]";
	}

	public User(String userName, String account, String password, String email) {
		super();
		this.userName = userName;
		this.account = account;
		this.password = password;
		this.email = email;
	}

}
