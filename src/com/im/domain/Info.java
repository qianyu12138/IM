package com.im.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Info {
	private Integer iid;
	private String name;
	private Integer nameAchi;
	private String address1;
	private String address2;
	private String address3;
	private Integer addAchi;
	private Date birthday;
	private Integer birthAchi;
	private Integer sex;
	private Integer sexAchi;
	private String work;
	private Integer workAchi;
	private String tel;
	private Integer telAchi;
	private String IDCardNum;
	private Integer IDNumAchi;
	private String QQnum;
	private Integer QQAchi;
	private String email;
	private Integer emailAchi;
	
	private User user;
	
	public Info() {
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			this.birthday=dateformat.parse("2000-1-1");
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	public Integer getIid() {
		return iid;
	}

	public void setIid(Integer iid) {
		this.iid = iid;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getNameAchi() {
		return nameAchi;
	}

	public void setNameAchi(Integer nameAchi) {
		this.nameAchi = nameAchi;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public Integer getAddAchi() {
		return addAchi;
	}

	public void setAddAchi(Integer addAchi) {
		this.addAchi = addAchi;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Integer getBirthAchi() {
		return birthAchi;
	}

	public void setBirthAchi(Integer birthAchi) {
		this.birthAchi = birthAchi;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getSexAchi() {
		return sexAchi;
	}

	public void setSexAchi(Integer sexAchi) {
		this.sexAchi = sexAchi;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public Integer getWorkAchi() {
		return workAchi;
	}

	public void setWorkAchi(Integer workAchi) {
		this.workAchi = workAchi;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Integer getTelAchi() {
		return telAchi;
	}

	public void setTelAchi(Integer telAchi) {
		this.telAchi = telAchi;
	}

	public String getIDCardNum() {
		return IDCardNum;
	}

	public void setIDCardNum(String iDCardNum) {
		IDCardNum = iDCardNum;
	}

	public Integer getIDNumAchi() {
		return IDNumAchi;
	}

	public void setIDNumAchi(Integer iDNumAchi) {
		IDNumAchi = iDNumAchi;
	}

	public String getQQnum() {
		return QQnum;
	}

	public void setQQnum(String qQnum) {
		QQnum = qQnum;
	}

	public Integer getQQAchi() {
		return QQAchi;
	}

	public void setQQAchi(Integer qQAchi) {
		QQAchi = qQAchi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getEmailAchi() {
		return emailAchi;
	}

	public void setEmailAchi(Integer emailAchi) {
		this.emailAchi = emailAchi;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
