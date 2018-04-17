package cn.edu.ptu.sharepicture.entity;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Picture {

	private String pictureId;//编号
	private String userId;//用户编号
	private String pictureName;//图片名
	private String pictureType;//图片类型
	private String picturePath;//图片路径
	private String remark;//图片介绍
	private String createTime;//上传时间
	private String clickCount;//点击量
	private String download;//下载量
	private String isLock;//是否被锁定
	private List<Message> msgs;//消息集合

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
	}

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
				+ ", createTime=" + createTime + ", download=" + download + ", clickCount=" + clickCount + ", isLock="
				+ isLock + ", msgs=" + msgs + "]";
	}

}
