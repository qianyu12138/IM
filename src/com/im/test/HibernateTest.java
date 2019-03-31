package com.im.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.im.dao.InfoDao;
import com.im.dao.UserDao;
import com.im.domain.Info;
import com.im.domain.User;
import com.im.service.InfoService;
import com.im.service.UserService;
import com.im.utils.CommonsUtils;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class HibernateTest {

	@Resource(name="userDao")
	private UserDao ud;
	
	@Resource(name="userService")
	private UserService us;
	
	@Resource(name="infoService")
	private InfoService is;
	
	@Resource(name="infoDao")
	private InfoDao infoDao;
	@Test
	public void fun1() {
		System.out.println(ud);
	}
	
	@Test
	public void fun2() {
		User user = new User();
		Info info = new Info();
		info.setName("hello");
		String uid = CommonsUtils.getUUID();
		user.setUid(uid);
		
		
		user.setInfo(info);
		info.setUser(user);
		us.saveUser(user);
	}
	
	@Test
	public void fun3() {
		boolean checkName = us.checkName("linfng");
		System.out.println(checkName);
	}
	
	@Test
	public void fun4() {
		Info info = infoDao.getById(1);
	}
}
