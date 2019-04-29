package com.mr.utils;

public class Page {
	//下一页(页数) 
	private Integer page = 1;

	//每页条数
	private Integer limit=10;





	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}







	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}
}
