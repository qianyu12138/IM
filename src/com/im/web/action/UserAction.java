package com.im.web.action;

import java.security.GeneralSecurityException;

import javax.mail.MessagingException;

import org.apache.struts2.ServletActionContext;

import com.im.domain.Info;
import com.im.domain.User;
import com.im.service.InfoService;
import com.im.service.UserService;
import com.im.utils.CommonsUtils;
import com.im.utils.MailUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	private User user = new User();
	private String newName;
	private UserService us;
	private InfoService is;
	
	public String regist() throws Exception {
		
		Info info = new Info();
		user.setUid(CommonsUtils.getUUID());
		user.setState(0);
		user.setStatecode(CommonsUtils.getUUID());
		user.setInfo(info);
		info.setUser(user);
		
		try {
			is.save(info);
			us.saveUser(user);
			String emailMsg = "恭喜您注册成功，请点击下面的连接进行激活账户"
					+ "<a href='http://informationmanager.cn:8080/IM/UserAction_active?activeCode="+user.getStatecode()+"'>"
							+ "http://informationmanager.cn:8080/IM/UserAction_active?activeCode="+user.getStatecode()+"</a>";
			try {
				MailUtils.sendMail(user.getEmail(), emailMsg);
			} catch (MessagingException | GeneralSecurityException e) {
				e.printStackTrace();
			}
			return "regist_success";
			
		} catch (Exception e) {
			e.printStackTrace();
			ActionContext.getContext().put("error", e.getMessage());
			return "regist";
		}
	}
	
	public String checkName() throws Exception {
		boolean isExist = us.checkName(newName);
			String json = "{\"isExist\":"+isExist+"}";
			
			ServletActionContext.getResponse().getWriter().write(json);
		return null;
	}
	
	public String active() throws Exception{
		us.activeByCode(user.getStatecode());
		return null;
	}
	
	public String login() throws Exception {
		User u = us.getUserByNamePassword(user);
		if(u!=null) {
			if(u.getState()==0) {
				return "toFail";
			}else {
				ActionContext.getContext().getSession().put("login_state", true);
				ActionContext.getContext().getSession().put("user", u);
				return "toHome";
			}
		}else {
			ActionContext.getContext().getSession().put("login_state", false);
			return "toIndex";
		}
	}
	
	public String logout() throws Exception{
		ActionContext.getContext().getSession().put("user", null);
		return "toIndex";
	}
	
	public void setUs(UserService us) {
		this.us = us;
	}

	public void setIs(InfoService is) {
		this.is = is;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

	public void setNewName(String newName) {
		this.newName = newName;
	}
	
}
