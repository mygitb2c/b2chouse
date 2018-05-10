package cn.edu.ptu.sharepicture.entity;

import org.springframework.stereotype.Component;

@Component
public class Page {

	private int page;// 页码
	private int start;// 起始位置
	private int pageSize;// 单页数据最大行数。
	private int total;// 总记录数
	private int totalPage;// 总页数

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
		/* getTotalPage(); */
	}

	public int getTotalPage() {
		int n = total % pageSize;
		totalPage = total / pageSize;
		if (n != 0) {
			totalPage += 1;
		}
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
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
		if (pageSize == 0) {
			pageSize = 10;
		}
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	@Override
	public String toString() {
		return "page=" + page + ", start=" + start + ", pageSize=" + pageSize + ", total=" + total + ", totalPage="
				+ totalPage;
	}

}
