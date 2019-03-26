package com.im.dao;

import com.im.domain.User;

public interface UserDao extends BaseDao<User>{

	void save(User user);

	User getByName(String newName);

	User getByCode(String statecode);

}
