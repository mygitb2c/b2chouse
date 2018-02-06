package cn.edu.ptu.sharepicture.entity;

import org.springframework.stereotype.Component;

@Component
public class Message {

	private String messageId;
	private String pictureId;
	private String sendId;
	private String content;
	private int floor;
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

	public int getFloor() {
		return floor;
	}

	public void setFloor(int floor) {
		this.floor = floor;
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
		return "Messages [messageId=" + messageId + ", pictureId=" + pictureId + ", sendId=" + sendId + ", content="
				+ content + ", floor=" + floor + ", createTime=" + createTime + ", isLock=" + isLock + "]";
	}

}
