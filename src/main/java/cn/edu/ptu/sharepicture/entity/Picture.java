package cn.edu.ptu.sharepicture.entity;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Picture {

	private String pictureId;
	private String userId;
	private String pictureName;
	private String pictureType;
	private String picturePath;
	private String remark;
	private String createTime;
	private String clickCount;
	private String isLock;
	private List<Message> msgs;

	public Picture() {
		// TODO Auto-generated constructor stub
	}

	public String getPictureId() {
		return pictureId;
	}

	public void setPictureId(String pictureId) {
		this.pictureId = pictureId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPictureName() {
		return pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}

	public String getPicturePath() {
		return picturePath;
	}

	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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

	public List<Message> getMsgs() {
		return msgs;
	}

	public void setMsgs(List<Message> msgs) {
		this.msgs = msgs;
	}

	public String getClickCount() {
		return clickCount;
	}

	public void setClickCount(String clickCount) {
		this.clickCount = clickCount;
	}

	public String getPictureType() {
		return pictureType;
	}

	public void setPictureType(String pictureType) {
		this.pictureType = pictureType;
	}

	@Override
	public String toString() {
		return "Picture [pictureId=" + pictureId + ", userId=" + userId + ", pictureName=" + pictureName
				+ ", pictureType=" + pictureType + ", picturePath=" + picturePath + ", remark=" + remark
				+ ", createTime=" + createTime + ", clickCount=" + clickCount + ", isLock=" + isLock + ", msgs=" + msgs
				+ "]";
	}

	
	
	

	

}
