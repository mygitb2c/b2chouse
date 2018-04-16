package cn.edu.ptu.sharepicture.entity;

import org.springframework.stereotype.Component;

@Component
public class SearchForm {

	private String key;
	private String orderType;
	private String orderValue;
	private int page;
	private int start;
	private int pageSize;

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
		if (orderType == null) {
			orderType = "clickCount";
		}
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public String getOrderValue() {
		if (orderValue == null) {
			orderValue = "desc";
		}
		return orderValue;
	}

	public void setOrderValue(String orderValue) {
		this.orderValue = orderValue;
	}

	public int getStart() {
		if (page > 0) {
			start = (page - 1) * pageSize;
		} else {
			start = 0;
		}
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public SearchForm() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SearchForm [key=" + key + ", orderType=" + orderType + ", orderValue=" + orderValue + ", page=" + page
				+ ", start=" + start + ", pageSize=" + pageSize + "]";
	}

}
