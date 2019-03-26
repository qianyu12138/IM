package com.im.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.HibernateCallback;

import com.im.dao.UserDao;
import com.im.domain.User;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@Override
	public User getByName(String newName) {
		return getHibernateTemplate().execute(new HibernateCallback<User>() {

			@Override
			public User doInHibernate(Session session) throws HibernateException {
				Criteria criteria = session.createCriteria(User.class);
				criteria.add(Restrictions.eq("username",newName));
				User user = (User) criteria.uniqueResult();
//				String hql = "from User where username = ?";
//				Query query = session.createQuery(hql);
//				query.setParameter(0, newName);
//				User user = (User) query.uniqueResult();
				return user;
			}
			
		});
	}

	@Override
	public User getByCode(String statecode) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().execute(new HibernateCallback<User>() {

			@Override
			public User doInHibernate(Session session) throws HibernateException {
				Criteria criteria = session.createCriteria(User.class);
				criteria.add(Restrictions.eq("statecode",statecode));
				User user = (User) criteria.uniqueResult();
//				String hql = "from User where username = ?";
//				Query query = session.createQuery(hql);
//				query.setParameter(0, newName);
//				User user = (User) query.uniqueResult();
				return user;
			}
			
		});
	}

}
