package com.im.service;

import com.im.domain.User;

public interface UserService {

	void saveUser(User user);

	boolean checkName(String newName);
	
	User getByName(String name);

	User getUserByNamePassword(User user);

	void activeByCode(String statecode);

}
