package com.mr.utils;

import lombok.Data;

@Data
public class Page {
	//下一页(页数) 
	private Integer page = 1;

	//每页条数
	private Integer limit=10;

	private String sort;

	private String order = "desc";




}
