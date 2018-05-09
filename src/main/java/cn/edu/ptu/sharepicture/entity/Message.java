package cn.edu.ptu.sharepicture.entity;

import org.springframework.stereotype.Component;

@Component
public class Message {

	private String messageId;
	private String pictureId;
	private String sendId;
	private String content;
	private int star;
	private String bgColor;
	private String createTime;
	private String isLock;

	public Message() {
		// TODO Auto-generated constructor stub
	}

	public String getMessageId() {
		return messageId;
	}

	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}

	public String getPictureId() {
		return pictureId;
	}

	public void setPictureId(String pictureId) {
		this.pictureId = pictureId;
	}

	public String getSendId() {
		return sendId;
	}

	public void setSendId(String sendId) {
		this.sendId = sendId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getBgColor() {
		return bgColor;
	}

	public void setBgColor(String bgColor) {
		this.bgColor = bgColor;
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

	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", pictureId=" + pictureId + ", sendId=" + sendId + ", content="
				+ content + ", star=" + star + ", bgColor=" + bgColor + ", createTime=" + createTime + ", isLock="
				+ isLock + "]";
	}

}
