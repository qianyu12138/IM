package com.im.service.impl;

import com.im.dao.UserDao;
import com.im.domain.User;
import com.im.service.UserService;
public class UserServiceImpl implements UserService{
	private UserDao ud;

	@Override
	public void saveUser(User user) {
		ud.saveOrUpdate(user);
		
	}

	public void setUd(UserDao ud) {
		this.ud = ud;
	}

	@Override
	public boolean checkName(String newName) {
		User u = ud.getByName(newName);
		return u!=null;
	}

	@Override
	public User getByName(String name) {
		return ud.getByName(name);
	}

	@Override
	public User getUserByNamePassword(User user) {
		User u = ud.getByName(user.getUsername());
		if(u!=null&&user.getPassword().equals(u.getPassword())) 
			return u;
		else
			return null;
	}

	@Override
	public void activeByCode(String statecode) {
		User u = ud.getByCode(statecode);
		u.setState(1);
		ud.saveOrUpdate(u);
	}
	
	
}
