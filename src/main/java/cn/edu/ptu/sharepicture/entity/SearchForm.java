package cn.edu.ptu.sharepicture.entity;

import org.springframework.stereotype.Component;

@Component
public class SearchForm extends Page {

	private String key;// 搜索关键字
	private String orderType;// 排序字段名称
	private String orderValue;// 排序值
	private boolean isAdmin;

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public String getKey() {
		if (key == null) {
			key = "";
		}
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getOrderType() {
		if (orderType == null || orderType.trim().length() == 0) {
			orderType = "clickCount";
		}
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public String getOrderValue() {
		if (orderValue == null || orderValue.trim().length() == 0) {
			orderValue = "desc";
		}
		return orderValue;
	}

	public void setOrderValue(String orderValue) {
		this.orderValue = orderValue;
	}

	public SearchForm() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SearchForm [key=" + key + ", orderType=" + orderType + ", orderValue=" + orderValue + ", isAdmin="
				+ isAdmin + "," + super.toString() + "]";
	}

}
