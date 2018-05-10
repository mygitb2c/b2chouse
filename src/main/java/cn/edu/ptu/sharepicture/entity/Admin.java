package cn.edu.ptu.sharepicture.entity;

import org.springframework.stereotype.Component;

@Component
public class Admin {

	private String adminId;
	
	private String userId;

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", userId=" + userId + "]";
	}
	
	
	
	
}
