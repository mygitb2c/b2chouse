package cn.edu.ptu.sharepicture.entity;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ReturnForm<T> extends Page {
	private List<T> data;

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "ReturnForm [data=" + data + super.toString() + "]";
	}

}
