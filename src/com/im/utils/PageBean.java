package com.im.utils;

import java.util.List;

public class PageBean {

	private Integer currentPage;
	private Integer totalCount;
	private Integer pageSize;
	private Integer totalPage;
	private List list;
	public PageBean(Integer currentPage, Integer totalCount, Integer pageSize) {
		super();
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		if(currentPage==null)
			this.currentPage=1;
		if(pageSize==null)
			this.pageSize=3;
		
		this.totalPage=(this.totalCount+this.pageSize-1)/this.pageSize;
		
		if(this.currentPage<1)
			this.currentPage=1;
		if(this.currentPage>this.totalPage)
			this.currentPage=this.totalPage;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
	public int getStart() {
		return (this.currentPage-1)*this.pageSize;
	}
}
