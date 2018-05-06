package cn.edu.ptu.sharepicture.entity;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Picture {

	private String pictureId;// 编号
	private String authorId;// 作者编号
	private String pictureTitle;// 图片标题
	private String pictureType;// 图片类型
	private String pictureName;// 完整图片名
	private String remark;// 图片介绍
	private String createTime;// 上传时间
	private String clickCount;// 点击量
	private String download;// 下载量
	private String isLock;// 是否被锁定
	private List<Message> msgs;// 消息集合

	public String getPictureId() {
		return pictureId;
	}

	public void setPictureId(String pictureId) {
		this.pictureId = pictureId;
	}

	public String getPictureTitle() {
		return pictureTitle;
	}

	public void setPictureTitle(String pictureTitle) {
		this.pictureTitle = pictureTitle;
	}

	public String getPictureType() {
		return pictureType;
	}

	public void setPictureType(String pictureType) {
		this.pictureType = pictureType;
	}

	public String getPictureName() {
		return pictureName;
	}

	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
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

	public String getClickCount() {
		return clickCount;
	}

	public void setClickCount(String clickCount) {
		this.clickCount = clickCount;
	}

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
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

	public String getAuthorId() {
		return authorId;
	}

	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}

	@Override
	public String toString() {
		return "Picture [pictureId=" + pictureId + ", authorId=" + authorId + ", pictureTitle=" + pictureTitle
				+ ", pictureType=" + pictureType + ", pictureName=" + pictureName + ", remark=" + remark
				+ ", createTime=" + createTime + ", clickCount=" + clickCount + ", download=" + download + ", isLock="
				+ isLock + ", msgs=" + msgs + "]";
	}

}
