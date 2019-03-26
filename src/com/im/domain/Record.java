package com.im.domain;

import java.util.Date;

public class Record {
	private Long rid;
	private Date useTime;
	private String server;
	private String useWay;
	private User user;
	private Integer state;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Long getRid() {
		return rid;
	}
	public void setRid(Long rid) {
		this.rid = rid;
	}
	public Date getUseTime() {
		return useTime;
	}
	public void setUseTime(Date useTime) {
		this.useTime = useTime;
	}
	public String getServer() {
		return server;
	}
	public void setServer(String server) {
		this.server = server;
	}
	public String getUseWay() {
		return useWay;
	}
	public void setUseWay(String useWay) {
		this.useWay = useWay;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
}
