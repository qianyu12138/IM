package com.im.web.action;

import com.im.domain.Info;
import com.im.domain.User;
import com.im.service.InfoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class InfoAction extends ActionSupport implements ModelDriven<Info> {
	private Info info = new Info();
	private InfoService is;
	
	
	public String getInfo() throws Exception {
		User u = (User) ActionContext.getContext().getSession().get("user");
		Info i = is.getInfo(u.getInfo().getIid());
		ActionContext.getContext().put("info", i);
		return "manager";
	}

	public String update() throws Exception {
		User u = (User) ActionContext.getContext().getSession().get("user");
		info.setIid(u.getInfo().getIid());
		is.save(info);
		return NONE;
	}
	public void setIs(InfoService is) {
		this.is = is;
	}

	@Override
	public Info getModel() {
		// TODO Auto-generated method stub
		return info;
	}

}
